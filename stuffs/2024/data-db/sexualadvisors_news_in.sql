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
-- Table structure for table `news_in`
--

DROP TABLE IF EXISTS `news_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_in` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `news_link` varchar(200) NOT NULL,
  `title` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `time_in` varchar(100) NOT NULL,
  `time_stamp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_in`
--

LOCK TABLES `news_in` WRITE;
/*!40000 ALTER TABLE `news_in` DISABLE KEYS */;
INSERT INTO `news_in` VALUES (107,'68a72ea447f2d_1755786916.png','When is Human Sexuality Health Education Taught?','When is Human Sexuality Health Education Taught?','The UN\'s global guidance indicates starting comprehensive sexuality education (CSE) at age 5 when formal education typically begins Comprehensive sexuality education, though sexuality education is a lifelong process, sometimes beginning earlier, at home, with trusted caregivers\r\nIn formal school settings:\r\nSexual health curriculum spans grades K–12 with medically accurate and developmentally appropriate content Sexual Health Education | Adolescent and School Health | CDC\r\nThe law requires that both comprehensive sexual health and HIV prevention education are taught once in middle school and once in high school Comprehensive Sexual Health & HIV/AIDS Instruction - Health (CA Dept of Education) (this varies by state)\r\nThe timing and requirements vary significantly by country, state, and local school district policies','2025-08-21 17:35:16','2025-08-21 17:35:16'),(108,'68a72fd981feb_1755787225.jpg','What Does Human Sexuality Health Education Entail?','What Does Human Sexuality Health Education Entail?','Comprehensive sexuality education is a curriculum-based process of teaching and learning about the cognitive, emotional, physical and social aspects of sexuality.\r\nThe core topics typically include:\r\nFoundational Areas:\r\nFamilies and relationships; respect, consent and bodily autonomy; anatomy, puberty and menstruation MODULE 3 COMPREHENSIVE SEXUALITY EDUCATION\r\nScientifically accurate information about human development, anatomy and reproductive health Comprehensive Sexuality Education Topics:\r\nDevelopment, sexual behavior (including abstinence), healthy relationships, life and communication skills A Definition of Comprehensive Sexuality Education\r\n\r\nHealth and Safety Topics:\r\nContraception and pregnancy; and sexually transmitted infections, including HIV MODULE 3 COMPREHENSIVE SEXUALITY EDUCATION\r\nHealthy and unhealthy dating/romantic relationships, online and personal safety (including prevention of child abuse, family and dating violence and sex trafficking) Human Sexuality & Responsibility | Austin ISD\r\nPregnancy and reproduction, and sexually transmitted infections (STIs) and HIV Human Sexuality & Responsibility | Austin ISD\r\n\r\nIdentity and Relationships:\r\nSexual orientation, gender identity, and interpersonal relationships Comprehensive Sexuality Education | ACOG\r\nCommunication skills and decision-making','2025-08-21 17:40:25','2025-08-21 17:40:25'),(109,'68a730d158b80_1755787473.jpg','Which are the best female contraceptive?','Which are the best female contraceptive?','There are several highly effective female contraceptive methods, each with different advantages depending on your needs, health status, and preferences. Here are the most effective options:\r\nMost Effective (over 99% effective with perfect use):\r\nIntrauterine Devices (IUDs) are among the top choices:\r\n\r\nHormonal IUDs (like Mirena, Skyla) - last 3-7 years, may reduce periods\r\nCopper IUD (ParaGard) - lasts up to 10 years, hormone-free but may increase periods\r\n\r\nImplants like Nexplanon - a small rod inserted in the arm, lasts 3 years\r\nSterilization - permanent but requires surgery\r\nHighly Effective (91-99% with typical use):\r\nBirth control pills - require daily use, many formulations available\r\nContraceptive patch - changed weekly\r\nVaginal ring (NuvaRing) - replaced monthly\r\nInjectable contraceptives (Depo-Provera) - shot every 3 months\r\nModerately Effective:\r\nBarrier methods like diaphragms, cervical caps, and female condoms - used with each sexual encounter\r\nNatural family planning/fertility awareness - requires careful tracking of cycles\r\nThe \"best\" method depends on factors like:\r\n\r\nHow long you want protection\r\nWhether you want hormonal or non-hormonal options\r\nYour comfort with daily/weekly maintenance\r\nSide effect tolerance\r\nCost and insurance coverage\r\nFuture pregnancy plans','2025-08-21 17:44:33','2025-08-21 17:44:33');
/*!40000 ALTER TABLE `news_in` ENABLE KEYS */;
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
