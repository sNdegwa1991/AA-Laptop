-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: glassmart
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
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_id` int DEFAULT NULL,
  `old_values` json DEFAULT NULL,
  `new_values` json DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_action` (`action`),
  KEY `idx_table_name` (`table_name`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` VALUES (1,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-25 14:34:58'),(2,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 06:52:30'),(3,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:24:44'),(4,1,'CREATE','categories',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:30:48'),(5,1,'CREATE','categories',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:31:04'),(6,1,'CREATE','categories',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:31:12'),(7,1,'CREATE','categories',4,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:31:23'),(8,1,'CREATE','categories',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:32:19'),(9,1,'CREATE','categories',6,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:48:23'),(10,1,'CREATE','categories',7,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:48:32'),(11,1,'CREATE','categories',8,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:48:45'),(12,1,'CREATE','categories',9,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:49:09'),(13,1,'CREATE','categories',10,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 08:51:54'),(14,1,'CREATE','sub_categories',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 09:02:47'),(15,1,'CREATE','products',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 09:27:51'),(16,1,'UPDATE','products',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 09:28:56'),(17,1,'CREATE','products',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 09:32:34'),(18,1,'CREATE','products',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 09:34:20'),(19,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 11:13:54'),(20,1,'CREATE','suppliers',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 11:53:38'),(21,1,'CREATE','stores',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-27 12:50:12'),(22,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-28 05:45:34'),(23,1,'CREATE','stores',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-28 05:46:46'),(24,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 07:45:23'),(25,1,'CREATE','goods_received_notes',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:19:01'),(26,1,'CREATE','goods_received_notes',7,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:26:06'),(27,1,'APPROVE','goods_received_notes',7,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:30:53'),(28,1,'APPROVE','goods_received_notes',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:31:37'),(29,1,'CREATE','goods_received_notes',8,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:32:59'),(30,1,'APPROVE','goods_received_notes',8,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:33:12'),(31,1,'CREATE','stock_transfers',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:40:15'),(32,1,'APPROVE','stock_transfers',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:41:21'),(33,1,'CREATE','stock_adjustments',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:46:24'),(34,1,'CREATE','stock_adjustments',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 08:49:07'),(35,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 16:36:30'),(36,1,'LOGOUT','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 16:50:16'),(37,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 16:50:20'),(38,1,'LOGOUT','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 16:50:25'),(39,2,'LOGIN','users',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-11-30 16:50:31'),(40,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 06:52:30'),(41,1,'LOGOUT','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 06:52:55'),(42,2,'LOGIN','users',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 06:53:01'),(43,2,'LOGIN','users',2,'null','null','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-01 07:18:34'),(44,2,'LOGOUT','users',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 08:24:06'),(45,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 08:24:11'),(46,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 09:51:04'),(47,1,'CREATE','customers',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 10:30:38'),(48,1,'CREATE','orders',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 10:32:08'),(49,1,'CREATE','customers',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-01 11:02:47'),(50,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 07:02:44'),(51,1,'CREATE','customers',4,'null','null','::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-02 08:08:03'),(52,1,'CREATE','orders',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 08:22:36'),(53,1,'LOGOUT','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 08:23:19'),(54,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 08:23:21'),(55,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 09:14:47'),(56,1,'CREATE','supplier_payments',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 09:18:35'),(57,1,'CREATE','supplier_payments',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 09:19:09'),(58,1,'CREATE','supplier_payments',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 09:19:33'),(59,1,'CREATE','orders',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 10:17:27'),(60,1,'CREATE','order_payments',6,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 10:21:37'),(61,1,'CREATE','stores',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 10:57:10'),(62,1,'CREATE','stores',4,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 11:04:02'),(63,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 12:21:23'),(64,1,'CREATE','users',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 12:57:40'),(65,3,'LOGIN','users',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 13:39:31'),(66,3,'CREATE','orders',4,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 13:41:03'),(67,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-02 13:41:12'),(68,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 07:49:16'),(69,1,'CREATE','stock_transfers',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 07:51:47'),(70,1,'APPROVE','stock_transfers',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 07:53:06'),(71,1,'CREATE','stock_transfers',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 07:54:28'),(72,1,'APPROVE','stock_transfers',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 07:54:51'),(73,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 08:43:01'),(74,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 09:19:09'),(75,1,'UPDATE','roles',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 09:20:29'),(76,1,'UPDATE','roles',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 09:23:56'),(77,1,'UPDATE','roles',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 09:49:50'),(78,1,'UPDATE','roles',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 09:50:20'),(79,1,'UPDATE','roles',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 10:02:49'),(80,1,'UPDATE','roles',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 10:03:50'),(81,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 10:55:09'),(82,1,'UPDATE','roles',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 10:55:45'),(83,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 11:39:34'),(84,1,'CREATE','expense_categories',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 11:44:35'),(85,1,'CREATE','expenses',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 11:45:56'),(86,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-03 13:54:40'),(87,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-05 13:34:29'),(88,1,'CREATE','expense_categories',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-05 13:45:21'),(89,1,'CREATE','expenses',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-05 13:48:06'),(90,1,'CREATE','orders',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-05 13:50:58'),(91,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 07:25:02'),(92,1,'CREATE','goods_received_notes',11,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 07:42:56'),(93,1,'APPROVE','goods_received_notes',11,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 07:44:42'),(94,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 08:18:58'),(95,1,'CREATE','stock_transfers',4,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 08:22:38'),(96,1,'APPROVE','stock_transfers',4,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 08:23:33'),(97,1,'CREATE','stock_transfers',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 08:25:20'),(98,1,'APPROVE','stock_transfers',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 08:25:40'),(99,1,'CREATE','supplier_payments',4,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 08:49:03'),(100,1,'CREATE','stores',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 09:00:47'),(101,1,'CREATE','stock_transfers',6,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 09:02:05'),(102,1,'APPROVE','stock_transfers',6,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 09:02:10'),(103,1,'CREATE','expense_categories',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 09:09:13'),(104,1,'CREATE','expenses',3,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-06 09:11:02'),(105,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 09:45:24'),(106,1,'CREATE','orders',6,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 09:46:24'),(107,1,'CREATE','orders',7,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 10:09:46'),(108,1,'CREATE','orders',8,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 10:11:16'),(109,1,'CREATE','roles',6,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 10:20:45'),(110,1,'CREATE','users',4,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 10:21:33'),(111,1,'UPDATE','roles',6,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 10:23:55'),(112,1,'CREATE','expense_categories',4,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 10:27:37'),(113,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-10 06:16:12'),(114,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 10:37:41'),(115,1,'CREATE','orders',9,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 11:00:10'),(116,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 11:49:11'),(117,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 11:59:46'),(118,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-13 14:39:27'),(119,1,'CREATE','orders',10,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 15:36:47'),(120,2,'LOGIN','users',2,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 15:37:38'),(121,1,'LOGIN','users',1,'null','null','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-13 15:43:10'),(122,1,'LOGIN','users',1,'null','null','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-13 15:44:00'),(123,1,'CREATE','users',5,'null','null','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-13 15:44:53'),(124,5,'LOGIN','users',5,'null','null','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-13 15:47:48'),(125,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 15:48:50'),(126,5,'LOGIN','users',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 15:56:44'),(127,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 17:38:45'),(128,5,'LOGIN','users',5,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 18:24:13'),(129,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-13 18:29:57'),(130,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 10:09:25'),(131,1,'LOGIN','users',1,'null','null','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 11:04:59');
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_movements`
--

DROP TABLE IF EXISTS `cash_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_movements` (
  `movement_id` int NOT NULL AUTO_INCREMENT,
  `movement_date` datetime NOT NULL,
  `movement_type` enum('Cash In','Cash Out','Deposit','Withdrawal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_register_id` int DEFAULT NULL,
  `to_register_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `approved_by` int DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`movement_id`),
  KEY `approved_by` (`approved_by`),
  KEY `created_by` (`created_by`),
  KEY `idx_movement_date` (`movement_date`),
  KEY `idx_movement_type` (`movement_type`),
  KEY `idx_from_register_id` (`from_register_id`),
  KEY `idx_to_register_id` (`to_register_id`),
  CONSTRAINT `cash_movements_ibfk_1` FOREIGN KEY (`from_register_id`) REFERENCES `cash_registers` (`register_id`) ON DELETE SET NULL,
  CONSTRAINT `cash_movements_ibfk_2` FOREIGN KEY (`to_register_id`) REFERENCES `cash_registers` (`register_id`) ON DELETE SET NULL,
  CONSTRAINT `cash_movements_ibfk_3` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `cash_movements_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_movements`
--

LOCK TABLES `cash_movements` WRITE;
/*!40000 ALTER TABLE `cash_movements` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_register_sessions`
--

DROP TABLE IF EXISTS `cash_register_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_register_sessions` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `register_id` int NOT NULL,
  `user_id` int NOT NULL,
  `opening_time` datetime NOT NULL,
  `closing_time` datetime DEFAULT NULL,
  `opening_balance` decimal(12,2) NOT NULL,
  `expected_closing_balance` decimal(12,2) DEFAULT '0.00',
  `actual_closing_balance` decimal(12,2) DEFAULT '0.00',
  `variance` decimal(10,2) DEFAULT '0.00',
  `status` enum('Open','Closed') COLLATE utf8mb4_unicode_ci DEFAULT 'Open',
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`session_id`),
  KEY `idx_register_id` (`register_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_opening_time` (`opening_time`),
  KEY `idx_status` (`status`),
  CONSTRAINT `cash_register_sessions_ibfk_1` FOREIGN KEY (`register_id`) REFERENCES `cash_registers` (`register_id`) ON DELETE RESTRICT,
  CONSTRAINT `cash_register_sessions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_register_sessions`
--

LOCK TABLES `cash_register_sessions` WRITE;
/*!40000 ALTER TABLE `cash_register_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_register_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_registers`
--

DROP TABLE IF EXISTS `cash_registers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_registers` (
  `register_id` int NOT NULL AUTO_INCREMENT,
  `register_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int NOT NULL,
  `opening_balance` decimal(12,2) DEFAULT '0.00',
  `current_balance` decimal(12,2) DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`register_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_is_active` (`is_active`),
  CONSTRAINT `cash_registers_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_registers`
--

LOCK TABLES `cash_registers` WRITE;
/*!40000 ALTER TABLE `cash_registers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_registers` ENABLE KEYS */;
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
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`),
  KEY `idx_category_name` (`category_name`),
  KEY `idx_is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (6,'Clear','',1,'2025-11-27 08:31:12','2025-11-27 09:00:43'),(7,'Oneway','',1,'2025-11-27 08:31:04','2025-11-27 09:00:43'),(8,'Obscure','',1,'2025-11-27 08:30:48','2025-11-27 09:00:43'),(9,'Tint','',1,'2025-11-27 08:31:23','2025-11-27 09:00:43'),(10,'Mirror','',1,'2025-11-27 08:32:19','2025-11-27 09:00:43'),(11,'Putty','',1,'2025-11-27 08:48:23','2025-11-27 08:59:41'),(12,'Flora','',1,'2025-11-27 08:48:32','2025-11-27 08:59:41'),(13,'Victory','',1,'2025-11-27 08:48:45','2025-11-27 08:59:41'),(14,'Obsecure','',1,'2025-11-27 08:49:09','2025-11-27 08:59:41'),(15,'Cut Piece','',1,'2025-11-27 08:51:54','2025-11-27 08:59:05');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group_members`
--

DROP TABLE IF EXISTS `customer_group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_group_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `group_id` int NOT NULL,
  `assigned_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_customer_group` (`customer_id`,`group_id`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_group_id` (`group_id`),
  CONSTRAINT `customer_group_members_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `customer_group_members_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `customer_groups` (`group_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group_members`
--

LOCK TABLES `customer_group_members` WRITE;
/*!40000 ALTER TABLE `customer_group_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_groups` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_percentage` decimal(5,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_name` (`group_name`),
  KEY `idx_group_name` (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_groups`
--

LOCK TABLES `customer_groups` WRITE;
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` enum('Retail','Wholesale','Corporate') COLLATE utf8mb4_unicode_ci DEFAULT 'Retail',
  `contact_person` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_pin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` decimal(12,2) DEFAULT '0.00',
  `credit_days` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_code` (`customer_code`),
  KEY `idx_customer_code` (`customer_code`),
  KEY `idx_customer_name` (`customer_name`),
  KEY `idx_customer_type` (`customer_type`),
  KEY `idx_is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'WALK-IN','Walk-In Customer','Retail',NULL,NULL,'0000000000',NULL,NULL,NULL,0.00,0,1,'2025-11-30 16:30:14','2025-11-30 16:30:14'),(2,'CUST00001','Samuel Ndegwa','Retail',NULL,'sam@gmail.com','0726159307','Muranga',NULL,NULL,0.00,0,1,'2025-12-01 10:30:38','2025-12-01 10:30:38'),(3,'CUST00002','Jame Kariuki','Retail',NULL,'','0726159307','',NULL,NULL,0.00,0,1,'2025-12-01 11:02:47','2025-12-01 11:02:47'),(4,'CUST00003','Jackson Mutua','Retail',NULL,'jack@gmail.com','0723454622','',NULL,NULL,0.00,0,1,'2025-12-02 08:08:03','2025-12-02 08:08:03');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_vehicle_loads`
--

DROP TABLE IF EXISTS `daily_vehicle_loads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_vehicle_loads` (
  `load_id` int NOT NULL AUTO_INCREMENT,
  `load_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_id` int NOT NULL,
  `load_date` date NOT NULL,
  `transfer_id` int NOT NULL,
  `status` enum('Loaded','Out','Returned') COLLATE utf8mb4_unicode_ci DEFAULT 'Loaded',
  `loaded_by` int NOT NULL,
  `loaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `returned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`load_id`),
  UNIQUE KEY `load_number` (`load_number`),
  KEY `transfer_id` (`transfer_id`),
  KEY `loaded_by` (`loaded_by`),
  KEY `idx_load_number` (`load_number`),
  KEY `idx_vehicle_id` (`vehicle_id`),
  KEY `idx_load_date` (`load_date`),
  KEY `idx_status` (`status`),
  CONSTRAINT `daily_vehicle_loads_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`) ON DELETE RESTRICT,
  CONSTRAINT `daily_vehicle_loads_ibfk_2` FOREIGN KEY (`transfer_id`) REFERENCES `stock_transfers` (`transfer_id`) ON DELETE RESTRICT,
  CONSTRAINT `daily_vehicle_loads_ibfk_3` FOREIGN KEY (`loaded_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_vehicle_loads`
--

LOCK TABLES `daily_vehicle_loads` WRITE;
/*!40000 ALTER TABLE `daily_vehicle_loads` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_vehicle_loads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_categories` (
  `expense_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`expense_category_id`),
  UNIQUE KEY `category_name` (`category_name`),
  KEY `idx_category_name` (`category_name`),
  KEY `idx_is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_categories`
--

LOCK TABLES `expense_categories` WRITE;
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
INSERT INTO `expense_categories` VALUES (1,'Miscellaneous','Small expenses',1),(2,'KAA 001Z Fuel','Purchase of KAA 001Z fuel',1),(3,'Repair','All repairs',1),(4,'Salary','Employee Salaries',1);
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `expense_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_date` date NOT NULL,
  `expense_category_id` int NOT NULL,
  `store_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('Cash','M-Pesa','Bank Transfer','Cheque') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `receipt_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `recorded_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`expense_id`),
  UNIQUE KEY `expense_number` (`expense_number`),
  KEY `approved_by` (`approved_by`),
  KEY `recorded_by` (`recorded_by`),
  KEY `idx_expense_number` (`expense_number`),
  KEY `idx_expense_date` (`expense_date`),
  KEY `idx_expense_category_id` (`expense_category_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_vehicle_id` (`vehicle_id`),
  CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`expense_category_id`) ON DELETE RESTRICT,
  CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE SET NULL,
  CONSTRAINT `expenses_ibfk_3` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`) ON DELETE SET NULL,
  CONSTRAINT `expenses_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `expenses_ibfk_5` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'EXP000001','2025-12-03',1,NULL,NULL,5000.00,'Cash','','Staff Lunch','receipt_1764762356_693022f4c6054.png',2,1,'2025-12-03 11:45:56'),(2,'EXP000002','2025-12-05',2,NULL,2,10000.00,'M-Pesa','Qw67554L','Fuel at shell petrol station',NULL,2,1,'2025-12-05 13:48:06'),(3,'EXP000003','2025-12-06',3,NULL,3,12000.00,'M-Pesa','QWE363638','WEEWbshhhd dhjbdfhbhj','receipt_1765012262_6933f3261d461.pdf',NULL,1,'2025-12-06 09:11:02');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glass_specifications`
--

DROP TABLE IF EXISTS `glass_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `glass_specifications` (
  `specification_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `glass_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thickness` decimal(10,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finish` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_specs` json DEFAULT NULL,
  PRIMARY KEY (`specification_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_glass_type` (`glass_type`),
  CONSTRAINT `glass_specifications_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glass_specifications`
--

LOCK TABLES `glass_specifications` WRITE;
/*!40000 ALTER TABLE `glass_specifications` DISABLE KEYS */;
INSERT INTO `glass_specifications` VALUES (1,1,'Reflective',4.00,12.00,5.00,'Bronze','Clear','Premium','NA',NULL),(2,2,'Reflective',4.00,12.00,8.00,'Grey','Clear','Premium','NA',NULL);
/*!40000 ALTER TABLE `glass_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_received_notes`
--

DROP TABLE IF EXISTS `goods_received_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_received_notes` (
  `grn_id` int NOT NULL AUTO_INCREMENT,
  `grn_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_order_id` int DEFAULT NULL,
  `received_date` date NOT NULL,
  `received_by` int NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `approved_by` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `supplier_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` enum('Unpaid','Partial','Paid') COLLATE utf8mb4_unicode_ci DEFAULT 'Unpaid',
  `invoice_amount` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_paid` decimal(12,2) DEFAULT '0.00',
  `balance` decimal(12,2) DEFAULT '0.00',
  `invoice_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_at` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`grn_id`),
  UNIQUE KEY `grn_number` (`grn_number`),
  KEY `received_by` (`received_by`),
  KEY `idx_grn_number` (`grn_number`),
  KEY `idx_purchase_order_id` (`purchase_order_id`),
  KEY `idx_received_date` (`received_date`),
  CONSTRAINT `goods_received_notes_ibfk_1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`) ON DELETE RESTRICT,
  CONSTRAINT `goods_received_notes_ibfk_2` FOREIGN KEY (`received_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_received_notes`
--

LOCK TABLES `goods_received_notes` WRITE;
/*!40000 ALTER TABLE `goods_received_notes` DISABLE KEYS */;
INSERT INTO `goods_received_notes` VALUES (5,'GRN000001',NULL,'2025-11-30',1,'','2025-11-30 08:19:01',1,1,'1','Completed','Paid','10000',10000.00,0.00,'IN0001','2025-11-30','2025-11-30 11:31:37','2025-12-06 08:49:03'),(7,'GRN000002',NULL,'2025-11-30',1,'','2025-11-30 08:26:06',1,1,'1','Completed','Partial','43200',20000.00,23200.00,'IN0002','2025-11-30','2025-11-30 11:30:53','2025-12-02 09:19:33'),(8,'GRN000003',NULL,'2025-11-30',1,'','2025-11-30 08:32:58',1,1,'1','Completed','Paid','24200',24200.00,0.00,'IN0003','2025-11-30','2025-11-30 11:33:12','2025-12-02 09:19:09'),(11,'GRN000004',NULL,'2025-12-06',1,'','2025-12-06 07:42:56',1,1,'1','Completed','Unpaid','32000',0.00,0.00,'IN0044','2025-12-06','2025-12-06 10:44:42','2025-12-06 07:44:42');
/*!40000 ALTER TABLE `goods_received_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn_items`
--

DROP TABLE IF EXISTS `grn_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn_items` (
  `grn_item_id` int NOT NULL AUTO_INCREMENT,
  `grn_id` int NOT NULL,
  `product_id` int NOT NULL,
  `received_quantity` decimal(10,2) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `batch_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordered_quantity` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`grn_item_id`),
  KEY `idx_grn_id` (`grn_id`),
  KEY `idx_product_id` (`product_id`),
  CONSTRAINT `grn_items_ibfk_1` FOREIGN KEY (`grn_id`) REFERENCES `goods_received_notes` (`grn_id`) ON DELETE CASCADE,
  CONSTRAINT `grn_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn_items`
--

LOCK TABLES `grn_items` WRITE;
/*!40000 ALTER TABLE `grn_items` DISABLE KEYS */;
INSERT INTO `grn_items` VALUES (1,5,3,10.00,1000.00,10000.00,NULL,10.00),(4,7,1,11.00,1200.00,13200.00,NULL,11.00),(5,7,2,12.00,2500.00,30000.00,NULL,12.00),(6,8,3,22.00,1100.00,24200.00,NULL,22.00),(11,11,1,10.00,1200.00,12000.00,NULL,10.00),(12,11,3,20.00,1000.00,20000.00,NULL,20.00);
/*!40000 ALTER TABLE `grn_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `store_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cost_price` float DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  UNIQUE KEY `unique_product_store` (`product_id`,`store_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_store_id` (`store_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT,
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (3,1,1,4.00,'2025-12-13 15:36:47',NULL),(4,2,1,7.00,'2025-12-06 09:02:10',NULL),(5,3,1,23.00,'2025-12-13 15:36:47',NULL),(6,1,2,0.00,'2025-12-06 08:25:40',NULL),(7,2,2,0.00,'2025-12-06 08:25:40',NULL),(8,3,2,0.00,'2025-12-06 08:25:40',NULL),(9,1,5,5.00,'2025-12-06 09:02:10',NULL),(10,2,5,3.00,'2025-12-06 09:02:10',NULL),(11,3,5,10.00,'2025-12-06 09:02:10',NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_is_read` (`is_read`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,3,2.00,1300.00,0.00,0.00,2600.00),(2,1,1,1.00,1700.00,0.00,0.00,1700.00),(3,2,1,1.00,1700.00,0.00,0.00,1700.00),(4,2,3,2.00,1300.00,0.00,0.00,2600.00),(5,3,3,3.00,1300.00,0.00,0.00,3900.00),(6,3,1,1.00,1700.00,0.00,0.00,1700.00),(7,3,2,1.00,3000.00,0.00,0.00,3000.00),(8,4,3,3.00,1300.00,0.00,0.00,3900.00),(9,5,3,3.00,1300.00,0.00,0.00,3900.00),(10,6,3,2.00,1300.00,0.00,0.00,2600.00),(11,7,3,2.00,1300.00,0.00,0.00,2600.00),(12,7,1,3.00,1700.00,0.00,0.00,5100.00),(13,8,3,1.00,1300.00,0.00,0.00,1300.00),(14,9,1,4.00,1500.00,0.00,0.00,6000.00),(15,10,1,2.00,1700.00,0.00,0.00,3400.00),(16,10,3,1.00,1300.00,0.00,0.00,1300.00);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_payments` (
  `order_payment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `payment_method` enum('Cash','M-Pesa','Bank Transfer','Card') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `reference_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `received_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_payment_id`),
  KEY `received_by` (`received_by`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_payment_method` (`payment_method`),
  KEY `idx_payment_date` (`payment_date`),
  CONSTRAINT `order_payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `order_payments_ibfk_2` FOREIGN KEY (`received_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payments`
--

LOCK TABLES `order_payments` WRITE;
/*!40000 ALTER TABLE `order_payments` DISABLE KEYS */;
INSERT INTO `order_payments` VALUES (1,1,'Cash',2000.00,'','2025-12-01 13:32:08',1,'2025-12-01 10:32:08'),(2,1,'M-Pesa',2300.00,'QWEE64747','2025-12-01 13:32:08',1,'2025-12-01 10:32:08'),(3,2,'Cash',2000.00,'','2025-12-02 11:22:36',1,'2025-12-02 08:22:36'),(4,2,'M-Pesa',150.00,'QWEE64740','2025-12-02 11:22:36',1,'2025-12-02 08:22:36'),(5,3,'M-Pesa',3000.00,'','2025-12-02 13:17:27',1,'2025-12-02 10:17:27'),(6,3,'M-Pesa',1000.00,'AE3636SSDF','2025-12-02 13:21:37',1,'2025-12-02 10:21:37'),(7,4,'M-Pesa',1000.00,'','2025-12-02 16:41:03',3,'2025-12-02 13:41:03'),(8,5,'M-Pesa',3900.00,'QWEE64700L','2025-12-05 16:50:58',1,'2025-12-05 13:50:58'),(9,6,'Cash',2600.00,'','2025-12-09 12:46:24',1,'2025-12-09 09:46:24'),(10,7,'Cash',3000.00,'','2025-12-09 13:09:46',1,'2025-12-09 10:09:46'),(11,8,'Cash',1000.00,'','2025-12-09 13:11:16',1,'2025-12-09 10:11:16'),(12,8,'M-Pesa',300.00,'QWR53553','2025-12-09 13:11:16',1,'2025-12-09 10:11:16'),(13,9,'Cash',6000.00,'','2025-12-13 14:00:10',1,'2025-12-13 11:00:10'),(14,10,'Cash',4700.00,'','2025-12-13 18:36:47',1,'2025-12-13 15:36:47');
/*!40000 ALTER TABLE `order_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `order_type` enum('Retail','Wholesale') COLLATE utf8mb4_unicode_ci DEFAULT 'Retail',
  `subtotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_percentage` decimal(5,2) DEFAULT '0.00',
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `tax_percentage` decimal(5,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `amount_paid` decimal(12,2) DEFAULT '0.00',
  `balance` decimal(12,2) DEFAULT '0.00',
  `payment_status` enum('Unpaid','Partial','Paid','Overdue') COLLATE utf8mb4_unicode_ci DEFAULT 'Unpaid',
  `order_status` enum('Draft','Confirmed','Completed','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_number` (`order_number`),
  KEY `created_by` (`created_by`),
  KEY `idx_order_number` (`order_number`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_order_date` (`order_date`),
  KEY `idx_payment_status` (`payment_status`),
  KEY `idx_order_status` (`order_status`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE RESTRICT,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'ORD000001','2025-12-01 13:32:08',1,1,'Retail',4300.00,0.00,0.00,0.00,0.00,4300.00,4300.00,0.00,'Paid','Completed','',1,'2025-12-01 10:32:08','2025-12-01 10:32:08'),(2,'ORD000002','2025-12-02 11:22:36',2,1,'Retail',4300.00,50.00,2150.00,0.00,0.00,2150.00,2150.00,0.00,'Paid','Completed','',1,'2025-12-02 08:22:36','2025-12-02 08:22:36'),(3,'ORD000003','2025-12-02 13:17:27',3,1,'Retail',8600.00,0.00,0.00,0.00,0.00,8600.00,4000.00,4600.00,'Partial','Completed','',1,'2025-12-02 10:17:27','2025-12-02 10:21:37'),(4,'ORD000004','2025-12-02 16:41:03',4,1,'Retail',3900.00,0.00,0.00,0.00,0.00,3900.00,1000.00,2900.00,'Partial','Completed','',3,'2025-12-02 13:41:03','2025-12-02 13:41:03'),(5,'ORD000005','2025-12-05 16:50:58',2,1,'Retail',3900.00,0.00,0.00,0.00,0.00,3900.00,3900.00,0.00,'Paid','Completed','',1,'2025-12-05 13:50:58','2025-12-05 13:50:58'),(6,'ORD000006','2025-12-09 12:46:24',2,1,'Retail',2600.00,0.00,0.00,0.00,0.00,2600.00,2600.00,0.00,'Paid','Completed','',1,'2025-12-09 09:46:24','2025-12-09 09:46:24'),(7,'ORD000007','2025-12-09 13:09:46',3,1,'Retail',7700.00,0.00,0.00,0.00,0.00,7700.00,3000.00,4700.00,'Partial','Completed','',1,'2025-12-09 10:09:46','2025-12-09 10:09:46'),(8,'ORD000008','2025-12-09 13:11:16',1,1,'Retail',1300.00,0.00,0.00,0.00,0.00,1300.00,1300.00,0.00,'Paid','Completed','',1,'2025-12-09 10:11:16','2025-12-09 10:11:16'),(9,'ORD000009','2025-12-13 14:00:10',1,1,'Retail',6000.00,0.00,0.00,0.00,0.00,6000.00,6000.00,0.00,'Paid','Completed','',1,'2025-12-13 11:00:10','2025-12-13 11:00:10'),(10,'ORD000010','2025-12-13 18:36:47',1,1,'Retail',4700.00,0.00,0.00,0.00,0.00,4700.00,4700.00,0.00,'Paid','Completed','',1,'2025-12-13 15:36:47','2025-12-13 15:36:47');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `payment_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` datetime NOT NULL,
  `order_id` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` enum('Cash','M-Pesa','Bank Transfer','Cheque','Card') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `received_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `payment_number` (`payment_number`),
  KEY `received_by` (`received_by`),
  KEY `idx_payment_number` (`payment_number`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_payment_date` (`payment_date`),
  KEY `idx_payment_method` (`payment_method`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE SET NULL,
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE RESTRICT,
  CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`received_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `permission_id` int NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permission_slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  UNIQUE KEY `permission_name` (`permission_name`),
  KEY `idx_module` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'view_dashboard','Dashboard','View dashboard',NULL,NULL),(2,'manage_users','Users','Create, edit, and delete users',NULL,NULL),(3,'manage_products','Products','Manage products and categories',NULL,NULL),(4,'manage_inventory','Inventory','Manage stock and transfers',NULL,NULL),(5,'create_sale','Sales','Create new sales',NULL,NULL),(6,'view_sales','Sales','View sales records',NULL,NULL),(7,'manage_customers','Customers','Manage customer information',NULL,NULL),(8,'manage_suppliers','Suppliers','Manage supplier information',NULL,NULL),(9,'view_reports','Reports','View system reports',NULL,NULL),(10,'manage_settings','Settings','Manage system settings',NULL,NULL),(11,'View Dashboard','Dashboard','Access to main dashboard','dashboard.view',NULL),(12,'View Users','Users','View users list','users.view',NULL),(13,'Create Users','Users','Create new users','users.create',NULL),(14,'Edit Users','Users','Edit existing users','users.edit',NULL),(15,'Delete Users','Users','Delete users','users.delete',NULL),(16,'Manage Roles','Roles','Manage roles and permissions','roles.manage',NULL),(17,'View Customers','Customers','View customers list','customers.view',NULL),(18,'Create Customers','Customers','Create new customers','customers.create',NULL),(19,'Edit Customers','Customers','Edit existing customers','customers.edit',NULL),(20,'Delete Customers','Customers','Delete customers','customers.delete',NULL),(21,'View Customer Orders','Customers','View customer order history','customers.orders',NULL),(22,'View Customer Statements','Customers','View customer account statements','customers.statements',NULL),(23,'View Products','Products','View products list','products.view',NULL),(24,'Create Products','Products','Create new products','products.create',NULL),(25,'Edit Products','Products','Edit existing products','products.edit',NULL),(26,'Delete Products','Products','Delete products','products.delete',NULL),(27,'Manage Categories','Products','Manage product categories','categories.manage',NULL),(28,'View Inventory','Inventory','View inventory levels','inventory.view',NULL),(29,'Receive Goods','Inventory','Record goods received','inventory.receive',NULL),(30,'Transfer Stock','Inventory','Transfer stock between stores','inventory.transfer',NULL),(31,'Adjust Stock','Inventory','Make stock adjustments','inventory.adjust',NULL),(32,'Access POS','POS','Access POS terminal','pos.access',NULL),(33,'View Orders','POS','View sales orders','orders.view',NULL),(34,'Cancel Orders','POS','Cancel sales orders','orders.cancel',NULL),(35,'Receive Payments','POS','Receive customer payments','payments.receive',NULL),(36,'Apply Discounts','POS','Apply discounts to orders','pos.discount',NULL),(37,'View Suppliers','Suppliers','View suppliers list','suppliers.view',NULL),(38,'Create Suppliers','Suppliers','Create new suppliers','suppliers.create',NULL),(39,'Edit Suppliers','Suppliers','Edit existing suppliers','suppliers.edit',NULL),(40,'Delete Suppliers','Suppliers','Delete suppliers','suppliers.delete',NULL),(41,'Manage Supplier Payments','Suppliers','Manage supplier payments','suppliers.payments',NULL),(42,'View Stores','Stores','View stores and vehicles','stores.view',NULL),(43,'Manage Stores','Stores','Create and edit stores/vehicles','stores.manage',NULL),(44,'View Reports','Reports','Access to reports','reports.view',NULL),(45,'Export Data','Reports','Export data to Excel/PDF','reports.export',NULL),(46,'View Audit Logs','System','View system audit logs','audit.view',NULL),(47,'System Settings','System','Manage system settings','settings.manage',NULL),(48,'View Expenses','Expenses','View expenses list','expenses.view',NULL),(49,'Create Expenses','Expenses','Record new expenses','expenses.create',NULL),(50,'Edit Expenses','Expenses','Edit existing expenses','expenses.edit',NULL),(51,'Delete Expenses','Expenses','Delete expenses','expenses.delete',NULL),(52,'Approve Expenses','Expenses','Approve expenses','expenses.approve',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
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
  `cost_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `retail_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `wholesale_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `wholesale_min_quantity` int DEFAULT '1',
  `effective_date` date NOT NULL,
  `is_current` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `price_per_sqm` decimal(10,2) DEFAULT '0.00' COMMENT 'Price per square meter',
  PRIMARY KEY (`pricing_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_is_current` (`is_current`),
  KEY `idx_effective_date` (`effective_date`),
  CONSTRAINT `product_pricing_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_pricing`
--

LOCK TABLES `product_pricing` WRITE;
/*!40000 ALTER TABLE `product_pricing` DISABLE KEYS */;
INSERT INTO `product_pricing` VALUES (1,1,1200.00,1700.00,1600.00,10,'2025-11-27',1,'2025-11-27 09:27:51',0.00),(2,2,2500.00,3000.00,2800.00,10,'2025-11-27',1,'2025-11-27 09:32:34',0.00),(3,3,1000.00,1300.00,1200.00,10,'2025-11-27',1,'2025-11-27 09:34:20',0.00);
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
  `product_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `unit_of_measure` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Pieces',
  `reorder_level` decimal(10,2) DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `width` decimal(10,2) DEFAULT '0.00' COMMENT 'Width in meters',
  `height` decimal(10,2) DEFAULT '0.00' COMMENT 'Height in meters',
  `area_sqm` decimal(10,2) GENERATED ALWAYS AS ((`width` * `height`)) STORED COMMENT 'Auto-calculated area',
  `sell_by_sqm` tinyint(1) DEFAULT '0' COMMENT 'Can be sold by square meter',
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_code` (`product_code`),
  KEY `idx_product_code` (`product_code`),
  KEY `idx_product_name` (`product_name`),
  KEY `idx_sub_category_id` (`sub_category_id`),
  KEY `idx_is_active` (`is_active`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`sub_category_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `sub_category_id`, `description`, `unit_of_measure`, `reorder_level`, `is_active`, `created_at`, `updated_at`, `width`, `height`, `sell_by_sqm`) VALUES (1,'PRD00001','4mm oneway bronze',16,'4mm oneway bronze','Square Meters',10.00,1,'2025-11-27 09:27:51','2025-12-13 14:58:14',0.00,0.00,28),(2,'PRD00002','4mm oneway Grey',15,'','Square Meters',10.00,1,'2025-11-27 09:32:34','2025-12-13 14:58:14',0.00,0.00,31),(3,'PRD00003','Prefect Premium Putty1',28,'','Kilograms',10.00,1,'2025-11-27 09:34:20','2025-11-27 09:34:20',0.00,0.00,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_items`
--

DROP TABLE IF EXISTS `purchase_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order_items` (
  `po_item_id` int NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `received_quantity` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`po_item_id`),
  KEY `idx_purchase_order_id` (`purchase_order_id`),
  KEY `idx_product_id` (`product_id`),
  CONSTRAINT `purchase_order_items_ibfk_1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_items`
--

LOCK TABLES `purchase_order_items` WRITE;
/*!40000 ALTER TABLE `purchase_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_orders` (
  `purchase_order_id` int NOT NULL AUTO_INCREMENT,
  `po_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int NOT NULL,
  `order_date` date NOT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `status` enum('Pending','Approved','Received','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_order_id`),
  UNIQUE KEY `po_number` (`po_number`),
  KEY `created_by` (`created_by`),
  KEY `idx_po_number` (`po_number`),
  KEY `idx_supplier_id` (`supplier_id`),
  KEY `idx_status` (`status`),
  KEY `idx_order_date` (`order_date`),
  CONSTRAINT `purchase_orders_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE RESTRICT,
  CONSTRAINT `purchase_orders_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation_items`
--

DROP TABLE IF EXISTS `quotation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation_items` (
  `quotation_item_id` int NOT NULL AUTO_INCREMENT,
  `quotation_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`quotation_item_id`),
  KEY `idx_quotation_id` (`quotation_id`),
  KEY `idx_product_id` (`product_id`),
  CONSTRAINT `quotation_items_ibfk_1` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`quotation_id`) ON DELETE CASCADE,
  CONSTRAINT `quotation_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation_items`
--

LOCK TABLES `quotation_items` WRITE;
/*!40000 ALTER TABLE `quotation_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations` (
  `quotation_id` int NOT NULL AUTO_INCREMENT,
  `quotation_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_date` date NOT NULL,
  `customer_id` int NOT NULL,
  `valid_until` date NOT NULL,
  `subtotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` enum('Draft','Sent','Accepted','Rejected','Expired') COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `converted_to_order_id` int DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`quotation_id`),
  UNIQUE KEY `quotation_number` (`quotation_number`),
  KEY `converted_to_order_id` (`converted_to_order_id`),
  KEY `created_by` (`created_by`),
  KEY `idx_quotation_number` (`quotation_number`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_quotation_date` (`quotation_date`),
  KEY `idx_status` (`status`),
  CONSTRAINT `quotations_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE RESTRICT,
  CONSTRAINT `quotations_ibfk_2` FOREIGN KEY (`converted_to_order_id`) REFERENCES `orders` (`order_id`) ON DELETE SET NULL,
  CONSTRAINT `quotations_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `role_permission_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_permission_id`),
  UNIQUE KEY `unique_role_permission` (`role_id`,`permission_id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_permission_id` (`permission_id`),
  CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (59,5,18,'2025-12-03 09:23:56'),(60,5,20,'2025-12-03 09:23:56'),(61,5,19,'2025-12-03 09:23:56'),(62,5,7,'2025-12-03 09:23:56'),(63,5,21,'2025-12-03 09:23:56'),(64,5,22,'2025-12-03 09:23:56'),(65,5,17,'2025-12-03 09:23:56'),(66,5,11,'2025-12-03 09:23:56'),(67,5,1,'2025-12-03 09:23:56'),(68,5,31,'2025-12-03 09:23:56'),(69,5,4,'2025-12-03 09:23:56'),(70,5,29,'2025-12-03 09:23:56'),(71,5,30,'2025-12-03 09:23:56'),(72,5,28,'2025-12-03 09:23:56'),(73,5,32,'2025-12-03 09:23:56'),(74,5,36,'2025-12-03 09:23:56'),(75,5,34,'2025-12-03 09:23:56'),(76,5,35,'2025-12-03 09:23:56'),(77,5,33,'2025-12-03 09:23:56'),(78,5,24,'2025-12-03 09:23:56'),(79,5,26,'2025-12-03 09:23:56'),(80,5,25,'2025-12-03 09:23:56'),(81,5,27,'2025-12-03 09:23:56'),(82,5,3,'2025-12-03 09:23:56'),(83,5,23,'2025-12-03 09:23:56'),(84,5,45,'2025-12-03 09:23:56'),(85,5,44,'2025-12-03 09:23:56'),(86,5,9,'2025-12-03 09:23:56'),(87,5,16,'2025-12-03 09:23:56'),(88,5,5,'2025-12-03 09:23:56'),(89,5,6,'2025-12-03 09:23:56'),(90,5,10,'2025-12-03 09:23:56'),(91,5,43,'2025-12-03 09:23:56'),(92,5,42,'2025-12-03 09:23:56'),(93,5,38,'2025-12-03 09:23:56'),(94,5,40,'2025-12-03 09:23:56'),(95,5,39,'2025-12-03 09:23:56'),(96,5,41,'2025-12-03 09:23:56'),(97,5,8,'2025-12-03 09:23:56'),(98,5,37,'2025-12-03 09:23:56'),(99,5,47,'2025-12-03 09:23:56'),(100,5,46,'2025-12-03 09:23:56'),(101,5,13,'2025-12-03 09:23:56'),(102,5,15,'2025-12-03 09:23:56'),(103,5,14,'2025-12-03 09:23:56'),(104,5,2,'2025-12-03 09:23:56'),(105,5,12,'2025-12-03 09:23:56'),(288,1,18,'2025-12-03 10:55:45'),(289,1,20,'2025-12-03 10:55:45'),(290,1,19,'2025-12-03 10:55:45'),(291,1,7,'2025-12-03 10:55:45'),(292,1,21,'2025-12-03 10:55:45'),(293,1,22,'2025-12-03 10:55:45'),(294,1,17,'2025-12-03 10:55:45'),(295,1,11,'2025-12-03 10:55:45'),(296,1,1,'2025-12-03 10:55:45'),(297,1,52,'2025-12-03 10:55:45'),(298,1,49,'2025-12-03 10:55:45'),(299,1,51,'2025-12-03 10:55:45'),(300,1,50,'2025-12-03 10:55:45'),(301,1,48,'2025-12-03 10:55:45'),(302,1,31,'2025-12-03 10:55:45'),(303,1,4,'2025-12-03 10:55:45'),(304,1,29,'2025-12-03 10:55:45'),(305,1,30,'2025-12-03 10:55:45'),(306,1,28,'2025-12-03 10:55:45'),(307,1,32,'2025-12-03 10:55:45'),(308,1,36,'2025-12-03 10:55:45'),(309,1,34,'2025-12-03 10:55:45'),(310,1,35,'2025-12-03 10:55:45'),(311,1,33,'2025-12-03 10:55:45'),(312,1,24,'2025-12-03 10:55:45'),(313,1,26,'2025-12-03 10:55:45'),(314,1,25,'2025-12-03 10:55:45'),(315,1,27,'2025-12-03 10:55:45'),(316,1,3,'2025-12-03 10:55:45'),(317,1,23,'2025-12-03 10:55:45'),(318,1,45,'2025-12-03 10:55:45'),(319,1,44,'2025-12-03 10:55:45'),(320,1,9,'2025-12-03 10:55:45'),(321,1,16,'2025-12-03 10:55:45'),(322,1,5,'2025-12-03 10:55:45'),(323,1,6,'2025-12-03 10:55:45'),(324,1,10,'2025-12-03 10:55:45'),(325,1,43,'2025-12-03 10:55:45'),(326,1,42,'2025-12-03 10:55:45'),(327,1,38,'2025-12-03 10:55:45'),(328,1,40,'2025-12-03 10:55:45'),(329,1,39,'2025-12-03 10:55:45'),(330,1,41,'2025-12-03 10:55:45'),(331,1,8,'2025-12-03 10:55:45'),(332,1,37,'2025-12-03 10:55:45'),(333,1,47,'2025-12-03 10:55:45'),(334,1,46,'2025-12-03 10:55:45'),(335,1,13,'2025-12-03 10:55:45'),(336,1,15,'2025-12-03 10:55:45'),(337,1,14,'2025-12-03 10:55:45'),(338,1,2,'2025-12-03 10:55:45'),(339,1,12,'2025-12-03 10:55:45'),(340,6,18,'2025-12-09 10:23:55'),(341,6,19,'2025-12-09 10:23:55'),(342,6,17,'2025-12-09 10:23:55'),(343,6,5,'2025-12-09 10:23:55'),(344,6,6,'2025-12-09 10:23:55'),(345,6,43,'2025-12-09 10:23:55'),(346,6,42,'2025-12-09 10:23:55');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`),
  KEY `idx_role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','Full system access with all permissions','2025-11-25 14:25:15'),(2,'Admin','Administrative access to manage the system','2025-11-25 14:25:15'),(3,'Store Manager','Manage store operations and inventory','2025-11-25 14:25:15'),(4,'Cashier','Point of Sale operations','2025-11-25 14:25:15'),(5,'Accountant','Financial reports and accounting','2025-11-25 14:25:15'),(6,'Sales','Sales team','2025-12-09 10:20:45');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustment_items`
--

DROP TABLE IF EXISTS `stock_adjustment_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_adjustment_items` (
  `adjustment_item_id` int NOT NULL AUTO_INCREMENT,
  `adjustment_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`adjustment_item_id`),
  KEY `idx_adjustment_id` (`adjustment_id`),
  KEY `idx_product_id` (`product_id`),
  CONSTRAINT `stock_adjustment_items_ibfk_1` FOREIGN KEY (`adjustment_id`) REFERENCES `stock_adjustments` (`adjustment_id`) ON DELETE CASCADE,
  CONSTRAINT `stock_adjustment_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustment_items`
--

LOCK TABLES `stock_adjustment_items` WRITE;
/*!40000 ALTER TABLE `stock_adjustment_items` DISABLE KEYS */;
INSERT INTO `stock_adjustment_items` VALUES (1,1,2,-8.00,''),(2,2,2,7.00,'');
/*!40000 ALTER TABLE `stock_adjustment_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustments`
--

DROP TABLE IF EXISTS `stock_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_adjustments` (
  `adjustment_id` int NOT NULL AUTO_INCREMENT,
  `adjustment_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int NOT NULL,
  `adjustment_date` date NOT NULL,
  `adjustment_type` enum('Addition','Deduction','Damage','Loss','Correction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `approved_by` int DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adjustment_id`),
  UNIQUE KEY `adjustment_number` (`adjustment_number`),
  KEY `approved_by` (`approved_by`),
  KEY `created_by` (`created_by`),
  KEY `idx_adjustment_number` (`adjustment_number`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_adjustment_date` (`adjustment_date`),
  KEY `idx_adjustment_type` (`adjustment_type`),
  CONSTRAINT `stock_adjustments_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE RESTRICT,
  CONSTRAINT `stock_adjustments_ibfk_2` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `stock_adjustments_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustments`
--

LOCK TABLES `stock_adjustments` WRITE;
/*!40000 ALTER TABLE `stock_adjustments` DISABLE KEYS */;
INSERT INTO `stock_adjustments` VALUES (1,'ADJ000001',1,'2025-11-30','Damage','Glass is broken',NULL,1,'2025-11-30 08:46:24'),(2,'ADJ000002',1,'2025-11-30','Correction','Stocking has been done',NULL,1,'2025-11-30 08:49:06');
/*!40000 ALTER TABLE `stock_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_transfer_items`
--

DROP TABLE IF EXISTS `stock_transfer_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_transfer_items` (
  `transfer_item_id` int NOT NULL AUTO_INCREMENT,
  `transfer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `received_quantity` decimal(10,2) DEFAULT '0.00',
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`transfer_item_id`),
  KEY `idx_transfer_id` (`transfer_id`),
  KEY `idx_product_id` (`product_id`),
  CONSTRAINT `stock_transfer_items_ibfk_1` FOREIGN KEY (`transfer_id`) REFERENCES `stock_transfers` (`transfer_id`) ON DELETE CASCADE,
  CONSTRAINT `stock_transfer_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_transfer_items`
--

LOCK TABLES `stock_transfer_items` WRITE;
/*!40000 ALTER TABLE `stock_transfer_items` DISABLE KEYS */;
INSERT INTO `stock_transfer_items` VALUES (1,1,1,3.00,3.00,NULL),(2,1,2,3.00,3.00,NULL),(3,1,3,5.00,5.00,NULL),(4,2,1,3.00,3.00,NULL),(5,2,2,3.00,3.00,NULL),(6,2,3,5.00,5.00,NULL),(7,3,1,3.00,3.00,NULL),(8,3,2,3.00,3.00,NULL),(9,3,3,5.00,5.00,NULL),(10,4,1,3.00,3.00,NULL),(11,4,2,2.00,2.00,NULL),(12,4,3,5.00,5.00,NULL),(13,5,1,6.00,6.00,NULL),(14,5,2,5.00,5.00,NULL),(15,5,3,10.00,10.00,NULL),(16,6,1,5.00,5.00,NULL),(17,6,2,3.00,3.00,NULL),(18,6,3,10.00,10.00,NULL);
/*!40000 ALTER TABLE `stock_transfer_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_transfers`
--

DROP TABLE IF EXISTS `stock_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_transfers` (
  `transfer_id` int NOT NULL AUTO_INCREMENT,
  `transfer_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_store_id` int NOT NULL,
  `to_store_id` int NOT NULL,
  `transfer_date` date NOT NULL,
  `transfer_type` enum('Daily Load','Return','Inter-Store') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','In Transit','Completed','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`transfer_id`),
  UNIQUE KEY `transfer_number` (`transfer_number`),
  KEY `created_by` (`created_by`),
  KEY `approved_by` (`approved_by`),
  KEY `idx_transfer_number` (`transfer_number`),
  KEY `idx_from_store_id` (`from_store_id`),
  KEY `idx_to_store_id` (`to_store_id`),
  KEY `idx_transfer_date` (`transfer_date`),
  KEY `idx_status` (`status`),
  CONSTRAINT `stock_transfers_ibfk_1` FOREIGN KEY (`from_store_id`) REFERENCES `stores` (`store_id`) ON DELETE RESTRICT,
  CONSTRAINT `stock_transfers_ibfk_2` FOREIGN KEY (`to_store_id`) REFERENCES `stores` (`store_id`) ON DELETE RESTRICT,
  CONSTRAINT `stock_transfers_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `stock_transfers_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_transfers`
--

LOCK TABLES `stock_transfers` WRITE;
/*!40000 ALTER TABLE `stock_transfers` DISABLE KEYS */;
INSERT INTO `stock_transfers` VALUES (1,'TRF000001',1,2,'2025-11-30','Daily Load','Completed','',1,1,'2025-11-30 08:40:15','2025-11-30 08:41:21'),(2,'TRF000002',2,1,'2025-12-03','Inter-Store','Completed','',1,1,'2025-12-03 07:51:47','2025-12-03 07:53:06'),(3,'TRF000003',1,2,'2025-12-03','Daily Load','Completed','',1,1,'2025-12-03 07:54:28','2025-12-03 07:54:51'),(4,'TRF000004',1,2,'2025-12-06','Daily Load','Completed','',1,1,'2025-12-06 08:22:38','2025-12-06 08:23:33'),(5,'TRF000005',2,1,'2025-12-06','Return','Completed','',1,1,'2025-12-06 08:25:20','2025-12-06 08:25:40'),(6,'TRF000006',1,5,'2025-12-06','Daily Load','Completed','',1,1,'2025-12-06 09:02:05','2025-12-06 09:02:10');
/*!40000 ALTER TABLE `stock_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `store_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_type` enum('Main Store','Vehicle') COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`store_id`,`store_type`),
  KEY `idx_store_code` (`store_code`),
  KEY `idx_store_type` (`store_type`),
  KEY `idx_is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,NULL,'Makongeni Shop','Main Store',NULL,1,'2025-11-27 12:50:12','34000','Thika','0700000000','makongo@gmail.com','Tonie',NULL),(2,NULL,'KAA 001A','Vehicle',NULL,1,'2025-11-28 05:46:46','','Thika','0726159307','','Wamuthende',NULL),(5,NULL,'Canter','Vehicle',NULL,1,'2025-12-06 09:00:47','','Muranga','0723456783','','Tonie',NULL);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
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
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sub_category_id`),
  UNIQUE KEY `unique_sub_category` (`category_id`,`sub_category_name`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_is_active` (`is_active`),
  CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (13,7,'Blue',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(14,7,'Green',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(15,7,'Grey',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(16,7,'Bronze',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(17,9,'Grey',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(18,9,'Bronze',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(19,9,'Blue',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(20,9,'Green',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(21,8,'3mm','',1,'2025-11-27 09:02:47','2025-11-27 09:16:58'),(22,8,'4mm',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(23,8,'5mm',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(24,6,'24 sqft',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(25,6,'38 sqft',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(26,10,'24sqft',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(27,10,'38sqft',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(28,11,'Premium',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(29,11,'Soft',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(30,12,'green',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(31,12,'yellow',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(32,12,'blue',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(33,12,'clear',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(34,15,'Obcure',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(35,15,'Oneway',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(36,15,'Clear',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09'),(37,6,'5mm 39sqft',NULL,1,'2025-11-27 09:11:09','2025-11-27 09:11:09');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_payments`
--

DROP TABLE IF EXISTS `supplier_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `payment_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grn_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` enum('Cash','Cheque','Bank Transfer','M-Pesa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `payment_number` (`payment_number`),
  KEY `created_by` (`created_by`),
  KEY `idx_payment_number` (`payment_number`),
  KEY `idx_grn_id` (`grn_id`),
  KEY `idx_supplier_id` (`supplier_id`),
  KEY `idx_payment_date` (`payment_date`),
  CONSTRAINT `supplier_payments_ibfk_1` FOREIGN KEY (`grn_id`) REFERENCES `goods_received_notes` (`grn_id`) ON DELETE RESTRICT,
  CONSTRAINT `supplier_payments_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE RESTRICT,
  CONSTRAINT `supplier_payments_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_payments`
--

LOCK TABLES `supplier_payments` WRITE;
/*!40000 ALTER TABLE `supplier_payments` DISABLE KEYS */;
INSERT INTO `supplier_payments` VALUES (1,'PAY000001',8,1,'2025-12-02',10000.00,'Cash','QWE46646T','',1,'2025-12-02 09:18:35'),(2,'PAY000002',8,1,'2025-12-02',14200.00,'M-Pesa','QWE63636D','',1,'2025-12-02 09:19:09'),(3,'PAY000003',7,1,'2025-12-02',20000.00,'M-Pesa','QW234227','',1,'2025-12-02 09:19:33'),(4,'PAY000004',5,1,'2025-12-06',10000.00,'M-Pesa','Q3434qwqe','',1,'2025-12-06 08:49:03');
/*!40000 ALTER TABLE `supplier_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Kenya',
  `payment_terms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `credit_limit` int DEFAULT NULL,
  `tax_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `idx_supplier_code` (`supplier_code`),
  KEY `idx_supplier_name` (`supplier_name`),
  KEY `idx_is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,NULL,'Ndegwa and Sons LTD','Samuel Ndegwa','samsoftware2018@gmail.com','0726159307','43','Mukurweini','Kenya','Net 30',1,'2025-11-27 11:53:38','2025-11-27 11:53:38',50000,'A00333GT');
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
  `setting_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `setting_key` (`setting_key`),
  KEY `idx_setting_key` (`setting_key`),
  KEY `idx_setting_type` (`setting_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_settings`
--

LOCK TABLES `system_settings` WRITE;
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `transaction_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_type` enum('Sale','Payment','Purchase','Expense','Refund','Adjustment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `debit_amount` decimal(12,2) DEFAULT '0.00',
  `credit_amount` decimal(12,2) DEFAULT '0.00',
  `balance_effect` decimal(12,2) NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `transaction_number` (`transaction_number`),
  KEY `created_by` (`created_by`),
  KEY `idx_transaction_number` (`transaction_number`),
  KEY `idx_transaction_date` (`transaction_date`),
  KEY `idx_transaction_type` (`transaction_type`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_supplier_id` (`supplier_id`),
  KEY `idx_store_id` (`store_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE SET NULL,
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE SET NULL,
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE SET NULL,
  CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
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
  `full_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `store_id` int DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Cashier',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_username` (`username`),
  KEY `idx_email` (`email`),
  KEY `idx_role_id` (`role_id`),
  KEY `fk_user_store` (`store_id`),
  CONSTRAINT `fk_user_store` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE SET NULL,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@glassmart.co.ke','$2y$10$ux7TqVootVsve0.cAGEwjeA0Whcoa/86dS7FoRtcY3YlATRP/.YVu','System Administrator','0700000000',1,1,'Cashier',1,'2025-11-25 14:25:15','2025-12-17 11:04:59','2025-12-17 11:04:59'),(2,'sam','sam@gmail.com','$2y$10$ux7TqVootVsve0.cAGEwjeA0Whcoa/86dS7FoRtcY3YlATRP/.YVu','Sam Ndegwa','0723000000',4,NULL,'Cashier',1,'2025-11-25 14:25:15','2025-12-13 15:37:38','2025-12-13 15:37:38'),(3,'tester','test@gmail.com','$2y$12$ipc44TL8CN6L.g4OKy0jQOCjRarevOu8xqkndHZgpuX8PHbX3uE.m','Test Account','0712345678',4,NULL,'Cashier',1,'2025-12-02 12:57:40','2025-12-02 13:39:31','2025-12-02 13:39:31'),(4,'ton','ton@gmail.com','$2y$12$bZ.WJEVy4zVTz/njvmHMre1sO3s.USVkaFz/CJQ2am8gPyIgYkdLq','Antony Mwangi','072345678',6,NULL,'Cashier',1,'2025-12-09 10:21:33','2025-12-09 10:21:33',NULL),(5,'samie','samie@gmail.com','$2y$12$D8IKVwvMAKISx2X09koVY.EfDoMY94jJv7afmkqwYePnu6H7Ehfwq','Samuel Ndegwa','0726159037',4,5,'Cashier',1,'2025-12-13 15:44:53','2025-12-13 18:24:13','2025-12-13 18:24:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int NOT NULL,
  `registration_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_model` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashier_id` int DEFAULT NULL,
  `capacity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`vehicle_id`),
  UNIQUE KEY `vehicle_registration` (`registration_number`),
  UNIQUE KEY `registration_number` (`registration_number`),
  KEY `idx_vehicle_registration` (`registration_number`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_assigned_cashier_id` (`cashier_id`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE RESTRICT,
  CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (2,'KAA 001A',1,'KAA 001A',NULL,'Kamau Matu',NULL,'072566222',5,'5t',NULL,1,'2025-12-02 11:04:02'),(3,'Canter',5,'KYZ 001Q',NULL,'Mwangi Muhiu',NULL,'0723456783',3,'3t','',1,'2025-12-06 09:00:47');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-22  9:07:18
