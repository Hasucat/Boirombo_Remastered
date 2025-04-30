-- 1
CREATE PROCEDURE sp_get_user_requests(
    IN p_user_id INT,
    IN p_include_pending BOOLEAN,
    IN p_include_approved BOOLEAN,
    IN p_include_rejected BOOLEAN,
    IN p_include_fulfilled BOOLEAN
)
BEGIN
    SELECT 
        r.requestId,
        r.bookName,
        r.authorName,
        r.description,
        r.requestDate,
        r.status,
        CASE 
            WHEN r.status = 'Fulfilled' THEN 
                (SELECT bookId FROM book_dbs WHERE bookname = r.bookName AND author = r.authorName LIMIT 1)
            ELSE NULL
        END AS fulfilledBookId
    FROM request_book r
    WHERE r.userId = p_user_id
    AND (
        (p_include_pending = TRUE AND r.status = 'Pending')
        OR (p_include_approved = TRUE AND r.status = 'Approved')
        OR (p_include_rejected = TRUE AND r.status = 'Rejected')
        OR (p_include_fulfilled = TRUE AND r.status = 'Fulfilled')
    )
    ORDER BY r.requestDate DESC;
END //
DELIMITER ;

-- 2
CREATE sp_get_request_stats()
BEGIN
    SELECT 
        status,
        COUNT(*) AS count,
        ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM request_book), 2) AS percentage
    FROM request_book
    GROUP BY status;
    
    SELECT 
        DATE_FORMAT(requestDate, '%Y-%m') AS month,
        COUNT(*) AS request_count
    FROM request_book
    GROUP BY DATE_FORMAT(requestDate, '%Y-%m')
    ORDER BY month DESC
    LIMIT 2;
    
    SELECT 
        u.name,
        u.email,
        COUNT(*) AS request_count
    FROM request_book r
    JOIN user u ON r.userId = u.id
    GROUP BY u.name, u.email
    ORDER BY request_count DESC
    LIMIT 3;
END