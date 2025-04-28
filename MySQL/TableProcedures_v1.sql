-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ebook
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_dbs`
--


DROP TABLE IF EXISTS `book_dbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_dbs` (
  `bookId` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `bookCategory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookId`),
  UNIQUE KEY `bookId_UNIQUE` (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_dbs`
--

LOCK TABLES `book_dbs` WRITE;
/*!40000 ALTER TABLE `book_dbs` DISABLE KEYS */;
INSERT INTO `book_dbs` VALUES (1,'Future Galactical Doctine','Arden Espeland','300','Recent','Active','book4.jpg','admin'),(2,'Industrial Design','Eskild Tjalve','240','Old','Active','book5.jpg','admin'),(3,'Matilda','Roald Dahl','200','Old','Active','book16.jpg','admin'),(4,'Coraline','Neil Grammen','180','Old','Active','book14.jpg','admin'),(5,'Nevermore','Samshore','235','Recent','Active','book15.jpg','admin'),(6,'Someone Can See','J.Erikson','340','Recent','Active','book22.jpg','admin'),(7,'Goosebumps','R.L.Stine','150','New','Active','book24.jpg','admin'),(8,'It Starts With Us','Colleen Hoover','250','New','Active','book25.jpg','admin'),(9,'The Best Of Me','Nicholas Sparks ','180','Old','Active','book26.jpg','admin'),(10,'Sea Prayer','Khaled Hosseini','140','New','Active','book27.jpg','admin'),(11,'Take Your Turn Teddy','Haley Newlin','220','New','Active','book28.jpg','admin'),(12,'And The Mountains Echoed','Khaled Hosseini','230','Old','Active','book30.jpg','admin'),(13,'It Ends With Us','Colleen Hoover','300','New','Active','book31.jpg','admin'),(14,' JAVA Programming Notes','Tom Hardy','350','New','Active','book2.jpg','admin'),(15,'Thinking In JAVA','Bruce Eckel','230','New','Active','book1.jpg','admin'),(16,'Differential Geometry','Clyde F.Martin','400','New','Active','book11.jpg','admin'),(17,'Engineering For Kids ','John Oliver','200','New','Active','book10.jpg','admin'),(18,'HTML & CSS','Jon Duckett','299','Old','Active','book33.jpg','brownie@gmail.com'),(19,'Learn HTML for Beginners','Allen Mark','456','Old','Active','book34.jpg','admin'),(20,'Java','IUT','309','Old','Active','book39.jpg','alifhasnain@gmail.com'),(21,'HTML & CSS','John Dunkett','250','Old','Active','book33.jpg','afsanashehrin@gmail.com'),(22,'Ickabog','J.K Rowling','200','New','Active','book41.jpg','admin'),(23,'Harry Potter and The Deathly Hallows','J.K Rowling','250','New','Active','book40.jpg','admin'),(24,'Fantastic Beasts','J.K Rowling','180','New','Active','book42.jpg','admin'),(25,'Harry Potter and the Chamber Of Secrets','J.K Rowling','300','Old','Active','book47.jpg','admin'),(26,'Harry Potter and the Prisoner of Azkaban','J.K Rowling','290','Old','Active','book48.jpg','admin'),(27,'Quidditch Through the Ages','J.K Rowling','150','Old','Active','book49.jpg','admin'),(28,'November 9','Colleen Hoover','230','Old','Active','book45.jpg','admin'),(29,'Confess','Colleen Hoover','170','Old','Active','book51.jpg','admin'),(30,'Hopeless','Colleen Hoover','310','Old','Active','book50.jpg','admin'),(31,'Verity','Colleen Hoover','180','New','Active','book46.jpg','admin'),(32,'Never Never','Colleen Hoover','360','New','Active','book44.jpg','admin'),(33,'It Starts With Us','Colleen Hoover','290','New','Active','book43.jpg','admin'),(34,'Heart Bones','Colleen Hoover','270','New','Active','book52.jpg','admin'),(123,'alif','alif','399','Old','Active','book1.jpg','');
/*!40000 ALTER TABLE `book_dbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
INSERT INTO `book_order` VALUES (60,'BOOK-ORD-00650','Alif Hasnain','alifhasnain@gmail.com','iut,iut,dhaka,gazi,1234','1234','Differential Geometry','Clyde F.Martin','400.0','COD'),(61,'BOOK-ORD-00968','Alif Hasnain','alifhasnain@gmail.com','iut,iut,dhaka,gazi,1234','1234','Thinking In JAVA','Bruce Eckel','230.0','COD'),(62,'BOOK-ORD-00813','Afsana Shehrin ','afsanashehrin@gmail.com','awq,rtere,fdfd,dsdf,21132','1234','Engineering For Kids ','John Oliver','200.0','Card'),(63,'BOOK-ORD-00551','Afsana Shehrin ','afsanashehrin@gmail.com','awq,rtere,fdfd,dsdf,21132','1234','It Ends With Us','Colleen Hoover','300.0','Card'),(64,'BOOK-ORD-00525','Afsana Shehrin ','afsanashehrin@gmail.com','IUT,Boardbazar,Dhaka,Gazipur,3839','1234','Engineering For Kids ','John Oliver','200.0','COD'),(65,'BOOK-ORD-00398','Afsana Shehrin ','afsanashehrin@gmail.com','IUT,Boardbazar,Dhaka,Gazipur,3839','1234','It Ends With Us','Colleen Hoover','300.0','COD'),(66,'BOOK-ORD-00992','Afsana Shehrin ','afsanashehrin@gmail.com','IUT,Boardbazar,Dhaka,Gazipur,3839','1234','Engineering For Kids ','John Oliver','200.0','COD'),(67,'BOOK-ORD-00592','Afsana Shehrin ','afsanashehrin@gmail.com','IUT,Boardbazar,Dhaka,Gazipur,3839','1234','Thinking In JAVA','Bruce Eckel','230.0','COD'),(68,'BOOK-ORD-00844','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Engineering For Kids ','John Oliver','200.0','COD'),(69,'BOOK-ORD-0099','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','It Ends With Us','Colleen Hoover','300.0','COD'),(70,'BOOK-ORD-00906','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Engineering For Kids ','John Oliver','200.0','COD'),(71,'BOOK-ORD-00509','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Thinking In JAVA','Bruce Eckel','230.0','COD'),(72,'BOOK-ORD-00870','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Engineering For Kids ','John Oliver','200.0','COD'),(73,'BOOK-ORD-00765','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Differential Geometry','Clyde F.Martin','400.0','COD'),(78,'BOOK-ORD-00387','Icosane','icosane@gmail.com','iut,Gazi,dhaka,Gazi,1234','210041239','Engineering For Kids ','John Oliver','200.0','Loan'),(79,'BOOK-ORD-00746','Icosane','icosane@gmail.com','iut,Gazi,dhaka,Gazi,1234','210041239','Take Your Turn Teddy','Haley Newlin','220.0','Loan'),(80,'BOOK-ORD-00713','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','Goosebumps','R.L.Stine','150.0','Card'),(81,'BOOK-ORD-00737','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','Sea Prayer','Khaled Hosseini','140.0','Card'),(82,'BOOK-ORD-00376','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','Take Your Turn Teddy','Haley Newlin','220.0','Card'),(83,'BOOK-ORD-00559','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','It Ends With Us','Colleen Hoover','300.0','Card'),(84,'BOOK-ORD-00741','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','Thinking In JAVA','Bruce Eckel','230.0','Card'),(85,'BOOK-ORD-00112','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398',' JAVA Programming Notes','Tom Hardy','350.0','Loan'),(86,'BOOK-ORD-00154','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Thinking In JAVA','Bruce Eckel','230.0','Loan'),(87,'BOOK-ORD-00487','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','It Ends With Us','Colleen Hoover','300.0','Loan'),(88,'BOOK-ORD-00314','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Fantastic Beasts','J.K Rowling','180.0','Loan'),(89,'BOOK-ORD-00475','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Harry Potter and The Deathly Hallows','J.K Rowling','250.0','Loan'),(90,'BOOK-ORD-00629','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Never Never','Colleen Hoover','360.0','Loan'),(91,'BOOK-ORD-00779','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Verity','Colleen Hoover','180.0','Loan'),(92,'BOOK-ORD-00159','Icosane','icosane@gmail.com','a,Gazi,dhaka,Gazi,1234','210041239','Engineering For Kids ','John Oliver','200.0','COD'),(93,'BOOK-ORD-00928','Icosane','icosane@gmail.com','a,Gazi,dhaka,Gazi,1234','210041239','Take Your Turn Teddy','Haley Newlin','220.0','COD'),(94,'BOOK-ORD-00107','Icosane','icosane@gmail.com','a,Gazi,dhaka,Gazi,1234','210041239','Heart Bones','Colleen Hoover','270.0','COD');
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ebook'
--

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_user_payments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_user_payments`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE user_email VARCHAR(45);
    DECLARE total_payment DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT email FROM book_order GROUP BY email;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO user_email;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT SUM(CAST(price AS DECIMAL(10, 2)) * CAST(payment AS SIGNED)) 
        INTO total_payment 
        FROM book_order 
        WHERE email = user_email;

        SELECT CONCAT('User: ', user_email, ', Total Payment: ', total_payment) AS PaymentSummary;
    END LOOP;

    CLOSE cur;
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBookCategoryOrdersAndRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBookCategoryOrdersAndRevenue`()
BEGIN
    SELECT 
        b.bookCategory AS Category,
        COUNT(bo.id) AS TotalOrders,
        SUM(CAST(bo.price AS DECIMAL)) AS TotalRevenue
    FROM 
        book_order bo
    JOIN 
        book_dbs b ON bo.book_name = b.bookname
    GROUP BY 
        b.bookCategory
    ORDER BY 
        TotalRevenue DESC;
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_author_book_count_and_total_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_author_book_count_and_total_price`()
BEGIN
    SELECT 
        author, 
        COUNT(bookId) AS TotalBooks, 
        SUM(CAST(price AS DECIMAL(10, 2))) AS TotalPrice
    FROM book_dbs
    GROUP BY author;
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_books_by_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_books_by_category`(IN user_category VARCHAR(45))
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE category VARCHAR(45);
    
    -- Declare a cursor for fetching books in the specified category
    DECLARE cur CURSOR FOR 
        SELECT bookCategory
        FROM book_dbs
        WHERE bookCategory = user_category
        GROUP BY bookCategory;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO category;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT bookId, bookname, author, price
        FROM book_dbs
        WHERE bookCategory = category;

    END LOOP;

    CLOSE cur;
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sales_with_rollup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sales_with_rollup`()
BEGIN
    SELECT 
        book_name, 
        COUNT(*) AS TotalQuantity, -- Count the number of rows for each book
        SUM(CAST(price AS DECIMAL(10, 2))) AS TotalSales -- Calculate the total sales for each book
    FROM book_order
    GROUP BY book_name WITH ROLLUP;
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_books` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user_books`(IN user_email VARCHAR(45))
BEGIN
    SET @query = CONCAT(
        'SELECT book_name, author, price, payment FROM book_order WHERE email = "', 
        user_email, 
        '"'
    );

    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_books_in_cart_and_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user_books_in_cart_and_order`()
BEGIN
    SELECT 
        bo.user_name AS UserName,
		u.email AS UserEmail,
        u.phno AS UserPhno,
        bo.order_id AS OrderedId,
        bo.book_name AS OrderedBook, 
        bo.payment AS PaymentMethod
    FROM book_order bo
    INNER JOIN user u ON bo.user_name = u.name
    WHERE bo.email IS NOT NULL
    ORDER BY bo.user_name;
    
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `run_all_procs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `run_all_procs`()
BEGIN
CALL GetBookCategoryOrdersAndRevenue;
CALL get_author_book_count_and_total_price;
CALL get_books_by_category;
CALL get_sales_with_rollup;
CALL get_user_books;
CALL get_user_books_in_cart_and_order;
CALL calculate_user_payments;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 15:45:16


