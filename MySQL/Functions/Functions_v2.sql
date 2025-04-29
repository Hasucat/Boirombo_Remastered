--1 
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_order_status`(p_order_id VARCHAR(45)) RETURNS varchar(30) CHARSET utf8mb4
    READS SQL DATA
BEGIN
    DECLARE order_exists INT;
    DECLARE payment_method VARCHAR(45);
    
    SELECT COUNT(*), payment INTO order_exists, payment_method
    FROM book_order
    WHERE order_id = p_order_id
    GROUP BY payment;
    
    IF order_exists = 0 THEN
        RETURN 'Order Not Found';
    ELSEIF payment_method = 'COD' THEN
        RETURN 'Pending Payment';
    ELSE
        RETURN 'Payment Completed';
    END IF;
END

--2 
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_check_book_availability`(
    p_book_name VARCHAR(45)
) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE book_status VARCHAR(45);

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET book_status = NULL;

    SELECT status INTO book_status 
    FROM book_dbs 
    WHERE bookname = p_book_name
    LIMIT 1;

    IF book_status = 'Active' THEN
        RETURN 'In Stock';
    ELSEIF book_status = 'Inactive' THEN
        RETURN 'Out of Stock';
    ELSEIF book_status IS NULL THEN
        RETURN 'Book Not Found';
    ELSE
        RETURN 'Status Unknown';
    END IF;
END