CREATE DATABASE  IF NOT EXISTS `agropest_pos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agropest_pos`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: agropest_pos
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.24.04.1

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `activity_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'login, sale, product_add, stock_update, etc',
  `activity_description` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_activity_type` (`activity_type`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `activity_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-21 16:36:17'),(2,1,'login','User logged in','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:144.0) Gecko/20100101 Firefox/144.0','2025-10-21 16:50:31'),(3,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 07:29:14'),(4,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 08:15:14'),(5,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 09:15:39'),(6,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 10:33:05'),(7,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 11:42:57'),(8,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 13:39:13'),(9,1,'login','User logged in','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:144.0) Gecko/20100101 Firefox/144.0','2025-10-22 14:14:25'),(10,1,'sale','Sale completed - Receipt: RCP-20251022-295BF1, Amount: KES 3480','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 14:45:22'),(11,1,'sale','Sale completed - Receipt: RCP-20251022-DB218C, Amount: KES 1740','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 14:53:01'),(12,1,'customer_added','Customer added: James Kariuki (0726159307)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 14:54:45'),(13,1,'sale','Sale completed - Receipt: RCP-20251022-C9664E, Amount: KES 1740','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 14:55:40'),(14,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 15:16:02'),(15,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 15:16:04'),(16,1,'refund','Processed return RET-20251022-24D1DC for sale_id 2, Amount: KES 1500','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 16:00:02'),(17,1,'sale','Sale completed - Receipt: RCP-20251022-28EFB3, Amount: KES 7424','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-22 16:45:54'),(18,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:15:49'),(19,1,'sale','Sale completed - Receipt: RCP-20251023-5E6ED9, Amount: KES 9164','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:16:21'),(20,1,'sale','Sale completed - Receipt: RCP-20251023-29E9DA, Amount: KES 3480','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:16:50'),(21,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:16:59'),(22,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:17:01'),(23,1,'sale','Sale completed - Receipt: RCP-20251023-2EA23A, Amount: KES 4292','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:18:26'),(24,1,'sale','Sale completed - Receipt: RCP-20251023-C154B6, Amount: KES 3480','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:18:52'),(25,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:19:05'),(26,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 09:19:08'),(27,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:15:34'),(28,NULL,'user_created','User sam created','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:17:26'),(29,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:18:03'),(30,NULL,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:18:16'),(31,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:19:21'),(32,3,'user_created','User sam created','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:30:51'),(33,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:31:32'),(34,3,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:31:42'),(35,3,'sale','Sale completed - Receipt: RCP-20251023-240709, Amount: KES 1740','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:32:02'),(36,3,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:32:18'),(37,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-23 10:32:21'),(38,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 07:49:06'),(39,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 09:19:01'),(40,1,'sale','Sale completed - Invoice: INV-20251024-D7302D, Amount: KES 14036, Paid: KES 14036','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 09:33:17'),(41,1,'sale','Sale completed - Invoice: INV-20251024-67EE78, Amount: KES 2900, Paid: KES 2000','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 09:48:38'),(42,1,'payment','Payment received - Receipt: RCT-20251024-AD3EBA, Invoice: INV-20251024-67EE78, Amount: KES 900','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 09:51:06'),(43,1,'sale','Sale completed - Invoice: INV-20251024-D903C6, Amount: KES 2900, Paid: KES 1000','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 09:53:49'),(44,1,'payment','Payment received - Receipt: RCT-20251024-94D25A, Invoice: INV-20251024-D903C6, Amount: KES 1900','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 09:54:17'),(45,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 09:58:11'),(46,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 09:58:13'),(47,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 11:47:31'),(48,1,'sale','Sale completed - Invoice: INV-20251024-6DC119, Amount: KES 4060, Paid: KES 1500','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 11:51:02'),(49,1,'payment','Recorded payment RCP-20251024-0001 for invoice INV-20251024-6DC119, Amount: KES 1000','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-24 12:38:40'),(50,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-25 18:18:30'),(51,1,'customer_added','Customer added: Samuel Ndegwa (0726159311)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-25 18:20:11'),(52,1,'sale','Sale completed - Invoice: INV-20251025-8260BE, Amount: KES 8352, Paid: KES 5000','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-25 18:25:28'),(53,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-25 18:26:25'),(54,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-25 18:26:27'),(55,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 06:39:12'),(56,1,'sale','Sale completed - Invoice: INV-20251027-713B08, Amount: KES 4176, Paid: KES 4176','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 06:39:35'),(57,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 08:07:44'),(58,4,'user_created','User ndegwa created','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 09:38:49'),(59,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 10:39:30'),(60,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 12:49:42'),(61,1,'sale','Sale completed - Invoice: INV-20251027-8D5D37, Amount: KES 2900, Paid: KES 2900','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 12:51:52'),(62,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 12:52:06'),(63,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 12:52:08'),(64,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 13:46:01'),(65,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-27 17:25:28'),(66,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 06:04:08'),(67,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 06:05:25'),(68,5,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 06:05:37'),(69,5,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 06:12:32'),(70,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 06:12:34'),(71,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 06:31:59'),(72,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 06:32:00'),(73,1,'login','User logged in','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:144.0) Gecko/20100101 Firefox/144.0','2025-10-28 07:14:51'),(74,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 07:33:51'),(75,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 07:33:53'),(76,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 07:46:17'),(77,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 07:46:19'),(78,1,'sale','Sale completed - Invoice: INV-20251028-B34F1E, Amount: KES 4686.4, Paid: KES 4686.4','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 08:50:35'),(79,1,'sale','Sale completed - Invoice: INV-20251028-4CD8BD, Amount: KES 23408.8, Paid: KES 23408.8','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 08:51:00'),(80,1,'sale','Sale completed - Invoice: INV-20251028-FC5804, Amount: KES 5800, Paid: KES 5800','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 08:51:59'),(81,1,'customer_added','Customer added: Esther Kariuki (07261594000)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 08:52:49'),(82,1,'sale','Sale completed - Invoice: INV-20251028-8160F9, Amount: KES 61526.4, Paid: KES 1000','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 08:54:00'),(83,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 08:54:05'),(84,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 08:54:07'),(85,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 10:58:17'),(86,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 11:01:55'),(87,3,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 11:02:24'),(88,3,'sale','Sale completed - Invoice: INV-20251028-602EED, Amount: KES 20508.8, Paid: KES 20508.8','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 11:02:46'),(89,3,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 11:03:33'),(90,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 11:03:34'),(91,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 15:25:52'),(92,1,'customer_added','Customer added: James Ngoiri (0726159500)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 15:41:55'),(93,1,'sale','Sale completed - Invoice: INV-20251028-57D3E8, Amount: KES 23640.8, Paid: KES 23640.8','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 15:44:53'),(94,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 15:48:52'),(95,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 15:48:54'),(96,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-10-28 16:42:23'),(97,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:43:48'),(98,1,'sale','Sale completed - Invoice: INV-20251105-F2A461, Amount: KES 3375.6, Paid: KES 3375.6','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:44:15'),(99,1,'sale','Sale completed - Invoice: INV-20251105-AE7598, Amount: KES 30368.8, Paid: KES 30368.8','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:44:42'),(100,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:45:04'),(101,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:45:06'),(102,1,'sale','Sale completed - Invoice: INV-20251105-85B2E4, Amount: KES 56724, Paid: KES 10000','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:47:04'),(103,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:47:13'),(104,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:47:15'),(105,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 12:59:53'),(106,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:00:03'),(107,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:00:46'),(108,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:01:16'),(109,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:03:30'),(110,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:09:39'),(111,1,'sale','Sale completed - Invoice: INV-20251105-FDF03C, Amount: KES 50958.8, Paid: KES 50958.8','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:18:07'),(112,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:18:32'),(113,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:18:34'),(114,1,'logout','User logged out','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:35:16'),(115,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-05 13:35:19'),(116,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-11 09:39:42'),(117,1,'login','User logged in','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-21 06:26:26'),(118,1,'login','User logged in','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-01 06:01:04');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `display_order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_code` (`category_code`),
  KEY `idx_status` (`status`),
  KEY `idx_display_order` (`display_order`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Organic Farming','ORG','Organic farming products including propagation materials, viricide, and organic products','active',1,'2025-10-21 15:14:34','2025-10-21 15:14:34'),(2,'Agro Inputs','AGI','Agricultural inputs including forage, termicide, nematicide, lawn, fertilizers, seeds, and insecticides','active',2,'2025-10-21 15:14:34','2025-10-21 15:14:34'),(3,'Fumigation','FUM','Fumigation products including disinfectants and pest fumigation','active',3,'2025-10-21 15:14:34','2025-10-21 15:14:34'),(4,'Equipment','EQP','Farm equipment and tools','active',4,'2025-10-21 15:14:34','2025-10-21 15:14:34'),(6,'Flour','FLR','Flour products','active',5,'2025-11-11 09:41:36','2025-11-11 09:41:36');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` enum('retail','wholesale','corporate') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'retail',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address` text COLLATE utf8mb4_unicode_ci,
  `county` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` decimal(10,2) DEFAULT '0.00',
  `outstanding_balance` decimal(10,2) DEFAULT '0.00',
  `loyalty_points` int DEFAULT '0',
  `status` enum('active','inactive','blacklisted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `registration_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_code` (`customer_code`),
  KEY `idx_customer_code` (`customer_code`),
  KEY `idx_phone` (`phone`),
  KEY `idx_customer_type` (`customer_type`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'CUST-20251022-6BBE','James Kariuki','retail','0726159307',NULL,NULL,NULL,NULL,0.00,46724.00,0,'active','2025-10-22','2025-10-22 14:54:45','2025-11-05 12:47:04'),(2,'CUST-20251025-CCC9','Samuel Ndegwa','retail','0726159311',NULL,NULL,NULL,NULL,0.00,3352.00,0,'active','2025-10-25','2025-10-25 18:20:11','2025-10-25 18:25:28'),(3,'CUST-20251028-2F6C','Esther Kariuki','retail','07261594000',NULL,NULL,NULL,NULL,0.00,60526.40,0,'active','2025-10-28','2025-10-28 08:52:49','2025-10-28 08:54:00'),(4,'CUST-20251028-367C','James Ngoiri','retail','0726159500',NULL,NULL,NULL,NULL,0.00,0.00,0,'active','2025-10-28','2025-10-28 15:41:55','2025-10-28 15:41:55');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `expense_category` enum('rent','utilities','salaries','transport','supplies','maintenance','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `expense_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_method` enum('cash','mpesa','bank_transfer','cheque') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recorded_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`expense_id`),
  KEY `recorded_by` (`recorded_by`),
  KEY `idx_expense_date` (`expense_date`),
  KEY `idx_category` (`expense_category`),
  CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_attendance`
--

DROP TABLE IF EXISTS `hr_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `clock_in` datetime DEFAULT NULL,
  `clock_out` datetime DEFAULT NULL,
  `clock_in_ip` varchar(45) DEFAULT NULL,
  `clock_out_ip` varchar(45) DEFAULT NULL,
  `total_hours` decimal(5,2) DEFAULT NULL,
  `break_time_minutes` int DEFAULT '0',
  `late_minutes` int DEFAULT '0',
  `overtime_hours` decimal(5,2) DEFAULT '0.00',
  `status` enum('present','absent','half_day','on_leave','holiday') DEFAULT 'present',
  `remarks` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`attendance_id`),
  UNIQUE KEY `unique_employee_date` (`employee_id`,`date`),
  KEY `employee_id` (`employee_id`),
  KEY `date` (`date`),
  KEY `status` (`status`),
  CONSTRAINT `fk_attendance_employee` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees` (`employee_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_attendance`
--

LOCK TABLES `hr_attendance` WRITE;
/*!40000 ALTER TABLE `hr_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_departments`
--

DROP TABLE IF EXISTS `hr_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `department_code` varchar(20) NOT NULL,
  `manager_id` int DEFAULT NULL,
  `description` text,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `department_code` (`department_code`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_departments`
--

LOCK TABLES `hr_departments` WRITE;
/*!40000 ALTER TABLE `hr_departments` DISABLE KEYS */;
INSERT INTO `hr_departments` VALUES (1,'Sales','SALES',NULL,'Sales and customer service department','active','2025-10-27 07:53:51','2025-10-27 07:53:51'),(2,'Administration','ADMIN',NULL,'Administration and management','active','2025-10-27 07:53:51','2025-10-27 07:53:51'),(3,'Inventory','INV',NULL,'Stock and inventory management','active','2025-10-27 07:53:51','2025-10-27 07:53:51'),(4,'Finance','FIN',NULL,'Finance and accounting','active','2025-10-27 07:53:51','2025-10-27 07:53:51');
/*!40000 ALTER TABLE `hr_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_employee_bank_details`
--

DROP TABLE IF EXISTS `hr_employee_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_employee_bank_details` (
  `bank_detail_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(50) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `swift_code` varchar(20) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bank_detail_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `fk_bank_employee` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees` (`employee_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_employee_bank_details`
--

LOCK TABLES `hr_employee_bank_details` WRITE;
/*!40000 ALTER TABLE `hr_employee_bank_details` DISABLE KEYS */;
INSERT INTO `hr_employee_bank_details` VALUES (1,1,'Equity Bank','Nairobi Branch','1234567890','Samuel Ndegwa','1234',1,'2025-10-27 09:45:21','2025-10-27 09:45:21');
/*!40000 ALTER TABLE `hr_employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_employee_documents`
--

DROP TABLE IF EXISTS `hr_employee_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_employee_documents` (
  `document_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `file_size` int DEFAULT NULL,
  `uploaded_by` int NOT NULL,
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`document_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `fk_documents_employee` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees` (`employee_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_employee_documents`
--

LOCK TABLES `hr_employee_documents` WRITE;
/*!40000 ALTER TABLE `hr_employee_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_employee_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_employees`
--

DROP TABLE IF EXISTS `hr_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `employee_number` varchar(50) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `id_number` varchar(50) DEFAULT NULL,
  `kra_pin` varchar(50) DEFAULT NULL,
  `nssf_number` varchar(50) DEFAULT NULL,
  `nhif_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `emergency_contact_name` varchar(100) DEFAULT NULL,
  `emergency_contact_phone` varchar(20) DEFAULT NULL,
  `address` text,
  `hire_date` date NOT NULL,
  `employment_type` enum('permanent','contract','part-time','casual') DEFAULT 'permanent',
  `contract_end_date` date DEFAULT NULL,
  `probation_end_date` date DEFAULT NULL,
  `status` enum('active','on_leave','suspended','terminated') DEFAULT 'active',
  `termination_date` date DEFAULT NULL,
  `termination_reason` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_number` (`employee_number`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`),
  CONSTRAINT `fk_hr_employees_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_employees`
--

LOCK TABLES `hr_employees` WRITE;
/*!40000 ALTER TABLE `hr_employees` DISABLE KEYS */;
INSERT INTO `hr_employees` VALUES (1,5,'EMP00001','1','Marketing Officer','1995-01-02','male','56575657','A008118710G','123456','123456','+254726159307','Susam','+254722887000','Kingongo, Nyeri Town','2025-10-27','permanent',NULL,NULL,'active',NULL,NULL,'2025-10-27 09:45:21','2025-10-27 09:45:21');
/*!40000 ALTER TABLE `hr_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_leave_applications`
--

DROP TABLE IF EXISTS `hr_leave_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_leave_applications` (
  `leave_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `days_requested` int NOT NULL,
  `reason` text NOT NULL,
  `relief_officer_id` int DEFAULT NULL,
  `status` enum('pending','approved','rejected','cancelled') DEFAULT 'pending',
  `approved_by` int DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `rejection_reason` text,
  `applied_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`leave_id`),
  KEY `employee_id` (`employee_id`),
  KEY `leave_type_id` (`leave_type_id`),
  KEY `status` (`status`),
  KEY `start_date` (`start_date`),
  CONSTRAINT `fk_leave_employee` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees` (`employee_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_leave_type` FOREIGN KEY (`leave_type_id`) REFERENCES `hr_leave_types` (`leave_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_leave_applications`
--

LOCK TABLES `hr_leave_applications` WRITE;
/*!40000 ALTER TABLE `hr_leave_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_leave_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_leave_balance`
--

DROP TABLE IF EXISTS `hr_leave_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_leave_balance` (
  `balance_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `year` year NOT NULL,
  `allocated_days` decimal(5,1) NOT NULL DEFAULT '0.0',
  `used_days` decimal(5,1) NOT NULL DEFAULT '0.0',
  `carried_forward` decimal(5,1) NOT NULL DEFAULT '0.0',
  `balance_days` decimal(5,1) NOT NULL DEFAULT '0.0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`balance_id`),
  UNIQUE KEY `unique_employee_leave_year` (`employee_id`,`leave_type_id`,`year`),
  KEY `employee_id` (`employee_id`),
  KEY `leave_type_id` (`leave_type_id`),
  CONSTRAINT `fk_balance_employee` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees` (`employee_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_balance_leave_type` FOREIGN KEY (`leave_type_id`) REFERENCES `hr_leave_types` (`leave_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_leave_balance`
--

LOCK TABLES `hr_leave_balance` WRITE;
/*!40000 ALTER TABLE `hr_leave_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_leave_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_leave_types`
--

DROP TABLE IF EXISTS `hr_leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_leave_types` (
  `leave_type_id` int NOT NULL AUTO_INCREMENT,
  `leave_type_name` varchar(100) NOT NULL,
  `leave_type_code` varchar(20) NOT NULL,
  `days_allowed` int NOT NULL DEFAULT '0',
  `carry_forward` tinyint(1) DEFAULT '0',
  `max_carry_forward_days` int DEFAULT '0',
  `requires_approval` tinyint(1) DEFAULT '1',
  `paid` tinyint(1) DEFAULT '1',
  `description` text,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`leave_type_id`),
  UNIQUE KEY `leave_type_code` (`leave_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_leave_types`
--

LOCK TABLES `hr_leave_types` WRITE;
/*!40000 ALTER TABLE `hr_leave_types` DISABLE KEYS */;
INSERT INTO `hr_leave_types` VALUES (1,'Annual Leave','AL',21,1,0,1,1,'Annual vacation leave as per Kenya Employment Act','active','2025-10-27 07:53:37'),(2,'Sick Leave','SL',14,0,0,1,1,'Sick leave with medical certificate','active','2025-10-27 07:53:37'),(3,'Maternity Leave','ML',90,0,0,1,1,'Maternity leave for female employees','active','2025-10-27 07:53:37'),(4,'Paternity Leave','PL',14,0,0,1,1,'Paternity leave for male employees','active','2025-10-27 07:53:37'),(5,'Compassionate Leave','CL',5,0,0,1,1,'Leave due to death of close family member','active','2025-10-27 07:53:37'),(6,'Unpaid Leave','UL',0,0,0,1,0,'Leave without pay','active','2025-10-27 07:53:37');
/*!40000 ALTER TABLE `hr_leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_payroll`
--

DROP TABLE IF EXISTS `hr_payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_payroll` (
  `payroll_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `payroll_structure_id` int NOT NULL,
  `pay_period_month` int NOT NULL,
  `pay_period_year` year NOT NULL,
  `days_worked` decimal(5,2) NOT NULL DEFAULT '0.00',
  `days_absent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `basic_salary` decimal(12,2) NOT NULL,
  `house_allowance` decimal(12,2) DEFAULT '0.00',
  `transport_allowance` decimal(12,2) DEFAULT '0.00',
  `medical_allowance` decimal(12,2) DEFAULT '0.00',
  `airtime_allowance` decimal(12,2) DEFAULT '0.00',
  `overtime_amount` decimal(12,2) DEFAULT '0.00',
  `bonus_amount` decimal(12,2) DEFAULT '0.00',
  `commission_amount` decimal(12,2) DEFAULT '0.00',
  `other_earnings` decimal(12,2) DEFAULT '0.00',
  `gross_salary` decimal(12,2) NOT NULL,
  `nssf_contribution` decimal(12,2) DEFAULT '0.00',
  `nhif_contribution` decimal(12,2) DEFAULT '0.00',
  `paye_tax` decimal(12,2) DEFAULT '0.00',
  `housing_levy` decimal(12,2) DEFAULT '0.00',
  `loan_deduction` decimal(12,2) DEFAULT '0.00',
  `advance_deduction` decimal(12,2) DEFAULT '0.00',
  `other_deductions` decimal(12,2) DEFAULT '0.00',
  `total_deductions` decimal(12,2) NOT NULL,
  `net_salary` decimal(12,2) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` enum('bank_transfer','cash','cheque','mobile_money') DEFAULT 'bank_transfer',
  `payment_reference` varchar(100) DEFAULT NULL,
  `status` enum('draft','processed','paid','cancelled') DEFAULT 'draft',
  `notes` text,
  `processed_by` int DEFAULT NULL,
  `processed_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payroll_id`),
  UNIQUE KEY `unique_employee_period` (`employee_id`,`pay_period_month`,`pay_period_year`),
  KEY `employee_id` (`employee_id`),
  KEY `status` (`status`),
  KEY `pay_period` (`pay_period_month`,`pay_period_year`),
  CONSTRAINT `fk_payroll_employee_main` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees` (`employee_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_payroll`
--

LOCK TABLES `hr_payroll` WRITE;
/*!40000 ALTER TABLE `hr_payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_payroll_structure`
--

DROP TABLE IF EXISTS `hr_payroll_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_payroll_structure` (
  `payroll_structure_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `basic_salary` decimal(12,2) NOT NULL DEFAULT '0.00',
  `house_allowance` decimal(12,2) DEFAULT '0.00',
  `transport_allowance` decimal(12,2) DEFAULT '0.00',
  `medical_allowance` decimal(12,2) DEFAULT '0.00',
  `airtime_allowance` decimal(12,2) DEFAULT '0.00',
  `other_allowances` decimal(12,2) DEFAULT '0.00',
  `nssf_contribution` decimal(12,2) DEFAULT '0.00',
  `nhif_contribution` decimal(12,2) DEFAULT '0.00',
  `paye_tax` decimal(12,2) DEFAULT '0.00',
  `housing_levy` decimal(12,2) DEFAULT '0.00',
  `other_deductions` decimal(12,2) DEFAULT '0.00',
  `gross_salary` decimal(12,2) GENERATED ALWAYS AS ((((((`basic_salary` + `house_allowance`) + `transport_allowance`) + `medical_allowance`) + `airtime_allowance`) + `other_allowances`)) STORED,
  `total_deductions` decimal(12,2) GENERATED ALWAYS AS (((((`nssf_contribution` + `nhif_contribution`) + `paye_tax`) + `housing_levy`) + `other_deductions`)) STORED,
  `net_salary` decimal(12,2) GENERATED ALWAYS AS (((((((((((`basic_salary` + `house_allowance`) + `transport_allowance`) + `medical_allowance`) + `airtime_allowance`) + `other_allowances`) - `nssf_contribution`) - `nhif_contribution`) - `paye_tax`) - `housing_levy`) - `other_deductions`)) STORED,
  `effective_from` date NOT NULL,
  `effective_to` date DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payroll_structure_id`),
  KEY `employee_id` (`employee_id`),
  KEY `status` (`status`),
  CONSTRAINT `fk_payroll_employee` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees` (`employee_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_payroll_structure`
--

LOCK TABLES `hr_payroll_structure` WRITE;
/*!40000 ALTER TABLE `hr_payroll_structure` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_payroll_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `receipt_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Unique receipt number for this payment',
  `sale_id` int NOT NULL COMMENT 'Reference to the sale/order',
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount_paid` decimal(12,2) NOT NULL,
  `payment_method` enum('cash','mpesa','bank_transfer','cheque','credit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `payment_reference` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'M-Pesa code, cheque no, transaction ID, etc',
  `change_amount` decimal(10,2) DEFAULT '0.00' COMMENT 'Change given for cash payments',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `payment_status` enum('completed','pending','failed','reversed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'completed',
  `processed_by` int NOT NULL COMMENT 'User who processed this payment',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `receipt_no` (`receipt_no`),
  KEY `processed_by` (`processed_by`),
  KEY `idx_receipt_no` (`receipt_no`),
  KEY `idx_sale_id` (`sale_id`),
  KEY `idx_payment_date` (`payment_date`),
  KEY `idx_payment_method` (`payment_method`),
  KEY `idx_payment_status` (`payment_status`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE RESTRICT,
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`processed_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all payment transactions for sales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'RCP-20251022-295BF1',1,'2025-10-22 14:45:22',4000.00,'cash','',520.00,NULL,'completed',1,'2025-10-22 14:45:22','2025-10-24 07:34:35'),(2,'RCP-20251022-DB218C',2,'2025-10-22 14:53:01',2000.00,'cash','',260.00,NULL,'completed',1,'2025-10-22 14:53:01','2025-10-24 07:34:35'),(3,'RCP-20251022-C9664E',3,'2025-10-22 14:55:40',2000.00,'cash','',260.00,NULL,'completed',1,'2025-10-22 14:55:40','2025-10-24 07:34:35'),(4,'RCP-20251022-28EFB3',4,'2025-10-22 16:45:54',8000.00,'cash','',576.00,NULL,'completed',1,'2025-10-22 16:45:54','2025-10-24 07:34:35'),(5,'RCP-20251023-5E6ED9',5,'2025-10-23 09:16:21',10000.00,'cash','',836.00,NULL,'completed',1,'2025-10-23 09:16:21','2025-10-24 07:34:35'),(6,'RCP-20251023-29E9DA',6,'2025-10-23 09:16:50',3500.00,'cash','',20.00,NULL,'completed',1,'2025-10-23 09:16:50','2025-10-24 07:34:35'),(7,'RCP-20251023-2EA23A',7,'2025-10-23 09:18:26',4292.00,'mpesa','WEWRWWWt',0.00,NULL,'completed',1,'2025-10-23 09:18:26','2025-10-24 07:34:35'),(8,'RCP-20251023-C154B6',8,'2025-10-23 09:18:52',3480.00,'mpesa','WUUWTWTW',0.00,NULL,'completed',1,'2025-10-23 09:18:52','2025-10-24 07:34:35'),(9,'RCP-20251023-240709',9,'2025-10-23 10:32:02',1740.00,'mpesa','WERT26262F',0.00,NULL,'completed',3,'2025-10-23 10:32:02','2025-10-24 07:34:35'),(16,'RCT-20251024-D76549',10,'2025-10-24 09:33:17',5000.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-24 09:33:17','2025-10-24 09:33:17'),(17,'RCT-20251024-D77933',10,'2025-10-24 09:33:17',9036.00,'mpesa','QWET575885Q',0.00,NULL,'completed',1,'2025-10-24 09:33:17','2025-10-24 09:33:17'),(18,'RCT-20251024-67F64E',11,'2025-10-24 09:48:38',2000.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-24 09:48:38','2025-10-24 09:48:38'),(19,'RCT-20251024-AD3EBA',11,'2025-10-24 09:51:06',900.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-24 09:51:06','2025-10-24 09:51:06'),(20,'RCT-20251024-D90C18',12,'2025-10-24 09:53:49',1000.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-24 09:53:49','2025-10-24 09:53:49'),(21,'RCT-20251024-94D25A',12,'2025-10-24 09:54:17',1900.00,'mpesa','WER3353533',0.00,NULL,'completed',1,'2025-10-24 09:54:17','2025-10-24 09:54:17'),(22,'RCT-20251024-6DC71E',13,'2025-10-24 11:51:02',1500.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-24 11:51:02','2025-10-24 11:51:02'),(23,'RCP-20251024-0001',13,'2025-10-24 12:38:40',1000.00,'mpesa','QWETRT0093',0.00,'Partial Payment','completed',1,'2025-10-24 12:38:40','2025-10-24 12:38:40'),(24,'RCT-20251025-827343',14,'2025-10-25 18:25:28',5000.00,'mpesa','QW34544L9',0.00,NULL,'completed',1,'2025-10-25 18:25:28','2025-10-25 18:25:28'),(25,'RCT-20251027-71432A',15,'2025-10-27 06:39:35',4176.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-27 06:39:35','2025-10-27 06:39:35'),(26,'RCT-20251027-8D748D',16,'2025-10-27 12:51:52',2900.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-27 12:51:52','2025-10-27 12:51:52'),(27,'RCT-20251028-B35645',17,'2025-10-28 08:50:35',4686.40,'cash',NULL,0.00,NULL,'completed',1,'2025-10-28 08:50:35','2025-10-28 08:50:35'),(28,'RCT-20251028-4CE0FA',18,'2025-10-28 08:51:00',23408.80,'mpesa','WR64774TY',0.00,NULL,'completed',1,'2025-10-28 08:51:00','2025-10-28 08:51:00'),(29,'RCT-20251028-FC5ADE',19,'2025-10-28 08:51:59',5800.00,'cheque','CH-467448',0.00,NULL,'completed',1,'2025-10-28 08:51:59','2025-10-28 08:51:59'),(30,'RCT-20251028-816777',20,'2025-10-28 08:54:00',1000.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-28 08:54:00','2025-10-28 08:54:00'),(31,'RCT-20251028-6031F0',21,'2025-10-28 11:02:46',20508.80,'cash',NULL,0.00,NULL,'completed',3,'2025-10-28 11:02:46','2025-10-28 11:02:46'),(32,'RCT-20251028-57EEDD',22,'2025-10-28 15:44:53',1000.00,'cash',NULL,0.00,NULL,'completed',1,'2025-10-28 15:44:53','2025-10-28 15:44:53'),(33,'RCT-20251028-581D8F',22,'2025-10-28 15:44:53',22640.80,'mpesa','QW55446EW',0.00,NULL,'completed',1,'2025-10-28 15:44:53','2025-10-28 15:44:53'),(34,'RCT-20251105-F2B7F8',23,'2025-11-05 12:44:15',3375.60,'cash',NULL,0.00,NULL,'completed',1,'2025-11-05 12:44:15','2025-11-05 12:44:15'),(35,'RCT-20251105-AE7D5E',24,'2025-11-05 12:44:42',30368.80,'mpesa','QWETREQY',0.00,NULL,'completed',1,'2025-11-05 12:44:42','2025-11-05 12:44:42'),(36,'RCT-20251105-85BB2A',25,'2025-11-05 12:47:04',10000.00,'bank_transfer','QWE35336GT',0.00,NULL,'completed',1,'2025-11-05 12:47:04','2025-11-05 12:47:04'),(37,'RCT-20251105-FE0406',26,'2025-11-05 13:18:07',20000.00,'cash',NULL,0.00,NULL,'completed',1,'2025-11-05 13:18:07','2025-11-05 13:18:07'),(38,'RCT-20251105-FE4BD1',26,'2025-11-05 13:18:07',30958.80,'mpesa','QWE6346433W',0.00,NULL,'completed',1,'2025-11-05 13:18:07','2025-11-05 13:18:07');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_pricing`
--

DROP TABLE IF EXISTS `product_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_pricing` (
  `pricing_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `cost_price` decimal(10,2) NOT NULL COMMENT 'Buying price',
  `selling_price` decimal(10,2) NOT NULL,
  `wholesale_price` decimal(10,2) DEFAULT NULL,
  `min_selling_price` decimal(10,2) DEFAULT NULL COMMENT 'Minimum allowed selling price',
  `effective_date` date NOT NULL,
  `is_current` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`pricing_id`),
  KEY `created_by` (`created_by`),
  KEY `idx_product` (`product_id`),
  KEY `idx_current` (`is_current`),
  KEY `idx_effective_date` (`effective_date`),
  CONSTRAINT `product_pricing_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `product_pricing_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_pricing`
--

LOCK TABLES `product_pricing` WRITE;
/*!40000 ALTER TABLE `product_pricing` DISABLE KEYS */;
INSERT INTO `product_pricing` VALUES (1,1,1000.00,1500.00,1400.00,1300.00,'2025-10-22',1,'2025-10-22 08:31:52',1),(3,3,1300.00,1700.00,1600.00,1600.00,'2025-10-22',1,'2025-10-22 16:41:55',1),(4,4,700.00,1000.00,900.00,900.00,'2025-10-22',1,'2025-10-22 16:43:47',1),(5,5,150.00,200.00,170.00,170.00,'2025-10-23',0,'2025-10-23 10:52:54',1),(6,7,2000.00,2500.00,2400.00,2400.00,'2025-10-23',0,'2025-10-23 11:01:35',1),(7,8,900.00,1330.00,1200.00,1200.00,'2025-10-28',0,'2025-10-28 06:34:15',1),(8,9,33000.00,40900.00,39000.00,39000.00,'2025-10-28',1,'2025-10-28 07:38:00',1),(9,10,13000.00,17680.00,16000.00,16000.00,'2025-10-28',1,'2025-10-28 07:40:57',1),(10,8,950.00,1330.00,1200.00,950.00,'2025-10-28',0,'2025-10-28 07:48:06',1),(11,8,930.00,1330.00,1200.00,950.00,'2025-10-28',1,'2025-10-28 08:11:51',1),(12,5,140.00,210.00,170.00,170.00,'2025-10-28',1,'2025-10-28 08:33:46',1),(13,7,2500.00,2500.00,2400.00,2500.00,'2025-10-28',0,'2025-10-28 08:35:25',1),(14,7,2400.00,2500.00,2400.00,2400.00,'2025-10-28',1,'2025-10-28 08:42:58',1),(15,11,400.00,500.00,400.00,400.00,'2025-10-28',1,'2025-10-28 11:31:25',1),(16,12,7000.00,8000.00,7500.00,750.00,'2025-10-28',1,'2025-10-28 11:33:37',1),(17,13,4000.00,5920.00,5800.00,5800.00,'2025-10-28',1,'2025-10-28 11:36:43',1),(18,14,1300.00,1600.00,1600.00,1600.00,'2025-10-28',1,'2025-10-28 11:41:42',1),(19,15,500.00,780.00,700.00,700.00,'2025-10-28',1,'2025-10-28 15:33:28',1);
/*!40000 ALTER TABLE `product_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `sub_category_id` int NOT NULL,
  `product_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_of_measure` enum('kg','g','l','ml','pcs','pack','bag','bottle','sachet','box') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pcs',
  `package_size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'e.g., 1kg, 500ml, 100g',
  `reorder_level` int DEFAULT '10',
  `min_stock_level` int DEFAULT '5',
  `max_stock_level` int DEFAULT '1000',
  `status` enum('active','inactive','discontinued') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_taxable` tinyint(1) DEFAULT '1',
  `tax_rate` decimal(5,2) DEFAULT '16.00' COMMENT 'VAT rate in Kenya is 16%',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'placeholder.png',
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_code` (`product_code`),
  UNIQUE KEY `barcode` (`barcode`),
  KEY `idx_product_code` (`product_code`),
  KEY `idx_barcode` (`barcode`),
  KEY `idx_sub_category` (`sub_category_id`),
  KEY `idx_status` (`status`),
  KEY `products_ibfk_2` (`created_by`),
  FULLTEXT KEY `idx_product_search` (`product_name`,`description`,`brand`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`sub_category_id`) ON DELETE RESTRICT,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'VER-894','','Vermiculite Soil Amendment 18kg','','','','kg','18',10,5,1000,'active',1,16.00,'2025-10-22 08:31:52','2025-10-28 06:57:22',1,'img1.png'),(3,3,'BIO-8340','3337374','BIOSORRA’s Biochar Bora 50Kg','BIOSORRA’s Biochar Bora is a multivitamin sponge that retains water and nutrients in farm soils, leading to absorption, storage and insulation and allowing to durably reduce the use of synthetic fertilizers while increasing crop productivity through its high surface area and pores.','','','kg','50',10,5,1000,'active',1,16.00,'2025-10-22 16:41:55','2025-10-28 06:57:22',1,'img2.png'),(4,3,'ECO-312','87654365','EcoGrowth Frass Organic fertilizer 10Kg','An organic, peat-free fertilizer alternative with multiple functional and socio-economic benefits.','','','kg','10',10,5,1000,'active',1,16.00,'2025-10-22 16:43:47','2025-10-28 06:57:22',1,'img3.png'),(5,8,'CRO-645','565545443','Cropsol Water soluble foliar 100G','CROPSOL is a premium micromix designed for fertigation. It is a fast-acting, water-soluble blend of essential nutrients formulated using chelated technology. Ideal for correcting nutrient deficiencies in crops and improving crop quality and yield. It is formulated through TiO₂ Technology, ensuring chelated micronutrients for optimal plant absorption and performance','','','g','100',10,5,1000,'active',1,16.00,'2025-10-23 10:52:54','2025-10-28 06:57:22',1,'img4.png'),(7,8,'PUR-240','571221','Pure Plant Lawn Plus 50Kg','Pure Plant Lawn Plus is a premium biochar‑based lawn enhancer enriched with beneficial microbes and organic nutrients. It improves soil structure, boosts moisture retention, and encourages strong root development, giving you a lush, vibrant, and resilient lawn all year round.','','','kg','50',10,5,1000,'active',1,16.00,'2025-10-23 11:01:35','2025-10-28 06:57:22',1,'img5.png'),(8,3,'BIO-288','210913','Biopest Plus 480ML','BIOPEST PLUS is a broad-spectrum, 100% natural biopesticide formulated with Neem Oil 20%vv + Karanja Oil 20%vv. It effectively controls a wide range of pests and is safe for both farmers and the environment. Fully certified organic and made locally in Kenya, it ensures safe food production with zero residues.','','','ml','480',10,5,1000,'active',0,16.00,'2025-10-28 06:34:15','2025-10-28 06:57:22',1,'img6.png'),(9,9,'MAD-396','129153','Madiba F1 100G','MADIBA F1 is a semi-determinate, highly productive hybrid tomato variety that produces firm, medium-to-large red fruits. It is suitable for both fresh market consumption and processing industries, with excellent tolerance to heat and long shelf life.','','','g','100',10,5,1000,'active',0,16.00,'2025-10-28 07:38:00','2025-10-28 07:45:31',1,'img7.png'),(10,9,'GOB-081','520692','Gobit F1 Onion 500G','A superior variety which matures early with dense, compact glossy dark-red colored bulbs. It gives medium to large bulbs which are globe in shape.','','','g','500',10,5,1000,'active',0,16.00,'2025-10-28 07:40:57','2025-10-28 07:45:31',1,'img8.png'),(11,11,'KER-396','576940','Kerol 250ML','Kerol is a strong multipurpose disinfectant fluid used in a variety of areas from domestic to commercial work.','','','ml','250',10,5,1000,'active',0,16.00,'2025-10-28 11:31:25','2025-10-28 11:52:59',1,'kero.png'),(12,15,'HAI-454','451495','HAI Rechargeable Electric Battery Knapsack Sprayer 20L','The HAI Rechargeable Knapsack Sprayer is a modern, battery-powered sprayer designed for easy, efficient, and comfortable spraying in farms, gardens, greenhouses, or even for general sanitation. With a capacity of 20litres, it helps you cover large areas quickly with minimal effort.','','','pcs','',10,5,1000,'active',1,16.00,'2025-10-28 11:33:37','2025-10-28 11:52:59',1,'hai.png'),(13,12,'TAT-410','826715','Tatua Advion Cockroach Gel 120g','A ready to use insecticidal gel bait to control cockroaches in and around residential areas.','','','g','120',10,5,1000,'active',1,16.00,'2025-10-28 11:36:43','2025-10-28 11:52:59',1,'tatua.png'),(14,15,'PRE-518','969982','Pressure Sprayer Pump 8L','General purpose pressure sprayer for cleaning in and around your garden.','','','pcs','',10,5,1000,'active',1,16.00,'2025-10-28 11:41:42','2025-10-28 11:52:59',1,'pressure.png'),(15,3,'GEN-588','622994','Genie Gold Organic 500ml','Genie Gold is a premium bio-stimulant designed to enhance plant growth, improve nutrient uptake, and boost overall crop resilience. Formulated with natural ingredients, it stimulates root development, increases flowering, and enhances yield potential.','','','ml','500',10,5,1000,'active',1,16.00,'2025-10-28 15:33:28','2025-10-28 15:33:28',1,'placeholder.png');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int DEFAULT NULL,
  `sale_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `subtotal` decimal(12,2) NOT NULL,
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `discount_percent` decimal(5,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `total_paid` decimal(12,2) DEFAULT '0.00' COMMENT 'Total amount paid so far',
  `balance_due` decimal(12,2) DEFAULT '0.00' COMMENT 'Remaining balance',
  `payment_status` enum('unpaid','partial','paid','overpaid') COLLATE utf8mb4_unicode_ci DEFAULT 'unpaid' COMMENT 'Overall payment status',
  `sale_status` enum('completed','refunded','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'completed',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `served_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sale_id`),
  UNIQUE KEY `invoice_no` (`invoice_no`),
  UNIQUE KEY `invoice_no_2` (`invoice_no`),
  KEY `idx_sale_date` (`sale_date`),
  KEY `idx_customer` (`customer_id`),
  KEY `idx_served_by` (`served_by`),
  KEY `idx_sale_status` (`sale_status`),
  KEY `idx_invoice_no` (`invoice_no`),
  KEY `idx_payment_status` (`payment_status`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE SET NULL,
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`served_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'INV-00000001',NULL,'2025-10-22 14:45:22',3000.00,0.00,0.00,480.00,3480.00,3480.00,0.00,'overpaid','completed','Order Complete',1,'2025-10-22 14:45:22','2025-10-24 11:53:20'),(2,'INV-00000002',NULL,'2025-10-22 14:53:01',1500.00,0.00,0.00,240.00,1740.00,1740.00,0.00,'overpaid','completed','',1,'2025-10-22 14:53:01','2025-10-24 11:53:20'),(3,'INV-00000003',1,'2025-10-22 14:55:40',1500.00,0.00,0.00,240.00,1740.00,1740.00,0.00,'overpaid','completed','Order Completed',1,'2025-10-22 14:55:40','2025-10-24 11:53:20'),(4,'INV-00000004',NULL,'2025-10-22 16:45:54',6400.00,0.00,0.00,1024.00,7424.00,7424.00,0.00,'overpaid','completed','',1,'2025-10-22 16:45:54','2025-10-24 11:53:20'),(5,'INV-00000005',NULL,'2025-10-23 09:16:21',7900.00,0.00,0.00,1264.00,9164.00,9164.00,0.00,'overpaid','completed','',1,'2025-10-23 09:16:21','2025-10-24 11:53:20'),(6,'INV-00000006',NULL,'2025-10-23 09:16:50',3000.00,0.00,0.00,480.00,3480.00,3480.00,0.00,'overpaid','completed','',1,'2025-10-23 09:16:50','2025-10-24 11:53:20'),(7,'INV-00000007',NULL,'2025-10-23 09:18:26',3700.00,0.00,0.00,592.00,4292.00,4292.00,0.00,'paid','completed','',1,'2025-10-23 09:18:26','2025-10-24 07:45:28'),(8,'INV-00000008',NULL,'2025-10-23 09:18:52',3000.00,0.00,0.00,480.00,3480.00,3480.00,0.00,'paid','completed','',1,'2025-10-23 09:18:52','2025-10-24 07:45:28'),(9,'INV-00000009',NULL,'2025-10-23 10:32:02',1500.00,0.00,0.00,240.00,1740.00,1740.00,0.00,'paid','completed','',3,'2025-10-23 10:32:02','2025-10-24 07:45:28'),(10,'INV-20251024-D7302D',NULL,'2025-10-24 09:33:17',12100.00,0.00,0.00,1936.00,14036.00,14036.00,0.00,'paid','completed',NULL,1,'2025-10-24 09:33:17','2025-10-24 09:33:17'),(11,'INV-20251024-67EE78',NULL,'2025-10-24 09:48:38',2500.00,0.00,0.00,400.00,2900.00,2900.00,0.00,'paid','completed',NULL,1,'2025-10-24 09:48:38','2025-10-24 09:51:06'),(12,'INV-20251024-D903C6',1,'2025-10-24 09:53:49',2500.00,0.00,0.00,400.00,2900.00,2900.00,0.00,'paid','completed',NULL,1,'2025-10-24 09:53:49','2025-10-24 09:54:17'),(13,'INV-20251024-6DC119',NULL,'2025-10-24 11:51:02',3500.00,0.00,0.00,560.00,4060.00,2500.00,1560.00,'partial','completed',NULL,1,'2025-10-24 11:51:02','2025-10-24 12:38:40'),(14,'INV-20251025-8260BE',2,'2025-10-25 18:25:28',7200.00,0.00,0.00,1152.00,8352.00,5000.00,3352.00,'partial','completed',NULL,1,'2025-10-25 18:25:28','2025-10-25 18:25:28'),(15,'INV-20251027-713B08',NULL,'2025-10-27 06:39:35',3600.00,0.00,0.00,576.00,4176.00,4176.00,0.00,'paid','completed',NULL,1,'2025-10-27 06:39:35','2025-10-27 06:39:35'),(16,'INV-20251027-8D5D37',NULL,'2025-10-27 12:51:52',2500.00,0.00,0.00,400.00,2900.00,2900.00,0.00,'paid','completed',NULL,1,'2025-10-27 12:51:52','2025-10-27 12:51:52'),(17,'INV-20251028-B34F1E',NULL,'2025-10-28 08:50:35',4040.00,0.00,0.00,646.40,4686.40,4686.40,0.00,'paid','completed',NULL,1,'2025-10-28 08:50:35','2025-10-28 08:50:35'),(18,'INV-20251028-4CD8BD',NULL,'2025-10-28 08:51:00',20180.00,0.00,0.00,3228.80,23408.80,23408.80,0.00,'paid','completed',NULL,1,'2025-10-28 08:51:00','2025-10-28 08:51:00'),(19,'INV-20251028-FC5804',NULL,'2025-10-28 08:51:59',5000.00,0.00,0.00,800.00,5800.00,5800.00,0.00,'paid','completed',NULL,1,'2025-10-28 08:51:59','2025-10-28 08:51:59'),(20,'INV-20251028-8160F9',3,'2025-10-28 08:54:00',53040.00,0.00,0.00,8486.40,61526.40,1000.00,60526.40,'partial','completed',NULL,1,'2025-10-28 08:54:00','2025-10-28 08:54:00'),(21,'INV-20251028-602EED',NULL,'2025-10-28 11:02:46',17680.00,0.00,0.00,2828.80,20508.80,20508.80,0.00,'paid','completed',NULL,3,'2025-10-28 11:02:46','2025-10-28 11:02:46'),(22,'INV-20251028-57D3E8',4,'2025-10-28 15:44:53',20380.00,0.00,0.00,3260.80,23640.80,23640.80,0.00,'paid','completed',NULL,1,'2025-10-28 15:44:53','2025-10-28 15:44:53'),(23,'INV-20251105-F2A461',NULL,'2025-11-05 12:44:15',2910.00,0.00,0.00,465.60,3375.60,3375.60,0.00,'paid','completed',NULL,1,'2025-11-05 12:44:15','2025-11-05 12:44:15'),(24,'INV-20251105-AE7598',NULL,'2025-11-05 12:44:42',26180.00,0.00,0.00,4188.80,30368.80,30368.80,0.00,'paid','completed',NULL,1,'2025-11-05 12:44:42','2025-11-05 12:44:42'),(25,'INV-20251105-85B2E4',1,'2025-11-05 12:47:04',48900.00,0.00,0.00,7824.00,56724.00,10000.00,46724.00,'partial','completed',NULL,1,'2025-11-05 12:47:04','2025-11-05 12:47:04'),(26,'INV-20251105-FDF03C',1,'2025-11-05 13:18:07',43930.00,0.00,0.00,7028.80,50958.80,50958.80,0.00,'paid','completed',NULL,1,'2025-11-05 13:18:07','2025-11-05 13:18:07');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_details`
--

DROP TABLE IF EXISTS `sales_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_details` (
  `sale_detail_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) NOT NULL,
  `line_total` decimal(12,2) NOT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL COMMENT 'For profit calculation',
  PRIMARY KEY (`sale_detail_id`),
  KEY `idx_sale` (`sale_id`),
  KEY `idx_product` (`product_id`),
  CONSTRAINT `sales_details_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE,
  CONSTRAINT `sales_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_details`
--

LOCK TABLES `sales_details` WRITE;
/*!40000 ALTER TABLE `sales_details` DISABLE KEYS */;
INSERT INTO `sales_details` VALUES (1,1,1,2,1500.00,0.00,480.00,3000.00,1000.00),(2,2,1,1,1500.00,0.00,240.00,1500.00,1000.00),(3,3,1,1,1500.00,0.00,240.00,1500.00,1000.00),(4,4,3,2,1700.00,0.00,544.00,3400.00,1300.00),(5,4,4,3,1000.00,0.00,480.00,3000.00,700.00),(6,5,3,2,1700.00,0.00,544.00,3400.00,1300.00),(7,5,4,3,1000.00,0.00,480.00,3000.00,700.00),(8,5,1,1,1500.00,0.00,240.00,1500.00,1000.00),(9,6,4,3,1000.00,0.00,480.00,3000.00,700.00),(10,7,3,1,1700.00,0.00,272.00,1700.00,1300.00),(11,7,4,2,1000.00,0.00,320.00,2000.00,700.00),(12,8,1,2,1500.00,0.00,480.00,3000.00,1000.00),(13,9,1,1,1500.00,0.00,240.00,1500.00,1000.00),(14,10,5,1,200.00,0.00,32.00,200.00,150.00),(15,10,3,2,1700.00,0.00,544.00,3400.00,1300.00),(16,10,4,2,1000.00,0.00,320.00,2000.00,700.00),(17,10,7,2,2500.00,0.00,800.00,5000.00,2000.00),(18,10,1,1,1500.00,0.00,240.00,1500.00,1000.00),(19,11,7,1,2500.00,0.00,400.00,2500.00,2000.00),(20,12,7,1,2500.00,0.00,400.00,2500.00,2000.00),(21,13,4,1,1000.00,0.00,160.00,1000.00,700.00),(22,13,7,1,2500.00,0.00,400.00,2500.00,2000.00),(23,14,3,1,1700.00,0.00,272.00,1700.00,1300.00),(24,14,4,3,1000.00,0.00,480.00,3000.00,700.00),(25,14,7,1,2500.00,0.00,400.00,2500.00,2000.00),(26,15,5,1,200.00,0.00,32.00,200.00,150.00),(27,15,3,2,1700.00,0.00,544.00,3400.00,1300.00),(28,16,7,1,2500.00,0.00,400.00,2500.00,2000.00),(29,17,8,1,1330.00,0.00,212.80,1330.00,930.00),(30,17,5,1,210.00,0.00,33.60,210.00,140.00),(31,17,7,1,2500.00,0.00,400.00,2500.00,2400.00),(32,18,7,1,2500.00,0.00,400.00,2500.00,2400.00),(33,18,10,1,17680.00,0.00,2828.80,17680.00,13000.00),(34,19,7,2,2500.00,0.00,800.00,5000.00,2400.00),(35,20,10,3,17680.00,0.00,8486.40,53040.00,13000.00),(36,21,10,1,17680.00,0.00,2828.80,17680.00,13000.00),(37,22,11,2,500.00,0.00,160.00,1000.00,400.00),(38,22,3,1,1700.00,0.00,272.00,1700.00,1300.00),(39,22,10,1,17680.00,0.00,2828.80,17680.00,13000.00),(40,23,5,1,210.00,0.00,33.60,210.00,140.00),(41,23,3,1,1700.00,0.00,272.00,1700.00,1300.00),(42,23,4,1,1000.00,0.00,160.00,1000.00,700.00),(43,24,11,1,500.00,0.00,80.00,500.00,400.00),(44,24,12,1,8000.00,0.00,1280.00,8000.00,7000.00),(45,24,10,1,17680.00,0.00,2828.80,17680.00,13000.00),(46,25,9,1,40900.00,0.00,6544.00,40900.00,33000.00),(47,25,12,1,8000.00,0.00,1280.00,8000.00,7000.00),(48,26,8,1,1330.00,0.00,212.80,1330.00,930.00),(49,26,3,1,1700.00,0.00,272.00,1700.00,1300.00),(50,26,9,1,40900.00,0.00,6544.00,40900.00,33000.00);
/*!40000 ALTER TABLE `sales_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_return_details`
--

DROP TABLE IF EXISTS `sales_return_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_return_details` (
  `return_detail_id` int NOT NULL AUTO_INCREMENT,
  `return_id` int NOT NULL,
  `sale_detail_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity_returned` int NOT NULL,
  `return_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`return_detail_id`),
  KEY `sale_detail_id` (`sale_detail_id`),
  KEY `idx_return` (`return_id`),
  KEY `idx_product` (`product_id`),
  CONSTRAINT `sales_return_details_ibfk_1` FOREIGN KEY (`return_id`) REFERENCES `sales_returns` (`return_id`) ON DELETE CASCADE,
  CONSTRAINT `sales_return_details_ibfk_2` FOREIGN KEY (`sale_detail_id`) REFERENCES `sales_details` (`sale_detail_id`) ON DELETE RESTRICT,
  CONSTRAINT `sales_return_details_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_return_details`
--

LOCK TABLES `sales_return_details` WRITE;
/*!40000 ALTER TABLE `sales_return_details` DISABLE KEYS */;
INSERT INTO `sales_return_details` VALUES (1,1,2,1,1,1500.00);
/*!40000 ALTER TABLE `sales_return_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_returns`
--

DROP TABLE IF EXISTS `sales_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_returns` (
  `return_id` int NOT NULL AUTO_INCREMENT,
  `return_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int NOT NULL,
  `return_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_return_amount` decimal(12,2) NOT NULL,
  `refund_method` enum('cash','mpesa','credit_note') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `processed_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_id`),
  UNIQUE KEY `return_no` (`return_no`),
  KEY `processed_by` (`processed_by`),
  KEY `idx_return_no` (`return_no`),
  KEY `idx_sale` (`sale_id`),
  KEY `idx_return_date` (`return_date`),
  CONSTRAINT `sales_returns_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE RESTRICT,
  CONSTRAINT `sales_returns_ibfk_2` FOREIGN KEY (`processed_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_returns`
--

LOCK TABLES `sales_returns` WRITE;
/*!40000 ALTER TABLE `sales_returns` DISABLE KEYS */;
INSERT INTO `sales_returns` VALUES (1,'RET-20251022-24D1DC',2,'2025-10-22 16:00:02',1500.00,'cash','Expired Product',1,'2025-10-22 16:00:02');
/*!40000 ALTER TABLE `sales_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `stock_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity_available` int NOT NULL DEFAULT '0',
  `quantity_reserved` int NOT NULL DEFAULT '0' COMMENT 'Reserved for pending orders',
  `last_restock_date` date DEFAULT NULL,
  `last_sale_date` date DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Main Store',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stock_id`),
  UNIQUE KEY `unique_product_location` (`product_id`,`location`),
  KEY `idx_product` (`product_id`),
  KEY `idx_quantity` (`quantity_available`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,51,0,'2025-10-28','2025-10-24','Main Store','2025-10-28 15:36:48'),(2,3,17,0,'2025-10-23','2025-11-05','Main Store','2025-11-05 13:18:07'),(3,4,11,0,'2025-11-05','2025-11-05','Main Store','2025-11-05 13:14:34'),(4,5,26,0,'2025-10-23','2025-11-05','Main Store','2025-11-05 12:44:15'),(5,7,61,0,'2025-11-05','2025-10-28','Main Store','2025-11-05 13:14:34'),(6,8,32,0,'2025-10-28','2025-11-05','Main Store','2025-11-05 13:18:07'),(7,9,19,0,'2025-10-28','2025-11-05','Main Store','2025-11-05 13:18:07'),(8,10,28,0,'2025-10-28','2025-11-05','Main Store','2025-11-05 12:44:42'),(9,11,31,0,'2025-10-28','2025-11-05','Main Store','2025-11-05 12:44:42'),(10,12,6,0,'2025-10-28','2025-11-05','Main Store','2025-11-05 12:47:04'),(11,13,20,0,'2025-10-28',NULL,'Main Store','2025-10-28 11:37:41'),(12,14,1,0,'2025-11-05',NULL,'Main Store','2025-11-05 13:14:34'),(13,15,0,0,NULL,NULL,'Main Store','2025-10-28 15:33:28');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_purchase_details`
--

DROP TABLE IF EXISTS `stock_purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_purchase_details` (
  `purchase_detail_id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  PRIMARY KEY (`purchase_detail_id`),
  KEY `idx_purchase` (`purchase_id`),
  KEY `idx_product` (`product_id`),
  CONSTRAINT `stock_purchase_details_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `stock_purchases` (`purchase_id`) ON DELETE CASCADE,
  CONSTRAINT `stock_purchase_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_purchase_details`
--

LOCK TABLES `stock_purchase_details` WRITE;
/*!40000 ALTER TABLE `stock_purchase_details` DISABLE KEYS */;
INSERT INTO `stock_purchase_details` VALUES (4,4,1,23,1000.00,23000.00),(7,7,1,8,1000.00,8000.00),(8,8,1,5,1000.00,5000.00),(9,9,3,25,1300.00,32500.00),(10,9,4,25,700.00,17500.00),(11,10,7,33,2000.00,66000.00),(12,10,5,30,150.00,4500.00),(13,11,3,5,1300.00,6500.00),(14,12,8,34,950.00,32300.00),(15,12,10,35,13000.00,455000.00),(16,13,9,21,33000.00,693000.00),(17,14,7,28,2500.00,70000.00),(18,15,7,5,2400.00,12000.00),(19,16,12,8,7000.00,56000.00),(20,16,11,13,400.00,5200.00),(21,17,13,20,4000.00,80000.00),(22,18,1,23,1000.00,23000.00),(23,18,11,21,400.00,8400.00),(24,19,4,4,700.00,2800.00),(25,19,7,6,2400.00,14400.00),(26,19,14,1,1300.00,1300.00);
/*!40000 ALTER TABLE `stock_purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_purchases`
--

DROP TABLE IF EXISTS `stock_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_purchases` (
  `purchase_id` int NOT NULL AUTO_INCREMENT,
  `purchase_order_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `purchase_date` date NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `payment_status` enum('pending','partial','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount_paid` decimal(12,2) DEFAULT '0.00',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `received_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_id`),
  UNIQUE KEY `purchase_order_no` (`purchase_order_no`),
  KEY `received_by` (`received_by`),
  KEY `idx_purchase_order` (`purchase_order_no`),
  KEY `idx_purchase_date` (`purchase_date`),
  KEY `idx_supplier` (`supplier_id`),
  CONSTRAINT `stock_purchases_ibfk_1` FOREIGN KEY (`received_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_purchases`
--

LOCK TABLES `stock_purchases` WRITE;
/*!40000 ALTER TABLE `stock_purchases` DISABLE KEYS */;
INSERT INTO `stock_purchases` VALUES (4,'PO-20251022-8338',NULL,'2025-10-22',23000.00,'paid',23000.00,'',1,'2025-10-22 09:26:28','2025-10-22 09:26:28'),(7,'PO-20251022-9200',NULL,'2025-10-22',8000.00,'paid',8000.00,'',1,'2025-10-22 10:54:59','2025-10-22 10:54:59'),(8,'PO-20251022-9999',NULL,'2025-10-22',5000.00,'paid',5000.00,'',1,'2025-10-22 11:02:53','2025-10-22 11:02:53'),(9,'PO-20251022-5017',NULL,'2025-10-22',50000.00,'paid',50000.00,'',1,'2025-10-22 16:44:51','2025-10-22 16:44:51'),(10,'PO-20251023-4082',NULL,'2025-10-23',70500.00,'paid',70500.00,'',1,'2025-10-23 11:02:49','2025-10-23 11:02:49'),(11,'PO-20251023-5667',1,'2025-10-23',6500.00,'pending',0.00,'',1,'2025-10-23 11:25:26','2025-10-23 11:25:26'),(12,'PO-20251028-8601',1,'2025-10-28',487300.00,'paid',487300.00,'',1,'2025-10-28 07:48:06','2025-10-28 07:48:06'),(13,'PO-20251028-3215',1,'2025-10-28',693000.00,'paid',693000.00,'',1,'2025-10-28 07:49:14','2025-10-28 07:49:14'),(14,'PO-20251028-4618',NULL,'2025-10-28',70000.00,'paid',70000.00,'',1,'2025-10-28 08:35:25','2025-10-28 08:35:25'),(15,'PO-20251028-7843',NULL,'2025-10-28',12000.00,'paid',12000.00,'',1,'2025-10-28 08:42:58','2025-10-28 08:42:58'),(16,'PO-20251028-3535',1,'2025-10-28',61200.00,'paid',61200.00,'',1,'2025-10-28 11:34:41','2025-10-28 11:34:41'),(17,'PO-20251028-8939',1,'2025-10-28',80000.00,'paid',80000.00,'',1,'2025-10-28 11:37:41','2025-10-28 11:37:41'),(18,'PO-20251028-9761',1,'2025-10-28',31400.00,'paid',31400.00,'',1,'2025-10-28 15:36:48','2025-10-28 15:36:48'),(19,'PO-20251105-6436',1,'2025-11-05',18500.00,'paid',18500.00,'',1,'2025-11-05 13:14:34','2025-11-05 13:14:34');
/*!40000 ALTER TABLE `stock_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_transactions`
--

DROP TABLE IF EXISTS `stock_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `transaction_type` enum('purchase','sale','return','adjustment','damage','expired','transfer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL COMMENT 'Positive for stock in, negative for stock out',
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `performed_by` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `performed_by` (`performed_by`),
  KEY `idx_product` (`product_id`),
  KEY `idx_transaction_type` (`transaction_type`),
  KEY `idx_transaction_date` (`transaction_date`),
  KEY `idx_reference` (`reference_no`),
  CONSTRAINT `stock_transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT,
  CONSTRAINT `stock_transactions_ibfk_2` FOREIGN KEY (`performed_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_transactions`
--

LOCK TABLES `stock_transactions` WRITE;
/*!40000 ALTER TABLE `stock_transactions` DISABLE KEYS */;
INSERT INTO `stock_transactions` VALUES (1,1,'purchase',23,'PO-20251022-8338',1000.00,1500.00,'Stock purchase: PO-20251022-8338','2025-10-22 09:26:28',1),(2,1,'purchase',8,'PO-20251022-9200',1000.00,1500.00,'Stock purchase: PO-20251022-9200','2025-10-22 10:54:59',1),(3,1,'purchase',5,'PO-20251022-9999',1000.00,1500.00,'Stock purchase: PO-20251022-9999','2025-10-22 11:02:53',1),(4,1,'sale',-2,'RCP-20251022-295BF1',1000.00,1500.00,'Sale - Receipt: RCP-20251022-295BF1','2025-10-22 14:45:22',1),(5,1,'sale',-1,'RCP-20251022-DB218C',1000.00,1500.00,'Sale - Receipt: RCP-20251022-DB218C','2025-10-22 14:53:01',1),(6,1,'sale',-1,'RCP-20251022-C9664E',1000.00,1500.00,'Sale - Receipt: RCP-20251022-C9664E','2025-10-22 14:55:40',1),(7,1,'return',1,'RET-20251022-24D1DC',NULL,NULL,'Return from sale - Expired Product','2025-10-22 16:00:02',1),(8,3,'purchase',25,'PO-20251022-5017',1300.00,1700.00,'Stock purchase: PO-20251022-5017','2025-10-22 16:44:51',1),(9,4,'purchase',25,'PO-20251022-5017',700.00,1000.00,'Stock purchase: PO-20251022-5017','2025-10-22 16:44:51',1),(10,3,'sale',-2,'RCP-20251022-28EFB3',1300.00,1700.00,'Sale - Receipt: RCP-20251022-28EFB3','2025-10-22 16:45:54',1),(11,4,'sale',-3,'RCP-20251022-28EFB3',700.00,1000.00,'Sale - Receipt: RCP-20251022-28EFB3','2025-10-22 16:45:54',1),(12,3,'sale',-2,'RCP-20251023-5E6ED9',1300.00,1700.00,'Sale - Receipt: RCP-20251023-5E6ED9','2025-10-23 09:16:21',1),(13,4,'sale',-3,'RCP-20251023-5E6ED9',700.00,1000.00,'Sale - Receipt: RCP-20251023-5E6ED9','2025-10-23 09:16:21',1),(14,1,'sale',-1,'RCP-20251023-5E6ED9',1000.00,1500.00,'Sale - Receipt: RCP-20251023-5E6ED9','2025-10-23 09:16:21',1),(15,4,'sale',-3,'RCP-20251023-29E9DA',700.00,1000.00,'Sale - Receipt: RCP-20251023-29E9DA','2025-10-23 09:16:50',1),(16,3,'sale',-1,'RCP-20251023-2EA23A',1300.00,1700.00,'Sale - Receipt: RCP-20251023-2EA23A','2025-10-23 09:18:26',1),(17,4,'sale',-2,'RCP-20251023-2EA23A',700.00,1000.00,'Sale - Receipt: RCP-20251023-2EA23A','2025-10-23 09:18:26',1),(18,1,'sale',-2,'RCP-20251023-C154B6',1000.00,1500.00,'Sale - Receipt: RCP-20251023-C154B6','2025-10-23 09:18:52',1),(19,1,'sale',-1,'RCP-20251023-240709',1000.00,1500.00,'Sale - Receipt: RCP-20251023-240709','2025-10-23 10:32:02',3),(20,7,'purchase',33,'PO-20251023-4082',2000.00,2500.00,'Stock purchase: PO-20251023-4082','2025-10-23 11:02:49',1),(21,5,'purchase',30,'PO-20251023-4082',150.00,200.00,'Stock purchase: PO-20251023-4082','2025-10-23 11:02:49',1),(22,3,'purchase',5,'PO-20251023-5667',1300.00,1700.00,'Stock purchase: PO-20251023-5667','2025-10-23 11:25:26',1),(23,5,'sale',-1,'INV-20251024-D7302D',150.00,200.00,'Sale - Invoice: INV-20251024-D7302D','2025-10-24 09:33:17',1),(24,3,'sale',-2,'INV-20251024-D7302D',1300.00,1700.00,'Sale - Invoice: INV-20251024-D7302D','2025-10-24 09:33:17',1),(25,4,'sale',-2,'INV-20251024-D7302D',700.00,1000.00,'Sale - Invoice: INV-20251024-D7302D','2025-10-24 09:33:17',1),(26,7,'sale',-2,'INV-20251024-D7302D',2000.00,2500.00,'Sale - Invoice: INV-20251024-D7302D','2025-10-24 09:33:17',1),(27,1,'sale',-1,'INV-20251024-D7302D',1000.00,1500.00,'Sale - Invoice: INV-20251024-D7302D','2025-10-24 09:33:17',1),(28,7,'sale',-1,'INV-20251024-67EE78',2000.00,2500.00,'Sale - Invoice: INV-20251024-67EE78','2025-10-24 09:48:38',1),(29,7,'sale',-1,'INV-20251024-D903C6',2000.00,2500.00,'Sale - Invoice: INV-20251024-D903C6','2025-10-24 09:53:49',1),(30,4,'sale',-1,'INV-20251024-6DC119',700.00,1000.00,'Sale - Invoice: INV-20251024-6DC119','2025-10-24 11:51:02',1),(31,7,'sale',-1,'INV-20251024-6DC119',2000.00,2500.00,'Sale - Invoice: INV-20251024-6DC119','2025-10-24 11:51:02',1),(32,3,'sale',-1,'INV-20251025-8260BE',1300.00,1700.00,'Sale - Invoice: INV-20251025-8260BE','2025-10-25 18:25:28',1),(33,4,'sale',-3,'INV-20251025-8260BE',700.00,1000.00,'Sale - Invoice: INV-20251025-8260BE','2025-10-25 18:25:28',1),(34,7,'sale',-1,'INV-20251025-8260BE',2000.00,2500.00,'Sale - Invoice: INV-20251025-8260BE','2025-10-25 18:25:28',1),(35,5,'sale',-1,'INV-20251027-713B08',150.00,200.00,'Sale - Invoice: INV-20251027-713B08','2025-10-27 06:39:35',1),(36,3,'sale',-2,'INV-20251027-713B08',1300.00,1700.00,'Sale - Invoice: INV-20251027-713B08','2025-10-27 06:39:35',1),(37,7,'sale',-1,'INV-20251027-8D5D37',2000.00,2500.00,'Sale - Invoice: INV-20251027-8D5D37','2025-10-27 12:51:52',1),(38,8,'purchase',34,'PO-20251028-8601',900.00,1330.00,'Stock purchase: PO-20251028-8601','2025-10-28 07:48:06',1),(39,10,'purchase',35,'PO-20251028-8601',13000.00,17680.00,'Stock purchase: PO-20251028-8601','2025-10-28 07:48:06',1),(40,9,'purchase',21,'PO-20251028-3215',33000.00,40900.00,'Stock purchase: PO-20251028-3215','2025-10-28 07:49:14',1),(41,7,'purchase',28,'PO-20251028-4618',2000.00,2500.00,'Stock purchase: PO-20251028-4618','2025-10-28 08:35:25',1),(42,7,'purchase',5,'PO-20251028-7843',2000.00,2500.00,'Stock purchase: PO-20251028-7843','2025-10-28 08:42:58',1),(43,10,'adjustment',-2,'ADJ-1761641315',13000.00,17680.00,'Stock count correction','2025-10-28 08:48:35',1),(44,8,'adjustment',-2,'ADJ-1761641369',930.00,1330.00,'Stock count correction','2025-10-28 08:49:29',1),(45,8,'sale',-1,'INV-20251028-B34F1E',930.00,1330.00,'Sale - Invoice: INV-20251028-B34F1E','2025-10-28 08:50:35',1),(46,5,'sale',-1,'INV-20251028-B34F1E',140.00,210.00,'Sale - Invoice: INV-20251028-B34F1E','2025-10-28 08:50:35',1),(47,7,'sale',-1,'INV-20251028-B34F1E',2400.00,2500.00,'Sale - Invoice: INV-20251028-B34F1E','2025-10-28 08:50:35',1),(48,7,'sale',-1,'INV-20251028-4CD8BD',2400.00,2500.00,'Sale - Invoice: INV-20251028-4CD8BD','2025-10-28 08:51:00',1),(49,10,'sale',-1,'INV-20251028-4CD8BD',13000.00,17680.00,'Sale - Invoice: INV-20251028-4CD8BD','2025-10-28 08:51:00',1),(50,7,'sale',-2,'INV-20251028-FC5804',2400.00,2500.00,'Sale - Invoice: INV-20251028-FC5804','2025-10-28 08:51:59',1),(51,10,'sale',-3,'INV-20251028-8160F9',13000.00,17680.00,'Sale - Invoice: INV-20251028-8160F9','2025-10-28 08:54:00',1),(52,10,'sale',-1,'INV-20251028-602EED',13000.00,17680.00,'Sale - Invoice: INV-20251028-602EED','2025-10-28 11:02:46',3),(53,12,'purchase',8,'PO-20251028-3535',7000.00,8000.00,'Stock purchase: PO-20251028-3535','2025-10-28 11:34:41',1),(54,11,'purchase',13,'PO-20251028-3535',400.00,500.00,'Stock purchase: PO-20251028-3535','2025-10-28 11:34:41',1),(55,13,'purchase',20,'PO-20251028-8939',4000.00,5920.00,'Stock purchase: PO-20251028-8939','2025-10-28 11:37:41',1),(56,1,'purchase',23,'PO-20251028-9761',1000.00,1500.00,'Stock purchase: PO-20251028-9761','2025-10-28 15:36:48',1),(57,11,'purchase',21,'PO-20251028-9761',400.00,500.00,'Stock purchase: PO-20251028-9761','2025-10-28 15:36:48',1),(58,11,'sale',-2,'INV-20251028-57D3E8',400.00,500.00,'Sale - Invoice: INV-20251028-57D3E8','2025-10-28 15:44:53',1),(59,3,'sale',-1,'INV-20251028-57D3E8',1300.00,1700.00,'Sale - Invoice: INV-20251028-57D3E8','2025-10-28 15:44:53',1),(60,10,'sale',-1,'INV-20251028-57D3E8',13000.00,17680.00,'Sale - Invoice: INV-20251028-57D3E8','2025-10-28 15:44:53',1),(61,5,'sale',-1,'INV-20251105-F2A461',140.00,210.00,'Sale - Invoice: INV-20251105-F2A461','2025-11-05 12:44:15',1),(62,3,'sale',-1,'INV-20251105-F2A461',1300.00,1700.00,'Sale - Invoice: INV-20251105-F2A461','2025-11-05 12:44:15',1),(63,4,'sale',-1,'INV-20251105-F2A461',700.00,1000.00,'Sale - Invoice: INV-20251105-F2A461','2025-11-05 12:44:15',1),(64,11,'sale',-1,'INV-20251105-AE7598',400.00,500.00,'Sale - Invoice: INV-20251105-AE7598','2025-11-05 12:44:42',1),(65,12,'sale',-1,'INV-20251105-AE7598',7000.00,8000.00,'Sale - Invoice: INV-20251105-AE7598','2025-11-05 12:44:42',1),(66,10,'sale',-1,'INV-20251105-AE7598',13000.00,17680.00,'Sale - Invoice: INV-20251105-AE7598','2025-11-05 12:44:42',1),(67,9,'sale',-1,'INV-20251105-85B2E4',33000.00,40900.00,'Sale - Invoice: INV-20251105-85B2E4','2025-11-05 12:47:04',1),(68,12,'sale',-1,'INV-20251105-85B2E4',7000.00,8000.00,'Sale - Invoice: INV-20251105-85B2E4','2025-11-05 12:47:04',1),(69,4,'purchase',4,'PO-20251105-6436',700.00,1000.00,'Stock purchase: PO-20251105-6436','2025-11-05 13:14:34',1),(70,7,'purchase',6,'PO-20251105-6436',2400.00,2500.00,'Stock purchase: PO-20251105-6436','2025-11-05 13:14:34',1),(71,14,'purchase',1,'PO-20251105-6436',1300.00,1600.00,'Stock purchase: PO-20251105-6436','2025-11-05 13:14:34',1),(72,8,'sale',-1,'INV-20251105-FDF03C',930.00,1330.00,'Sale - Invoice: INV-20251105-FDF03C','2025-11-05 13:18:07',1),(73,3,'sale',-1,'INV-20251105-FDF03C',1300.00,1700.00,'Sale - Invoice: INV-20251105-FDF03C','2025-11-05 13:18:07',1),(74,9,'sale',-1,'INV-20251105-FDF03C',33000.00,40900.00,'Sale - Invoice: INV-20251105-FDF03C','2025-11-05 13:18:07',1);
/*!40000 ALTER TABLE `stock_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `sub_category_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sub_category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `display_order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sub_category_id`),
  UNIQUE KEY `sub_category_code` (`sub_category_code`),
  KEY `idx_category` (`category_id`),
  KEY `idx_status` (`status`),
  CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,1,'Propagation Materials','ORG-PROP','Seeds, seedlings, and propagation materials','active',1,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(2,1,'Viricide','ORG-VIR','Organic virus control products','active',2,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(3,1,'Organic Products','ORG-PROD','General organic farming products','active',3,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(4,2,'Forage','AGI-FOR','Animal feed and forage products','active',1,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(5,2,'Termicide','AGI-TER','Termite control products','active',2,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(6,2,'Nematicide','AGI-NEM','Nematode control products','active',3,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(7,2,'Lawn Products','AGI-LAWN','Lawn care and maintenance products','active',4,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(8,2,'Fertilizers','AGI-FERT','Plant fertilizers and nutrients','active',5,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(9,2,'Seeds','AGI-SEED','Agricultural seeds','active',6,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(10,2,'Insecticides','AGI-INS','Insect control products','active',7,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(11,3,'Disinfectants','FUM-DIS','Disinfection products','active',1,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(12,3,'Pest Fumigation','FUM-PEST','Pest control fumigation products','active',2,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(13,4,'Hand Tools','EQP-HAND','Manual farming tools','active',1,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(14,4,'Power Equipment','EQP-POW','Powered farming equipment','active',2,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(15,4,'Irrigation Equipment','EQP-IRR','Irrigation systems and tools','active',3,'2025-10-21 15:15:04','2025-10-21 15:15:04'),(17,6,'Maize Flour','MF','Four all maize flour brand','active',6,'2025-11-11 09:43:23','2025-11-11 09:43:23');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address` text COLLATE utf8mb4_unicode_ci,
  `county` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'e.g., Net 30, COD',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplier_id`),
  KEY `idx_supplier_name` (`supplier_name`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Ndegwa & Co','S Ndegwa','0726159301','sam@gmail.com','Nairobi, Kenya','Nairobi','Nairobi','COD','active','2025-10-22 12:13:21','2025-10-23 11:24:52');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_settings` (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci,
  `setting_type` enum('string','number','boolean','json') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `description` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `setting_key` (`setting_key`),
  KEY `updated_by` (`updated_by`),
  KEY `idx_setting_key` (`setting_key`),
  CONSTRAINT `system_settings_ibfk_1` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_settings`
--

LOCK TABLES `system_settings` WRITE;
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
INSERT INTO `system_settings` VALUES (1,'business_name','AgroPest Agrovet','string','Business name','2025-10-21 15:15:30',NULL),(2,'vat_rate','16','number','VAT rate percentage','2025-10-21 15:15:30',NULL),(3,'currency','KES','string','Currency code','2025-10-21 15:15:30',NULL),(4,'low_stock_alert','true','boolean','Enable low stock alerts','2025-10-21 15:15:30',NULL),(5,'receipt_footer','Thank you for shopping with us!','string','Receipt footer message','2025-10-21 15:15:30',NULL);
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `permission_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `can_add_products` tinyint(1) DEFAULT '0',
  `can_edit_products` tinyint(1) DEFAULT '0',
  `can_delete_products` tinyint(1) DEFAULT '0',
  `can_manage_stock` tinyint(1) DEFAULT '0',
  `can_make_sales` tinyint(1) DEFAULT '1',
  `can_view_reports` tinyint(1) DEFAULT '0',
  `can_manage_users` tinyint(1) DEFAULT '0',
  `can_manage_customers` tinyint(1) DEFAULT '0',
  `can_process_refunds` tinyint(1) DEFAULT '0',
  `can_give_discounts` tinyint(1) DEFAULT '0',
  `max_discount_percent` decimal(5,2) DEFAULT '0.00',
  `can_view_hr` tinyint(1) DEFAULT '0',
  `can_manage_employees` tinyint(1) DEFAULT '0',
  `can_approve_leave` tinyint(1) DEFAULT '0',
  `can_process_payroll` tinyint(1) DEFAULT '0',
  `can_view_payroll` tinyint(1) DEFAULT '0',
  `can_manage_attendance` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`permission_id`),
  UNIQUE KEY `unique_user_permission` (`user_id`),
  CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
INSERT INTO `user_permissions` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,100.00,1,1,1,1,1,1,'2025-10-21 15:14:18','2025-10-27 18:07:14'),(2,3,0,0,0,0,1,0,0,1,0,1,5.00,0,0,0,0,0,0,'2025-10-23 10:30:51','2025-10-23 10:30:51'),(3,5,0,0,0,0,1,0,0,0,0,0,0.00,1,0,0,0,0,0,'2025-10-27 09:45:21','2025-10-27 09:45:21');
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','manager','cashier','staff') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'staff',
  `status` enum('active','inactive','suspended') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_username` (`username`),
  KEY `idx_role` (`role`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@agropest.co.ke','$2y$12$ByIdcRtAyeto.61Vh1wK..oxXBSiF5vmxIlb./Amu2tzIY9FwCzoy','System Administrator',NULL,'admin','active','2025-10-21 15:13:56','2025-12-01 06:01:04','2025-12-01 06:01:04',NULL),(3,'sam','sam@gmail.com','$2y$12$bhHdnqsXLxSA6ohEm0qBcOqfvTEMdeVluJr.JFVcG0xZYGzLJ9Ody','SAMUEL NDEGWA','+254726159307','cashier','active','2025-10-23 10:30:51','2025-10-28 11:02:24','2025-10-28 11:02:24',1),(4,'ndegwa','ndegwa@gmail.com','$2y$12$0UcafB37/EDm9l42uXJtgu.tgiYlX.lT/YVgHR0AcSf9IDBXrW4sS','SAMUEL NDEGWA',NULL,'cashier','active','2025-10-27 09:38:49','2025-10-27 09:38:49',NULL,1),(5,'ndegwa01','ndegwa01@gmail.com','$2y$12$3HoLhKMeCfSkzRBqEPOk9uaQEHI9J2WDaZha.J41nkJ889DhxjT8O','SAMUEL NDEGWA',NULL,'cashier','active','2025-10-27 09:45:21','2025-10-28 06:05:37','2025-10-28 06:05:37',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-22  8:47:42
