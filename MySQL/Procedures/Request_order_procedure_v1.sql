--1

CREATE  PROCEDURE `sp_get_pending_requests`(
    IN p_limit INT,
    IN p_offset INT)
BEGIN
    SELECT 
        r.requestId,
        r.bookName,
        r.authorName,
        r.description,
        r.requestDate,
        u.name AS requestedBy,
        u.email
    FROM request_book r
    JOIN user u ON r.userId = u.id
    WHERE r.status = 'Pending'
    ORDER BY r.requestDate ASC
    LIMIT p_limit OFFSET p_offset;
END

--2

CREATE PROCEDURE sp_get_request_status (
    IN p_user_id INT,
    IN p_book_name VARCHAR(255)
)
BEGIN
    SELECT 
        requestId,
        bookName,
        status,
        requestDate
    FROM request_book
    WHERE userId = p_user_id AND bookName = p_book_name;
END 


