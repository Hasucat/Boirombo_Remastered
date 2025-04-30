--1

DELIMITER //
CREATE TRIGGER trg_validate_cart_item
BEFORE INSERT ON cart
FOR EACH ROW
BEGIN
    DECLARE book_count INT;
    
    -- Check if book exists and is active
    SELECT COUNT(*) INTO book_count 
    FROM book_dbs 
    WHERE bookId = NEW.bid AND status = 'Active';
    
    IF book_count = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot add to cart - book does not exist or is not available';
    END IF;
END //
DELIMITER ;

works 
INSERT INTO cart (bid, uid, bookName, author, price, total_price)
VALUES (1, 1, (SELECT bookname FROM book_dbs WHERE bookId = 1), 
       (SELECT author FROM book_dbs WHERE bookId = 1),
       (SELECT price FROM book_dbs WHERE bookId = 1),
       (SELECT price FROM book_dbs WHERE bookId = 1));


shows error
UPDATE book_dbs SET status = 'Inactive' WHERE bookId = 2;

INSERT INTO cart (bid, uid, bookName, author, price, total_price)
VALUES (2, 1, (SELECT bookname FROM book_dbs WHERE bookId = 2), 
       (SELECT author FROM book_dbs WHERE bookId = 2),
       (SELECT price FROM book_dbs WHERE bookId = 2),
       (SELECT price FROM book_dbs WHERE bookId = 2));


--2 

DELIMITER //
CREATE TRIGGER trg_validate_user_email
BEFORE INSERT ON user
FOR EACH ROW
BEGIN
    IF NEW.email NOT LIKE '%_@__%.__%' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid email format';
    END IF;
END //
DELIMITER ;

works
INSERT INTO user (name, email, phno, password) 
VALUES ('John Doe', 'john@example.com', '1234567890', 'password123');

invalid
INSERT INTO user (name, email, phno, password) 
VALUES ('John Doe', 'johnexample.com', '1234567890', 'password123');


