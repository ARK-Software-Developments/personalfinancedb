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
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notificationdate` datetime DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `messaje` varchar(255) DEFAULT NULL,
  `to` varchar(200) DEFAULT NULL,
  `app` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'2026-01-18 23:54:04','Vencimiento Resumen TC VISA RI','Notificación','El resumen de la Tarjeta, vence el 10/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),(2,'2026-01-17 00:11:39','Vencimiento Resumen TC AMERICAN EXPRESS RIO','Notificación','El resumen de la Tarjeta, vence el 13/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),(3,'2026-01-11 00:11:39','Vencimiento Resumen TC VISA NX','Notificación','El resumen de la Tarjeta, vence el 10/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),(4,'2026-01-11 00:11:39','Vencimiento Resumen TC MASTER CARD NX','Notificación','El resumen de la Tarjeta, vence el 10/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),(5,'2026-01-11 00:11:39','Vencimiento Resumen TC VISA VIRTUAL NX','Notificación','El resumen de la Tarjeta, vence el 10/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),(6,'2026-01-21 00:00:00','Vencimiento Linea Personal','Notificacion','El resumen de Servicio Personal Plan 8GB, vence el 21/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),(7,'2026-01-17 00:00:00','Vencimiento Suscripcion YouTube','Notificacion','La suscripción de YouTube Premiun, vence el 17/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),(8,'2026-01-24 00:00:00','Vencimiento Suscripcion LinkedIn','Notificacion','La suscripción de LinkedIn, vence el 24/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),(9,'2026-01-23 00:00:00','Vencimiento Suscripcion Spotify','Notificacion','La suscripción de Spotify Plan Familiar, vence el 23/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-28 19:22:35
