1. Loyalty value on amount Purchased 2000>Gold 1000> Silver>500 based on email
 
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_determine_loyalty_tier`(
    p_user_email VARCHAR(45)
) RETURNS varchar(20) CHARSET utf8mb4
    READS SQL DATA
BEGIN
    DECLARE total_spent DECIMAL(10,2);
    
    SELECT SUM(CAST(price AS DECIMAL(10,2))) INTO total_spent
    FROM book_order
    WHERE email = p_user_email;
    
    RETURN CASE
        WHEN total_spent > 2000 THEN 'Gold'
        WHEN total_spent > 1000 THEN 'Silver'
        WHEN total_spent > 500 THEN 'Bronze'
        ELSE 'New Customer'
    END;
END

2. Which user purchased how many books according to email

CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_user_purchase_count`(
    p_user_email VARCHAR(45)
) RETURNS int
    READS SQL DATA
BEGIN
    DECLARE purchase_count INT;
    
    SELECT COUNT(*) INTO purchase_count
    FROM book_order
    WHERE email = p_user_email;
    
    RETURN IFNULL(purchase_count, 0);
END