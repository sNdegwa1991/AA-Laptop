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
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(500) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `time_uploaded` varchar(1000) NOT NULL,
  `time_counter` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (1,'12.jpg','Testing','This is a testing Image','2019-09-13 At 16:43','201909131643'),(2,'37.png','Testin 2','Were are testing this Image','2019-09-15 At 14:27','201909151427'),(3,'32.jpg','Testin 3','This is image testing 3','2019-09-13 At 16:43','201909131643'),(4,'10.jpg','Testin 4','Testing Image 4','2019-09-13 At 16:47','201909131647'),(5,'19.jpg','sdghj','sdfghjk','2019-09-13 At 16:53','201909131653'),(6,'20.jpg','asdfghjkl','asdfg sdfghjkl','2019-09-13 At 16:58','201909131658'),(7,'ribbon.jpg','xdcfvghnm,','sdfgbhnjm,','2019-09-15 At 16:11','201909151611'),(8,'15.png','xcvb n','dcvbnm','2019-09-15 At 16:21','201909151621'),(9,'Kenya_NOC_logo.jpg','dgggvv','dsbbhbbe','2019-09-15 At 16:23','201909151623'),(10,'7.jpg','dfghj','dfgbhnjm','2019-09-15 At 16:32','201909151632'),(11,'e1.jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','2019-09-15 At 17:01','201909151701'),(12,'e2.jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','2019-09-15 At 17:02','201909151702'),(13,'e4.jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','2019-09-15 At 17:02','201909151702'),(14,'e5.jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','2019-09-15 At 17:05','201909151705'),(15,'e6.jpg','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','Kenya Taekwondo National Team participated in championship games at Fayoum University in Alexandria City, Egypt','2019-09-15 At 17:06','201909151706'),(16,'57.jpg','Athletee doing practice','Athletee doing practice','2019-09-15 At 17:10','201909151710'),(17,'open13.jpg','Kenya Open at Kasarani, December 2018','Kenya Open at Kasarani, December 2018','2019-09-15 At 17:11','201909151711'),(18,'open14.jpg','Kenya Open at Kasarani, December 2018','Kenya Open at Kasarani, December 2018','2019-09-15 At 17:17','201909151717'),(19,'t7.jpg','Kenya Open at Kasarani, December 2018','Kenya Open at Kasarani, December 2018','2019-09-15 At 17:19','201909151719'),(20,'17.jpg','Testing Replace','This image is ment','2019-09-16 At 13:08','201909161308'),(21,'29.png','Testing Replace 2','sdfghjkl','2019-09-16 At 13:12','201909161312'),(22,'Chair.jpg','Testing Gallery','fffff','2019-09-16 At 17:04','201909161704'),(23,'wwwww.jpg','Team Kenya in Rabat, Morocco','Team Kenya in Rabat, Morocco','2019-09-24 At 22:16','201909242216'),(24,'Keny in Rabat, Morocco.jpg','Team Kenya in Rabat, Morocco','Team Kenya in Rabat, Morocco','2019-09-24 At 22:18','201909242218'),(25,'IMG-20190915-WA0003(1).jpg','Team Kenya in Rabat, Morocco','Team Kenya in Rabat, Morocco','2019-09-24 At 22:19','201909242219'),(26,'IMG-20190915-WA0010.jpg','Team Kenya in Rabat, Morocco','Team Kenya in Rabat, Morocco','2019-09-24 At 22:20','201909242220'),(27,'ggghh.png','testing','blublublublub;u','2021-03-29 At 10:12','202103291012'),(28,'ssdd.jpg','testing','asdfghj','2021-03-29 At 10:46','202103291046'),(29,'ddddd.jpg','testing','asdfhtrg yy6y656','2021-03-29 At 11:14','202103291114');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-22  9:02:22
