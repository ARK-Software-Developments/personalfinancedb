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
-- Table structure for table `investmentselements`
--

DROP TABLE IF EXISTS `investmentselements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investmentselements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `investmentid` int NOT NULL,
  `quantity` int NOT NULL,
  `unitamount` decimal(10,2) NOT NULL,
  `taxamount` decimal(10,2) NOT NULL,
  `operationdate` datetime NOT NULL,
  `operationnumber` varchar(45) NOT NULL,
  `investmentamount` decimal(10,2) NOT NULL,
  `resultingamount` decimal(10,2) NOT NULL,
  `state` varchar(45) DEFAULT NULL,
  `investmentinstrumentsid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `investmentselements_investments_FK` (`investmentid`),
  KEY `investmentselements_investmentinstruments_FK` (`investmentinstrumentsid`),
  CONSTRAINT `investmentselements_investmentinstruments_FK` FOREIGN KEY (`investmentinstrumentsid`) REFERENCES `investmentinstruments` (`id`),
  CONSTRAINT `investmentselements_investments_FK` FOREIGN KEY (`investmentid`) REFERENCES `investments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-02 23:32:16
