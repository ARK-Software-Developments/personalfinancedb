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
-- Dumping data for table `investmentselements`
--

LOCK TABLES `investmentselements` WRITE;
/*!40000 ALTER TABLE `investmentselements` DISABLE KEYS */;
INSERT INTO `investmentselements` VALUES (3,2,1,141044.76,0.00,'2026-01-21 00:00:00','005878893',141044.76,141817.35,'ACTIVO',1),(4,5,1,6200.00,13.00,'2026-01-14 00:00:00','159862909',6200.00,0.00,'ACTIVO',21),(5,5,1,10000.00,20.10,'2026-01-14 00:00:00','159871520',10000.00,0.00,'ACTIVO',21),(6,5,1,21000.00,42.21,'2026-01-20 00:00:00','160647503',21000.00,0.00,'ACTIVO',20),(7,4,10,733.50,0.00,'2026-01-01 00:00:00','158330569',7335.00,0.00,'ACTIVO',7),(8,7,8,7500.00,0.00,'2026-01-23 00:00:00','161157756',7500.00,0.00,'ACTIVO',18),(9,3,1,16030.00,0.00,'2026-01-05 00:00:00','157841609',16030.00,0.00,'ACTIVO',9),(10,10,1,22501.20,0.00,'2025-04-23 00:00:00','565556',22501.20,0.00,'ACTIVO',19),(13,9,2,355.55,0.00,'2025-05-27 00:00:00','1113',711.10,0.00,'ACTIVO',6),(14,6,1,30000.00,0.00,'2026-01-20 00:00:00','160643682',30000.00,0.00,'ACTIVO',3),(15,6,1,30000.00,0.00,'2026-01-20 00:00:00','160648670',30000.00,0.00,'ACTIVO',4),(16,6,1,500.00,0.00,'2026-01-28 00:00:00','161635256',500.00,0.00,'ACTIVO',5);
/*!40000 ALTER TABLE `investmentselements` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tgInsert` AFTER INSERT ON `investmentselements` FOR EACH ROW begin
DECLARE msg VARCHAR(255);
SET msg = CONCAT('Registro incorporado en investmentselements: ID', NEW.id, ', ', NEW.quantity, ', ', NEW.investmentamount);
INSERT INTO
    logs (dateprocess, `type`, code, message)
VALUES
    (now(), 'insert_investmentselements', 'insert', msg);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-27 19:15:54
