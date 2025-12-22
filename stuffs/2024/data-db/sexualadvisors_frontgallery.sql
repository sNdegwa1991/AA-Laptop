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
-- Table structure for table `frontgallery`
--

DROP TABLE IF EXISTS `frontgallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frontgallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `time_uploaded` varchar(50) NOT NULL,
  `time_counter` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontgallery`
--

LOCK TABLES `frontgallery` WRITE;
/*!40000 ALTER TABLE `frontgallery` DISABLE KEYS */;
INSERT INTO `frontgallery` VALUES (1,'ddddd.jpg','testing','2021-03-29 At 11:14','202103291114','1'),(2,'IMG-20190915-WA0010.jpg','Kenya Open at Kasarani, December 2018','2019-09-15 At 17:17','201909151717','1'),(3,'e4.jpg','Testing Gallery 2','2019-09-16 At 17:10','201909161710','1'),(4,'wwwww.jpg','Kenya Open at Kasarani, December 2018','2019-09-15 At 17:19','201909151719','1'),(5,'Keny in Rabat, Morocco.jpg','Testing Gallery','2019-09-16 At 17:04','201909161704','1'),(6,'open14.jpg','Testing Gallery','2019-09-16 At 17:04','201909161704','1'),(7,'ssdd.jpg','testing','2021-03-29 At 10:46','202103291046','1'),(8,'open13.jpg','Kenya Open at Kasarani, December 2018','2019-09-15 At 17:11','201909151711','1'),(9,'e5.jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','','201909151427','1');
/*!40000 ALTER TABLE `frontgallery` ENABLE KEYS */;
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
