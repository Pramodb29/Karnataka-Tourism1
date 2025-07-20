-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: tours_travels_management
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL,
  `tourist_name` varchar(150) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `places_visit` varchar(255) DEFAULT NULL,
  `package_img` varchar(255) NOT NULL,
  `num_person` int NOT NULL,
  `slots_avail` int DEFAULT NULL,
  `number` bigint DEFAULT NULL,
  `total_price` double NOT NULL,
  `pay_mode` varchar(100) NOT NULL,
  `status` varchar(45) NOT NULL,
  `no_of_days` int DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `booked_date` datetime DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111015 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (111001,9,'Vinay','Dandeli Luxury Package','Dandeli, Honnavara, Murudeshwara, Gokarna etc.','images/dandeli.jpg',2,50,3,20000,'Cash','Cancelled',2,'2025-07-01','2025-07-03','2025-06-27 15:45:11'),(111002,10,'Sachin','Hampi Weekend Gateway','Hampi, Hospet, Aihole, Badami, Pattadakallu.','images/hampi1.jpg',1,12,2,8000,'Cash','Cancelled',1,'2025-07-05','2025-07-06','2025-06-27 16:43:59'),(111003,10,'Sachin','Mysore-Trip-Package','Mysore, Sriranagapattana, Nanjangudu, Melukote, etc','images/mysore.jpeg',2,30,2,12000,'Cash','completed',1,'2025-07-12','2025-07-13','2025-06-27 16:45:05'),(111004,9,'Vinay','Kabini WildLife Safari','Kabini jeep safari, Backwater Boating, Nagarhole National Park, Coorg, Madikeri, etc  ','images/kabini1.jpg',2,30,3,300000,'Cash','Cancelled',1,'2025-07-19','2025-07-20','2025-06-28 17:43:58'),(111005,9,'Vinay','Hampi Weekend Gateway','Hampi, Hospet, Aihole, Badami, Pattadakallu.','images/hampi1.jpg',2,12,8521463201,16000,'Cash','completed',2,'2025-07-12','2025-07-13','2025-06-28 18:25:09'),(111006,9,'Vinay','Let\'s Explore Chikkamagaluru','Mullayyanagiri, KudereMukh(Np), Bhadra-Wildlife-Sanctuary(Tiger Reserve), Kemmannugundi, Hebbe falls.','images/Kudere.png',1,35,9632587401,12000,'Cash','completed',3,'2025-07-05','2025-07-06','2025-06-28 19:40:06'),(111007,9,'Vinay','Mysore-Trip-Package','Mysore, Sriranagapattana, Nanjangudu, Melukote, etc','images/mysore.jpeg',3,30,7894561230,18000,'Cash','Cancelled',2,'2025-06-30','2025-07-01','2025-06-28 22:05:47'),(111008,11,'Kiran','Mysore-Trip-Package','Mysore, Sriranagapattana, Nanjangudu, Melukote, etc','images/mysore.jpeg',2,30,7894561230,12000,'Cash','completed',2,'2025-07-26','2025-07-27','2025-06-29 16:19:05'),(111009,11,'Kiran','Let\'s Explore Chikkamagaluru','Mullayyanagiri, KudereMukh(Np), Bhadra-Wildlife-Sanctuary(Tiger Reserve), Kemmannugundi, Hebbe falls.','images/Kudere.png',1,35,9632587401,12000,'Cash','Cancelled',3,'2025-07-05','2025-07-07','2025-06-29 16:39:53'),(111010,11,'Kiran','Hampi Weekend Gateway','Hampi, Hospet, Aihole, Badami, Pattadakallu.','images/hampi1.jpg',1,12,8521463201,8000,'Cash','Cancelled',2,'2025-07-12','2025-07-13','2025-06-29 16:40:58'),(111011,11,'Kiran','Let\'s Explore Chikkamagaluru','Mullayyanagiri, KudereMukh(Np), Bhadra-Wildlife-Sanctuary(Tiger Reserve), Kemmannugundi, Hebbe falls.','images/Kudere.png',3,35,9632587401,36000,'Cash','completed',3,'2025-08-01','2025-08-03','2025-06-29 17:33:53'),(111012,8,'Basavaraj','Kabini WildLife Safari','Kabini jeep safari, Backwater Boating, Nagarhole National Park, Coorg, Madikeri, etc  ','images/kabini1.jpg',2,30,9020104102,300000,'Cash','Booked',3,'2025-07-26','2025-07-28','2025-07-18 19:29:05'),(111013,8,'Basavaraj','Hampi Weekend Gateway','Hampi, Hospet, Aihole, Badami, Pattadakallu.','images/hampi1.jpg',2,12,8521463201,16000,'Cash','Cancelled',2,'2025-08-02','2025-08-03','2025-07-18 19:40:03'),(111014,11,'Kiran','Kabini WildLife Safari','Kabini jeep safari, Backwater Boating, Nagarhole National Park, Coorg, Madikeri, etc  ','images/kabini1.jpg',1,30,9020104102,150000,'Cash','Cancelled',3,'2025-08-01','2025-08-03','2025-07-18 22:28:56');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking1`
--

DROP TABLE IF EXISTS `booking1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking1` (
  `booking_id01` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL,
  `tourist_name` varchar(145) NOT NULL,
  `email` varchar(175) NOT NULL,
  `phoneno` bigint NOT NULL,
  `package_name` varchar(200) NOT NULL,
  `places` varchar(250) NOT NULL,
  `p_image` varchar(250) NOT NULL,
  `traveldate` varchar(100) NOT NULL,
  `vehicle_name` varchar(200) NOT NULL,
  `resort_name` varchar(240) NOT NULL,
  `food` varchar(195) NOT NULL,
  `duration` int NOT NULL,
  `v_capacity` int NOT NULL,
  `v_cost` int NOT NULL,
  `guide_name` varchar(200) NOT NULL,
  `guide_cost` int NOT NULL,
  `resort_cost` int NOT NULL,
  `total_price` int NOT NULL,
  `pay_mode` enum('Cash') NOT NULL,
  `status` varchar(185) NOT NULL,
  `booked_date` varchar(205) NOT NULL,
  PRIMARY KEY (`booking_id01`)
) ENGINE=InnoDB AUTO_INCREMENT=2020208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking1`
--

LOCK TABLES `booking1` WRITE;
/*!40000 ALTER TABLE `booking1` DISABLE KEYS */;
INSERT INTO `booking1` VALUES (2020201,11,'Kiran','kir@gmail.com',8088231100,'Mysore Trip Package','Mysore, Sriranagapattana, KRS Dam, Nanjangudu, Melukote, Shravanabelagola, etc','mysore.jpeg','2025-07-26','Tempo Traveller (12 Seater)','Hotel Sandesh The Prince - Mysore. Karnataka.','Included(3-times food and 2-times Snacks)',2,12,12500,'Ahishek Nayak - Mysore, Karnataka.',2499,2499,34996,'Cash','Cancelled','2025-07-18 18:46:09'),(2020202,11,'Kiran','kir@gmail.com',8088231100,'hampi Weekend gateway','Hampi, Hospete, Badami, MahaKuta, Aihole, Pattadakallu, Kudalasangama, etc','hampi1.jpg','2025-07-26','Tata Nexon faceLift (5 Seater)','The Spectrum Resort - Mullayyanagiri, Chikkamagaluru','Included(3-times food and 2-times Snacks)',2,4,15000,'Shivakumar B S - hampi, Vijayanagara.',2000,2499,38998,'Cash','Cancelled','2025-07-18 22:48:31'),(2020203,11,'Kiran','kir@gmail.com',8088231100,'Explore Dandeli Once','Dandeli, Honnavara, Murudeshwara, Gokarna, Kumta, Karwar, etc.','dandeli.jpg','2025-07-26','Toyota Innova (7 Seater)','The Spectrum Resort - Mullayyanagiri, Chikkamagaluru','Included(3-times food and 2-times Snacks)',3,6,15000,'Shivakumar B S - hampi, Vijayanagara.',2499,2499,59994,'Cash','Cancelled','2025-07-19 11:47:02'),(2020204,11,'Kiran','kir@gmail.com',8088231100,'hampi Weekend gateway','Hampi, Hospete, Badami, MahaKuta, Aihole, Pattadakallu, Kudalasangama, etc','hampi1.jpg','2025-08-01','Tempo Traveller (12 Seater)','Hotel Sandesh The Prince - Mysore. Karnataka.','Included(3-times food and 2-times Snacks)',2,12,12500,'Shivakumar B S - hampi, Vijayanagara.',2499,2499,34996,'Cash','Cancelled','2025-07-19 11:47:51'),(2020205,9,'Vinay','vin@gmail.com',8745632109,'Kabini WildLife Safari',' Kabini jeep safari, Backwater Boating, Nagarhole National Park, Coorg, Madikeri, etc','kabini1.jpg','2025-08-01','Toyota Innova (7 Seater)','The Malnad Stays - Kuderemukh, Chikkamgaluru.','Included(3-times food and 2-times Snacks)',2,6,15000,'Shivakumar B S - hampi, Vijayanagara.',2499,2499,39996,'Cash','completed','2025-07-19 12:47:47'),(2020206,7,'Krish','kri@gmail.com',7865654390,'hampi Weekend gateway','Hampi, Hospete, Badami, MahaKuta, Aihole, Pattadakallu, Kudalasangama, etc','hampi1.jpg','2025-08-09','Tempo Traveller (12 Seater)','The Spectrum Resort - Mullayyanagiri, Chikkamagaluru','Included(3-times food and 2-times Snacks)',2,12,12500,'Shivakumar B S - hampi, Vijayanagara.',2499,2499,34996,'Cash','completed','2025-07-19 12:49:09'),(2020207,7,'Krish','kri@gmail.com',7865654390,'Explore Dandeli Once','Dandeli, Honnavara, Murudeshwara, Gokarna, Kumta, Karwar, etc.','dandeli.jpg','2025-08-09','Tata Nexon faceLift (5 Seater)','The Malnad Stays - Kuderemukh, Chikkamgaluru.','Included(3-times food and 2-times Snacks)',3,4,15000,'Shivakumar B S - hampi, Vijayanagara.',2499,2499,59994,'Cash','Cancelled','2025-07-19 13:52:40');
/*!40000 ALTER TABLE `booking1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guide`
--

DROP TABLE IF EXISTS `guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guide` (
  `guide_id` int NOT NULL AUTO_INCREMENT,
  `guide_name` varchar(155) NOT NULL,
  `guide_img` varchar(250) NOT NULL,
  `location` varchar(155) NOT NULL,
  `languages` varchar(150) NOT NULL,
  `daily_charge` int NOT NULL,
  `phone_no` bigint NOT NULL,
  PRIMARY KEY (`guide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guide`
--

LOCK TABLES `guide` WRITE;
/*!40000 ALTER TABLE `guide` DISABLE KEYS */;
INSERT INTO `guide` VALUES (102,'Ahishek Nayak','guide2.jpeg','Mysore, Karnataka.','Kannada, English, Telugu.',2000,808832110),(103,'Shivakumar B S','guide.jpg','hampi, Vijayanagara.','Kannada,English,Hindi,Telugu.',2499,7856101032),(104,'Ramesh Prasad','guide3.jpg','Vijayapura, Karnataka.','Kannada,English,Hindi,Marati.',2299,9020154525);
/*!40000 ALTER TABLE `guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pickup` varchar(75) NOT NULL,
  `places` varchar(200) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `stayandfood` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `slots` int NOT NULL,
  `v_number` varchar(45) NOT NULL,
  `ManagerNo` bigint NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (1002,'dandeli.jpg','Dandeli Luxury Package','Vijayanagar, Bengaluru','Dandeli, Honnavara, Murudeshwara, Gokarna etc.','3','Included',10000.00,50,'KA 03 FG 4287',9865321470),(1003,'mysore.jpeg','Mysore-Trip-Package','Vijayanagar, Bengaluru','Mysore, Sriranagapattana, Nanjangudu, Melukote, etc','2','Included',6000.00,30,'KA 01 EC 2901',7894561230),(1005,'Kudere.png','Let\'s Explore Chikkamagaluru','Vijayanagar, Bengaluru','Mullayyanagiri, KudereMukh(Np), Bhadra-Wildlife-Sanctuary(Tiger Reserve), Kemmannugundi, Hebbe falls.','3','Included',12000.00,35,'KA 01 EC 6767',9632587401),(1006,'hampi1.jpg','Hampi Weekend Gateway','Vijayanagar, Bengaluru','Hampi, Hospet, Aihole, Badami, Pattadakallu.','2','Included',8000.00,12,'KA 01 SA 9022',8521463201),(1007,'kabini1.jpg','Kabini WildLife Safari','Vijayanagar, Bengaluru','Kabini jeep safari, Backwater Boating, Nagarhole National Park, Coorg, Madikeri, etc  ','3','Included',150000.00,30,'KA 03 MN 3223',9020104102);
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `place_id` int NOT NULL AUTO_INCREMENT,
  `package_name` varchar(155) NOT NULL,
  `image` varchar(200) NOT NULL,
  `sel_places` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `duration` int NOT NULL,
  UNIQUE KEY `place_id_UNIQUE` (`place_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (102,'Mysore Trip Package','mysore.jpeg','Mysore, Sriranagapattana, KRS Dam, Nanjangudu, Melukote, Shravanabelagola, etc','Mysore, Srirangapatna, Nanjangudu, Melukote, and Shravanabelagola form a sacred and historic circuit in Karnataka, known for royal palaces, ancient temples, and Jain heritage. Together, they reflect a rich blend of culture, devotion, and architecture.','2025-07-09 16:19:23',2),(103,'Explore Dandeli Once','dandeli.jpg','Dandeli, Honnavara, Murudeshwara, Gokarna, Kumta, Karwar, etc.','Dandeli, Honnavara, Murudeshwara, Gokarna, Kumta, and Karwar offer a perfect blend of adventure, spirituality, and coastal charm—with wildlife safaris, scenic beaches, ancient temples, and serene landscapes along Karnataka’s stunning western coast.','2025-07-09 17:27:42',3),(104,'hampi Weekend gateway','hampi1.jpg','Hampi, Hospete, Badami, MahaKuta, Aihole, Pattadakallu, Kudalasangama, etc','Hampi, Hospete, Badami, Aihole, Pattadakallu, and Kudalasangama form Karnataka’s rich heritage trail, showcasing Vijayanagara and Chalukyan architecture through grand temples, rock-cut caves, and sacred river confluences.','2025-07-09 18:54:04',2),(107,'Kabini WildLife Safari','kabini1.jpg',' Kabini jeep safari, Backwater Boating, Nagarhole National Park, Coorg, Madikeri, etc','Explore the wildlife beauty of karnataka, the kabini which famous for black panther and the coorg called as the scotland of india the untamed Beauty you cant expect.','2025-07-15 20:28:25',2);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `message` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (9,'Kiran','kir@gmail.com','4','Loved the process ','2025-07-02',11),(13,'Kiran','kir@gmail.com','4','Good experience','2025-07-02',11),(15,'Vinay','vin@gmail.com','5','Best ever experience ever','2025-07-02',9),(16,'Sachin','sa@gmail.com','4','Wonderfull Experience','2025-07-14',10),(17,'Krish','kri@gmail.com','4','Nice Experience','2025-07-19',7);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stay`
--

DROP TABLE IF EXISTS `stay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stay` (
  `stay_id` int NOT NULL AUTO_INCREMENT,
  `resort_name` varchar(205) NOT NULL,
  `Location` varchar(155) NOT NULL,
  `resort_img` varchar(245) NOT NULL,
  `cost_per_day` int NOT NULL,
  `food_snacks` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`stay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1025 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay`
--

LOCK TABLES `stay` WRITE;
/*!40000 ALTER TABLE `stay` DISABLE KEYS */;
INSERT INTO `stay` VALUES (1021,'The Malnad Stays','Kuderemukh, Chikkamgaluru.','stay.jpg',2499,'Included(3-times food and 2-times Snacks)'),(1022,'The Spectrum Resort','Mullayyanagiri, Chikkamagaluru','stay1.jpg',2499,'Included(3-times food and 2-times Snacks)'),(1024,'Hotel Sandesh The Prince','Mysore. Karnataka.','stay3.jpg',2999,'Included(3-times food and 2-times Snacks)');
/*!40000 ALTER TABLE `stay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `phoneno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pramod','Kumar','9090876540','pra@gmail.com','1234','Bengaluru','2025-06-06 19:19:54'),(2,'Raj','Kumar','8989788765','k@gmail.com','2121','Kolar','2025-06-06 20:01:13'),(5,'Shivu','Kumar','7890654321','sh@gmail.com','0000','Mysore','2025-06-20 22:29:10'),(7,'Krish','prasad','7865654390','kri@gmail.com','1111','Mysore','2025-06-19 16:06:43'),(8,'Basavaraj','Nayak','8956214702','bas@gmail.com','1234','Ballary','2025-06-26 17:53:44'),(9,'Vinay','RN','8745632109','vin@gmail.com','1234','Shimogga','2025-06-26 18:06:43'),(10,'Sachin','kumar','9030102040','sa@gmail.com','1111','Malur','2025-06-27 16:40:15'),(11,'Kiran','Kashyap','8088231100','kir@gmail.com','1111','Davanagere','2025-06-29 16:15:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_img` varchar(245) NOT NULL,
  `vehicle_type` varchar(155) NOT NULL,
  `capacity` int NOT NULL,
  `cost_per_day` int NOT NULL,
  `driverno` bigint DEFAULT NULL,
  `vehicle_number` varchar(45) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'innova.webp','Toyota Innova (7 Seater)',6,15000,9632584170,'KA 02 EC 2012'),(2,'traveller.jpg','Tempo Traveller (12 Seater)',12,12500,8920301122,'KA 53 DF 1987'),(5,'nexon.jpg','Tata Nexon faceLift (5 Seater)',4,15000,9774010211,'KA 12 MF 3232');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-19 22:25:35
