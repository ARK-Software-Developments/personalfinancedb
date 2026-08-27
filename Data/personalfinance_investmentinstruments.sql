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
-- Dumping data for table `investmentinstruments`
--

LOCK TABLES `investmentinstruments` WRITE;
/*!40000 ALTER TABLE `investmentinstruments` DISABLE KEYS */;
INSERT INTO `investmentinstruments` VALUES (1,'INVERSION RAPIDA','IR',4),(2,'FONDO 24/7','FDO247',4),(3,'IOL Cash Management','IOLCAMA',4),(4,'IOL Portafolio Potenciado','IOLPORA',4),(5,'Premier Renta Variable','PRTAVAB',4),(6,'Grupo Financiero Valores','VALO',1),(7,'Ternium Argentina Sa','TXAR',1),(8,'Cedear Barrick Mining Corporation','B',2),(9,'Cedear Chevron Corp.','CVX',2),(10,'Cedear Nvidia Corporation','NVDA',2),(11,'Cedear Occidental Petroleum Corporation','OXY',2),(12,'Cedear Pan American Silver Cor','PAAS',2),(13,'Cedear Petroleo Brasileiro S.A','PBR',2),(14,'Cedear Schlumberger Limited','SLB',2),(15,'Cedear Vista Oil & Gas Sab De','VIST',2),(16,'Cedear Walmart Inc.','WMT',2),(17,'Cedear Exxon Mobil Corporation','XOM',2),(18,'Bono Rep. Argentina Usd Step Up 2030','AL30',3),(19,'Plazo Fijo 365 Dias','PJ365',5),(20,'Lt Rep Arg Tamar Cap 182 Ds V27/02/26','M27F6',6),(21,'Lt Rep Arg Cap 182 Ds V27/02/26 $ Cg','S27F6',6);
/*!40000 ALTER TABLE `investmentinstruments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-27 19:15:53
