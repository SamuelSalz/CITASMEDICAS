CREATE DATABASE  IF NOT EXISTS `db_citas_medicas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_citas_medicas`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_citas_medicas
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `IdCita` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `IdMedico` varchar(20) NOT NULL,
  `Cedula_Paciente` varchar(20) NOT NULL,
  `Observaciones` text,
  `Estado` enum('Cancelada','Activa','Pendiente') NOT NULL,
  PRIMARY KEY (`IdCita`),
  KEY `IdMedico` (`IdMedico`),
  KEY `Cedula_Paciente` (`Cedula_Paciente`),
  CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`IdMedico`) REFERENCES `medicos` (`IdMedico`),
  CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`Cedula_Paciente`) REFERENCES `pacientes` (`Cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (13,'2024-10-05','09:00:00','M001','12345','Chequeo general','Pendiente'),(14,'2024-10-06','10:30:00','M002','54321','Consulta de alergias','Activa'),(15,'2024-10-07','14:00:00','M003','22222','Consulta dermatológica','Pendiente'),(16,'2024-10-08','16:00:00','M001','12345','Consulta de seguimiento de hipertensión','Pendiente'),(17,'2024-10-09','11:00:00','M002','54321','Control de crecimiento infantil','Activa'),(18,'2024-10-10','13:00:00','M003','22222','Evaluación de eczema','Cancelada'),(23,'2024-10-12','09:00:00','M001','12345','Chequeo general','Pendiente');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 19:44:39
