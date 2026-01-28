CREATE DATABASE  IF NOT EXISTS `personalfinance` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `personalfinance`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: personalfinance
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateprocess` datetime DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'2026-01-18 02:19:53','update_bills','1','Se ha actualizado un registro en la tabla bills'),(2,'2026-01-18 02:20:43','update_bills','1','Se ha actualizado un registro en la tabla bills'),(3,'2026-01-18 15:49:29','update_bills','1','Se ha actualizado un registro en la tabla bills'),(4,'2026-01-18 15:49:37','update_bills','1','Se ha actualizado un registro en la tabla bills'),(5,'2026-01-18 15:49:46','update_bills','1','Se ha actualizado un registro en la tabla bills'),(6,'2026-01-18 15:49:58','update_bills','1','Se ha actualizado un registro en la tabla bills'),(7,'2026-01-18 15:50:04','update_bills','1','Se ha actualizado un registro en la tabla bills'),(8,'2026-01-18 15:50:14','update_bills','1','Se ha actualizado un registro en la tabla bills'),(9,'2026-01-19 21:27:27','update_bills','1','Se ha actualizado un registro en la tabla bills'),(10,'2026-01-22 19:29:22','update_bills','1','Se ha actualizado un registro en la tabla bills'),(11,'2026-01-22 19:35:00','update_bills','1','Se ha actualizado un registro en la tabla bills'),(12,'2026-01-22 20:40:08','update_bills','1','Se ha actualizado un registro en la tabla bills'),(13,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(14,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(15,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(16,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(17,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(18,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(19,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(20,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(21,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(22,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(23,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(24,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(25,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(26,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(27,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(28,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(29,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(30,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(31,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(32,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(33,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(34,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(35,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(36,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(37,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(38,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(39,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(40,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(41,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(42,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(43,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(44,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(45,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(46,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(47,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(48,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(49,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(50,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(51,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(52,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(53,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(54,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(55,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(56,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(57,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(58,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(59,'2026-01-22 20:43:15','update_bills','1','Se ha actualizado un registro en la tabla bills'),(60,'2026-01-23 13:15:17','update_bills','1','Se ha actualizado un registro en la tabla bills'),(61,'2026-01-26 21:39:07','update_bills','1','Se ha actualizado un registro en la tabla bills'),(62,'2026-01-26 21:43:25','update_bills','1','Se ha actualizado un registro en la tabla bills'),(63,'2026-01-26 21:44:11','update_bills','1','Se ha actualizado un registro en la tabla bills'),(64,'2026-01-26 21:44:20','update_bills','1','Se ha actualizado un registro en la tabla bills');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-28 19:22:34
