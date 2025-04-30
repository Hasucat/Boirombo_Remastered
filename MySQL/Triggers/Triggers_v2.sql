--1

CREATE TABLE IF NOT EXISTS order_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(45),
    book_name VARCHAR(45),
    user_email VARCHAR(45),
    log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action VARCHAR(20)
);

DELIMITER //
CREATE TRIGGER trg_log_new_order
AFTER INSERT ON book_order
FOR EACH ROW
BEGIN
    INSERT INTO order_log (order_id, book_name, user_email, action)
    VALUES (NEW.order_id, NEW.book_name, NEW.email, 'ORDER PLACED');
END //
DELIMITER ;
INSERT INTO book_order (order_id, user_name, email, book_name, author, price)
VALUES ('TEST-001', 'Test User', 'test@example.com', 'Sample Book', 'Test Author', '19.99');

 SHOW * FROM order_log


--2

DELIMITER //
CREATE TRIGGER trg_validate_request_user
BEFORE INSERT ON request_book
FOR EACH ROW
BEGIN
    DECLARE user_exists INT;
    
    -- Check if user exists
    SELECT COUNT(*) INTO user_exists
    FROM user
    WHERE id = NEW.userId;
    
    IF user_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid user ID - user does not exist';
    END IF;
END //
DELIMITER ;

works
SELECT * FROM request_book WHERE userId = 1;

not works
INSERT INTO request_book (userId, bookName, status) 
VALUES (999, 'Invalid User Test', 'Pending');
