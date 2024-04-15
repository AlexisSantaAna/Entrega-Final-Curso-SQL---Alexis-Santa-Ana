-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: premier_league_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `ID_CIUDAD` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_CIUDAD`),
  UNIQUE KEY `NOMBRE` (`NOMBRE`),
  KEY `ID_CIUDAD` (`ID_CIUDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (4,'Birmingham'),(13,'Brentford'),(7,'Brighton'),(5,'Bristol'),(11,'Burnley'),(9,'Leicester'),(3,'Liverpool'),(2,'Londres'),(1,'Manchester'),(8,'Newcastle upon Tyne'),(6,'Nottingham'),(10,'Southampton'),(12,'Wolverhampton');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenador`
--

DROP TABLE IF EXISTS `entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrenador` (
  `ID_ENTRENADOR` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDO` varchar(30) NOT NULL,
  `NACIONALIDAD` varchar(20) DEFAULT NULL,
  `TITULOS_OBTENIDOS` int DEFAULT NULL,
  PRIMARY KEY (`ID_ENTRENADOR`),
  KEY `ID_ENTRENADOR` (`ID_ENTRENADOR`,`TITULOS_OBTENIDOS`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenador`
--

LOCK TABLES `entrenador` WRITE;
/*!40000 ALTER TABLE `entrenador` DISABLE KEYS */;
INSERT INTO `entrenador` VALUES (1,'Josep','Guardiola','Español',37),(2,'Erik','ten Hag','Neerlandes',8),(3,'Jürgen Norbert','Kloop','Aleman',13),(4,'Mauricio Roberto','Pochettino','Argentino',3),(5,'Mikel','Arteta','Español',3),(6,'Unai','Emery','Español',14),(7,'Thomas','Frank','Danes',0),(8,'Roberto','De Zerbi','Italiano',1),(9,'Vincent Jean Mpoy','Kompany','Belga',1),(10,'Oliver','Glasner','Austriaco',2),(11,'Sean','Dyche','Ingles',1),(12,'Enzo','Maresca','Italiano',1),(13,'Eddie','Howe','Ingles',1),(14,'Ange','Postecoglou','Australiano',13),(15,'Gary','Oneil','Ingles',0);
/*!40000 ALTER TABLE `entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `ID_EQUIPO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(30) NOT NULL,
  `APODO` varchar(20) DEFAULT NULL,
  `ID_CIUDAD` int NOT NULL,
  `ID_ESTADIO` int NOT NULL,
  `ID_ENTRENADOR` int NOT NULL,
  PRIMARY KEY (`ID_EQUIPO`),
  KEY `ID_EQUIPO` (`ID_EQUIPO`,`ID_CIUDAD`,`ID_ENTRENADOR`,`ID_ESTADIO`),
  KEY `ID_CIUDAD` (`ID_CIUDAD`),
  KEY `ID_ESTADIO` (`ID_ESTADIO`),
  KEY `ID_ENTRENADOR` (`ID_ENTRENADOR`),
  CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`ID_CIUDAD`) REFERENCES `ciudad` (`ID_CIUDAD`),
  CONSTRAINT `equipo_ibfk_2` FOREIGN KEY (`ID_ESTADIO`) REFERENCES `estadio` (`ID_ESTADIO`),
  CONSTRAINT `equipo_ibfk_3` FOREIGN KEY (`ID_ENTRENADOR`) REFERENCES `entrenador` (`ID_ENTRENADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (1,'Manchester City FC','The Citizens',1,1,1),(2,'Manchester United FC','The Red Devils',1,2,2),(3,'Liverpool FC','The Reds',3,4,3),(4,'Chelsea FC','The Blues',2,3,4),(5,'Arsenal FC','The Gunners',2,6,5),(6,'Aston Villa FC','The Villans',4,5,6),(7,'Brentford FC','The Bees',2,18,7),(8,'Brighton & Hove Albion FC','The Seagulls',7,14,8),(9,'Burnley FC','The Clarets',11,10,9),(10,'Crystal Palace FC','The Eagles',2,15,10),(11,'Everton','The Toffees',3,9,11),(12,'Leicester City FC','The Foxes',9,11,12),(13,'Newcastle United FC','The Magpies',8,19,13),(14,'Tottenham Hotspur FC','Spurs',2,16,14),(15,'Wolverhampton Wanderers FC','Wolves',12,17,15);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_EQUIPO` AFTER INSERT ON `equipo` FOR EACH ROW BEGIN

INSERT INTO LOG_EQUIPO(ACCION, TABLA, USUARIO, FECHA, HORA, EQUIPO_NOMBRE, ID_EQUIPO)
VALUES ('INSERT', 'EQUIPO', CURRENT_USER(), DATE(NOW()), TIME(NOW()), NEW.NOMBRE, NEW.ID_EQUIPO);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `equipo_jugador`
--

DROP TABLE IF EXISTS `equipo_jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo_jugador` (
  `ID_EQUIPO_JUGADOR` int NOT NULL AUTO_INCREMENT,
  `NUMERO` int NOT NULL,
  `ID_EQUIPO` int NOT NULL,
  `ID_JUGADOR` int NOT NULL,
  PRIMARY KEY (`ID_EQUIPO_JUGADOR`),
  KEY `ID_EQUIPO_JUGADOR` (`ID_EQUIPO_JUGADOR`,`ID_EQUIPO`,`ID_JUGADOR`,`NUMERO`),
  KEY `ID_EQUIPO` (`ID_EQUIPO`),
  KEY `ID_JUGADOR` (`ID_JUGADOR`),
  CONSTRAINT `equipo_jugador_ibfk_1` FOREIGN KEY (`ID_EQUIPO`) REFERENCES `equipo` (`ID_EQUIPO`),
  CONSTRAINT `equipo_jugador_ibfk_2` FOREIGN KEY (`ID_JUGADOR`) REFERENCES `jugador` (`ID_JUGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo_jugador`
--

LOCK TABLES `equipo_jugador` WRITE;
/*!40000 ALTER TABLE `equipo_jugador` DISABLE KEYS */;
INSERT INTO `equipo_jugador` VALUES (1,20,1,1),(2,17,1,2),(3,9,1,3),(4,19,1,4),(5,8,2,5),(6,10,2,6),(7,11,3,7),(8,10,3,8),(9,4,3,9),(10,20,4,10),(11,8,4,11),(12,25,4,12),(13,7,5,13),(14,8,5,14),(15,11,5,15),(16,1,6,16),(17,11,6,17),(18,31,6,18),(19,9,8,19),(20,10,8,20),(21,19,8,21);
/*!40000 ALTER TABLE `equipo_jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadio`
--

DROP TABLE IF EXISTS `estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadio` (
  `ID_ESTADIO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(30) NOT NULL,
  `ID_CIUDAD` int NOT NULL,
  PRIMARY KEY (`ID_ESTADIO`),
  KEY `ID_ESTADIO` (`ID_ESTADIO`,`ID_CIUDAD`),
  KEY `ID_CIUDAD` (`ID_CIUDAD`),
  CONSTRAINT `estadio_ibfk_1` FOREIGN KEY (`ID_CIUDAD`) REFERENCES `ciudad` (`ID_CIUDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (1,'Etihad Stadium',1),(2,'Old Trafford',1),(3,'Stamford Bridge',2),(4,'Anfield',3),(5,'Villa Park',4),(6,'Emirates Stadium',2),(7,'Falmer Stadium',7),(8,'The City Ground',6),(9,'Goodinson Park',3),(10,'Turf Moor',11),(11,'King Power Stadium ',9),(12,'St Marys Stadium',10),(13,'Craven Cottage',2),(14,'Amex Stadium',7),(15,'Selhurst Park',2),(16,'Tottenham Hotspur Stadium',2),(17,'Molineux Stadium',12),(18,'Brentford Community Stadium',13),(19,'St James Park',8);
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `ID_JUGADOR` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDO` varchar(30) NOT NULL,
  `NACIONALIDAD` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_JUGADOR`),
  KEY `ID_JUGADOR` (`ID_JUGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Bernardo','Silva','Portugues'),(2,'Kevin','De Bruyne','Belga'),(3,'Erling','Haaland','Noruego'),(4,'Julián','Alvarez','Argentino'),(5,'Bruno Miguel Borges','Fernandes','Portugues'),(6,'Marcus','Rashford','Ingles'),(7,'Mohamed','Salah','Egipcio'),(8,'Alexis','Mac Allister','Argentino'),(9,'Virgil','van Dijk','Neerlandes'),(10,'Cole','Palmer','Ingles'),(11,'Enzo','Fernandez','Argentino'),(12,'Moisés','Caicedo','Colombiano'),(13,'Bukayo','Saka','Ingles'),(14,'Martin','Ødegaard','Noruego'),(15,'Gabriel','Martinelli','Brasilero'),(16,'Emiliano','Martinez','Argentino'),(17,'Ollie','Watkins','Ingles'),(18,'Leon','Bailey','Jamaiquino'),(19,'Kaoru','Mitoma','Japones'),(20,'Julio','Enciso','Paraguayo'),(21,'Valentin','Barco','Argentino');
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_JUGADOR` BEFORE UPDATE ON `jugador` FOR EACH ROW BEGIN

INSERT INTO LOG_JUGADOR(ACCION, TABLA, USUARIO, FECHA, HORA, OLDVALUE, NEWVALUE)
VALUES ('UPDATE', 'JUGADOR', CURRENT_USER(), DATE(NOW()), TIME(NOW()), CONCAT(OLD.NOMBRE, ' ', OLD.APELLIDO), CONCAT(NEW.NOMBRE, ' ', NEW.APELLIDO));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `log_equipo`
--

DROP TABLE IF EXISTS `log_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_equipo` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `ACCION` varchar(30) NOT NULL,
  `TABLA` varchar(30) NOT NULL,
  `USUARIO` varchar(100) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` time DEFAULT NULL,
  `EQUIPO_NOMBRE` varchar(50) NOT NULL,
  `ID_EQUIPO` int NOT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_equipo`
--

LOCK TABLES `log_equipo` WRITE;
/*!40000 ALTER TABLE `log_equipo` DISABLE KEYS */;
INSERT INTO `log_equipo` VALUES (1,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Manchester City FC',1),(2,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Manchester United FC',2),(3,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Liverpool FC',3),(4,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Chelsea FC',4),(5,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Arsenal FC',5),(6,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Aston Villa FC',6),(7,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Brentford FC',7),(8,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Brighton & Hove Albion FC',8),(9,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Burnley FC',9),(10,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Crystal Palace FC',10),(11,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Everton',11),(12,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Leicester City FC',12),(13,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Newcastle United FC',13),(14,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Tottenham Hotspur FC',14),(15,'INSERT','EQUIPO','root@localhost','2024-04-14','19:43:25','Wolverhampton Wanderers FC',15);
/*!40000 ALTER TABLE `log_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_jugador`
--

DROP TABLE IF EXISTS `log_jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_jugador` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `ACCION` varchar(30) NOT NULL,
  `TABLA` varchar(30) NOT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` time DEFAULT NULL,
  `OLDVALUE` varchar(100) DEFAULT NULL,
  `NEWVALUE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_jugador`
--

LOCK TABLES `log_jugador` WRITE;
/*!40000 ALTER TABLE `log_jugador` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partido`
--

DROP TABLE IF EXISTS `partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partido` (
  `ID_PARTIDO` int NOT NULL AUTO_INCREMENT,
  `FECHA` datetime DEFAULT NULL,
  `ID_EQUIPO_1` int NOT NULL,
  `ID_EQUIPO_2` int NOT NULL,
  `ID_ESTADIO` int NOT NULL,
  PRIMARY KEY (`ID_PARTIDO`),
  KEY `ID_PARTIDO` (`ID_PARTIDO`,`ID_EQUIPO_1`,`ID_EQUIPO_2`,`ID_ESTADIO`),
  KEY `ID_EQUIPO_1` (`ID_EQUIPO_1`),
  KEY `ID_EQUIPO_2` (`ID_EQUIPO_2`),
  KEY `ID_ESTADIO` (`ID_ESTADIO`),
  CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`ID_EQUIPO_1`) REFERENCES `equipo` (`ID_EQUIPO`),
  CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`ID_EQUIPO_2`) REFERENCES `equipo` (`ID_EQUIPO`),
  CONSTRAINT `partido_ibfk_3` FOREIGN KEY (`ID_ESTADIO`) REFERENCES `estadio` (`ID_ESTADIO`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (1,'2024-03-05 14:30:00',1,2,1),(2,'2024-03-10 17:00:00',3,4,4),(3,'2024-03-12 12:45:00',5,6,5),(4,'2024-03-18 15:15:00',1,2,2),(5,'2024-03-22 20:00:00',3,4,3),(6,'2024-03-25 13:30:00',5,6,6),(7,'2024-03-28 19:45:00',1,3,1),(8,'2024-04-02 16:30:00',2,4,2),(9,'2024-04-08 12:30:00',3,6,4),(10,'2024-06-01 17:00:00',8,9,14),(11,'2024-06-07 13:30:00',9,8,10),(12,'2024-06-08 17:00:00',13,14,16),(13,'2024-06-15 16:00:00',14,13,19);
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_detalles_partidos`
--

DROP TABLE IF EXISTS `vw_detalles_partidos`;
/*!50001 DROP VIEW IF EXISTS `vw_detalles_partidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_detalles_partidos` AS SELECT 
 1 AS `FECHA_ENCUENTRO`,
 1 AS `EQUIPO_1`,
 1 AS `EQUIPO_2`,
 1 AS `ESTADIO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_entrenadores_equipos`
--

DROP TABLE IF EXISTS `vw_entrenadores_equipos`;
/*!50001 DROP VIEW IF EXISTS `vw_entrenadores_equipos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_entrenadores_equipos` AS SELECT 
 1 AS `ENTRENADOR`,
 1 AS `EQUIPO`,
 1 AS `TROFEOS_TOTALES`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_equipo_cantidad_jugadores`
--

DROP TABLE IF EXISTS `vw_equipo_cantidad_jugadores`;
/*!50001 DROP VIEW IF EXISTS `vw_equipo_cantidad_jugadores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_equipo_cantidad_jugadores` AS SELECT 
 1 AS `EQUIPO`,
 1 AS `CANTIDAD_JUGADORES`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_equipo_ciudad`
--

DROP TABLE IF EXISTS `vw_equipo_ciudad`;
/*!50001 DROP VIEW IF EXISTS `vw_equipo_ciudad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_equipo_ciudad` AS SELECT 
 1 AS `EQUIPO`,
 1 AS `CIUDAD`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_jugadores_nacionalidad`
--

DROP TABLE IF EXISTS `vw_jugadores_nacionalidad`;
/*!50001 DROP VIEW IF EXISTS `vw_jugadores_nacionalidad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_jugadores_nacionalidad` AS SELECT 
 1 AS `NACIONALIDAD`,
 1 AS `CANTIDAD`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'premier_league_db'
--

--
-- Dumping routines for database 'premier_league_db'
--
/*!50003 DROP FUNCTION IF EXISTS `FN_ESTADIO_CIUDAD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_ESTADIO_CIUDAD`(P_ID_ESTADIO INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
DECLARE v_estadio_ciudad VARCHAR(100);

SELECT CONCAT('Estadio: ', E.NOMBRE, ' Ciudad: ', C.NOMBRE) INTO v_estadio_ciudad
FROM ESTADIO E INNER JOIN CIUDAD C 
ON E.ID_CIUDAD = C.ID_CIUDAD
WHERE ID_ESTADIO = P_ID_ESTADIO LIMIT 1;

RETURN v_estadio_ciudad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_JUGADOR_RETORNAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_JUGADOR_RETORNAR`(P_NOMBRE VARCHAR(30)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
DECLARE v_nombre_apellido VARCHAR(100);

SELECT CONCAT(NOMBRE, ' ', APELLIDO) INTO v_nombre_apellido
FROM JUGADOR WHERE NOMBRE LIKE CONCAT('%', P_NOMBRE, '%') OR APELLIDO LIKE CONCAT('%', P_NOMBRE, '%') LIMIT 1;

RETURN v_nombre_apellido;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERTAR_CIUDAD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERTAR_CIUDAD`(IN P_NOMBRE VARCHAR(30))
BEGIN
INSERT INTO ciudad(nombre) VALUES (P_NOMBRE);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LISTA_NOMBRES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LISTA_NOMBRES`(IN P_TABLA VARCHAR(30), OUT P_SALIDA VARCHAR(500))
BEGIN
    IF P_TABLA = 'EQUIPO' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM EQUIPO INTO P_SALIDA;
    ELSEIF P_TABLA = 'JUGADOR' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM JUGADOR INTO P_SALIDA;
	ELSEIF P_TABLA = 'CIUDAD' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM CIUDAD INTO P_SALIDA;
	ELSEIF P_TABLA = 'ENTRENADOR' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM ENTRENADOR INTO P_SALIDA;
	ELSEIF P_TABLA = 'ESTADIO' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM ESTADIO INTO P_SALIDA;
    ELSE
        SET P_SALIDA = 'ERROR: debes ingresar una tabla existente que contenga nombre como valor existente.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_detalles_partidos`
--

/*!50001 DROP VIEW IF EXISTS `vw_detalles_partidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_detalles_partidos` AS select `p`.`FECHA` AS `FECHA_ENCUENTRO`,`e1`.`NOMBRE` AS `EQUIPO_1`,`e2`.`NOMBRE` AS `EQUIPO_2`,`es`.`NOMBRE` AS `ESTADIO` from (((`partido` `p` join `equipo` `e1` on((`p`.`ID_EQUIPO_1` = `e1`.`ID_EQUIPO`))) join `equipo` `e2` on((`p`.`ID_EQUIPO_2` = `e2`.`ID_EQUIPO`))) join `estadio` `es` on((`p`.`ID_ESTADIO` = `es`.`ID_ESTADIO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_entrenadores_equipos`
--

/*!50001 DROP VIEW IF EXISTS `vw_entrenadores_equipos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_entrenadores_equipos` AS select concat(`en`.`NOMBRE`,' ',`en`.`APELLIDO`) AS `ENTRENADOR`,`e`.`NOMBRE` AS `EQUIPO`,`en`.`TITULOS_OBTENIDOS` AS `TROFEOS_TOTALES` from (`entrenador` `en` join `equipo` `e` on((`e`.`ID_ENTRENADOR` = `en`.`ID_ENTRENADOR`))) order by `en`.`TITULOS_OBTENIDOS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_equipo_cantidad_jugadores`
--

/*!50001 DROP VIEW IF EXISTS `vw_equipo_cantidad_jugadores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_equipo_cantidad_jugadores` AS select `e`.`NOMBRE` AS `EQUIPO`,count(`ej`.`ID_JUGADOR`) AS `CANTIDAD_JUGADORES` from ((`equipo` `e` join `equipo_jugador` `ej` on((`e`.`ID_EQUIPO` = `ej`.`ID_EQUIPO`))) join `jugador` `j` on((`ej`.`ID_JUGADOR` = `j`.`ID_JUGADOR`))) group by `e`.`NOMBRE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_equipo_ciudad`
--

/*!50001 DROP VIEW IF EXISTS `vw_equipo_ciudad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_equipo_ciudad` AS select `e`.`NOMBRE` AS `EQUIPO`,`c`.`NOMBRE` AS `CIUDAD` from (`equipo` `e` join `ciudad` `c` on((`e`.`ID_CIUDAD` = `c`.`ID_CIUDAD`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_jugadores_nacionalidad`
--

/*!50001 DROP VIEW IF EXISTS `vw_jugadores_nacionalidad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_jugadores_nacionalidad` AS select `jugador`.`NACIONALIDAD` AS `NACIONALIDAD`,count(0) AS `CANTIDAD` from `jugador` group by `jugador`.`NACIONALIDAD` order by `CANTIDAD` desc */;
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

-- Dump completed on 2024-04-14 19:44:23
