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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15 21:22:53
