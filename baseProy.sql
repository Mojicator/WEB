-- MySQL dump 10.15  Distrib 10.0.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Proyecto
-- ------------------------------------------------------
-- Server version	10.0.27-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Asientos`
--

DROP TABLE IF EXISTS `Asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Asientos` (
  `fila` char(1) NOT NULL,
  `columna` char(1) NOT NULL,
  `seccion` varchar(15) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `idViajero` int(11) NOT NULL,
  `idVuelo` int(11) NOT NULL,
  KEY `idViajero` (`idViajero`),
  KEY `fk_vuelo` (`idVuelo`),
  CONSTRAINT `Asientos_ibfk_1` FOREIGN KEY (`idViajero`) REFERENCES `Viajero` (`idViajero`),
  CONSTRAINT `fk_vuelo` FOREIGN KEY (`idVuelo`) REFERENCES `Vuelos` (`idVuelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asientos`
--

LOCK TABLES `Asientos` WRITE;
/*!40000 ALTER TABLE `Asientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Asientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contacto`
--

DROP TABLE IF EXISTS `Contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contacto` (
  `nombre` char(20) NOT NULL,
  `apellido` char(25) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `ciudad` varchar(25) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `CP` char(5) NOT NULL,
  `email` char(25) NOT NULL,
  `telefono` char(17) NOT NULL,
  `idVuelo` int(11) NOT NULL,
  PRIMARY KEY (`nombre`),
  KEY `idVuelo` (`idVuelo`),
  CONSTRAINT `Contacto_ibfk_1` FOREIGN KEY (`idVuelo`) REFERENCES `Vuelos` (`idVuelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contacto`
--

LOCK TABLES `Contacto` WRITE;
/*!40000 ALTER TABLE `Contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PreciosExtra`
--

DROP TABLE IF EXISTS `PreciosExtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PreciosExtra` (
  `maleta_extra` decimal(10,0) DEFAULT NULL,
  `prioridad_abordaje` decimal(10,0) DEFAULT NULL,
  `equipaje_varios` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PreciosExtra`
--

LOCK TABLES `PreciosExtra` WRITE;
/*!40000 ALTER TABLE `PreciosExtra` DISABLE KEYS */;
/*!40000 ALTER TABLE `PreciosExtra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tarjeta`
--

DROP TABLE IF EXISTS `Tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tarjeta` (
  `nombreContacto` char(20) NOT NULL,
  `tipo` char(10) NOT NULL,
  `numero` char(16) NOT NULL,
  `numSeguridad` char(4) NOT NULL,
  `fechaV` date NOT NULL,
  PRIMARY KEY (`nombreContacto`),
  CONSTRAINT `Tarjeta_ibfk_1` FOREIGN KEY (`nombreContacto`) REFERENCES `Contacto` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tarjeta`
--

LOCK TABLES `Tarjeta` WRITE;
/*!40000 ALTER TABLE `Tarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Viajero`
--

DROP TABLE IF EXISTS `Viajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Viajero` (
  `nombre` char(20) NOT NULL,
  `apellido` char(25) NOT NULL,
  `correo` char(25) NOT NULL,
  `nacimiento` date NOT NULL,
  `genero` char(1) DEFAULT NULL,
  `telefono` char(17) NOT NULL,
  `idVuelo` int(11) NOT NULL,
  `idViajero` int(11) NOT NULL,
  `nMaletaExtra` int(11) DEFAULT NULL,
  `bPrioridadVuelo` tinyint(1) DEFAULT NULL,
  `nEquipajeVarios` int(11) DEFAULT NULL,
  PRIMARY KEY (`idViajero`),
  KEY `idVuelo` (`idVuelo`),
  CONSTRAINT `Viajero_ibfk_1` FOREIGN KEY (`idVuelo`) REFERENCES `Vuelos` (`idVuelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Viajero`
--

LOCK TABLES `Viajero` WRITE;
/*!40000 ALTER TABLE `Viajero` DISABLE KEYS */;
/*!40000 ALTER TABLE `Viajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vuelos`
--

DROP TABLE IF EXISTS `Vuelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vuelos` (
  `idVuelo` int(11) NOT NULL,
  `origen` varchar(40) NOT NULL,
  `destino` varchar(40) NOT NULL,
  `llego` date NOT NULL,
  `voy` date NOT NULL,
  `horaLlego` time NOT NULL,
  `horaVoy` time NOT NULL,
  `cupo` int(11) NOT NULL,
  `clase` tinyint(1) DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL,
  `escala` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idVuelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vuelos`
--

LOCK TABLES `Vuelos` WRITE;
/*!40000 ALTER TABLE `Vuelos` DISABLE KEYS */;
INSERT INTO `Vuelos` VALUES (191,'AGUASCALIENTES','YUCATAN','2016-12-06','2017-02-10','12:30:00','23:00:00',5,NULL,NULL,NULL),(777,'SINALOA','OAXACA','2016-11-29','2016-12-10','11:30:00','10:30:00',2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Vuelos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-27 13:06:50
