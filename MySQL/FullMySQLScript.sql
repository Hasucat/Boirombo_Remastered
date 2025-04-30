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
INSERT INTO `book_dbs` VALUES (1,'Future Galactical Doctine','Arden Espeland','300','Recent','Active','book4.jpg','admin'),(2,'Industrial Design','Eskild Tjalve','240','Old','Active','book5.jpg','admin'),(3,'Matilda','Roald Dahl','200','Old','Active','book16.jpg','admin'),(4,'Coraline','Neil Grammen','180','Old','Active','book14.jpg','admin'),(5,'Nevermore','Samshore','235','Recent','Active','book15.jpg','admin'),(6,'Someone Can See','J.Erikson','340','Recent','Active','book22.jpg','admin'),(7,'Goosebumps','R.L.Stine','150','New','Active','book24.jpg','admin'),(8,'It Starts With Us','Colleen Hoover','250','New','Active','book25.jpg','admin'),(9,'The Best Of Me','Nicholas Sparks ','180','Old','Active','book26.jpg','admin'),(10,'Sea Prayer','Khaled Hosseini','140','New','Active','book27.jpg','admin'),(11,'Take Your Turn Teddy','Haley Newlin','220','New','Active','book28.jpg','admin'),(12,'And The Mountains Echoed','Khaled Hosseini','230','Old','Active','book30.jpg','admin'),(13,'It Ends With Us','Colleen Hoover','300','New','Active','book31.jpg','admin'),(14,' JAVA Programming Notes','Tom Hardy','350','New','Active','book2.jpg','admin'),(15,'Thinking In JAVA','Bruce Eckel','230','New','Active','book1.jpg','admin'),(16,'Differential Geometry','Clyde F.Martin','400','New','Active','book11.jpg','admin'),(17,'Engineering For Kids ','John Oliver','200','New','Active','book10.jpg','admin'),(18,'HTML & CSS','Jon Duckett','299','Old','Active','book33.jpg','brownie@gmail.com'),(19,'Learn HTML for Beginners','Allen Mark','456','Old','Active','book34.jpg','admin'),(20,'Java','IUT','309','Old','Active','book39.jpg','alifhasnain@gmail.com'),(21,'HTML & CSS','John Dunkett','250','Old','Active','book33.jpg','afsanashehrin@gmail.com'),(22,'Ickabog','J.K Rowling','200','New','Active','book41.jpg','admin'),(23,'Harry Potter and The Deathly Hallows','J.K Rowling','250','New','Active','book40.jpg','admin'),(24,'Fantastic Beasts','J.K Rowling','180','New','Active','book42.jpg','admin'),(25,'Harry Potter and the Chamber Of Secrets','J.K Rowling','300','Old','Active','book47.jpg','admin'),(26,'Harry Potter and the Prisoner of Azkaban','J.K Rowling','290','Old','Active','book48.jpg','admin'),(27,'Quidditch Through the Ages','J.K Rowling','150','Old','Active','book49.jpg','admin'),(28,'November 9','Colleen Hoover','230','Old','Active','book45.jpg','admin'),(29,'Confess','Colleen Hoover','170','Old','Active','book51.jpg','admin'),(30,'Hopeless','Colleen Hoover','310','Old','Active','book50.jpg','admin'),(31,'Verity','Colleen Hoover','180','New','Active','book46.jpg','admin'),(32,'Never Never','Colleen Hoover','360','New','Active','book44.jpg','admin'),(33,'It Starts With Us','Colleen Hoover','290','New','Active','book43.jpg','admin'),(34,'Heart Bones','Colleen Hoover','270','New','Active','book52.jpg','admin'),(35,'alif','alif','399','Old','Active','book1.jpg','admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
INSERT INTO `book_order` VALUES (60,'BOOK-ORD-00650','Alif Hasnain','alifhasnain@gmail.com','iut,iut,dhaka,gazi,1234','1234','Differential Geometry','Clyde F.Martin','400.0','COD'),(61,'BOOK-ORD-00968','Alif Hasnain','alifhasnain@gmail.com','iut,iut,dhaka,gazi,1234','1234','Thinking In JAVA','Bruce Eckel','230.0','COD'),(62,'BOOK-ORD-00813','Afsana Shehrin ','afsanashehrin@gmail.com','awq,rtere,fdfd,dsdf,21132','1234','Engineering For Kids ','John Oliver','200.0','Card'),(63,'BOOK-ORD-00551','Afsana Shehrin ','afsanashehrin@gmail.com','awq,rtere,fdfd,dsdf,21132','1234','It Ends With Us','Colleen Hoover','300.0','Card'),(64,'BOOK-ORD-00525','Afsana Shehrin ','afsanashehrin@gmail.com','IUT,Boardbazar,Dhaka,Gazipur,3839','1234','Engineering For Kids ','John Oliver','200.0','COD'),(65,'BOOK-ORD-00398','Afsana Shehrin ','afsanashehrin@gmail.com','IUT,Boardbazar,Dhaka,Gazipur,3839','1234','It Ends With Us','Colleen Hoover','300.0','COD'),(66,'BOOK-ORD-00992','Afsana Shehrin ','afsanashehrin@gmail.com','IUT,Boardbazar,Dhaka,Gazipur,3839','1234','Engineering For Kids ','John Oliver','200.0','COD'),(67,'BOOK-ORD-00592','Afsana Shehrin ','afsanashehrin@gmail.com','IUT,Boardbazar,Dhaka,Gazipur,3839','1234','Thinking In JAVA','Bruce Eckel','230.0','COD'),(68,'BOOK-ORD-00844','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Engineering For Kids ','John Oliver','200.0','COD'),(69,'BOOK-ORD-0099','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','It Ends With Us','Colleen Hoover','300.0','COD'),(70,'BOOK-ORD-00906','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Engineering For Kids ','John Oliver','200.0','COD'),(71,'BOOK-ORD-00509','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Thinking In JAVA','Bruce Eckel','230.0','COD'),(72,'BOOK-ORD-00870','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Engineering For Kids ','John Oliver','200.0','COD'),(73,'BOOK-ORD-00765','Afsana Shehrin ','afsanashehrin@gmail.com','ggfdsds,sadsadas232,asdasdas,ssfds,323','1234','Differential Geometry','Clyde F.Martin','400.0','COD'),(78,'BOOK-ORD-00387','Icosane','icosane@gmail.com','iut,Gazi,dhaka,Gazi,1234','210041239','Engineering For Kids ','John Oliver','200.0','Loan'),(79,'BOOK-ORD-00746','Icosane','icosane@gmail.com','iut,Gazi,dhaka,Gazi,1234','210041239','Take Your Turn Teddy','Haley Newlin','220.0','Loan'),(80,'BOOK-ORD-00713','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','Goosebumps','R.L.Stine','150.0','Card'),(81,'BOOK-ORD-00737','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','Sea Prayer','Khaled Hosseini','140.0','Card'),(82,'BOOK-ORD-00376','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','Take Your Turn Teddy','Haley Newlin','220.0','Card'),(83,'BOOK-ORD-00559','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','It Ends With Us','Colleen Hoover','300.0','Card'),(84,'BOOK-ORD-00741','Arfa','arfa@gmail.com','iut,ctg,ctg,ctg,1234','84557843','Thinking In JAVA','Bruce Eckel','230.0','Card'),(85,'BOOK-ORD-00112','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398',' JAVA Programming Notes','Tom Hardy','350.0','Loan'),(86,'BOOK-ORD-00154','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Thinking In JAVA','Bruce Eckel','230.0','Loan'),(87,'BOOK-ORD-00487','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','It Ends With Us','Colleen Hoover','300.0','Loan'),(88,'BOOK-ORD-00314','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Fantastic Beasts','J.K Rowling','180.0','Loan'),(89,'BOOK-ORD-00475','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Harry Potter and The Deathly Hallows','J.K Rowling','250.0','Loan'),(90,'BOOK-ORD-00629','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Never Never','Colleen Hoover','360.0','Loan'),(91,'BOOK-ORD-00779','Sanjana Afrin','Sudu@gmail.com','iut,Baily,dhaka,Baily,1234','1398','Verity','Colleen Hoover','180.0','Loan'),(92,'BOOK-ORD-00159','Icosane','icosane@gmail.com','a,Gazi,dhaka,Gazi,1234','210041239','Engineering For Kids ','John Oliver','200.0','COD'),(93,'BOOK-ORD-00928','Icosane','icosane@gmail.com','a,Gazi,dhaka,Gazi,1234','210041239','Take Your Turn Teddy','Haley Newlin','220.0','COD'),(94,'BOOK-ORD-00107','Icosane','icosane@gmail.com','a,Gazi,dhaka,Gazi,1234','210041239','Heart Bones','Colleen Hoover','270.0','COD'),(95,'BOOK-ORD-00655','asaads','kjkj@gmail.com','sads,gfghf,vbvbv,jhjh,43234','12312','Heart Bones','Colleen Hoover','270.0','COD'),(96,'BOOK-ORD-0039','asaads','kjkj@gmail.com','sads,gfghf,vbvbv,jhjh,43234','12312','Never Never','Colleen Hoover','360.0','COD'),(97,'BOOK-ORD-00403','asaads','kjkj@gmail.com','sads,gfghf,vbvbv,jhjh,43234','12312','Harry Potter and The Deathly Hallows','J.K Rowling','250.0','COD'),(98,'TEST-001','Test User','test@example.com',NULL,NULL,'Sample Book','Test Author','19.99',NULL),(99,'BOOK-ORD-00537','asaads','kjkj@gmail.com','sdadsd,gfgf,cxcxcz,jkhkhh,2312','12312',' JAVA Programming Notes','Tom Hardy','350.0','Loan'),(100,'BOOK-ORD-00436','asaads','kjkj@gmail.com','sdadsd,gfgf,cxcxcz,jkhkhh,2312','12312','It Ends With Us','Colleen Hoover','300.0','Loan'),(101,'BOOK-ORD-00672','asaads','kjkj@gmail.com','sdadsd,gfgf,cxcxcz,jkhkhh,2312','12312','Sea Prayer','Khaled Hosseini','140.0','Loan'),(102,'BOOK-ORD-00571','Afsana Shehrin ','afsanashehrin@gmail.com','dsda,sdadsasa,sasdad,sdadsas,32332','1234','Never Never','Colleen Hoover','360.0','COD'),(103,'BOOK-ORD-00353','Afsana Shehrin ','afsanashehrin@gmail.com','dsda,sdadsasa,sasdad,sdadsas,32332','1234','Verity','Colleen Hoover','180.0','COD');
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_new_order` AFTER INSERT ON `book_order` FOR EACH ROW BEGIN
    INSERT INTO order_log (order_id, book_name, user_email, action)
    VALUES (NEW.order_id, NEW.book_name, NEW.email, 'ORDER PLACED');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `bid` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `bookName` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (181,16,2,'Differential Geometry','Clyde F.Martin',400,400),(182,15,2,'Thinking In JAVA','Bruce Eckel',230,230),(208,22,2,'Ickabog','J.K Rowling',200,200),(209,31,2,'Verity','Colleen Hoover',180,180),(210,24,2,'Fantastic Beasts','J.K Rowling',180,180),(211,17,16,'Engineering For Kids ','John Oliver',200,200),(212,11,16,'Take Your Turn Teddy','Haley Newlin',220,220),(213,32,19,'Never Never','Colleen Hoover',360,360),(214,22,19,'Ickabog','J.K Rowling',200,200),(215,24,19,'Fantastic Beasts','J.K Rowling',180,180),(216,7,18,'Goosebumps','R.L.Stine',150,150),(217,10,18,'Sea Prayer','Khaled Hosseini',140,140),(218,11,18,'Take Your Turn Teddy','Haley Newlin',220,220),(219,13,18,'It Ends With Us','Colleen Hoover',300,300),(220,15,18,'Thinking In JAVA','Bruce Eckel',230,230),(221,14,17,' JAVA Programming Notes','Tom Hardy',350,350),(222,15,17,'Thinking In JAVA','Bruce Eckel',230,230),(223,13,17,'It Ends With Us','Colleen Hoover',300,300),(224,24,17,'Fantastic Beasts','J.K Rowling',180,180),(225,23,17,'Harry Potter and The Deathly Hallows','J.K Rowling',250,250),(226,32,17,'Never Never','Colleen Hoover',360,360),(227,31,17,'Verity','Colleen Hoover',180,180),(228,34,16,'Heart Bones','Colleen Hoover',270,270),(233,14,33,' JAVA Programming Notes','Tom Hardy',350,350),(234,13,33,'It Ends With Us','Colleen Hoover',300,300),(235,10,33,'Sea Prayer','Khaled Hosseini',140,140),(237,32,1,'Never Never','Colleen Hoover',360,360),(238,31,1,'Verity','Colleen Hoover',180,180);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_validate_cart_item` BEFORE INSERT ON `cart` FOR EACH ROW BEGIN
    DECLARE book_count INT;
    
    -- Check if book exists and is active
    SELECT COUNT(*) INTO book_count 
    FROM book_dbs 
    WHERE bookId = NEW.bid AND status = 'Active';
    
    IF book_count = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot add to cart - book does not exist or is not available';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `order_log`
--

DROP TABLE IF EXISTS `order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(45) DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `log_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_log`
--

LOCK TABLES `order_log` WRITE;
/*!40000 ALTER TABLE `order_log` DISABLE KEYS */;
INSERT INTO `order_log` VALUES (1,'TEST-001','Sample Book','test@example.com','2025-04-30 05:51:48','ORDER PLACED'),(2,'BOOK-ORD-00537',' JAVA Programming Notes','kjkj@gmail.com','2025-04-30 05:54:09','ORDER PLACED'),(3,'BOOK-ORD-00436','It Ends With Us','kjkj@gmail.com','2025-04-30 05:54:09','ORDER PLACED'),(4,'BOOK-ORD-00672','Sea Prayer','kjkj@gmail.com','2025-04-30 05:54:09','ORDER PLACED'),(5,'BOOK-ORD-00571','Never Never','afsanashehrin@gmail.com','2025-04-30 06:27:06','ORDER PLACED'),(6,'BOOK-ORD-00353','Verity','afsanashehrin@gmail.com','2025-04-30 06:27:06','ORDER PLACED');
/*!40000 ALTER TABLE `order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_book`
--

DROP TABLE IF EXISTS `request_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_book` (
  `requestId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `bookName` varchar(255) DEFAULT NULL,
  `authorName` varchar(255) DEFAULT NULL,
  `description` text,
  `bookImage` varchar(255) DEFAULT NULL,
  `requestDate` timestamp(6) NULL DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Pending',
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `requestId_UNIQUE` (`requestId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_book`
--

LOCK TABLES `request_book` WRITE;
/*!40000 ALTER TABLE `request_book` DISABLE KEYS */;
INSERT INTO `request_book` VALUES (1,1,'Thousand Splendid Sun','Khaled Hosseini','Real Life ,Taraban Story','book60.jpg','2025-04-27 18:00:00.000000','Approved'),(2,1,'Verity','Colleen Hoover','Suspense','book61.jpg','2025-04-27 18:00:00.000000','Pending'),(3,5,'Kite Runner','Khaled Hosseini','Historic Fiction','book62.jpg','2025-04-27 18:00:00.000000','Approved'),(4,5,'It Starts with Us','Colleen Hoover','Suspense','book63.jpg','2025-04-27 18:00:00.000000','Approved'),(5,8,'Verity','Colleen Hoover','Suspense','book64.jpg','2025-04-27 18:00:00.000000','Approved'),(6,1,'Kite Runner','Khaled Hosseini','Historic Fiction','book65.jpg','2025-04-27 18:00:00.000000','Approved'),(7,1,'And The Mountains Echoed','Khaled Hosseini','Real Life ,Taraban Story','book66.jpg','2025-04-28 18:00:00.000000','Pending'),(8,6,'Kite Runner','Khaled Hosseini','Historic Fiction','book67.jpg','2025-04-28 18:00:00.000000','Pending'),(9,3,'Verity','Colleen Hoover','Suspense','book68.jpg','2025-04-29 18:00:00.000000','Pending'),(10,3,'The Shining','Stephen King','Horror','book69.jpg','2025-04-29 18:00:00.000000','Pending'),(11,5,'Uzumaki','Junji Ito','Horror','book70.jpg','2025-04-29 18:00:00.000000','Fulfilled'),(12,1,'Tomie','Junji Ito','Horror','book71.jpg','2025-04-29 18:00:00.000000','Fulfilled'),(13,1,'Dork Diaries','RRR','Children','book72.jpg','2025-04-29 18:00:00.000000','Rejected'),(14,2,'Dork Diaries','RRR','Children','book73.jpg','2025-04-29 18:00:00.000000','Rejected'),(15,3,'Uzumaki','Junji Ito','Horror','book74.jpg','2025-04-29 18:00:00.000000','Pending'),(16,2,'Uzumaki','Junji Ito','Horror','book75.jpg','2025-04-29 18:00:00.000000','Pending'),(17,2,'Mr.Stink','David Williams','Children','book76.jpg','2025-04-29 18:00:00.000000','Fulfilled');
/*!40000 ALTER TABLE `request_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_validate_request_user` BEFORE INSERT ON `request_book` FOR EACH ROW BEGIN
    DECLARE user_exists INT;
    
    -- Check if user exists
    SELECT COUNT(*) INTO user_exists
    FROM user
    WHERE id = NEW.userId;
    
    IF user_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid user ID - user does not exist';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phno` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Afsana Shehrin ','afsanashehrin@gmail.com','1234','1234',NULL,NULL,NULL,NULL,NULL),(2,'Alif Hasnain','alifhasnain@gmail.com','1234','1234',NULL,NULL,NULL,NULL,NULL),(3,'Icosane','icosane@gmail.com','210041239','1234',NULL,NULL,NULL,NULL,NULL),(4,'Sanjana Afrin','Sudu@gmail.com','1398','1234',NULL,NULL,NULL,NULL,NULL),(5,'Arfa','arfa@gmail.com','84557843','1234',NULL,NULL,NULL,NULL,NULL),(6,'Beluga','beluga@gmail.com','210041238','1234',NULL,NULL,NULL,NULL,NULL),(7,'Ananna Afroz','afroz@gmail.com','875487','1234',NULL,NULL,NULL,NULL,NULL),(8,'Aymaan','aymaan@gmail.com','687896','1234',NULL,NULL,NULL,NULL,NULL),(9,'Rumana Ahmed Noushaba','rumanaahmed@gmail.com','123456789','1234',NULL,NULL,NULL,NULL,NULL),(10,'sdasda','sasd@gmail.com','12123','453453',NULL,NULL,NULL,NULL,NULL),(11,'SDSADSA','asdsa@gmail.com','213123','sadfadsf',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_validate_user_email` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
    IF NEW.email NOT LIKE '%_@__%.__%' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid email format';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vw_author_popularity`
--

DROP TABLE IF EXISTS `vw_author_popularity`;
/*!50001 DROP VIEW IF EXISTS `vw_author_popularity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_author_popularity` AS SELECT 
 1 AS `author`,
 1 AS `total_orders`,
 1 AS `cart_appearances`,
 1 AS `request_count`,
 1 AS `popularity_rank`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_book_inventory_health_basic`
--

DROP TABLE IF EXISTS `vw_book_inventory_health_basic`;
/*!50001 DROP VIEW IF EXISTS `vw_book_inventory_health_basic`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_book_inventory_health_basic` AS SELECT 
 1 AS `bookId`,
 1 AS `title`,
 1 AS `author`,
 1 AS `price`,
 1 AS `category`,
 1 AS `status`,
 1 AS `times_ordered`,
 1 AS `times_in_carts`,
 1 AS `times_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_book_recommendations`
--

DROP TABLE IF EXISTS `vw_book_recommendations`;
/*!50001 DROP VIEW IF EXISTS `vw_book_recommendations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_book_recommendations` AS SELECT 
 1 AS `source_book`,
 1 AS `source_author`,
 1 AS `recommended_book`,
 1 AS `recommended_author`,
 1 AS `co_occurrence_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cart_composition_analysis`
--

DROP TABLE IF EXISTS `vw_cart_composition_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_cart_composition_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cart_composition_analysis` AS SELECT 
 1 AS `cart_id`,
 1 AS `user_name`,
 1 AS `items_in_cart`,
 1 AS `categories_in_cart`,
 1 AS `cart_total`,
 1 AS `avg_item_price`,
 1 AS `max_item_price`,
 1 AS `min_item_price`,
 1 AS `cart_type`,
 1 AS `price_distribution`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_geographic_value_analysis`
--

DROP TABLE IF EXISTS `vw_geographic_value_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_geographic_value_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_geographic_value_analysis` AS SELECT 
 1 AS `state`,
 1 AS `city`,
 1 AS `total_users`,
 1 AS `total_orders`,
 1 AS `total_revenue`,
 1 AS `avg_order_value`,
 1 AS `revenue_rank`,
 1 AS `conversion_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_user_cart_segments`
--

DROP TABLE IF EXISTS `vw_user_cart_segments`;
/*!50001 DROP VIEW IF EXISTS `vw_user_cart_segments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_user_cart_segments` AS SELECT 
 1 AS `user_id`,
 1 AS `name`,
 1 AS `email`,
 1 AS `total_cart_events`,
 1 AS `total_cart_value`,
 1 AS `avg_cart_value`,
 1 AS `cart_behavior_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_user_reading_preferences`
--

DROP TABLE IF EXISTS `vw_user_reading_preferences`;
/*!50001 DROP VIEW IF EXISTS `vw_user_reading_preferences`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_user_reading_preferences` AS SELECT 
 1 AS `user_id`,
 1 AS `name`,
 1 AS `favorite_category`,
 1 AS `category_count`,
 1 AS `preferred_authors`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'ebook'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_check_book_availability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_check_order_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_determine_loyalty_tier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_user_purchase_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_total_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_total_price`(IN user_id INT)
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE cart_price DOUBLE;
    DECLARE total DOUBLE DEFAULT 0;

    DECLARE cur CURSOR FOR
        SELECT total_price
        FROM cart
        WHERE uid = user_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO cart_price;
        
        IF done THEN
            LEAVE read_loop;
        END IF;

        SET total = total + cart_price;

    END LOOP;

    CLOSE cur;

   SELECT user_id AS UID, total AS TotalPrice;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_user_bills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_user_bills`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE user_email VARCHAR(45);
    DECLARE total_bill DECIMAL(10, 2);

	DECLARE cur CURSOR FOR SELECT email FROM book_order GROUP BY email;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_user_bills (
        user_email VARCHAR(45),
        total_bill DECIMAL(10, 2)
    );

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO user_email;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT SUM(CAST(price AS DECIMAL(10, 2))) 
        INTO total_bill 
        FROM book_order 
        WHERE email = user_email;

        INSERT INTO temp_user_bills (user_email, total_bill)
        VALUES (user_email, total_bill);
    END LOOP;

    CLOSE cur;

    SELECT * FROM temp_user_bills;

    DROP TEMPORARY TABLE IF EXISTS temp_user_bills;
END ;;
DELIMITER ;
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
    DECLARE cur CURSOR FOR 
        SELECT email FROM book_order GROUP BY email;
    DECLARE CONTINUE HANDLER FOR NOT FOUND 
        SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO user_email;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT SUM(CAST(price AS DECIMAL(10, 2))) 
        INTO total_payment
        FROM book_order 
        WHERE email = user_email AND price IS NOT NULL;

        IF total_payment IS NOT NULL THEN
            SELECT CONCAT('User: ', user_email, ', Total Payment: ', total_payment) AS PaymentSummary;
        END IF;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBookCategoryOrdersAndRevenue`(IN book_category VARCHAR(45))
BEGIN
    SELECT 
        b.bookCategory AS Category,
        COUNT(bo.id) AS TotalOrders,
        SUM(CAST(bo.price AS DECIMAL)) AS TotalRevenue
    FROM 
        book_order bo
    JOIN 
        book_dbs b ON bo.book_name = b.bookname
    WHERE
        b.bookCategory = book_category
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
/*!50003 DROP PROCEDURE IF EXISTS `GetTopSpendingUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTopSpendingUsers`()
BEGIN
    SELECT 
        u.name AS UserName,
        u.email AS UserEmail,
        SUM(CAST(bo.price AS DECIMAL)) AS TotalSpent
    FROM 
        user u
    JOIN 
        book_order bo ON u.email = bo.email
    GROUP BY 
        u.name, u.email
    ORDER BY 
        TotalSpent DESC
    LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUnorderedCartBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUnorderedCartBooks`()
BEGIN
    SELECT 
        c.bookName AS BookName,
        c.author AS Author,
        c.price AS Price,
        u.name AS UserName,
        u.email AS UserEmail
    FROM 
        cart c
    LEFT JOIN 
        book_order bo ON c.bookName = bo.book_name AND c.uid = (SELECT id FROM user WHERE user.email = bo.email)
    JOIN 
        user u ON c.uid = u.id
    WHERE 
        bo.id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUserOrderSummary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserOrderSummary`()
BEGIN
    SELECT 
        u.name AS UserName,
        u.email AS Email,
        SUM(CAST(bo.price AS DECIMAL)) AS TotalSpent
    FROM 
        user u
    JOIN 
        book_order bo ON u.email = bo.email
    GROUP BY 
        u.name, u.email WITH ROLLUP
    HAVING 
        TotalSpent > 1000 OR GROUPING(u.name) = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUsersWithoutOrders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUsersWithoutOrders`()
BEGIN
    SELECT 
        u.name AS UserName,
        u.email AS UserEmail
    FROM 
        user u
    LEFT JOIN 
        book_order bo ON u.email = bo.email
    WHERE 
        bo.id IS NULL;
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
/*!50003 DROP PROCEDURE IF EXISTS `get_cart_details_by_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_cart_details_by_user`(IN user_id INT)
BEGIN
    SELECT 
        u.name AS UserName,
        c.bookName AS BookName,
        c.author AS Author,
        c.price AS Price,
        c.total_price AS TotalPrice
    FROM 
        cart c
    JOIN 
        user u ON c.uid = u.id
    WHERE 
        c.uid = user_id  
    ORDER BY 
        u.name, c.bookName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_cart_total_with_rollup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_cart_total_with_rollup`(IN min_total_price DOUBLE)
BEGIN
    SELECT 
        u.name AS UserName,
        SUM(c.total_price) AS TotalCartPrice
    FROM 
        cart c
    JOIN 
        user u ON c.uid = u.id
    GROUP BY 
        u.name
    WITH ROLLUP
    HAVING SUM(c.total_price) > min_total_price OR GROUPING(u.name) = 1; 
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `run_all_procs`(
    IN in_user_category VARCHAR(45),
    IN in_user_id INT,
    IN in_min_total_price DOUBLE,
    IN in_user_email VARCHAR(45)
)
BEGIN
 CALL GetBookCategoryOrdersAndRevenue();
    CALL GetTopSpendingUsers();
    CALL GetUnorderedCartBooks();
    CALL GetUserOrderSummary();
    CALL GetUsersWithoutOrders();
    CALL get_author_book_count_and_total_price();
    CALL get_sales_with_rollup();
    CALL get_user_books_in_cart_and_order();
    CALL calculate_user_payments();
    CALL calculate_user_bills();
    
	CALL get_books_by_category(in_user_category);
    CALL get_cart_details_by_user(in_user_id);
    CALL get_cart_total_with_rollup(in_min_total_price);
    CALL get_user_books(in_user_email);
    CALL calculate_total_price(in_user_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_author_request_counts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_author_request_counts`()
BEGIN
    SELECT 
        authorName AS author,
        COUNT(*) AS request_count
    FROM request_book
    GROUP BY authorName
    ORDER BY request_count DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_pending_requests` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_pending_requests`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_request_stats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_request_stats`()
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_request_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_request_status`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_user_requests` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_user_requests`(
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
        OR (p_include_approved = TRUE AND r.status = 'Active')
        OR (p_include_rejected = TRUE AND r.status = 'Rejected')
        OR (p_include_fulfilled = TRUE AND r.status = 'Fulfilled')
    )
    ORDER BY r.requestDate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_top_requested_books` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_top_requested_books`()
BEGIN
    SELECT 
        bookName,
        COUNT(*) AS request_count
    FROM request_book
    GROUP BY bookName
    ORDER BY request_count DESC
    LIMIT 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_author_popularity`
--

/*!50001 DROP VIEW IF EXISTS `vw_author_popularity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_author_popularity` AS select `b`.`author` AS `author`,count(distinct `o`.`id`) AS `total_orders`,count(distinct `c`.`cid`) AS `cart_appearances`,count(distinct `r`.`requestId`) AS `request_count`,rank() OVER (ORDER BY count(distinct `o`.`id`) desc )  AS `popularity_rank` from (((`book_dbs` `b` left join `book_order` `o` on((`b`.`bookname` = `o`.`book_name`))) left join `cart` `c` on((`b`.`bookname` = `c`.`bookName`))) left join `request_book` `r` on((`b`.`author` = `r`.`authorName`))) group by `b`.`author` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_book_inventory_health_basic`
--

/*!50001 DROP VIEW IF EXISTS `vw_book_inventory_health_basic`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_book_inventory_health_basic` AS select `b`.`bookId` AS `bookId`,`b`.`bookname` AS `title`,`b`.`author` AS `author`,`b`.`price` AS `price`,`b`.`bookCategory` AS `category`,`b`.`status` AS `status`,count(`o`.`id`) AS `times_ordered`,count(`c`.`cid`) AS `times_in_carts`,(select count(0) from `request_book` `r` where (`r`.`bookName` = `b`.`bookname`)) AS `times_requested` from ((`book_dbs` `b` left join `book_order` `o` on((`b`.`bookname` = `o`.`book_name`))) left join `cart` `c` on((`b`.`bookname` = `c`.`bookName`))) group by `b`.`bookId`,`b`.`bookname`,`b`.`author`,`b`.`price`,`b`.`bookCategory`,`b`.`status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_book_recommendations`
--

/*!50001 DROP VIEW IF EXISTS `vw_book_recommendations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_book_recommendations` AS select `b1`.`bookname` AS `source_book`,`b1`.`author` AS `source_author`,`b2`.`bookname` AS `recommended_book`,`b2`.`author` AS `recommended_author`,count(0) AS `co_occurrence_count` from (((`book_order` `o1` join `book_order` `o2` on(((`o1`.`email` = `o2`.`email`) and (`o1`.`book_name` <> `o2`.`book_name`)))) join `book_dbs` `b1` on((`o1`.`book_name` = `b1`.`bookname`))) join `book_dbs` `b2` on((`o2`.`book_name` = `b2`.`bookname`))) group by `b1`.`bookname`,`b1`.`author`,`b2`.`bookname`,`b2`.`author` having (count(0) > 1) order by `co_occurrence_count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cart_composition_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_cart_composition_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cart_composition_analysis` AS select `c`.`cid` AS `cart_id`,`u`.`name` AS `user_name`,count(`c`.`cid`) OVER (PARTITION BY `c`.`uid` )  AS `items_in_cart`,group_concat(distinct `b`.`bookCategory` separator ',') AS `categories_in_cart`,sum(`c`.`total_price`) AS `cart_total`,avg(`b`.`price`) AS `avg_item_price`,max(`b`.`price`) AS `max_item_price`,min(`b`.`price`) AS `min_item_price`,(case when (count(distinct `b`.`bookCategory`) > 1) then 'Mixed Category' else 'Single Category' end) AS `cart_type`,(case when (max(`b`.`price`) > (2 * avg(`b`.`price`))) then 'Premium Item Present' else 'Consistent Pricing' end) AS `price_distribution` from ((`cart` `c` join `user` `u` on((`c`.`uid` = `u`.`id`))) join `book_dbs` `b` on((`c`.`bookName` = `b`.`bookname`))) group by `c`.`cid`,`u`.`name`,`c`.`uid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_geographic_value_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_geographic_value_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_geographic_value_analysis` AS select `u`.`state` AS `state`,`u`.`city` AS `city`,count(distinct `u`.`id`) AS `total_users`,count(distinct `o`.`id`) AS `total_orders`,sum(cast(`o`.`price` as decimal(10,2))) AS `total_revenue`,avg(cast(`o`.`price` as decimal(10,2))) AS `avg_order_value`,rank() OVER (ORDER BY sum(cast(`o`.`price` as decimal(10,2))) desc )  AS `revenue_rank`,round((count(distinct `o`.`id`) / nullif(count(distinct `u`.`id`),0)),2) AS `conversion_rate` from (`user` `u` left join `book_order` `o` on((`u`.`email` = `o`.`email`))) group by `u`.`state`,`u`.`city` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user_cart_segments`
--

/*!50001 DROP VIEW IF EXISTS `vw_user_cart_segments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user_cart_segments` AS select `u`.`id` AS `user_id`,`u`.`name` AS `name`,`u`.`email` AS `email`,count(distinct `c`.`cid`) AS `total_cart_events`,sum(`c`.`total_price`) AS `total_cart_value`,avg(`c`.`total_price`) AS `avg_cart_value`,(case when (count(distinct `o`.`id`) = 0) then 'Add to cart only' when (count(distinct `c`.`cid`) > (count(distinct `o`.`id`) * 2)) then 'High Cart Order' when (count(distinct `c`.`cid`) = count(distinct `o`.`id`)) then 'Always Purchases' else 'Normal' end) AS `cart_behavior_type` from ((`user` `u` left join `cart` `c` on((`u`.`id` = `c`.`uid`))) left join `book_order` `o` on((`u`.`email` = `o`.`email`))) group by `u`.`id`,`u`.`name`,`u`.`email` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user_reading_preferences`
--

/*!50001 DROP VIEW IF EXISTS `vw_user_reading_preferences`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user_reading_preferences` AS select `u`.`id` AS `user_id`,`u`.`name` AS `name`,`b`.`bookCategory` AS `favorite_category`,count(0) AS `category_count`,group_concat(distinct `b`.`author` separator ',') AS `preferred_authors` from (((`user` `u` join `book_order` `o` on((`u`.`email` = `o`.`email`))) join `book_dbs` `b` on((`o`.`book_name` = `b`.`bookname`))) join (select `o2`.`email` AS `email`,`b2`.`bookCategory` AS `bookCategory`,count(0) AS `cat_count` from (`book_order` `o2` join `book_dbs` `b2` on((`o2`.`book_name` = `b2`.`bookname`))) group by `o2`.`email`,`b2`.`bookCategory`) `counts` on((`counts`.`email` = `u`.`email`))) group by `u`.`id`,`u`.`name`,`b`.`bookCategory`,`counts`.`email` having (count(0) = (select max(`max_counts`.`cat_count`) from (select `o2`.`email` AS `email`,`b2`.`bookCategory` AS `bookCategory`,count(0) AS `cat_count` from (`book_order` `o2` join `book_dbs` `b2` on((`o2`.`book_name` = `b2`.`bookname`))) group by `o2`.`email`,`b2`.`bookCategory`) `max_counts` where (`max_counts`.`email` = `counts`.`email`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 13:24:58
