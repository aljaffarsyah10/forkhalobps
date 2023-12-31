-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: halobps
-- ------------------------------------------------------
-- Server version	5.5.5-10.10.2-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `glpi_slas`
--

DROP TABLE IF EXISTS `glpi_slas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `number_time` int(11) NOT NULL,
  `use_ticket_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `definition_time` varchar(255) DEFAULT NULL,
  `end_of_working_day` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `slms_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `calendars_id` (`calendars_id`),
  KEY `slms_id` (`slms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slas`
--

LOCK TABLES `glpi_slas` WRITE;
/*!40000 ALTER TABLE `glpi_slas` DISABLE KEYS */;
INSERT INTO `glpi_slas` VALUES (6,'TTO Ticket',0,0,1,'',2,0,2,'2022-11-26 00:59:46','hour',0,'2022-11-26 00:59:29',3),(7,'TTR 2 HARI',0,0,0,'',2,0,2,'2022-11-26 01:05:10','day',1,'2022-11-26 01:01:12',3),(8,'TTR 4 HARI',0,0,0,'',4,0,2,'2022-11-26 01:04:53','day',1,'2022-11-26 01:01:38',3),(9,'TTR 8 HARI',0,0,0,'',8,0,2,'2022-11-26 01:05:33','day',1,'2022-11-26 01:04:46',3),(10,'TTR 15 HARI',0,0,0,'',15,0,2,'2022-11-26 01:06:17','day',1,'2022-11-26 01:06:17',3),(11,'TTR 7 HARI',0,0,0,'',7,0,2,'2022-11-26 01:12:18','day',1,'2022-11-26 01:12:18',3),(12,'TTR 10 HARI',0,0,0,'',10,0,2,'2022-11-26 01:12:33','day',1,'2022-11-26 01:12:33',3),(13,'TTR 14 HARI',0,0,0,'',14,0,2,'2022-11-26 01:13:04','day',1,'2022-11-26 01:13:04',3),(14,'TTR 5 HARI',0,0,0,'',4,0,2,'2022-11-26 01:13:26','day',1,'2022-11-26 01:13:26',3),(15,'TTR 3 HARI',0,0,0,'',4,0,2,'2022-11-26 01:13:48','day',1,'2022-11-26 01:13:48',3),(16,'TTR 30 HARI',0,0,0,'',30,0,2,'2022-11-26 01:14:10','day',1,'2022-11-26 01:14:10',3),(17,'SLA 90 HARI',0,0,0,'',90,0,2,'2022-11-26 01:14:35','day',1,'2022-11-26 01:14:35',3);
/*!40000 ALTER TABLE `glpi_slas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slms`
--

DROP TABLE IF EXISTS `glpi_slms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `use_ticket_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `calendars_id` (`calendars_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slms`
--

LOCK TABLES `glpi_slms` WRITE;
/*!40000 ALTER TABLE `glpi_slms` DISABLE KEYS */;
INSERT INTO `glpi_slms` VALUES (3,'SLA HALOBPS',0,0,'',0,2,'2022-11-26 00:54:41','2022-11-26 00:54:41');
/*!40000 ALTER TABLE `glpi_slms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 15:15:55
