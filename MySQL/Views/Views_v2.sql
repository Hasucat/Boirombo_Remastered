Views

--1. which authors book they like the most or which authors book they order frequently

CREATE OR REPLACE VIEW vw_user_reading_preferences AS
SELECT 
    u.id AS user_id,
    u.name,
    b.bookCategory AS favorite_category,
    COUNT(*) AS category_count,
    GROUP_CONCAT(DISTINCT b.author) AS preferred_authors
FROM user u
JOIN book_order o ON u.email = o.email
JOIN book_dbs b ON o.book_name = b.bookname
JOIN (
    SELECT 
        o2.email,
        b2.bookCategory,
        COUNT(*) AS cat_count
    FROM book_order o2
    JOIN book_dbs b2 ON o2.book_name = b2.bookname
    GROUP BY o2.email, b2.bookCategory
) counts ON counts.email = u.email
GROUP BY u.id, u.name, b.bookCategory, counts.email
HAVING COUNT(*) = (
    SELECT MAX(cat_count)
    FROM (
        SELECT 
            o2.email,
            b2.bookCategory,
            COUNT(*) AS cat_count
        FROM book_order o2
        JOIN book_dbs b2 ON o2.book_name = b2.bookname
        GROUP BY o2.email, b2.bookCategory
    ) max_counts
    WHERE max_counts.email = counts.email
);

--2. gives an idea about user and cart order

CREATE OR REPLACE VIEW vw_user_cart_segments AS
SELECT 
    u.id AS user_id,
    u.name,
    u.email,
    COUNT(DISTINCT c.cid) AS total_cart_events,
    SUM(c.total_price) AS total_cart_value,
    AVG(c.total_price) AS avg_cart_value,
    /* Remove date-related columns completely */
    CASE
        WHEN COUNT(DISTINCT o.id) = 0 THEN 'Cart Only'
        WHEN COUNT(DISTINCT c.cid) > COUNT(DISTINCT o.id) * 2 THEN 'High Cart Abandonment'
        WHEN COUNT(DISTINCT c.cid) = COUNT(DISTINCT o.id) THEN 'Always Converts'
        ELSE 'Normal Behavior'
    END AS cart_behavior_type
FROM user u
LEFT JOIN cart c ON u.id = c.uid
LEFT JOIN book_order o ON u.email = o.email
GROUP BY u.id, u.name, u.email;

--3
CREATE VIEW vw_cart_composition_analysis AS
SELECT 
    c.cid AS cart_id,
    u.name AS user_name,
    COUNT(c.cid) OVER (PARTITION BY c.uid) AS items_in_cart,
    GROUP_CONCAT(DISTINCT b.bookCategory) AS categories_in_cart,
    SUM(c.total_price) AS cart_total,
    AVG(b.price) AS avg_item_price,
    MAX(b.price) AS max_item_price,
    MIN(b.price) AS min_item_price,
    CASE 
        WHEN COUNT(DISTINCT b.bookCategory) > 1 THEN 'Mixed Category'
        ELSE 'Single Category'
    END AS cart_type,
    CASE
        WHEN MAX(b.price) > 2 * AVG(b.price) THEN 'Premium Item Present'
        ELSE 'Consistent Pricing'
    END AS price_distribution
FROM cart c
JOIN user u ON c.uid = u.id
JOIN book_dbs b ON c.bookName = b.bookname
GROUP BY c.cid, u.name, c.uid;