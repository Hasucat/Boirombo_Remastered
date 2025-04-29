-- 1
CREATE OR REPLACE VIEW vw_author_popularity AS
SELECT 
    b.author,
    COUNT(DISTINCT o.id) AS total_orders,
    COUNT(DISTINCT c.cid) AS cart_appearances,
    COUNT(DISTINCT r.requestId) AS request_count,
    RANK() OVER (ORDER BY COUNT(DISTINCT o.id) DESC) AS popularity_rank
FROM book_dbs b
LEFT JOIN book_order o ON b.bookname = o.book_name
LEFT JOIN cart c ON b.bookname = c.bookName
LEFT JOIN request_book r ON b.author = r.authorName
GROUP BY b.author;

-- 2
CREATE OR REPLACE VIEW vw_book_recommendations AS
SELECT 
    b1.bookname AS source_book,
    b1.author AS source_author,
    b2.bookname AS recommended_book,
    b2.author AS recommended_author,
    COUNT(*) AS co_occurrence_count
FROM book_order o1
JOIN book_order o2 ON o1.email = o2.email AND o1.book_name != o2.book_name
JOIN book_dbs b1 ON o1.book_name = b1.bookname
JOIN book_dbs b2 ON o2.book_name = b2.bookname
GROUP BY b1.bookname, b1.author, b2.bookname, b2.author
HAVING COUNT(*) > 1
ORDER BY co_occurrence_count DESC;

-- 3
CREATE OR REPLACE VIEW vw_book_inventory_health_basic AS
SELECT 
    b.bookId,
    b.bookname AS title,
    b.author,
    b.price,
    b.bookCategory AS category,
    b.status,
    COUNT(o.id) AS times_ordered,
    COUNT(c.cid) AS times_in_carts,
    (SELECT COUNT(*) FROM request_book r WHERE r.bookName = b.bookname) AS times_requested
FROM book_dbs b
LEFT JOIN book_order o ON b.bookname = o.book_name
LEFT JOIN cart c ON b.bookname = c.bookName
GROUP BY b.bookId, b.bookname, b.author, b.price, b.bookCategory, b.status;
