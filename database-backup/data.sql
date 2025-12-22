CREATE DATABASE  IF NOT EXISTS `chemist_mis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `chemist_mis`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: chemist_mis
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
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_trail` (
  `audit_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_id` int DEFAULT NULL,
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_values` json DEFAULT NULL,
  `new_values` json DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audit_id`),
  KEY `idx_user_action` (`user_id`,`action`),
  KEY `idx_module_table` (`module`,`table_name`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `audit_trail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_trail`
--

LOCK TABLES `audit_trail` WRITE;
/*!40000 ALTER TABLE `audit_trail` DISABLE KEYS */;
INSERT INTO `audit_trail` VALUES (1,NULL,'password_change','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-16 10:26:57'),(2,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 09:44:40'),(3,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:11:00'),(4,1,'login','Authentication',1,'users',NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-17 12:14:42'),(5,1,'login','Authentication',1,'users',NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-17 12:43:34'),(6,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:53:15'),(7,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:53:15'),(8,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:53:26'),(9,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:53:38'),(10,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:53:38'),(11,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:53:43'),(12,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-17 13:01:48'),(13,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-17 13:01:48'),(14,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-17 13:01:51'),(15,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-17 13:11:04'),(16,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-17 13:11:04'),(17,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-17 13:11:07'),(18,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 09:13:25'),(19,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 09:57:11'),(20,1,'create','User Management',2,'users',NULL,'{\"email\": \"sam@gmail.com\", \"role_id\": 3, \"username\": \"samie\", \"full_name\": \"Samuel Ndegwa\"}','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 09:59:38'),(21,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:05:06'),(22,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:05:06'),(23,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:05:09'),(24,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:07:46'),(25,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:07:46'),(26,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:07:49'),(27,1,'update_permissions','Role Management',1,'role_permissions',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:08:48'),(28,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:00'),(29,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:00'),(30,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:02'),(31,1,'update_permissions','Role Management',1,'role_permissions',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:38'),(32,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:42'),(33,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:42'),(34,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:45'),(35,1,'update_permissions','Role Management',2,'role_permissions',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:10:35'),(36,1,'update_permissions','Role Management',3,'role_permissions',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:11:26'),(37,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-19 09:36:35'),(38,1,'create','Product Management',1,'products',NULL,'{\"product_code\": \"SN0001\", \"product_name\": \"Amoxil\"}','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-19 10:17:31'),(39,1,'create','Product Management',2,'products',NULL,'{\"product_code\": \"SN0002\", \"product_name\": \"Zithromax\"}','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-19 10:23:47'),(40,1,'create','Product Management',3,'products',NULL,'{\"product_code\": \"SN0003\", \"product_name\": \"Cipro\"}','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-19 10:27:33'),(41,1,'create','Product Management',4,'products',NULL,'{\"product_code\": \"SN0004\", \"product_name\": \"Keflex\"}','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-19 10:30:11'),(42,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-20 07:52:00'),(43,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-20 09:25:10'),(44,1,'logout','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-20 09:25:10'),(45,1,'login','Authentication',1,'users',NULL,NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-20 09:25:13'),(46,1,'create','Supplier Management',1,'suppliers',NULL,'{\"supplier_code\": \"SUP0001\", \"supplier_name\": \"Ndegwa and Sons LTD\"}','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-20 09:38:39');
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_accounts`
--

DROP TABLE IF EXISTS `bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_accounts` (
  `bank_account_id` int NOT NULL AUTO_INCREMENT,
  `account_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT 'KES',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `ledger_account_id` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bank_account_id`),
  UNIQUE KEY `account_code` (`account_code`),
  KEY `ledger_account_id` (`ledger_account_id`),
  CONSTRAINT `bank_accounts_ibfk_1` FOREIGN KEY (`ledger_account_id`) REFERENCES `chart_of_accounts` (`account_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_accounts`
--

LOCK TABLES `bank_accounts` WRITE;
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transactions`
--

DROP TABLE IF EXISTS `bank_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `bank_account_id` int NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` enum('Deposit','Withdrawal','Transfer','Fee','Interest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit_amount` decimal(15,2) DEFAULT '0.00',
  `credit_amount` decimal(15,2) DEFAULT '0.00',
  `balance` decimal(15,2) DEFAULT NULL,
  `reconciled` tinyint(1) DEFAULT '0',
  `reconciled_at` timestamp NULL DEFAULT NULL,
  `reconciled_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transaction_id`),
  KEY `bank_account_id` (`bank_account_id`),
  KEY `reconciled_by` (`reconciled_by`),
  KEY `idx_transaction_date` (`transaction_date`),
  KEY `idx_reconciled` (`reconciled`),
  CONSTRAINT `bank_transactions_ibfk_1` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_accounts` (`bank_account_id`) ON DELETE CASCADE,
  CONSTRAINT `bank_transactions_ibfk_2` FOREIGN KEY (`reconciled_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transactions`
--

LOCK TABLES `bank_transactions` WRITE;
/*!40000 ALTER TABLE `bank_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chart_of_accounts`
--

DROP TABLE IF EXISTS `chart_of_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chart_of_accounts` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `account_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type` enum('Asset','Liability','Equity','Revenue','Expense') COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_subtype` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_account_id` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `account_code` (`account_code`),
  KEY `parent_account_id` (`parent_account_id`),
  KEY `idx_account_code` (`account_code`),
  KEY `idx_account_type` (`account_type`),
  CONSTRAINT `chart_of_accounts_ibfk_1` FOREIGN KEY (`parent_account_id`) REFERENCES `chart_of_accounts` (`account_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chart_of_accounts`
--

LOCK TABLES `chart_of_accounts` WRITE;
/*!40000 ALTER TABLE `chart_of_accounts` DISABLE KEYS */;
INSERT INTO `chart_of_accounts` VALUES (1,'1000','Assets','Asset','Main',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(2,'1100','Current Assets','Asset','Sub-Group',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(3,'1110','Cash on Hand','Asset','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(4,'1120','Bank Accounts','Asset','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(5,'1130','Inventory','Asset','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(6,'1140','Accounts Receivable','Asset','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(7,'2000','Liabilities','Liability','Main',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(8,'2100','Current Liabilities','Liability','Sub-Group',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(9,'2110','Accounts Payable','Liability','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(10,'2120','Tax Payable','Liability','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(11,'3000','Equity','Equity','Main',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(12,'3100','Owner\'s Equity','Equity','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(13,'3200','Retained Earnings','Equity','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(14,'4000','Revenue','Revenue','Main',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(15,'4100','Sales Revenue','Revenue','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(16,'4200','Other Income','Revenue','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(17,'5000','Expenses','Expense','Main',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(18,'5100','Cost of Goods Sold','Expense','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(19,'5200','Operating Expenses','Expense','Sub-Group',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(20,'5210','Salaries & Wages','Expense','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(21,'5220','Rent','Expense','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(22,'5230','Utilities','Expense','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(23,'5240','Office Supplies','Expense','Detail',NULL,1,NULL,'2025-12-15 12:57:10','2025-12-15 12:57:10');
/*!40000 ALTER TABLE `chart_of_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication_templates`
--

DROP TABLE IF EXISTS `communication_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communication_templates` (
  `template_id` int NOT NULL AUTO_INCREMENT,
  `template_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_type` enum('SMS','Email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholders` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_name` (`template_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication_templates`
--

LOCK TABLES `communication_templates` WRITE;
/*!40000 ALTER TABLE `communication_templates` DISABLE KEYS */;
INSERT INTO `communication_templates` VALUES (1,'Prescription Ready','SMS',NULL,'Dear {patient_name}, your prescription {prescription_number} is ready for collection at {pharmacy_name}. Valid until {valid_until}.','patient_name, prescription_number, pharmacy_name, valid_until',1,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(2,'Low Stock Alert','Email','Low Stock Alert - {product_name}','Dear Team,\n\nThe product {product_name} (Code: {product_code}) has reached low stock level.\nCurrent Quantity: {current_quantity}\nReorder Level: {reorder_level}\n\nPlease initiate replenishment.','product_name, product_code, current_quantity, reorder_level',1,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(3,'Expiry Alert','SMS',NULL,'ALERT: Product {product_name} Batch {batch_number} expires on {expiry_date}. Current stock: {quantity} units.','product_name, batch_number, expiry_date, quantity',1,'2025-12-15 12:57:10','2025-12-15 12:57:10');
/*!40000 ALTER TABLE `communication_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_metrics`
--

DROP TABLE IF EXISTS `dashboard_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_metrics` (
  `metric_id` int NOT NULL AUTO_INCREMENT,
  `metric_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metric_value` decimal(15,2) DEFAULT NULL,
  `metric_date` date NOT NULL,
  `calculated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`metric_id`),
  KEY `idx_metric_name_date` (`metric_name`,`metric_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_metrics`
--

LOCK TABLES `dashboard_metrics` WRITE;
/*!40000 ALTER TABLE `dashboard_metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `doctor_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialization` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital_clinic` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `registered_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registered_by` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  UNIQUE KEY `doctor_code` (`doctor_code`),
  UNIQUE KEY `license_number` (`license_number`),
  KEY `registered_by` (`registered_by`),
  CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`registered_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_interactions`
--

DROP TABLE IF EXISTS `drug_interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_interactions` (
  `interaction_id` int NOT NULL AUTO_INCREMENT,
  `drug1_id` int NOT NULL,
  `drug2_id` int NOT NULL,
  `severity` enum('Mild','Moderate','Severe','Contraindicated') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interaction_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinical_effects` text COLLATE utf8mb4_unicode_ci,
  `management_recommendations` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`interaction_id`),
  UNIQUE KEY `unique_interaction` (`drug1_id`,`drug2_id`),
  KEY `drug2_id` (`drug2_id`),
  CONSTRAINT `drug_interactions_ibfk_1` FOREIGN KEY (`drug1_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `drug_interactions_ibfk_2` FOREIGN KEY (`drug2_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_interactions`
--

LOCK TABLES `drug_interactions` WRITE;
/*!40000 ALTER TABLE `drug_interactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `drug_interactions` ENABLE KEYS */;
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
  `supplier_id` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` enum('Cash','M-Pesa','Card','Bank Transfer','Cheque') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Approved','Paid','Rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `approved_by` int DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `paid_by` int DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `submitted_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`expense_id`),
  UNIQUE KEY `expense_number` (`expense_number`),
  KEY `expense_category_id` (`expense_category_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `submitted_by` (`submitted_by`),
  KEY `approved_by` (`approved_by`),
  KEY `paid_by` (`paid_by`),
  KEY `idx_expense_number` (`expense_number`),
  KEY `idx_expense_date` (`expense_date`),
  CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `chart_of_accounts` (`account_id`) ON DELETE RESTRICT,
  CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE SET NULL,
  CONSTRAINT `expenses_ibfk_3` FOREIGN KEY (`submitted_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `expenses_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  CONSTRAINT `expenses_ibfk_5` FOREIGN KEY (`paid_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
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
-- Table structure for table `general_ledger`
--

DROP TABLE IF EXISTS `general_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_ledger` (
  `ledger_id` bigint NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `account_id` int NOT NULL,
  `debit_amount` decimal(15,2) DEFAULT '0.00',
  `credit_amount` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int DEFAULT NULL,
  `reference_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posted_by` int DEFAULT NULL,
  `posted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ledger_id`),
  KEY `posted_by` (`posted_by`),
  KEY `idx_transaction_date` (`transaction_date`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_reference` (`reference_type`,`reference_id`),
  CONSTRAINT `general_ledger_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `chart_of_accounts` (`account_id`) ON DELETE RESTRICT,
  CONSTRAINT `general_ledger_ibfk_2` FOREIGN KEY (`posted_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_ledger`
--

LOCK TABLES `general_ledger` WRITE;
/*!40000 ALTER TABLE `general_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_ledger` ENABLE KEYS */;
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
  `po_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `received_date` date NOT NULL,
  `delivery_note_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Draft','Completed','Disputed') COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `total_amount` decimal(12,2) DEFAULT NULL,
  `quality_check_status` enum('Passed','Failed','Pending') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `quality_checked_by` int DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `received_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`grn_id`),
  UNIQUE KEY `grn_number` (`grn_number`),
  KEY `supplier_id` (`supplier_id`),
  KEY `received_by` (`received_by`),
  KEY `quality_checked_by` (`quality_checked_by`),
  KEY `idx_grn_number` (`grn_number`),
  KEY `goods_received_notes_ibfk_1` (`po_id`),
  CONSTRAINT `goods_received_notes_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`) ON DELETE RESTRICT,
  CONSTRAINT `goods_received_notes_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE RESTRICT,
  CONSTRAINT `goods_received_notes_ibfk_3` FOREIGN KEY (`received_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `goods_received_notes_ibfk_4` FOREIGN KEY (`quality_checked_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_received_notes`
--

LOCK TABLES `goods_received_notes` WRITE;
/*!40000 ALTER TABLE `goods_received_notes` DISABLE KEYS */;
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
  `order_item_id` int NOT NULL,
  `product_id` int NOT NULL,
  `batch_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_received` int NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `manufacturing_date` date DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `line_total` decimal(12,2) DEFAULT NULL,
  `condition_status` enum('Good','Damaged','Expired') COLLATE utf8mb4_unicode_ci DEFAULT 'Good',
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`grn_item_id`),
  KEY `grn_id` (`grn_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `grn_items_ibfk_1` FOREIGN KEY (`grn_id`) REFERENCES `goods_received_notes` (`grn_id`) ON DELETE CASCADE,
  CONSTRAINT `grn_items_ibfk_2` FOREIGN KEY (`order_item_id`) REFERENCES `purchase_order_items` (`order_item_id`) ON DELETE RESTRICT,
  CONSTRAINT `grn_items_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn_items`
--

LOCK TABLES `grn_items` WRITE;
/*!40000 ALTER TABLE `grn_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_entries`
--

DROP TABLE IF EXISTS `journal_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_entries` (
  `journal_id` int NOT NULL AUTO_INCREMENT,
  `journal_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `journal_date` date NOT NULL,
  `journal_type` enum('General','Sales','Purchase','Payment','Receipt','Adjustment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_debit` decimal(15,2) NOT NULL,
  `total_credit` decimal(15,2) NOT NULL,
  `status` enum('Draft','Posted','Reversed') COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `posted_by` int DEFAULT NULL,
  `posted_at` timestamp NULL DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`journal_id`),
  UNIQUE KEY `journal_number` (`journal_number`),
  KEY `created_by` (`created_by`),
  KEY `posted_by` (`posted_by`),
  KEY `idx_journal_number` (`journal_number`),
  KEY `idx_journal_date` (`journal_date`),
  KEY `idx_status` (`status`),
  CONSTRAINT `journal_entries_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `journal_entries_ibfk_2` FOREIGN KEY (`posted_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_entries`
--

LOCK TABLES `journal_entries` WRITE;
/*!40000 ALTER TABLE `journal_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `journal_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_entry_lines`
--

DROP TABLE IF EXISTS `journal_entry_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_entry_lines` (
  `line_id` int NOT NULL AUTO_INCREMENT,
  `journal_id` int NOT NULL,
  `line_number` int NOT NULL,
  `account_id` int NOT NULL,
  `debit_amount` decimal(15,2) DEFAULT '0.00',
  `credit_amount` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`line_id`),
  KEY `journal_id` (`journal_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `journal_entry_lines_ibfk_1` FOREIGN KEY (`journal_id`) REFERENCES `journal_entries` (`journal_id`) ON DELETE CASCADE,
  CONSTRAINT `journal_entry_lines_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `chart_of_accounts` (`account_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_entry_lines`
--

LOCK TABLES `journal_entry_lines` WRITE;
/*!40000 ALTER TABLE `journal_entry_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `journal_entry_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `idx_user_read` (`user_id`,`is_read`),
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
-- Table structure for table `patient_allergies`
--

DROP TABLE IF EXISTS `patient_allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_allergies` (
  `allergy_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `allergen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reaction` text COLLATE utf8mb4_unicode_ci,
  `severity` enum('Mild','Moderate','Severe') COLLATE utf8mb4_unicode_ci DEFAULT 'Moderate',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `recorded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` int DEFAULT NULL,
  PRIMARY KEY (`allergy_id`),
  KEY `patient_id` (`patient_id`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `patient_allergies_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE CASCADE,
  CONSTRAINT `patient_allergies_ibfk_2` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_allergies`
--

LOCK TABLES `patient_allergies` WRITE;
/*!40000 ALTER TABLE `patient_allergies` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_communications`
--

DROP TABLE IF EXISTS `patient_communications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_communications` (
  `communication_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `communication_type` enum('SMS','Email','Phone','WhatsApp') COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `delivery_status` enum('Pending','Sent','Delivered','Failed') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `sent_by` int DEFAULT NULL,
  PRIMARY KEY (`communication_id`),
  KEY `sent_by` (`sent_by`),
  KEY `idx_patient_type` (`patient_id`,`communication_type`),
  CONSTRAINT `patient_communications_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE CASCADE,
  CONSTRAINT `patient_communications_ibfk_2` FOREIGN KEY (`sent_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_communications`
--

LOCK TABLES `patient_communications` WRITE;
/*!40000 ALTER TABLE `patient_communications` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_communications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_medical_history`
--

DROP TABLE IF EXISTS `patient_medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_medical_history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `condition_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosed_date` date DEFAULT NULL,
  `status` enum('Active','Resolved','Chronic') COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `recorded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` int DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `patient_id` (`patient_id`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `patient_medical_history_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE CASCADE,
  CONSTRAINT `patient_medical_history_ibfk_2` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_medical_history`
--

LOCK TABLES `patient_medical_history` WRITE;
/*!40000 ALTER TABLE `patient_medical_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `patient_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address` text COLLATE utf8mb4_unicode_ci,
  `county` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_county` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_provider` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allergies` text COLLATE utf8mb4_unicode_ci,
  `chronic_conditions` text COLLATE utf8mb4_unicode_ci,
  `special_notes` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loyalty_points` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `registered_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registered_by` int DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `patient_number` (`patient_number`),
  UNIQUE KEY `id_number` (`id_number`),
  KEY `registered_by` (`registered_by`),
  KEY `idx_phone` (`phone_number`),
  KEY `idx_patient_number` (`patient_number`),
  KEY `idx_patient_name` (`first_name`,`last_name`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`registered_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
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
  `sale_id` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_method` enum('Cash','M-Pesa','Card','Bank Transfer','Insurance','Cheque') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `reference_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Completed','Failed','Reversed') COLLATE utf8mb4_unicode_ci DEFAULT 'Completed',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `received_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `payment_number` (`payment_number`),
  KEY `sale_id` (`sale_id`),
  KEY `patient_id` (`patient_id`),
  KEY `received_by` (`received_by`),
  KEY `idx_payment_number` (`payment_number`),
  KEY `idx_payment_date` (`payment_date`),
  KEY `idx_payment_method` (`payment_method`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE SET NULL,
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE SET NULL,
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
  `permission_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`permission_id`),
  UNIQUE KEY `permission_name` (`permission_name`),
  UNIQUE KEY `permission_code` (`permission_code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'View Users','VIEW_USERS','User Management',NULL,'2025-12-15 12:56:19'),(2,'Create Users','CREATE_USERS','User Management',NULL,'2025-12-15 12:56:19'),(3,'Edit Users','EDIT_USERS','User Management',NULL,'2025-12-15 12:56:19'),(4,'Delete Users','DELETE_USERS','User Management',NULL,'2025-12-15 12:56:19'),(5,'View Inventory','VIEW_INVENTORY','Inventory',NULL,'2025-12-15 12:56:19'),(6,'Add Products','ADD_PRODUCTS','Inventory',NULL,'2025-12-15 12:56:19'),(7,'Edit Products','EDIT_PRODUCTS','Inventory',NULL,'2025-12-15 12:56:19'),(8,'Adjust Stock','ADJUST_STOCK','Inventory',NULL,'2025-12-15 12:56:19'),(9,'Make Sales','MAKE_SALES','Sales',NULL,'2025-12-15 12:56:19'),(10,'View Sales','VIEW_SALES','Sales',NULL,'2025-12-15 12:56:19'),(11,'Process Returns','PROCESS_RETURNS','Sales',NULL,'2025-12-15 12:56:19'),(12,'View Prescriptions','VIEW_PRESCRIPTIONS','Prescriptions',NULL,'2025-12-15 12:56:19'),(13,'Validate Prescriptions','VALIDATE_PRESCRIPTIONS','Prescriptions',NULL,'2025-12-15 12:56:19'),(14,'Dispense Prescriptions','DISPENSE_PRESCRIPTIONS','Prescriptions',NULL,'2025-12-15 12:56:19'),(15,'View Purchase Orders','VIEW_PURCHASE_ORDERS','Purchases',NULL,'2025-12-15 12:56:19'),(16,'Create Purchase Orders','CREATE_PURCHASE_ORDERS','Purchases',NULL,'2025-12-15 12:56:19'),(17,'Approve Purchase Orders','APPROVE_PURCHASE_ORDERS','Purchases',NULL,'2025-12-15 12:56:19'),(18,'View Financial Reports','VIEW_FINANCIAL_REPORTS','Financials',NULL,'2025-12-15 12:56:19'),(19,'Post Journal Entries','POST_JOURNAL_ENTRIES','Financials',NULL,'2025-12-15 12:56:19'),(20,'Reconcile Bank Accounts','RECONCILE_BANK','Financials',NULL,'2025-12-15 12:56:19'),(21,'Manage Roles','MANAGE_ROLES','User Management',NULL,'2025-12-15 12:56:19'),(22,'Manage Permissions','MANAGE_PERMISSIONS','User Management',NULL,'2025-12-15 12:56:19'),(23,'View Suppliers','VIEW_SUPPLIERS','Supplier Management',NULL,'2025-12-15 12:56:19'),(24,'Edit supplier details','EDIT_SUPPLIERS','Supplier Management',NULL,'2025-12-15 12:56:19'),(25,'Delete suppliers (with restrictions)','DELETE_SUPPLIERS','Supplier Management',NULL,'2025-12-15 12:56:19'),(26,'Add new suppliers','CREATE_SUPPLIERS','Supplier Management',NULL,'2025-12-15 12:56:19');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription_items`
--

DROP TABLE IF EXISTS `prescription_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_items` (
  `prescription_item_id` int NOT NULL AUTO_INCREMENT,
  `prescription_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity_prescribed` int NOT NULL,
  `quantity_dispensed` int DEFAULT '0',
  `dosage_instructions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_of_administration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_instructions` text COLLATE utf8mb4_unicode_ci,
  `substitution_allowed` tinyint(1) DEFAULT '0',
  `interaction_checked` tinyint(1) DEFAULT '0',
  `interaction_warnings` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`prescription_item_id`),
  KEY `prescription_id` (`prescription_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `prescription_items_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`prescription_id`) ON DELETE CASCADE,
  CONSTRAINT `prescription_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_items`
--

LOCK TABLES `prescription_items` WRITE;
/*!40000 ALTER TABLE `prescription_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `prescription_id` int NOT NULL AUTO_INCREMENT,
  `prescription_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `prescription_date` date NOT NULL,
  `prescription_type` enum('Physical','E-Prescription') COLLATE utf8mb4_unicode_ci DEFAULT 'Physical',
  `prescription_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosis` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Validated','Prepared','Dispensed','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `is_refillable` tinyint(1) DEFAULT '0',
  `refill_count` int DEFAULT '0',
  `max_refills` int DEFAULT '0',
  `valid_until` date DEFAULT NULL,
  `special_instructions` text COLLATE utf8mb4_unicode_ci,
  `clinical_notes` text COLLATE utf8mb4_unicode_ci,
  `received_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `validated_at` timestamp NULL DEFAULT NULL,
  `validated_by` int DEFAULT NULL,
  `prepared_at` timestamp NULL DEFAULT NULL,
  `prepared_by` int DEFAULT NULL,
  `dispensed_at` timestamp NULL DEFAULT NULL,
  `dispensed_by` int DEFAULT NULL,
  PRIMARY KEY (`prescription_id`),
  UNIQUE KEY `prescription_number` (`prescription_number`),
  KEY `doctor_id` (`doctor_id`),
  KEY `validated_by` (`validated_by`),
  KEY `prepared_by` (`prepared_by`),
  KEY `dispensed_by` (`dispensed_by`),
  KEY `idx_prescription_number` (`prescription_number`),
  KEY `idx_status` (`status`),
  KEY `idx_patient` (`patient_id`),
  CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE RESTRICT,
  CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`) ON DELETE SET NULL,
  CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`validated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  CONSTRAINT `prescriptions_ibfk_4` FOREIGN KEY (`prepared_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  CONSTRAINT `prescriptions_ibfk_5` FOREIGN KEY (`dispensed_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`),
  KEY `parent_category_id` (`parent_category_id`),
  CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `product_categories` (`category_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Antibiotics',NULL,'Antimicrobial medications',1,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(2,'Analgesics',NULL,'Pain relief medications',1,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(3,'Antihypertensives',NULL,'Blood pressure medications',1,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(4,'Antihistamines',NULL,'Allergy medications',1,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(5,'Vitamins & Supplements',NULL,'Nutritional supplements',1,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(6,'Medical Supplies',NULL,'Non-drug medical items',1,'2025-12-15 12:57:10','2025-12-15 12:57:10'),(7,'OTC Medicines',NULL,'Over-the-counter medications',1,'2025-12-15 12:57:10','2025-12-15 12:57:10');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
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
  `generic_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `manufacturer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosage_form` enum('Tablet','Capsule','Syrup','Injection','Cream','Ointment','Drops','Inhaler','Other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_of_measure` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pack_size` int DEFAULT '1',
  `reorder_level` int NOT NULL DEFAULT '10',
  `minimum_stock_level` int NOT NULL DEFAULT '5',
  `maximum_stock_level` int DEFAULT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `requires_prescription` tinyint(1) DEFAULT '0',
  `is_controlled` tinyint(1) DEFAULT '0',
  `storage_conditions` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `side_effects` text COLLATE utf8mb4_unicode_ci,
  `contraindications` text COLLATE utf8mb4_unicode_ci,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_code` (`product_code`),
  UNIQUE KEY `barcode` (`barcode`),
  KEY `category_id` (`category_id`),
  KEY `created_by` (`created_by`),
  KEY `idx_product_code` (`product_code`),
  KEY `idx_product_name` (`product_name`),
  KEY `idx_barcode` (`barcode`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`category_id`) ON DELETE SET NULL,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'SN0001','Amoxil','Amoxicillin',1,'GlaxoSmithKline (GSK)','Syrup','250ml','Bottle',1,10,5,NULL,250.00,200.00,0,0,'','','','',NULL,NULL,1,'2025-12-19 10:17:31','2025-12-19 10:17:31',NULL),(2,'SN0002','Zithromax','Azithromycin',1,'Pfizer','Syrup','250','Bottle',1,10,5,NULL,400.00,300.00,1,0,'','','','',NULL,NULL,1,'2025-12-19 10:23:47','2025-12-19 10:23:47',NULL),(3,'SN0003','Cipro','Ciprofloxacin',1,'Bayer','Syrup','250ml','Bottle',1,10,5,NULL,650.00,500.00,1,0,'','','','',NULL,NULL,1,'2025-12-19 10:27:33','2025-12-19 10:27:33',NULL),(4,'SN0004','Keflex','Cephalexin',1,'Shionogi','Syrup','250ml','Bottle',1,10,5,NULL,150.00,100.00,1,1,'','','','',NULL,NULL,1,'2025-12-19 10:30:11','2025-12-19 10:30:11',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_items`
--

DROP TABLE IF EXISTS `purchase_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity_ordered` int NOT NULL,
  `quantity_received` int DEFAULT '0',
  `unit_cost` decimal(10,2) NOT NULL,
  `tax_rate` decimal(5,2) DEFAULT '0.00',
  `discount_rate` decimal(5,2) DEFAULT '0.00',
  `line_total` decimal(12,2) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `purchase_order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `purchase_orders` (`po_id`) ON DELETE CASCADE,
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
  `po_id` int NOT NULL AUTO_INCREMENT,
  `po_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requisition_id` int DEFAULT NULL,
  `supplier_id` int NOT NULL,
  `order_date` date NOT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `status` enum('Draft','Sent','Acknowledged','Partially Received','Received','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `subtotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(12,2) DEFAULT '0.00',
  `discount_amount` decimal(12,2) DEFAULT '0.00',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `payment_terms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci,
  `special_instructions` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`po_id`),
  UNIQUE KEY `order_number` (`po_number`),
  KEY `requisition_id` (`requisition_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `created_by` (`created_by`),
  KEY `approved_by` (`approved_by`),
  KEY `idx_order_number` (`po_number`),
  KEY `idx_status` (`status`),
  CONSTRAINT `purchase_orders_ibfk_1` FOREIGN KEY (`requisition_id`) REFERENCES `purchase_requisitions` (`requisition_id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_orders_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE RESTRICT,
  CONSTRAINT `purchase_orders_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `purchase_orders_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
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
-- Table structure for table `purchase_requisition_items`
--

DROP TABLE IF EXISTS `purchase_requisition_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_requisition_items` (
  `requisition_item_id` int NOT NULL AUTO_INCREMENT,
  `requisition_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity_requested` int NOT NULL,
  `estimated_unit_cost` decimal(10,2) DEFAULT NULL,
  `total_cost` decimal(12,2) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`requisition_item_id`),
  KEY `requisition_id` (`requisition_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `purchase_requisition_items_ibfk_1` FOREIGN KEY (`requisition_id`) REFERENCES `purchase_requisitions` (`requisition_id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_requisition_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_requisition_items`
--

LOCK TABLES `purchase_requisition_items` WRITE;
/*!40000 ALTER TABLE `purchase_requisition_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_requisition_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_requisitions`
--

DROP TABLE IF EXISTS `purchase_requisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_requisitions` (
  `requisition_id` int NOT NULL AUTO_INCREMENT,
  `requisition_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requisition_date` date NOT NULL,
  `required_by_date` date DEFAULT NULL,
  `status` enum('Draft','Pending Approval','Approved','Rejected','Completed','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `total_amount` decimal(12,2) DEFAULT '0.00',
  `requested_by` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`requisition_id`),
  UNIQUE KEY `requisition_number` (`requisition_number`),
  KEY `requested_by` (`requested_by`),
  KEY `approved_by` (`approved_by`),
  KEY `idx_status` (`status`),
  KEY `idx_requisition_number` (`requisition_number`),
  CONSTRAINT `purchase_requisitions_ibfk_1` FOREIGN KEY (`requested_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT,
  CONSTRAINT `purchase_requisitions_ibfk_2` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_requisitions`
--

LOCK TABLES `purchase_requisitions` WRITE;
/*!40000 ALTER TABLE `purchase_requisitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_requisitions` ENABLE KEYS */;
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
  `granted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `granted_by` int DEFAULT NULL,
  PRIMARY KEY (`role_permission_id`),
  UNIQUE KEY `unique_role_permission` (`role_id`,`permission_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (39,1,19,'2025-12-18 10:09:38',1),(40,1,20,'2025-12-18 10:09:38',1),(41,1,18,'2025-12-18 10:09:38',1),(42,1,6,'2025-12-18 10:09:38',1),(43,1,8,'2025-12-18 10:09:38',1),(44,1,7,'2025-12-18 10:09:38',1),(45,1,5,'2025-12-18 10:09:38',1),(46,1,14,'2025-12-18 10:09:38',1),(47,1,13,'2025-12-18 10:09:38',1),(48,1,12,'2025-12-18 10:09:38',1),(49,1,17,'2025-12-18 10:09:38',1),(50,1,16,'2025-12-18 10:09:38',1),(51,1,15,'2025-12-18 10:09:38',1),(52,1,9,'2025-12-18 10:09:38',1),(53,1,11,'2025-12-18 10:09:38',1),(54,1,10,'2025-12-18 10:09:38',1),(55,1,2,'2025-12-18 10:09:38',1),(56,1,4,'2025-12-18 10:09:38',1),(57,1,3,'2025-12-18 10:09:38',1),(58,1,22,'2025-12-18 10:09:38',1),(59,1,21,'2025-12-18 10:09:38',1),(60,1,1,'2025-12-18 10:09:38',1),(61,2,6,'2025-12-18 10:10:35',1),(62,2,8,'2025-12-18 10:10:35',1),(63,2,7,'2025-12-18 10:10:35',1),(64,2,5,'2025-12-18 10:10:35',1),(65,2,9,'2025-12-18 10:10:35',1),(66,2,11,'2025-12-18 10:10:35',1),(67,2,10,'2025-12-18 10:10:35',1),(68,3,19,'2025-12-18 10:11:26',1),(69,3,20,'2025-12-18 10:11:26',1),(70,3,18,'2025-12-18 10:11:26',1),(71,3,17,'2025-12-18 10:11:26',1),(72,3,16,'2025-12-18 10:11:26',1),(73,3,15,'2025-12-18 10:11:26',1),(74,1,23,'2025-12-18 10:11:26',1),(75,1,24,'2025-12-18 10:11:26',1),(76,1,25,'2025-12-18 10:11:26',1),(77,1,26,'2025-12-18 10:11:26',1);
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
  `role_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','Full system access and configuration',1,'2025-12-15 12:56:19','2025-12-15 12:56:19'),(2,'Pharmacist','Manage prescriptions, inventory, and dispensing',1,'2025-12-15 12:56:19','2025-12-15 12:56:19'),(3,'Cashier','Handle sales and payments',1,'2025-12-15 12:56:19','2025-12-15 12:56:19'),(4,'Store Manager','Manage inventory and suppliers',1,'2025-12-15 12:56:19','2025-12-15 12:56:19'),(5,'Accountant','Manage financial records and reports',1,'2025-12-15 12:56:19','2025-12-15 12:56:19'),(6,'Data Entry Clerk','Basic data entry operations',1,'2025-12-15 12:56:19','2025-12-15 12:56:19');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_items`
--

DROP TABLE IF EXISTS `sale_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_items` (
  `sale_item_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `product_id` int NOT NULL,
  `batch_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount_rate` decimal(5,2) DEFAULT '0.00',
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `tax_rate` decimal(5,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `line_total` decimal(12,2) NOT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `profit` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`sale_item_id`),
  KEY `sale_id` (`sale_id`),
  KEY `product_id` (`product_id`),
  KEY `batch_id` (`batch_id`),
  CONSTRAINT `sale_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE,
  CONSTRAINT `sale_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT,
  CONSTRAINT `sale_items_ibfk_3` FOREIGN KEY (`batch_id`) REFERENCES `stock_batches` (`batch_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_items`
--

LOCK TABLES `sale_items` WRITE;
/*!40000 ALTER TABLE `sale_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_return_items`
--

DROP TABLE IF EXISTS `sale_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_return_items` (
  `return_item_id` int NOT NULL AUTO_INCREMENT,
  `return_id` int NOT NULL,
  `sale_item_id` int NOT NULL,
  `product_id` int NOT NULL,
  `batch_id` int DEFAULT NULL,
  `quantity_returned` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `line_total` decimal(12,2) NOT NULL,
  `condition_status` enum('Good','Damaged','Expired') COLLATE utf8mb4_unicode_ci DEFAULT 'Good',
  `restock` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`return_item_id`),
  KEY `return_id` (`return_id`),
  KEY `sale_item_id` (`sale_item_id`),
  KEY `product_id` (`product_id`),
  KEY `batch_id` (`batch_id`),
  CONSTRAINT `sale_return_items_ibfk_1` FOREIGN KEY (`return_id`) REFERENCES `sale_returns` (`return_id`) ON DELETE CASCADE,
  CONSTRAINT `sale_return_items_ibfk_2` FOREIGN KEY (`sale_item_id`) REFERENCES `sale_items` (`sale_item_id`) ON DELETE RESTRICT,
  CONSTRAINT `sale_return_items_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT,
  CONSTRAINT `sale_return_items_ibfk_4` FOREIGN KEY (`batch_id`) REFERENCES `stock_batches` (`batch_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_return_items`
--

LOCK TABLES `sale_return_items` WRITE;
/*!40000 ALTER TABLE `sale_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_returns`
--

DROP TABLE IF EXISTS `sale_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_returns` (
  `return_id` int NOT NULL AUTO_INCREMENT,
  `return_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int NOT NULL,
  `return_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `return_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund_amount` decimal(12,2) NOT NULL,
  `refund_method` enum('Cash','M-Pesa','Card','Bank Transfer','Credit Note') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Approved','Completed','Rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `approved_by` int DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `processed_by` int NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_id`),
  UNIQUE KEY `return_number` (`return_number`),
  KEY `sale_id` (`sale_id`),
  KEY `approved_by` (`approved_by`),
  KEY `processed_by` (`processed_by`),
  KEY `idx_return_number` (`return_number`),
  CONSTRAINT `sale_returns_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE RESTRICT,
  CONSTRAINT `sale_returns_ibfk_2` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  CONSTRAINT `sale_returns_ibfk_3` FOREIGN KEY (`processed_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_returns`
--

LOCK TABLES `sale_returns` WRITE;
/*!40000 ALTER TABLE `sale_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `sale_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `patient_id` int DEFAULT NULL,
  `prescription_id` int DEFAULT NULL,
  `sale_type` enum('Walk-in','Prescription','Insurance') COLLATE utf8mb4_unicode_ci DEFAULT 'Walk-in',
  `subtotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(12,2) DEFAULT '0.00',
  `discount_amount` decimal(12,2) DEFAULT '0.00',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `amount_paid` decimal(12,2) NOT NULL DEFAULT '0.00',
  `change_amount` decimal(12,2) DEFAULT '0.00',
  `payment_status` enum('Pending','Paid','Partial','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `insurance_claim_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_approved_amount` decimal(12,2) DEFAULT NULL,
  `patient_copay` decimal(12,2) DEFAULT NULL,
  `status` enum('Draft','Completed','Cancelled','Returned') COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `cashier_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sale_id`),
  UNIQUE KEY `sale_number` (`sale_number`),
  KEY `patient_id` (`patient_id`),
  KEY `prescription_id` (`prescription_id`),
  KEY `idx_sale_number` (`sale_number`),
  KEY `idx_sale_date` (`sale_date`),
  KEY `idx_status` (`status`),
  KEY `sales_ibfk_3` (`cashier_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE SET NULL,
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`prescription_id`) ON DELETE SET NULL,
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_reports`
--

DROP TABLE IF EXISTS `saved_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_reports` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `report_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parameters` json DEFAULT NULL,
  `created_by` int NOT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `saved_reports_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_reports`
--

LOCK TABLES `saved_reports` WRITE;
/*!40000 ALTER TABLE `saved_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustments`
--

DROP TABLE IF EXISTS `stock_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_adjustments` (
  `adjustment_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `batch_id` int DEFAULT NULL,
  `adjustment_type` enum('Increase','Decrease') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_change` int NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `approved_by` int DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `adjustment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `adjusted_by` int DEFAULT NULL,
  PRIMARY KEY (`adjustment_id`),
  KEY `product_id` (`product_id`),
  KEY `batch_id` (`batch_id`),
  KEY `adjusted_by` (`adjusted_by`),
  KEY `approved_by` (`approved_by`),
  CONSTRAINT `stock_adjustments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `stock_adjustments_ibfk_2` FOREIGN KEY (`batch_id`) REFERENCES `stock_batches` (`batch_id`) ON DELETE SET NULL,
  CONSTRAINT `stock_adjustments_ibfk_3` FOREIGN KEY (`adjusted_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  CONSTRAINT `stock_adjustments_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustments`
--

LOCK TABLES `stock_adjustments` WRITE;
/*!40000 ALTER TABLE `stock_adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_alerts`
--

DROP TABLE IF EXISTS `stock_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_alerts` (
  `alert_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `alert_type` enum('Low Stock','Out of Stock','Expiring Soon','Expired') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alert_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_quantity` int DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_resolved` tinyint(1) DEFAULT '0',
  `resolved_at` timestamp NULL DEFAULT NULL,
  `resolved_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`alert_id`),
  KEY `product_id` (`product_id`),
  KEY `resolved_by` (`resolved_by`),
  KEY `idx_alert_type` (`alert_type`),
  KEY `idx_resolved` (`is_resolved`),
  CONSTRAINT `stock_alerts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `stock_alerts_ibfk_2` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_alerts`
--

LOCK TABLES `stock_alerts` WRITE;
/*!40000 ALTER TABLE `stock_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_batches`
--

DROP TABLE IF EXISTS `stock_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_batches` (
  `batch_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `batch_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_received` int NOT NULL,
  `quantity_available` int NOT NULL,
  `cost_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `manufacturing_date` date DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `purchase_order_id` int DEFAULT NULL,
  `received_date` date NOT NULL,
  `received_by` int DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Expired','Recalled','Depleted') COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`batch_id`),
  UNIQUE KEY `unique_product_batch` (`product_id`,`batch_number`),
  KEY `received_by` (`received_by`),
  KEY `idx_expiry_date` (`expiry_date`),
  KEY `idx_status` (`status`),
  CONSTRAINT `stock_batches_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `stock_batches_ibfk_2` FOREIGN KEY (`received_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_batches`
--

LOCK TABLES `stock_batches` WRITE;
/*!40000 ALTER TABLE `stock_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_movements`
--

DROP TABLE IF EXISTS `stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_movements` (
  `movement_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `batch_id` int DEFAULT NULL,
  `movement_type` enum('Purchase','Sale','Return','Adjustment','Transfer','Waste','Expired') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `previous_quantity` int NOT NULL,
  `new_quantity` int NOT NULL,
  `reference_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `movement_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` int DEFAULT NULL,
  PRIMARY KEY (`movement_id`),
  KEY `product_id` (`product_id`),
  KEY `batch_id` (`batch_id`),
  KEY `recorded_by` (`recorded_by`),
  KEY `idx_movement_type` (`movement_type`),
  KEY `idx_movement_date` (`movement_date`),
  CONSTRAINT `stock_movements_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `stock_movements_ibfk_2` FOREIGN KEY (`batch_id`) REFERENCES `stock_batches` (`batch_id`) ON DELETE SET NULL,
  CONSTRAINT `stock_movements_ibfk_3` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_movements`
--

LOCK TABLES `stock_movements` WRITE;
/*!40000 ALTER TABLE `stock_movements` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_invoices`
--

DROP TABLE IF EXISTS `supplier_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_invoices` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int NOT NULL,
  `grn_id` int DEFAULT NULL,
  `po_id` int DEFAULT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `tax_amount` decimal(12,2) DEFAULT '0.00',
  `discount_amount` decimal(12,2) DEFAULT '0.00',
  `total_amount` decimal(12,2) NOT NULL,
  `paid_amount` decimal(12,2) DEFAULT '0.00',
  `balance` decimal(12,2) NOT NULL,
  `payment_status` enum('Pending','Partially Paid','Paid','Overdue','Cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `payment_terms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `supplier_id` (`supplier_id`),
  KEY `grn_id` (`grn_id`),
  KEY `created_by` (`created_by`),
  KEY `idx_invoice_number` (`invoice_number`),
  KEY `idx_status` (`payment_status`),
  KEY `idx_due_date` (`due_date`),
  KEY `supplier_invoices_ibfk_3` (`po_id`),
  CONSTRAINT `supplier_invoices_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE RESTRICT,
  CONSTRAINT `supplier_invoices_ibfk_2` FOREIGN KEY (`grn_id`) REFERENCES `goods_received_notes` (`grn_id`) ON DELETE SET NULL,
  CONSTRAINT `supplier_invoices_ibfk_3` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`) ON DELETE SET NULL,
  CONSTRAINT `supplier_invoices_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_invoices`
--

LOCK TABLES `supplier_invoices` WRITE;
/*!40000 ALTER TABLE `supplier_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternate_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `county` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` decimal(12,2) DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT '0.0',
  `is_active` tinyint(1) DEFAULT '1',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `registered_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registered_by` int DEFAULT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `supplier_code` (`supplier_code`),
  KEY `registered_by` (`registered_by`),
  KEY `idx_supplier_code` (`supplier_code`),
  CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`registered_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'SUP0001','Ndegwa and Sons LTD','Samuel Ndegwa','ndegwa@gmail.com','0726159307',NULL,'Upper Hill',NULL,'A000000R','Net 30',1000000.00,'Equity Bank','1234567890',NULL,0.0,1,'','2025-12-20 09:38:39','2025-12-20 09:38:39',NULL,'Nairobi','Kenya');
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
  `setting_category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `setting_key` (`setting_key`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `system_settings_ibfk_1` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_settings`
--

LOCK TABLES `system_settings` WRITE;
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
INSERT INTO `system_settings` VALUES (1,'company_name','My Chemist','General','Company/Pharmacy Name','2025-12-15 12:57:10',NULL),(2,'company_address','','General','Physical Address','2025-12-15 12:57:10',NULL),(3,'company_phone','','General','Contact Phone Number','2025-12-15 12:57:10',NULL),(4,'company_email','','General','Contact Email','2025-12-15 12:57:10',NULL),(5,'tax_rate','16','Financial','Default VAT Rate (%)','2025-12-15 12:57:10',NULL),(6,'currency','KES','Financial','Default Currency','2025-12-15 12:57:10',NULL),(7,'low_stock_days','30','Inventory','Days before expiry to trigger alert','2025-12-15 12:57:10',NULL),(8,'receipt_footer','Thank you for your business!','Sales','Receipt Footer Message','2025-12-15 12:57:10',NULL),(9,'allow_negative_stock','0','Inventory','Allow sales when stock is zero','2025-12-15 12:57:10',NULL),(10,'enable_prescription_validation','1','Prescriptions','Require prescription validation','2025-12-15 12:57:10',NULL);
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `till_sessions`
--

DROP TABLE IF EXISTS `till_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `till_sessions` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `session_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `opening_balance` decimal(12,2) NOT NULL,
  `closing_balance` decimal(12,2) DEFAULT NULL,
  `expected_balance` decimal(12,2) DEFAULT NULL,
  `variance` decimal(12,2) DEFAULT NULL,
  `total_sales` decimal(12,2) DEFAULT '0.00',
  `total_cash` decimal(12,2) DEFAULT '0.00',
  `total_mpesa` decimal(12,2) DEFAULT '0.00',
  `total_card` decimal(12,2) DEFAULT '0.00',
  `total_other` decimal(12,2) DEFAULT '0.00',
  `status` enum('Open','Closed','Reconciled') COLLATE utf8mb4_unicode_ci DEFAULT 'Open',
  `opened_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `closed_at` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_number` (`session_number`),
  KEY `user_id` (`user_id`),
  KEY `idx_session_number` (`session_number`),
  KEY `idx_status` (`status`),
  CONSTRAINT `till_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `till_sessions`
--

LOCK TABLES `till_sessions` WRITE;
/*!40000 ALTER TABLE `till_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `till_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sessions`
--

DROP TABLE IF EXISTS `user_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_sessions` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `session_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `login_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_token` (`session_token`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sessions`
--

LOCK TABLES `user_sessions` WRITE;
/*!40000 ALTER TABLE `user_sessions` DISABLE KEYS */;
INSERT INTO `user_sessions` VALUES (1,1,'4a55a42c0b3cc67cb3c0765d269caa95b826839bf44540b59e7a01e32a76b88f','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 09:44:40','2025-12-17 12:53:15','2025-12-17 11:44:40',0),(2,1,'9ae319a57489eb59da545b7f8a93f3693737f6ad2911449429e1dca6c4fad2aa','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:11:00','2025-12-17 12:53:15','2025-12-17 14:11:00',0),(3,1,'be2af338b96dc750412c90c05aee2ebbc3176323b3aa396812de7e7f4e52614a','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-17 12:14:42','2025-12-17 12:53:15','2025-12-17 14:14:42',0),(4,1,'6c742afdf1c66a1bf63eeccc4fc1dd34b64744fe772e1f3755d3699ae5d45ae3','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0','2025-12-17 12:43:34','2025-12-17 12:53:15','2025-12-17 14:43:34',0),(5,1,'4d1f69edaa142fe9a72dad3b3a115943d15f0cf87ef5e24edf1bf6b1b5976f8f','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:53:26','2025-12-17 12:53:38','2025-12-17 14:53:26',0),(6,1,'062043cc72e5815a09abea6d40a5d2bf2fe7182ddb2ee6309ee2cf7f10569c47','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-17 12:53:43','2025-12-17 13:01:48','2025-12-17 14:53:43',0),(7,1,'7e3a5a51976a0ce4d60b83290be020517fabaaf19d2098909fef340de849f158','::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-17 13:01:51','2025-12-17 13:11:04','2025-12-17 15:01:51',0),(8,1,'7409c95cb66300cf5e13525defe7c2c84aa09a1dbd4d90b1ec06c2ad97e9d6f8','::1','Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36','2025-12-17 13:11:07','2025-12-18 10:05:06','2025-12-17 15:11:07',0),(9,1,'8adad5168b6b19ebb177c181ab44da00cfa17756f445bef5219c4f395645cf17','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 09:13:25','2025-12-18 10:05:06','2025-12-18 11:13:25',0),(10,1,'aba8fdbef4cf3e00a34fb0336d114b2641ab0b708b1014e28cc6e61447edf32a','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 09:57:11','2025-12-18 10:05:06','2025-12-18 11:57:11',0),(11,1,'18ba4dedb5d498ce97793cbf4c914ff883ea00f4fac9433a7b38cab77734bac0','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:05:09','2025-12-18 10:07:46','2025-12-18 12:05:09',0),(12,1,'2589cd554288942db568eab5545057bec7d0d67e2995bb14cd933c44d438a5de','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:07:49','2025-12-18 10:09:00','2025-12-18 12:07:49',0),(13,1,'5081650428d6ba4c655bd983bdabfbad7cf322c20e83afd613caf2c53c2286b6','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:02','2025-12-18 10:09:42','2025-12-18 12:09:02',0),(14,1,'aa06492f9facd5f8a2c0521aca0cfe8a5cb9e6810ec8a0dcf12bf5f4b4f16bfe','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-18 10:09:45','2025-12-20 09:25:10','2025-12-18 12:09:45',0),(15,1,'655fb57e36a9b24267f67ee915ed38c20669b50df14f48a6e6a1870e84c5b2e6','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-19 09:36:35','2025-12-20 09:25:10','2025-12-19 11:36:35',0),(16,1,'a0135d8dbd2c33a00a975053de50f3fbf985b572fbfd8216db6771a5565b5923','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-20 07:52:00','2025-12-20 09:25:10','2025-12-20 09:52:00',0),(17,1,'6ba04a29b1536f6d64becb52d8fb34b85549a904e48a2e19cf8e69622df5c49f','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','2025-12-20 09:25:13',NULL,'2025-12-20 11:25:13',1);
/*!40000 ALTER TABLE `user_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `last_login` timestamp NULL DEFAULT NULL,
  `failed_login_attempts` int DEFAULT '0',
  `account_locked_until` timestamp NULL DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `must_change_password` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `id_number` (`id_number`),
  KEY `role_id` (`role_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','admin@chemist.com','$2y$12$Qa71cVpTvAFvKtixN/87M.pfmK2XU.LR.LfBgCUUiTPy0GHhDvhYS','System Administrator','0700000000',NULL,NULL,1,'2025-12-20 09:25:13',0,NULL,'2025-12-16 10:26:57',0,'2025-12-15 12:57:10','2025-12-20 09:25:13',NULL),(2,3,'samie','sam@gmail.com','$2y$12$daqZM.ADV39kBcHsZqqvYuCWOQo8RjdTyqAZ.z/Xu6AdEsrLBa2bi','Samuel Ndegwa','0726159307',NULL,NULL,1,NULL,0,NULL,'2025-12-18 09:59:38',1,'2025-12-18 09:59:38','2025-12-18 09:59:38',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_current_stock`
--

DROP TABLE IF EXISTS `vw_current_stock`;
/*!50001 DROP VIEW IF EXISTS `vw_current_stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_current_stock` AS SELECT 
 1 AS `product_id`,
 1 AS `product_code`,
 1 AS `product_name`,
 1 AS `category_id`,
 1 AS `category_name`,
 1 AS `unit_of_measure`,
 1 AS `total_quantity`,
 1 AS `reorder_level`,
 1 AS `minimum_stock_level`,
 1 AS `selling_price`,
 1 AS `stock_status`,
 1 AS `nearest_expiry_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_expiring_products`
--

DROP TABLE IF EXISTS `vw_expiring_products`;
/*!50001 DROP VIEW IF EXISTS `vw_expiring_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_expiring_products` AS SELECT 
 1 AS `product_id`,
 1 AS `product_code`,
 1 AS `product_name`,
 1 AS `batch_number`,
 1 AS `quantity_available`,
 1 AS `expiry_date`,
 1 AS `days_to_expiry`,
 1 AS `expiry_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_current_stock`
--

/*!50001 DROP VIEW IF EXISTS `vw_current_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`devuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_current_stock` AS select `p`.`product_id` AS `product_id`,`p`.`product_code` AS `product_code`,`p`.`product_name` AS `product_name`,`p`.`category_id` AS `category_id`,`pc`.`category_name` AS `category_name`,`p`.`unit_of_measure` AS `unit_of_measure`,coalesce(sum(`sb`.`quantity_available`),0) AS `total_quantity`,`p`.`reorder_level` AS `reorder_level`,`p`.`minimum_stock_level` AS `minimum_stock_level`,`p`.`selling_price` AS `selling_price`,(case when (coalesce(sum(`sb`.`quantity_available`),0) = 0) then 'Out of Stock' when (coalesce(sum(`sb`.`quantity_available`),0) <= `p`.`reorder_level`) then 'Low Stock' else 'In Stock' end) AS `stock_status`,min(`sb`.`expiry_date`) AS `nearest_expiry_date` from ((`products` `p` left join `product_categories` `pc` on((`p`.`category_id` = `pc`.`category_id`))) left join `stock_batches` `sb` on(((`p`.`product_id` = `sb`.`product_id`) and (`sb`.`status` = 'Active') and (`sb`.`quantity_available` > 0)))) where (`p`.`is_active` = 1) group by `p`.`product_id`,`p`.`product_code`,`p`.`product_name`,`p`.`category_id`,`pc`.`category_name`,`p`.`unit_of_measure`,`p`.`reorder_level`,`p`.`minimum_stock_level`,`p`.`selling_price` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_expiring_products`
--

/*!50001 DROP VIEW IF EXISTS `vw_expiring_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`devuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_expiring_products` AS select `p`.`product_id` AS `product_id`,`p`.`product_code` AS `product_code`,`p`.`product_name` AS `product_name`,`sb`.`batch_number` AS `batch_number`,`sb`.`quantity_available` AS `quantity_available`,`sb`.`expiry_date` AS `expiry_date`,(to_days(`sb`.`expiry_date`) - to_days(curdate())) AS `days_to_expiry`,(case when (`sb`.`expiry_date` < curdate()) then 'Expired' when ((to_days(`sb`.`expiry_date`) - to_days(curdate())) <= 30) then 'Critical' when ((to_days(`sb`.`expiry_date`) - to_days(curdate())) <= 60) then 'Warning' else 'Watch' end) AS `expiry_status` from (`products` `p` join `stock_batches` `sb` on((`p`.`product_id` = `sb`.`product_id`))) where ((`sb`.`status` = 'Active') and (`sb`.`quantity_available` > 0) and (`sb`.`expiry_date` <= (curdate() + interval 90 day))) order by `sb`.`expiry_date` */;
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

-- Dump completed on 2025-12-22  9:04:55
