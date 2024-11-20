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
-- Temporary view structure for view `vista_pacientes_mayores`
--

DROP TABLE IF EXISTS `vista_pacientes_mayores`;
/*!50001 DROP VIEW IF EXISTS `vista_pacientes_mayores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_pacientes_mayores` AS SELECT 
 1 AS `Nombre`,
 1 AS `Edad`,
 1 AS `TipoPlan`,
 1 AS `EnfermedadesCronicas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_todos_pacientes`
--

DROP TABLE IF EXISTS `vista_todos_pacientes`;
/*!50001 DROP VIEW IF EXISTS `vista_todos_pacientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_todos_pacientes` AS SELECT 
 1 AS `Nombre`,
 1 AS `Edad`,
 1 AS `TipoPlan`,
 1 AS `Alergias`,
 1 AS `EnfermedadesCronicas`,
 1 AS `Cedula`,
 1 AS `TipoAtencion`,
 1 AS `CorreoElectronico`,
 1 AS `NumeroContacto`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_pacientes_mayores`
--

/*!50001 DROP VIEW IF EXISTS `vista_pacientes_mayores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_pacientes_mayores` AS select `pacientes`.`Nombre` AS `Nombre`,`pacientes`.`Edad` AS `Edad`,`pacientes`.`TipoPlan` AS `TipoPlan`,`pacientes`.`EnfermedadesCronicas` AS `EnfermedadesCronicas` from `pacientes` where ((`pacientes`.`Edad` > 65) and (`pacientes`.`TipoPlan` = 'Subsidiado')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_todos_pacientes`
--

/*!50001 DROP VIEW IF EXISTS `vista_todos_pacientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_todos_pacientes` AS select `pacientes`.`Nombre` AS `Nombre`,`pacientes`.`Edad` AS `Edad`,`pacientes`.`TipoPlan` AS `TipoPlan`,`pacientes`.`Alergias` AS `Alergias`,`pacientes`.`EnfermedadesCronicas` AS `EnfermedadesCronicas`,`pacientes`.`Cedula` AS `Cedula`,`pacientes`.`TipoAtencion` AS `TipoAtencion`,`pacientes`.`CorreoElectronico` AS `CorreoElectronico`,`pacientes`.`NumeroContacto` AS `NumeroContacto` from `pacientes` */;
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

-- Dump completed on 2024-11-11 19:44:40
