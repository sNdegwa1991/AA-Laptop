-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: rermis
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
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `activity_type` varchar(100) NOT NULL,
  `activity_description` text,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_type` (`activity_type`),
  KEY `idx_date` (`created_at`),
  CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,NULL,'login_failed','Failed login attempt for email: admin@admin.com','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 07:27:26'),(2,NULL,'login_failed','Failed login attempt for email: admin@rermis.com','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 07:28:18'),(3,NULL,'login_failed','Failed login attempt for email: admin@rermis.com','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 07:31:27'),(4,NULL,'login_failed','Failed login attempt for email: admin@rermis.com','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 07:32:51'),(5,NULL,'login_failed','Failed login attempt for email: admin@rermis.com','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 07:33:36'),(6,NULL,'login_failed','Failed login attempt for email: admin@admin.com','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 07:36:29'),(7,NULL,'login_failed','Failed login attempt for email: admin@admin.com','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 07:36:53'),(8,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 07:41:46'),(9,NULL,'login_failed','Failed login attempt for email: admin@admin.com','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-07 08:11:07'),(10,NULL,'login_failed','Failed login attempt for email: admin@admin.com','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-07 08:14:17'),(11,3,'login','User logged in successfully','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-07 08:14:31'),(12,3,'property_created','Created property: Ebenezer Apartment (ID: 1)','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-07 09:17:04'),(13,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 10:24:07'),(14,3,'property_updated','Updated property: Ebenezer Apartment (ID: 1)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 10:25:07'),(15,3,'property_updated','Updated property: Ebenezer Apartment (ID: 1)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 10:26:36'),(16,3,'property_updated','Updated property: Ebenezer Apartment (ID: 1)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 10:27:07'),(17,3,'property_created','Created property: Sunset Apartment (ID: 2)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 10:43:23'),(18,3,'property_updated','Updated property: Sunset Apartment (ID: 2)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 10:43:35'),(19,3,'property_updated','Updated property: Sunset Apartment (ID: 2)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 10:43:46'),(20,3,'property_updated','Updated property: Sunset Apartment (ID: 2)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 10:43:55'),(21,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-07 17:06:03'),(22,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 07:21:36'),(23,3,'property_created','Created property: Mawega Apartment (ID: 3)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:00:01'),(24,3,'property_updated','Updated property: Mawega Apartment (ID: 3)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:00:23'),(25,3,'property_updated','Updated property: Mawega Apartment (ID: 3)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:00:47'),(26,3,'user_created','Created user: sam@gmail.com (ID: 8)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:43:50'),(27,3,'user_updated','Updated user: sam@gmail.com (ID: 8)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:46:51'),(28,3,'user_updated','Updated user: sam@gmail.com (ID: 8)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:49:46'),(29,3,'user_updated','Updated user: kelvin@gmail.com (ID: 6)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:50:02'),(30,3,'user_updated','Updated user: john@gmail.com (ID: 7)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:52:35'),(31,3,'user_updated','Updated user: landlord@test.com (ID: 1)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:52:59'),(32,3,'user_updated','Updated user: landlord@test.com (ID: 1)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 08:53:11'),(33,8,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-08 11:59:03'),(34,3,'login','User logged in successfully','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-08 11:59:50'),(35,3,'units_added','Added 1 units to property: Mawega Apartment (ID: 3)','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-08 12:38:01'),(36,3,'units_added','Added 3 units to property: Mawega Apartment (ID: 3)','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-08 12:41:18'),(37,3,'login','User logged in successfully','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-08 13:13:39'),(38,3,'lease_created','Created lease #1','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','2025-12-08 13:38:20'),(39,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 11:08:45'),(40,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-09 12:26:02'),(41,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-10 12:09:49'),(42,3,'payment_recorded','Recorded payment #1 for lease #1','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-10 12:37:45'),(43,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-10 12:48:47'),(44,3,'units_added','Added 4 units to property: Sunset Apartment (ID: 2)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-10 13:42:06'),(45,3,'units_added','Added 6 units to property: Ebenezer Apartment (ID: 1)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-10 13:46:28'),(46,3,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-11 08:01:13'),(47,3,'property_created','Created property: Upendo Apartment (ID: 4)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-11 08:12:00'),(48,3,'property_updated','Updated property: Upendo Apartment (ID: 4)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-11 08:12:18'),(49,3,'property_updated','Updated property: Upendo Apartment (ID: 4)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-11 08:12:30'),(50,3,'property_updated','Updated property: Upendo Apartment (ID: 4)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-11 08:12:43'),(51,3,'units_added','Added 8 units to property: Upendo Apartment (ID: 4)','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-11 08:15:40'),(52,1,'login','User logged in successfully','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-11 09:25:55'),(53,6,'login','User logged in successfully','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-11 10:20:39'),(54,6,'logout','User logged out','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-11 11:04:41'),(55,3,'login','User logged in successfully','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-11 11:04:49'),(56,3,'logout','User logged out','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-11 11:05:39'),(57,3,'login','User logged in successfully','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-11 11:05:46');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `amenity_id` int NOT NULL AUTO_INCREMENT,
  `amenity_name` varchar(100) NOT NULL,
  `amenity_icon` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`amenity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'WiFi',NULL,'Internet','2025-12-06 07:01:58'),(2,'Parking',NULL,'Facilities','2025-12-06 07:01:58'),(3,'Security',NULL,'Safety','2025-12-06 07:01:58'),(4,'Water Supply',NULL,'Utilities','2025-12-06 07:01:58'),(5,'Backup Generator',NULL,'Utilities','2025-12-06 07:01:58'),(6,'Swimming Pool',NULL,'Recreation','2025-12-06 07:01:58'),(7,'Gym',NULL,'Recreation','2025-12-06 07:01:58'),(8,'CCTV',NULL,'Safety','2025-12-06 07:01:58'),(9,'Borehole',NULL,'Utilities','2025-12-06 07:01:58'),(10,'Lift/Elevator',NULL,'Facilities','2025-12-06 07:01:58'),(11,'Balcony',NULL,'Features','2025-12-06 07:01:58'),(12,'Garden',NULL,'Features','2025-12-06 07:01:58'),(13,'Playground',NULL,'Recreation','2025-12-06 07:01:58'),(14,'Waste Management',NULL,'Services','2025-12-06 07:01:58');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `status` enum('new','read','responded') DEFAULT 'new',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `property_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favorite_id`),
  UNIQUE KEY `unique_favorite` (`user_id`,`property_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_items` (
  `invoice_item_id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `quantity` decimal(10,2) DEFAULT '1.00',
  `unit_price` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`invoice_item_id`),
  KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `invoice_items_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`invoice_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `lease_id` int NOT NULL,
  `tenant_id` int NOT NULL,
  `landlord_id` int NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `total_amount` decimal(10,2) NOT NULL,
  `amount_paid` decimal(10,2) DEFAULT '0.00',
  `balance` decimal(10,2) NOT NULL,
  `invoice_status` enum('draft','sent','paid','overdue','cancelled') DEFAULT 'draft',
  `sent_at` datetime DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`invoice_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `lease_id` (`lease_id`),
  KEY `idx_tenant` (`tenant_id`),
  KEY `idx_landlord` (`landlord_id`),
  KEY `idx_status` (`invoice_status`),
  KEY `idx_dates` (`invoice_date`,`due_date`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`lease_id`) REFERENCES `leases` (`lease_id`),
  CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`landlord_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leases`
--

DROP TABLE IF EXISTS `leases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leases` (
  `lease_id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `tenant_id` int NOT NULL,
  `landlord_id` int NOT NULL,
  `lease_start_date` date NOT NULL,
  `lease_end_date` date NOT NULL,
  `monthly_rent` decimal(10,2) NOT NULL,
  `security_deposit` decimal(10,2) NOT NULL,
  `service_charge` decimal(10,2) DEFAULT '0.00',
  `payment_due_day` int DEFAULT '5',
  `lease_document_url` varchar(255) DEFAULT NULL,
  `lease_status` enum('active','expired','terminated','pending') DEFAULT 'pending',
  `signed_by_tenant` tinyint(1) DEFAULT '0',
  `signed_by_landlord` tinyint(1) DEFAULT '0',
  `tenant_signed_at` datetime DEFAULT NULL,
  `landlord_signed_at` datetime DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `termination_reason` text,
  `notice_period_days` int DEFAULT '30',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lease_id`),
  KEY `unit_id` (`unit_id`),
  KEY `idx_tenant` (`tenant_id`),
  KEY `idx_landlord` (`landlord_id`),
  KEY `idx_status` (`lease_status`),
  KEY `idx_dates` (`lease_start_date`,`lease_end_date`),
  CONSTRAINT `leases_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `property_units` (`unit_id`) ON DELETE CASCADE,
  CONSTRAINT `leases_ibfk_2` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `leases_ibfk_3` FOREIGN KEY (`landlord_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leases`
--

LOCK TABLES `leases` WRITE;
/*!40000 ALTER TABLE `leases` DISABLE KEYS */;
INSERT INTO `leases` VALUES (1,1,2,6,'2025-12-01','2025-12-31',12000.00,200.00,200.00,5,NULL,'active',2,6,NULL,NULL,NULL,NULL,30,'2025-12-08 13:38:20','2025-12-09 11:21:23');
/*!40000 ALTER TABLE `leases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_images`
--

DROP TABLE IF EXISTS `maintenance_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `request_id` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_type` enum('before','during','after') DEFAULT 'before',
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`image_id`),
  KEY `request_id` (`request_id`),
  CONSTRAINT `maintenance_images_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `maintenance_requests` (`request_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_images`
--

LOCK TABLES `maintenance_images` WRITE;
/*!40000 ALTER TABLE `maintenance_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_requests`
--

DROP TABLE IF EXISTS `maintenance_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_requests` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `unit_id` int DEFAULT NULL,
  `tenant_id` int NOT NULL,
  `landlord_id` int NOT NULL,
  `request_title` varchar(200) NOT NULL,
  `request_description` text NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `priority` enum('low','medium','high','urgent') DEFAULT 'medium',
  `assigned_provider_id` int DEFAULT NULL,
  `assigned_at` datetime DEFAULT NULL,
  `request_status` enum('pending','approved','in_progress','completed','cancelled') DEFAULT 'pending',
  `approved_at` datetime DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `estimated_cost` decimal(10,2) DEFAULT NULL,
  `actual_cost` decimal(10,2) DEFAULT NULL,
  `completion_notes` text,
  `tenant_rating` int DEFAULT NULL,
  `tenant_feedback` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`request_id`),
  KEY `property_id` (`property_id`),
  KEY `unit_id` (`unit_id`),
  KEY `assigned_provider_id` (`assigned_provider_id`),
  KEY `idx_tenant` (`tenant_id`),
  KEY `idx_landlord` (`landlord_id`),
  KEY `idx_status` (`request_status`),
  KEY `idx_priority` (`priority`),
  CONSTRAINT `maintenance_requests_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  CONSTRAINT `maintenance_requests_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `property_units` (`unit_id`) ON DELETE SET NULL,
  CONSTRAINT `maintenance_requests_ibfk_3` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `maintenance_requests_ibfk_4` FOREIGN KEY (`landlord_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `maintenance_requests_ibfk_5` FOREIGN KEY (`assigned_provider_id`) REFERENCES `service_providers` (`provider_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_requests`
--

LOCK TABLES `maintenance_requests` WRITE;
/*!40000 ALTER TABLE `maintenance_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `recipient_id` int NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message_body` text NOT NULL,
  `parent_message_id` int DEFAULT NULL,
  `thread_id` varchar(50) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `read_at` datetime DEFAULT NULL,
  `is_archived` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`),
  KEY `parent_message_id` (`parent_message_id`),
  KEY `idx_sender` (`sender_id`),
  KEY `idx_recipient` (`recipient_id`),
  KEY `idx_thread` (`thread_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`parent_message_id`) REFERENCES `messages` (`message_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
  `notification_type` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `related_entity_type` varchar(50) DEFAULT NULL,
  `related_entity_id` int DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `read_at` datetime DEFAULT NULL,
  `sent_via_email` tinyint(1) DEFAULT '0',
  `sent_via_sms` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_type` (`notification_type`),
  KEY `idx_read` (`is_read`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,'property_added','Property Added','A new property \'Ebenezer Apartment\' has been added to your account.','property',1,0,NULL,0,0,'2025-12-07 09:17:04'),(2,7,'property_added','Property Added','A new property \'Sunset Apartment\' has been added to your account.','property',2,0,NULL,0,0,'2025-12-07 10:43:23'),(3,6,'property_added','Property Added','A new property \'Mawega Apartment\' has been added to your account.','property',3,0,NULL,0,0,'2025-12-08 08:00:01'),(4,8,'account_created','Welcome to RERMIS','Your account has been created. You can now login with your credentials.',NULL,NULL,0,NULL,0,0,'2025-12-08 08:43:50'),(5,8,'account_updated','Account Updated','Your password has been changed.',NULL,NULL,0,NULL,0,0,'2025-12-08 08:46:51'),(6,8,'account_updated','Account Updated','Your password has been changed.',NULL,NULL,0,NULL,0,0,'2025-12-08 08:49:46'),(7,7,'account_updated','Account Updated','Your password has been changed.',NULL,NULL,0,NULL,0,0,'2025-12-08 08:52:35'),(8,2,'lease_created','New Lease Created','A new lease has been created for you.',NULL,NULL,0,NULL,0,0,'2025-12-08 13:38:20'),(9,6,'lease_created','New Lease Created','A new lease has been created.',NULL,NULL,0,NULL,0,0,'2025-12-08 13:38:20'),(10,2,'payment_recorded','Payment Recorded','A payment of KES 12,200.00 has been recorded for your lease.',NULL,NULL,0,NULL,0,0,'2025-12-10 12:37:45'),(11,8,'property_added','Property Added','A new property \'Upendo Apartment\' has been added to your account.','property',4,0,NULL,0,0,'2025-12-11 08:12:00');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `payment_method_id` int NOT NULL AUTO_INCREMENT,
  `method_name` varchar(50) NOT NULL,
  `method_code` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_method_id`),
  UNIQUE KEY `method_name` (`method_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'M-Pesa','MPESA',1,'2025-12-06 07:01:58'),(2,'Airtel Money','AIRTEL',1,'2025-12-06 07:01:58'),(3,'Bank Transfer','BANK',1,'2025-12-06 07:01:58'),(4,'Cash','CASH',1,'2025-12-06 07:01:58'),(5,'Cheque','CHEQUE',1,'2025-12-06 07:01:58'),(6,'Other','OTHER',1,'2025-12-06 07:01:58');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `lease_id` int NOT NULL,
  `tenant_id` int NOT NULL,
  `landlord_id` int NOT NULL,
  `payment_type` enum('rent','security_deposit','service_charge','utility','penalty','refund') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_for_month` date DEFAULT NULL,
  `payment_method_id` int DEFAULT NULL,
  `transaction_reference` varchar(100) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `payment_status` enum('pending','completed','failed','refunded') DEFAULT 'pending',
  `receipt_number` varchar(50) DEFAULT NULL,
  `receipt_url` varchar(255) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `due_date` varchar(45) DEFAULT NULL,
  `late_fee_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `transaction_reference` (`transaction_reference`),
  UNIQUE KEY `receipt_number` (`receipt_number`),
  KEY `payment_method_id` (`payment_method_id`),
  KEY `idx_lease` (`lease_id`),
  KEY `idx_tenant` (`tenant_id`),
  KEY `idx_landlord` (`landlord_id`),
  KEY `idx_status` (`payment_status`),
  KEY `idx_payment_month` (`payment_for_month`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`lease_id`) REFERENCES `leases` (`lease_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`landlord_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payments_ibfk_4` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,2,6,'rent',12200.00,NULL,1,'REF36363QW','2025-12-10 00:00:00','completed','RCP202512108814',NULL,'','2025-12-10 12:37:45','2025-12-10 12:37:45','2025-12-10',NULL);
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
  `permission_name` varchar(100) NOT NULL,
  `permission_description` text,
  `module` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`permission_id`),
  UNIQUE KEY `permission_name` (`permission_name`),
  KEY `idx_module` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'create_property','Create new properties','properties','2025-12-06 07:01:58'),(2,'edit_property','Edit existing properties','properties','2025-12-06 07:01:58'),(3,'delete_property','Delete properties','properties','2025-12-06 07:01:58'),(4,'view_all_properties','View all properties in system','properties','2025-12-06 07:01:58'),(5,'verify_property','Verify property listings','properties','2025-12-06 07:01:58'),(6,'manage_users','Manage system users','users','2025-12-06 07:01:58'),(7,'manage_roles','Manage roles and permissions','users','2025-12-06 07:01:58'),(8,'view_all_users','View all users','users','2025-12-06 07:01:58'),(9,'create_lease','Create new leases','leases','2025-12-06 07:01:58'),(10,'manage_leases','Manage lease agreements','leases','2025-12-06 07:01:58'),(11,'terminate_lease','Terminate leases','leases','2025-12-06 07:01:58'),(12,'view_payments','View payment records','finance','2025-12-06 07:01:58'),(13,'record_payment','Record new payments','finance','2025-12-06 07:01:58'),(14,'generate_invoice','Generate invoices','finance','2025-12-06 07:01:58'),(15,'view_financial_reports','Access financial reports','finance','2025-12-06 07:01:58'),(16,'create_maintenance_request','Create maintenance requests','maintenance','2025-12-06 07:01:58'),(17,'assign_maintenance','Assign maintenance to providers','maintenance','2025-12-06 07:01:58'),(18,'approve_maintenance','Approve maintenance requests','maintenance','2025-12-06 07:01:58');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `landlord_id` int NOT NULL,
  `property_type_id` int NOT NULL,
  `property_name` varchar(200) NOT NULL,
  `property_description` text,
  `county` varchar(100) NOT NULL,
  `sub_county` varchar(100) DEFAULT NULL,
  `town` varchar(100) NOT NULL,
  `estate_area` varchar(100) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `building_name` varchar(100) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `google_maps_link` text,
  `total_units` int DEFAULT '1',
  `year_built` year DEFAULT NULL,
  `parking_spaces` int DEFAULT '0',
  `is_featured` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `verification_status` enum('pending','verified','rejected') DEFAULT 'pending',
  `verified_at` datetime DEFAULT NULL,
  `verified_by` int DEFAULT NULL,
  `views_count` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`property_id`),
  KEY `property_type_id` (`property_type_id`),
  KEY `verified_by` (`verified_by`),
  KEY `idx_location` (`county`,`town`,`estate_area`),
  KEY `idx_landlord` (`landlord_id`),
  KEY `idx_status` (`is_active`,`verification_status`),
  FULLTEXT KEY `idx_search` (`property_name`,`property_description`,`town`,`estate_area`),
  CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`landlord_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `properties_ibfk_2` FOREIGN KEY (`property_type_id`) REFERENCES `property_types` (`property_type_id`),
  CONSTRAINT `properties_ibfk_3` FOREIGN KEY (`verified_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,1,3,'Ebenezer Apartment','Good aeration with enough light','Nyeri',NULL,'Nyeri','Kingongo','Primary Road','Ebenezer Building',-0.41558640,36.95192700,'https://www.google.com/maps/place/King\'ong\'o+Primary+School/@-0.4155864,36.951927,17z/data=!4m14!1m7!3m6!1s0x1828675619249427:0xe85cfd64410ef00a!2sKing\'ong\'o+Primary+School!8m2!3d-0.4155864!4d36.9545019!16s%2Fg%2F11dzd6rh19!3m5!1s0x1828675619249427:0xe85cfd64410ef00a!8m2!3d-0.4155864!4d36.9545019!16s%2Fg%2F11dzd6rh19?entry=ttu&g_ep=EgoyMDI1MTIwMi4wIKXMDSoASAFQAw%3D%3D',6,2023,12,0,1,'verified',NULL,NULL,0,'2025-12-07 09:17:04','2025-12-10 13:46:28'),(2,7,2,'Sunset Apartment','With Fresh air','Nyeri',NULL,'Nyeri Town','Skuta','County Assembly Street','Sunset Building',-0.43609040,36.96668280,'https://www.google.com/maps/place/COUNTY+ASSEMBLY+OF+NYERI/@-0.4360904,36.9666828,17z/data=!4m14!1m7!3m6!1s0x1787f63141238bcf:0xb75afc459ce64148!2sCOUNTY+ASSEMBLY+OF+NYERI!8m2!3d-0.4360904!4d36.9666828!16s%2Fg%2F11f4m519hv!3m5!1s0x1787f63141238bcf:0xb75afc459ce64148!8m2!3d-0.4360904!4d36.9666828!16s%2Fg%2F11f4m519hv?entry=ttu&g_ep=EgoyMDI1MTIwMi4wIKXMDSoASAFQAw%3D%3D',4,2020,21,0,1,'verified',NULL,NULL,0,'2025-12-07 10:43:22','2025-12-10 13:42:06'),(3,6,4,'Mawega Apartment','Spacious with enough lighting','Nyeri',NULL,'Nyeri Town','Ngangarithi','ABC Road','ABC Building',-0.43502100,36.95465000,'https://www.google.com/maps/place/PCEA+Church+Ngangarithi/@-0.435021,36.95465,17z/data=!4m14!1m7!3m6!1s0x182860a00484bab3:0x60de1f2058ba015b!2sAIPCA+CHURCH+NGANGARITHI!8m2!3d-0.435021!4d36.95465!16s%2Fg%2F11c71dwx6g!3m5!1s0x182861fbf821cdb7:0xba34a68883b14ced!8m2!3d-0.4367881!4d36.954416!16s%2Fg%2F11f9d2bk8q?entry=ttu&g_ep=EgoyMDI1MTIwMi4wIKXMDSoASAFQAw%3D%3D',4,2024,24,0,1,'verified',NULL,NULL,0,'2025-12-08 08:00:01','2025-12-08 12:41:18'),(4,8,4,'Upendo Apartment','Clean, Spacious and enough lighting','Nyeri',NULL,'Nyeri Town','Kingongo','Primary Road','Upendo Buildimg',-0.41558640,36.95192700,'https://www.google.com/maps/place/King\'ong\'o+Primary+School/@-0.4155864,36.951927,17z/data=!4m14!1m7!3m6!1s0x1828675619249427:0xe85cfd64410ef00a!2sKing\'ong\'o+Primary+School!8m2!3d-0.4155864!4d36.9545019!16s%2Fg%2F11dzd6rh19!3m5!1s0x1828675619249427:0xe85cfd64410ef00a!8m2!3d-0.4155864!4d36.9545019!16s%2Fg%2F11dzd6rh19?entry=ttu&g_ep=EgoyMDI1MTIwOC4wIKXMDSoKLDEwMDc5MjA2OUgBUAM%3D',8,2025,20,1,1,'verified',NULL,NULL,0,'2025-12-11 08:12:00','2025-12-11 08:15:40');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_amenities`
--

DROP TABLE IF EXISTS `property_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_amenities` (
  `property_amenity_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `amenity_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`property_amenity_id`),
  UNIQUE KEY `unique_property_amenity` (`property_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `property_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON DELETE CASCADE,
  CONSTRAINT `property_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`amenity_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_amenities`
--

LOCK TABLES `property_amenities` WRITE;
/*!40000 ALTER TABLE `property_amenities` DISABLE KEYS */;
INSERT INTO `property_amenities` VALUES (31,1,2,'2025-12-07 10:27:07'),(32,1,11,'2025-12-07 10:27:07'),(33,1,1,'2025-12-07 10:27:07'),(34,1,13,'2025-12-07 10:27:07'),(35,1,8,'2025-12-07 10:27:07'),(36,1,3,'2025-12-07 10:27:07'),(37,1,14,'2025-12-07 10:27:07'),(38,1,5,'2025-12-07 10:27:07'),(39,1,9,'2025-12-07 10:27:07'),(40,1,4,'2025-12-07 10:27:07'),(77,2,2,'2025-12-07 10:43:55'),(78,2,11,'2025-12-07 10:43:55'),(79,2,12,'2025-12-07 10:43:55'),(80,2,1,'2025-12-07 10:43:55'),(81,2,13,'2025-12-07 10:43:55'),(82,2,6,'2025-12-07 10:43:55'),(83,2,8,'2025-12-07 10:43:55'),(84,2,3,'2025-12-07 10:43:55'),(85,2,14,'2025-12-07 10:43:55'),(86,2,5,'2025-12-07 10:43:55'),(87,2,9,'2025-12-07 10:43:55'),(88,2,4,'2025-12-07 10:43:55'),(111,3,2,'2025-12-08 08:00:47'),(112,3,11,'2025-12-08 08:00:47'),(113,3,12,'2025-12-08 08:00:47'),(114,3,1,'2025-12-08 08:00:47'),(115,3,13,'2025-12-08 08:00:47'),(116,3,8,'2025-12-08 08:00:47'),(117,3,3,'2025-12-08 08:00:47'),(118,3,14,'2025-12-08 08:00:47'),(119,3,5,'2025-12-08 08:00:47'),(120,3,9,'2025-12-08 08:00:47'),(121,3,4,'2025-12-08 08:00:47'),(158,4,11,'2025-12-11 08:12:43'),(159,4,12,'2025-12-11 08:12:43'),(160,4,1,'2025-12-11 08:12:43'),(161,4,7,'2025-12-11 08:12:43'),(162,4,13,'2025-12-11 08:12:43'),(163,4,6,'2025-12-11 08:12:43'),(164,4,8,'2025-12-11 08:12:43'),(165,4,3,'2025-12-11 08:12:43'),(166,4,14,'2025-12-11 08:12:43'),(167,4,5,'2025-12-11 08:12:43'),(168,4,9,'2025-12-11 08:12:43'),(169,4,4,'2025-12-11 08:12:43');
/*!40000 ALTER TABLE `property_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_images`
--

DROP TABLE IF EXISTS `property_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_caption` varchar(255) DEFAULT NULL,
  `display_order` int DEFAULT '0',
  `is_primary` tinyint(1) DEFAULT '0',
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`image_id`),
  KEY `idx_property` (`property_id`),
  CONSTRAINT `property_images_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_images`
--

LOCK TABLES `property_images` WRITE;
/*!40000 ALTER TABLE `property_images` DISABLE KEYS */;
INSERT INTO `property_images` VALUES (1,1,'1/1_69355603d4481.jpg','',0,1,'2025-12-07 10:25:07'),(2,1,'1/1_6935565c9d189.jpg','',1,0,'2025-12-07 10:26:36'),(3,1,'1/1_6935567b0abc1.jpg','',2,0,'2025-12-07 10:27:07'),(4,2,'2/2_69355a4b001b4.jpg','',0,1,'2025-12-07 10:43:23'),(5,2,'2/2_69355a5714e11.jpg','',1,0,'2025-12-07 10:43:35'),(6,2,'2/2_69355a62311ab.jpg','',2,0,'2025-12-07 10:43:46'),(7,2,'2/2_69355a6bd4ad6.jpg','',3,0,'2025-12-07 10:43:55'),(8,3,'3/3_69368581628cf.jpg','',0,1,'2025-12-08 08:00:01'),(9,3,'3/3_6936859770141.jpg','',1,0,'2025-12-08 08:00:23'),(10,3,'3/3_693685af93cd5.jpg','',2,0,'2025-12-08 08:00:47'),(11,4,'4/4_693a7cd079a02.jpg','',0,1,'2025-12-11 08:12:00'),(12,4,'4/4_693a7ce286457.jpg','',1,0,'2025-12-11 08:12:18'),(13,4,'4/4_693a7cee3e0f4.jpg','',2,0,'2025-12-11 08:12:30'),(14,4,'4/4_693a7cfb33ef6.jpg','',3,0,'2025-12-11 08:12:43');
/*!40000 ALTER TABLE `property_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_inquiries`
--

DROP TABLE IF EXISTS `property_inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_inquiries` (
  `inquiry_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `unit_id` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`inquiry_id`),
  KEY `property_id` (`property_id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `property_inquiries_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  CONSTRAINT `property_inquiries_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `property_units` (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_inquiries`
--

LOCK TABLES `property_inquiries` WRITE;
/*!40000 ALTER TABLE `property_inquiries` DISABLE KEYS */;
INSERT INTO `property_inquiries` VALUES (1,1,14,'ASDFG','mwanikisamuel91@gmail.com','0726159307','ASDF','2025-12-11 10:36:03');
/*!40000 ALTER TABLE `property_inquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_reviews`
--

DROP TABLE IF EXISTS `property_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `tenant_id` int NOT NULL,
  `rating` int NOT NULL,
  `review_title` varchar(200) DEFAULT NULL,
  `review_text` text,
  `location_rating` int DEFAULT NULL,
  `amenities_rating` int DEFAULT NULL,
  `landlord_rating` int DEFAULT NULL,
  `value_for_money_rating` int DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `is_approved` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `tenant_id` (`tenant_id`),
  KEY `idx_property` (`property_id`),
  KEY `idx_rating` (`rating`),
  CONSTRAINT `property_reviews_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON DELETE CASCADE,
  CONSTRAINT `property_reviews_ibfk_2` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `property_reviews_chk_1` CHECK (((`rating` >= 1) and (`rating` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_reviews`
--

LOCK TABLES `property_reviews` WRITE;
/*!40000 ALTER TABLE `property_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_types`
--

DROP TABLE IF EXISTS `property_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_types` (
  `property_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  `type_description` text,
  `display_order` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`property_type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_types`
--

LOCK TABLES `property_types` WRITE;
/*!40000 ALTER TABLE `property_types` DISABLE KEYS */;
INSERT INTO `property_types` VALUES (1,'Single Room','Single room accommodation',1,1,'2025-12-06 07:01:58'),(2,'Bedsitter','Studio apartment with basic amenities',2,1,'2025-12-06 07:01:58'),(3,'1 Bedroom','One bedroom apartment',3,1,'2025-12-06 07:01:58'),(4,'2 Bedroom','Two bedroom apartment',4,1,'2025-12-06 07:01:58'),(5,'3 Bedroom','Three bedroom apartment',5,1,'2025-12-06 07:01:58'),(6,'Bungalow','Standalone single-story house',6,1,'2025-12-06 07:01:58'),(7,'Mansion','Large luxury residence',7,1,'2025-12-06 07:01:58'),(8,'Airbnb','Short-term rental property',8,1,'2025-12-06 07:01:58');
/*!40000 ALTER TABLE `property_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_units`
--

DROP TABLE IF EXISTS `property_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_units` (
  `unit_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `unit_number` varchar(50) NOT NULL,
  `unit_type` varchar(50) DEFAULT NULL,
  `bedrooms` int DEFAULT '0',
  `bathrooms` int DEFAULT '0',
  `floor_number` int DEFAULT NULL,
  `rent_amount` decimal(10,2) NOT NULL,
  `security_deposit` decimal(10,2) DEFAULT NULL,
  `service_charge` decimal(10,2) DEFAULT '0.00',
  `square_feet` decimal(10,2) DEFAULT NULL,
  `is_furnished` tinyint(1) DEFAULT '0',
  `availability_status` enum('vacant','occupied','maintenance','reserved') DEFAULT 'vacant',
  `available_from` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`unit_id`),
  UNIQUE KEY `unique_property_unit` (`property_id`,`unit_number`),
  KEY `idx_property` (`property_id`),
  KEY `idx_availability` (`availability_status`,`available_from`),
  CONSTRAINT `property_units_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_units`
--

LOCK TABLES `property_units` WRITE;
/*!40000 ALTER TABLE `property_units` DISABLE KEYS */;
INSERT INTO `property_units` VALUES (1,3,'A001','1 Bedroom',1,1,NULL,12000.00,NULL,0.00,500.00,0,'occupied',NULL,'2025-12-08 12:38:01','2025-12-08 13:38:20'),(2,3,'A002','1 Bedroom',1,1,NULL,12000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-08 12:41:18','2025-12-08 12:41:18'),(3,3,'A003','1 Bedroom',1,1,NULL,12000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-08 12:41:18','2025-12-08 12:41:18'),(4,3,'A004','1 Bedroom',1,1,NULL,12000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-08 12:41:18','2025-12-08 12:41:18'),(7,2,'A001','1 Bedroom',1,1,NULL,13000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:42:06','2025-12-10 13:42:06'),(8,2,'A002','1 Bedroom',1,1,NULL,13000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:42:06','2025-12-10 13:42:06'),(9,2,'A003','1 Bedroom',1,1,NULL,13000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:42:06','2025-12-10 13:42:06'),(10,2,'A004','1 Bedroom',1,1,NULL,13000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:42:06','2025-12-10 13:42:06'),(14,1,'A001','1 Bedroom',1,1,NULL,14000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:46:28','2025-12-10 13:46:28'),(15,1,'A002','1 Bedroom',1,1,NULL,14000.00,NULL,0.00,0.00,0,'vacant',NULL,'2025-12-10 13:46:28','2025-12-10 13:46:28'),(16,1,'A003','1 Bedroom',1,1,NULL,14000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:46:28','2025-12-10 13:46:28'),(17,1,'A004','1 Bedroom',1,1,NULL,14000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:46:28','2025-12-10 13:46:28'),(18,1,'A005','1 Bedroom',1,1,NULL,14000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:46:28','2025-12-10 13:46:28'),(19,1,'A006','1 Bedroom',1,1,NULL,14000.00,NULL,0.00,500.00,0,'vacant',NULL,'2025-12-10 13:46:28','2025-12-10 13:46:28'),(20,4,'A001','2 Bedroom',1,1,NULL,20000.00,NULL,0.00,800.00,0,'vacant',NULL,'2025-12-11 08:15:40','2025-12-11 08:15:40'),(21,4,'A002','2 Bedroom',1,1,NULL,20000.00,NULL,0.00,800.00,0,'vacant',NULL,'2025-12-11 08:15:40','2025-12-11 08:15:40'),(22,4,'A003','2 Bedroom',1,1,NULL,20000.00,NULL,0.00,800.00,0,'vacant',NULL,'2025-12-11 08:15:40','2025-12-11 08:15:40'),(23,4,'A004','2 Bedroom',1,1,NULL,20000.00,NULL,0.00,800.00,0,'vacant',NULL,'2025-12-11 08:15:40','2025-12-11 08:15:40'),(24,4,'A005','2 Bedroom',1,1,NULL,20000.00,NULL,0.00,800.00,0,'vacant',NULL,'2025-12-11 08:15:40','2025-12-11 08:15:40'),(25,4,'A006','2 Bedroom',1,1,NULL,20000.00,NULL,0.00,800.00,0,'vacant',NULL,'2025-12-11 08:15:40','2025-12-11 08:15:40'),(26,4,'A007','2 Bedroom',1,1,NULL,20000.00,NULL,0.00,800.00,0,'vacant',NULL,'2025-12-11 08:15:40','2025-12-11 08:15:40'),(27,4,'A008','2 Bedroom',1,1,NULL,20000.00,NULL,0.00,800.00,0,'vacant',NULL,'2025-12-11 08:15:40','2025-12-11 08:15:40');
/*!40000 ALTER TABLE `property_units` ENABLE KEYS */;
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
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
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
  `role_name` varchar(50) NOT NULL,
  `role_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super_admin','System administrator with full access','2025-12-06 07:01:58'),(2,'landlord','Property owner who lists and manages properties','2025-12-06 07:01:58'),(3,'tenant','User looking for or renting properties','2025-12-06 07:01:58'),(4,'service_provider','Maintenance and service provider','2025-12-06 07:01:58'),(5,'property_manager','Manages properties on behalf of landlords','2025-12-06 07:01:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_history`
--

DROP TABLE IF EXISTS `search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_history` (
  `search_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `search_query` text,
  `search_filters` json DEFAULT NULL,
  `results_count` int DEFAULT NULL,
  `search_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`search_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_date` (`search_date`),
  CONSTRAINT `search_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_history`
--

LOCK TABLES `search_history` WRITE;
/*!40000 ALTER TABLE `search_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_providers`
--

DROP TABLE IF EXISTS `service_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_providers` (
  `provider_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `company_name` varchar(200) NOT NULL,
  `service_category` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `physical_address` text,
  `is_verified` tinyint(1) DEFAULT '0',
  `verification_documents` text,
  `rating` decimal(3,2) DEFAULT '0.00',
  `total_jobs_completed` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`provider_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_category` (`service_category`),
  KEY `idx_rating` (`rating`),
  CONSTRAINT `service_providers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_providers`
--

LOCK TABLES `service_providers` WRITE;
/*!40000 ALTER TABLE `service_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_settings` (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(50) DEFAULT NULL,
  `description` text,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `setting_key` (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_settings`
--

LOCK TABLES `system_settings` WRITE;
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_profiles`
--

DROP TABLE IF EXISTS `tenant_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_profiles` (
  `tenant_profile_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `national_id` varchar(50) DEFAULT NULL,
  `id_front_image` varchar(255) DEFAULT NULL,
  `id_back_image` varchar(255) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `employer_name` varchar(200) DEFAULT NULL,
  `monthly_income` decimal(10,2) DEFAULT NULL,
  `emergency_contact_name` varchar(100) DEFAULT NULL,
  `emergency_contact_phone` varchar(20) DEFAULT NULL,
  `emergency_contact_relationship` varchar(50) DEFAULT NULL,
  `background_check_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tenant_profile_id`),
  UNIQUE KEY `unique_user` (`user_id`),
  CONSTRAINT `tenant_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_profiles`
--

LOCK TABLES `tenant_profiles` WRITE;
/*!40000 ALTER TABLE `tenant_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_role_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `assigned_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `unique_user_role` (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,2,'2025-12-07 07:15:17'),(2,2,3,'2025-12-07 07:16:17'),(3,3,1,'2025-12-07 07:16:17'),(4,6,2,'2025-12-07 07:16:17'),(5,7,2,'2025-12-07 07:16:17'),(6,8,2,'2025-12-08 08:43:50');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT '0',
  `phone_verified` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `idx_email` (`email`),
  KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'landlord@test.com','254712345678','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','John','Doe',NULL,1,0,1,'2025-12-11 12:25:55','2025-12-07 07:15:17','2025-12-11 09:25:55'),(2,'tenant@test.com','254723456789','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Jane','Smith',NULL,1,0,1,NULL,'2025-12-07 07:16:17','2025-12-07 07:16:17'),(3,'admin@admin.com','254700000001','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Super','Admin',NULL,1,1,1,'2025-12-11 14:05:46','2025-12-07 07:23:10','2025-12-11 11:05:46'),(4,'admin@rermis.com','254700000002','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','System','Administrator',NULL,1,1,1,NULL,'2025-12-07 07:23:10','2025-12-07 07:23:10'),(6,'kelvin@gmail.com','254712345671','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Kevin','Kamau','user_6936913a5c75a.png',1,1,1,'2025-12-11 13:20:39','2025-12-07 10:33:18','2025-12-11 10:20:39'),(7,'john@gmail.com','254712345670','$2y$12$Lj2FdF90EHi8umQ16JMw4OIVB1LE4tA6q3FoLlPa7uh8RB7.AWaFq','John','Mwangi','user_693691d36b8b0.jpeg',1,1,1,NULL,'2025-12-07 10:33:18','2025-12-08 08:52:35'),(8,'sam@gmail.com','0726159307','$2y$12$kqoxnlpc0CAGxvSaGFcjreKzaliXn8yBdcWEUEShg6dNznazcK7FC','Samuel','Ndegwa','user_69369129d95b8.png',1,1,1,'2025-12-08 14:59:03','2025-12-08 08:43:50','2025-12-08 11:59:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_readings`
--

DROP TABLE IF EXISTS `utility_readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_readings` (
  `reading_id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `utility_type` enum('water','electricity','gas') NOT NULL,
  `previous_reading` decimal(10,2) NOT NULL,
  `current_reading` decimal(10,2) NOT NULL,
  `units_consumed` decimal(10,2) NOT NULL,
  `rate_per_unit` decimal(10,2) NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `reading_date` date NOT NULL,
  `billing_month` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reading_id`),
  KEY `idx_unit` (`unit_id`),
  KEY `idx_billing_month` (`billing_month`),
  CONSTRAINT `utility_readings_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `property_units` (`unit_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_readings`
--

LOCK TABLES `utility_readings` WRITE;
/*!40000 ALTER TABLE `utility_readings` DISABLE KEYS */;
/*!40000 ALTER TABLE `utility_readings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-22  9:08:25
