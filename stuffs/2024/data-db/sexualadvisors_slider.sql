-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sexualadvisors
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.1

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
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `time_uploaded` varchar(50) NOT NULL,
  `time_counter` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'29122joan adalo.jpg','Bringing Western Kenya Region Sports Universities Together','2019-09-24 At 22:16','201909242216','1'),(2,'658996americn football.jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','2019-09-15 At 17:11','201909151711','1'),(3,'439541lacrosse photo.jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','2019-09-15 At 17:02','201909151702','1'),(4,'57058620231029_122311.jpg','Bringing Western Kenya Region Sports Universities Together','2019-09-24 At 22:16','201909242216','1'),(5,'826162aluoch.png.jpg','Kenya Taekwondo National Team participated in cham...','2019-09-15 At 17:11','201909242216','1'),(6,'657622kusf.....jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','2019-09-15 At 17:02','201909151702','1'),(7,'78422820231112_123735.jpg','No ','2023-09-15 At 17:02','201909151702',''),(8,'508069ogallo faith.jpg','No ','2023-09-15 At 17:02','201909151702',''),(9,'373288hockey at jooust.png.jpg','No ','2023-09-15 At 17:02','201909151702',''),(10,'793030lacrosse kenya.jpg','No ','2023-09-15 At 17:02','201909151702','');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-22  9:02:23
