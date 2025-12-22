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
-- Table structure for table `money_in_out`
--

DROP TABLE IF EXISTS `money_in_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `money_in_out` (
  `id` int NOT NULL AUTO_INCREMENT,
  `giver_receiver` varchar(200) NOT NULL,
  `specific_name` varchar(300) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `amount_in` varchar(50) NOT NULL,
  `amount_out` varchar(100) NOT NULL,
  `ref_number` varchar(400) NOT NULL,
  `transaction_date` varchar(100) NOT NULL,
  `transaction_year` varchar(30) NOT NULL,
  `user` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_in_out`
--

LOCK TABLES `money_in_out` WRITE;
/*!40000 ALTER TABLE `money_in_out` DISABLE KEYS */;
INSERT INTO `money_in_out` VALUES (1,'Donor','','To fund daily activities','100000','','MLH098767Y','2019-01-01','2019','Ndegwa'),(3,'Sponsor','','Annual Leaague','200000','','JTG45678H','2019-01-01','2019','Ndegwa'),(4,'Ministry Fund','','To construct new office','500000','','HTS23456GH','2019-01-01','2019','Ndegwa'),(5,'Donor','','Kenya open fund','100000','','FGD234567G','2019-01-01','2019','Ndegwa'),(6,'Western Conference','','To be used in hosting kenya opens 2019','','100000','','2019-01-01','2019','Ndegwa'),(7,'Coach ID Number 3634555','','Registration','1000','','GHF34567D','2019-01-01','2019','Ndegwa'),(8,'Athletee ID Number 33258304','','Registration','1000','','ML7734VG7','2019-01-01','2019','Ndegwa'),(9,'Referee ID Number 10293847','','Registration','1000','','MKGHJ23H34','2019-01-01','2019','Ndegwa'),(10,'Techno Kenya','','Payment for software delivery to ktf.','','50000','','2019-01-02','2019','Ndegwa'),(11,'Kibabii University','','Registration','1000','','GS5557D7','2019-01-10','2019','Ndegwa'),(12,'Coach ID Number 31854313','','Registration','1000','','KY254DDRWR','2019-01-10','2019','Ndegwa'),(13,'Mutwe','','Registration','1000','','HH353FRH','2019-01-10','2019','Ndegwa'),(14,'Coach ID Number 23212863','','Registration','1000','','VTYY45688H','2019-01-10','2019','Ndegwa'),(15,'Kisumu','','Registration','1000','','GYGD345678j','2019-01-10','2019','Ndegwa'),(16,'Donor','','air ticket','1000089','','qwrtrytty','2019-01-10','2019','Ndegwa'),(17,'Athletee ID Number 31854313','','Registration','1000','','MV234567DR','2019-09-20','2019','Ndegwa'),(18,'Sponsor','USA government','For purchase of domain','56000','','HTHG9888J','2019-10-07','2019','Samuel Ndegwa'),(19,'Donor','Italy Government','Purchase of football kits','100000','','FEH097766G','2019-10-08','2019','Samuel Ndegwa'),(20,'Samuel Ndegwa Mwangi ID Number 31854313','Samuel Ndegwa Mwangi ID Number 31854313','Event Application','2000','','YRES33443LK','2019-10-12','2019','Samuel Ndegwa'),(21,'Samuel Ndegwa Mwangi ID Number 31854313','Samuel Ndegwa Mwangi ID Number 31854313','Event Application','2000','','YTQS33443LI','2019-10-12','2019','Samuel Ndegwa'),(22,'Samuel Ndegwa Mwangi ID Number 31854313','Samuel Ndegwa Mwangi ID Number 31854313','Event Application','2000','','SRES33443MN','2019-10-12','2019','Samuel Ndegwa'),(23,'Eliakim Otieno Ayugi ID Number 34343434','Eliakim Otieno Ayugi ID Number 34343434','Event Application','1500','','WRES33443NM','2019-10-12','2019','Samuel Ndegwa'),(24,'Samuel Ndegwa Mwangi ID Number 31854313','Samuel Ndegwa Mwangi ID Number 31854313','Event Application','2000','','JFYWF3456j','2019-10-12','2019','Samuel Ndegwa'),(25,'Eliakim Otieno Ayugi ID Number 34343434','Eliakim Otieno Ayugi ID Number 34343434','Event Application','1500','','SYGF3456SD','2019-10-12','2019','Samuel Ndegwa'),(26,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','2000','','sdfgh4567jn','2019-10-12','2019','Samuel Ndegwa'),(27,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','1500','','asdfgh45678g','2019-10-12','2019','Samuel Ndegwa'),(28,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','1500','','sdfghh456fg','2019-10-12','2019','Samuel Ndegwa'),(29,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','1500','','asdfghj3456yhg','2019-10-12','2019','Samuel Ndegwa'),(30,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','1000','','asdfghj434567','2019-10-12','2019','Samuel Ndegwa'),(31,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','1000','','asdfghj434567','2019-10-12','2019','Samuel Ndegwa'),(32,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','1000','','asdfghj434567','2019-10-12','2019','Samuel Ndegwa'),(33,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','1000','','asdfghj434567','2019-10-12','2019','Samuel Ndegwa'),(34,'Samuel Ndegwa Mwangi ID Number 31854313','Samuel Ndegwa Mwangi ID Number 31854313','Event Application','2000','','FFEWAW3443LK','2019-10-17','2019','Samuel'),(35,'Samuel Ndegwa Mwangi ID Number 31854313','Samuel Ndegwa Mwangi ID Number 31854313','Event Application','2000','','FFEWAW3443LM','2019-10-20','2019','Samuel'),(36,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','2000','','WRES33443NJ','2019-10-20','2019','Samuel'),(37,'Jencita Wangeci Mwangi ID Number 31854315','Jencita Wangeci Mwangi ID Number 31854315','Event Application','1500','','GHGH78737H','2019-10-31','2019','Samuel'),(38,'Jack Oyugi','456353636','To purchase water','','89','','2019-11-12','2019',''),(39,'Eliakim  Ogenga Otieno  ID Number 23212863','Eliakim  Ogenga Otieno  ID Number 23212863','Event Application','00','','00','2023-01-06','2023','Kibabii'),(40,'Eliakim  Ogenga Otieno  ID Number 23212863','Eliakim  Ogenga Otieno  ID Number 23212863','Event Application','00','','00','2023-01-06','2023','Kibabii'),(41,'Eliakim  Ogenga Otieno  ID Number 23212863','Eliakim  Ogenga Otieno  ID Number 23212863','Event Application','00','','00','2023-01-06','2023','Kibabii'),(42,'Eliakim  Ogenga Otieno  ID Number 23212863','Eliakim  Ogenga Otieno  ID Number 23212863','Event Application','00','','00','2023-01-06','2023','Kibabii'),(43,'Faith Ogallo Faith ID Number 11111111','Faith Ogallo Faith ID Number 11111111','Event Application','00','','00','2023-01-07','2023','Kibabii'),(44,'Faith Ogallo Faith ID Number 11111111','Faith Ogallo Faith ID Number 11111111','Event Application','00','','00','2023-01-07','2023','Kibabii'),(45,'Sponsor','Kibabii University ','Subscription and Participation Fee','240000','','Kibabii University Subscriptionn','2023-10-22','2023','Kusf Admin'),(46,'Sponsor','Kibabii University ','Subscription and Participation Fee','240000','','Kibabii University Subscriptionn','2023-10-22','2023','Kusf Admin'),(47,'Jayden  Kigogo Mahuru ID Number 31854333','Jayden  Kigogo Mahuru ID Number 31854333','Event Application','0','','N/A','2024-01-04','2024','Samuel');
/*!40000 ALTER TABLE `money_in_out` ENABLE KEYS */;
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
