-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyfinal
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_campo_procedimiento`
--
CREATE DATABASE IF NOT EXISTS taxiunico;
USE taxiunico;
DROP TABLE IF EXISTS `app_campo_procedimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_campo_procedimiento` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `id_proc` int(6) NOT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `orden` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_campo_procedimiento`
--

LOCK TABLES `app_campo_procedimiento` WRITE;
/*!40000 ALTER TABLE `app_campo_procedimiento` DISABLE KEYS */;
INSERT INTO `app_campo_procedimiento` VALUES (1,'id paciente',1,'number',0),(2,'id consulta',2,'number',0),(3,'id consulta',3,'number',0),(4,'id prueba',4,'number',0);
/*!40000 ALTER TABLE `app_campo_procedimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_campo_reporte`
--

DROP TABLE IF EXISTS `app_campo_reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_campo_reporte` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `id_reporte` int(6) NOT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `orden` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_campo_reporte`
--

LOCK TABLES `app_campo_reporte` WRITE;
/*!40000 ALTER TABLE `app_campo_reporte` DISABLE KEYS */;
INSERT INTO `app_campo_reporte` VALUES (5,'id paciente',1,'number',0),(6,'id paciente',5,'number',0),(7,'id instancia',6,'number',0),(8,'Apellido',8,'text',0),(9,'id paciente',10,'number',0),(10,'Fecha inferior del rango',7,'date',0),(11,'Fecha superior del rango',7,'date',1);
/*!40000 ALTER TABLE `app_campo_reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_procedimiento`
--

DROP TABLE IF EXISTS `app_procedimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_procedimiento` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_procedimiento` varchar(250) NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `show_on_app` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_procedimiento` (`nombre_procedimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_procedimiento`
--

LOCK TABLES `app_procedimiento` WRITE;
/*!40000 ALTER TABLE `app_procedimiento` DISABLE KEYS */;
INSERT INTO `app_procedimiento` VALUES (5,'paciente_ehr_consultas','paciente_ehr_consultas',1),(6,'paciente_ehr_datos_medicos','paciente_ehr_datos_medicos',1),(7,'paciente_ehr_demograficos','paciente_ehr_demograficos',1),(8,'paciente_ehr_pruebas','paciente_ehr_pruebas',1),(9,'borrar_ehr_paciente','borrar_ehr_paciente',1),(10,'hamilton_anxiety_general','hamilton_anxiety_general',1),(11,'hamilton_anxiety_detalles','hamilton_anxiety_detalles',1),(12,'diagnostico_reporte','diagnostico_reporte',1),(13,'diagnostico_paciente_last_name','diagnostico_paciente_last_name',1),(14,'visitas_cuenta','visitas_cuenta',1),(15,'detalles_receta','detalles_receta',1),(16,'hamilton_anxiety_psiquico','hamilton_anxiety_psiquico',1),(17,'hamilton_anxiety_psomatico','hamilton_anxiety_psomatico',1),(18,'detalles_receta_paciente','detalles_receta_paciente',1);
/*!40000 ALTER TABLE `app_procedimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_reporte`
--

DROP TABLE IF EXISTS `app_reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_reporte` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_reporte` varchar(250) NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `show_on_app` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_reporte` (`nombre_reporte`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_reporte`
--

LOCK TABLES `app_reporte` WRITE;
/*!40000 ALTER TABLE `app_reporte` DISABLE KEYS */;
INSERT INTO `app_reporte` VALUES (1,'datos de paciente','1 datos de paciente',1),(5,'borrar ehr paciente','2 borrar ehr paciente',1),(6,'instancia test de ansiedad','3 instancia test de ansiedad',1),(7,'reporte de diagnósticos','4 reporte de diagnósticos',1),(8,'diagnostico para paciente ','5 diagnóstico para paciente',1),(9,'cuenta de visitas','6 cuenta de visitas',1),(10,'detalles de receta','7 detalles de recetas',1);
/*!40000 ALTER TABLE `app_reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_reporte_procedimiento`
--

DROP TABLE IF EXISTS `app_reporte_procedimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_reporte_procedimiento` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` int(6) NOT NULL,
  `id_proc` int(6) NOT NULL,
  `orden` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_reporte_procedimiento`
--

LOCK TABLES `app_reporte_procedimiento` WRITE;
/*!40000 ALTER TABLE `app_reporte_procedimiento` DISABLE KEYS */;
INSERT INTO `app_reporte_procedimiento` VALUES (7,1,7,0),(8,1,5,2),(9,1,8,3),(10,1,6,1),(11,5,9,0),(16,8,13,0),(17,9,14,0),(19,7,12,0),(24,6,10,0),(25,6,16,1),(26,6,11,3),(27,6,17,2),(28,10,18,0),(29,10,15,1);
/*!40000 ALTER TABLE `app_reporte_procedimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_tabla`
--

DROP TABLE IF EXISTS `app_tabla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_tabla` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_tabla` varchar(250) NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `sp` varchar(50) DEFAULT NULL,
  `show_on_app` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_tabla` (`nombre_tabla`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_tabla`
--

LOCK TABLES `app_tabla` WRITE;
/*!40000 ALTER TABLE `app_tabla` DISABLE KEYS */;
INSERT INTO `app_tabla` VALUES (1,'app_procedimiento','app_procedimiento','select * from proyFinal.`app_procedimiento`;',1),(2,'app_reporte','app_reporte','select * from proyFinal.`app_reporte`;',1),(3,'app_tabla','app_tabla','select * from proyFinal.`app_tabla`;',1),(4,'consulta','consulta','select * from proyFinal.`consulta`;',1),(5,'detalle_receta','detalle_receta','select * from proyFinal.`detalle_receta`;',1),(6,'diagnostico','diagnostico','select * from proyFinal.`diagnostico`;',1),(7,'doctor','doctor','select * from proyFinal.`doctor`;',1),(8,'dsm5','dsm5','select * from proyFinal.`dsm5`;',1),(9,'instancia_prueba','instancia_prueba','select * from proyFinal.`instancia_prueba`;',1),(10,'medicamento','medicamento','select * from proyFinal.`medicamento`;',1),(11,'paciente','paciente','select * from proyFinal.`paciente`;',1),(12,'pregunta_prueba','pregunta_prueba','select * from proyFinal.`pregunta_prueba`;',1),(13,'prueba','prueba','select * from proyFinal.`prueba`;',1),(14,'receta_medica','receta_medica','select * from proyFinal.`receta_medica`;',1),(15,'respuesta_prueba','respuesta_prueba','select * from proyFinal.`respuesta_prueba`;',1),(16,'app_campo_procedimiento','app_campo_procedimiento','select * from proyFinal.`app_campo_procedimiento`;',1),(17,'app_campo_reporte','app_campo_reporte','select * from proyFinal.`app_campo_reporte`;',1),(18,'app_reporte_procedimiento','app_reporte_procedimiento','select * from proyFinal.`app_reporte_procedimiento',1),(19,'catalogo_alergias','catalogo_alergias','select * from proyFinal.`catalogo_alergias`;',1),(20,'informacion_medica_paciente','informacion_medica_paciente','select * from proyFinal.`informacion_medica_pacien',1);
/*!40000 ALTER TABLE `app_tabla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_alergias`
--

DROP TABLE IF EXISTS `catalogo_alergias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_alergias` (
  `id_catalogo_alergias` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `nombre_alergia` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_catalogo_alergias`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `catalogo_alergias_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_alergias`
--

LOCK TABLES `catalogo_alergias` WRITE;
/*!40000 ALTER TABLE `catalogo_alergias` DISABLE KEYS */;
INSERT INTO `catalogo_alergias` VALUES (1,1,'lácteos'),(2,2,'polen'),(3,3,'pasto'),(4,4,'pescado'),(5,5,'penicilina');
/*!40000 ALTER TABLE `catalogo_alergias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL,
  `id_doctor` int(11) DEFAULT NULL,
  `id_instancia_prueba` int(11) DEFAULT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_receta_medica` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` varchar(256) DEFAULT NULL,
  `nota_clinica` text,
  `motivo` text,
  `estatura` float DEFAULT NULL,
  `peso` float DEFAULT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `id_doctor` (`id_doctor`),
  KEY `id_instancia_prueba` (`id_instancia_prueba`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_receta_medica` (`id_receta_medica`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_doctor`) REFERENCES `doctor` (`id_doctor`),
  CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_instancia_prueba`) REFERENCES `instancia_prueba` (`id_instancia_prueba`),
  CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`),
  CONSTRAINT `consulta_ibfk_4` FOREIGN KEY (`id_receta_medica`) REFERENCES `receta_medica` (`id_receta_medica`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,1,1,1,1,'2018-01-01','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(2,1,2,1,NULL,'2018-01-02','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(3,1,3,1,2,'2018-01-03','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(4,1,4,1,NULL,'2018-01-04','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(5,1,5,1,3,'2018-01-05','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(6,1,6,1,NULL,'2018-01-06','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(7,1,7,1,4,'2018-01-07','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(8,1,8,1,NULL,'2018-01-08','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(9,1,9,1,5,'2018-01-09','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(10,1,10,1,NULL,'2018-01-10','5:00 pm','nota clinica','Me he sentido triste últimamente',1.67,65),(11,1,11,2,6,'2018-02-01','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(12,1,12,2,NULL,'2018-02-02','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(13,1,13,2,7,'2018-02-03','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(14,1,14,2,NULL,'2018-02-04','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(15,1,15,2,8,'2018-02-05','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(16,1,16,2,NULL,'2018-02-06','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(17,1,17,2,9,'2018-02-07','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(18,1,18,2,NULL,'2018-02-08','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(19,1,19,2,10,'2018-02-09','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(20,1,20,2,NULL,'2018-02-10','6:00 pm','nota clinica','Cada vez que salgo de mi casa me pongo muy nervioso',1.7,75),(21,1,21,3,11,'2018-03-01','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(22,1,22,3,NULL,'2018-03-02','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(23,1,23,3,12,'2018-03-03','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(24,1,24,3,NULL,'2018-03-04','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(25,1,25,3,13,'2018-03-05','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(26,1,26,3,NULL,'2018-03-06','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(27,1,27,3,14,'2018-03-07','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(28,1,28,3,NULL,'2018-03-08','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(29,1,29,3,15,'2018-03-09','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(30,1,30,3,NULL,'2018-03-10','7:00 pm','nota clinica','No tolero hablar en público',1.75,70),(31,1,31,4,16,'2018-04-01','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(32,1,32,4,NULL,'2018-04-02','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(33,1,33,4,17,'2018-04-03','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(34,1,34,4,NULL,'2018-04-04','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(35,1,35,4,18,'2018-04-05','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(36,1,36,4,NULL,'2018-04-06','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(37,1,37,4,19,'2018-04-07','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(38,1,38,4,NULL,'2018-04-08','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(39,1,39,4,20,'2018-04-09','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(40,1,40,4,NULL,'2018-04-10','8:00 pm','nota clinica','Me siento insuficiente',1.6,40),(41,1,41,5,21,'2018-05-01','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(42,1,42,5,NULL,'2018-05-02','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(43,1,43,5,22,'2018-05-03','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(44,1,44,5,NULL,'2018-05-04','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(45,1,45,5,23,'2018-05-05','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(46,1,46,5,NULL,'2018-05-06','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(47,1,47,5,24,'2018-05-07','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(48,1,48,5,NULL,'2018-05-08','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(49,1,49,5,25,'2018-05-09','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80),(50,1,50,5,NULL,'2018-05-10','9:00 pm','nota clinica','Cuando se me acerca un hombre me pongo muy nerviosa',1.8,80);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_receta`
--

DROP TABLE IF EXISTS `detalle_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_receta` (
  `id_receta_medica` int(11) DEFAULT NULL,
  `id_medicamento` int(11) DEFAULT NULL,
  `instrucciones` text,
  `dias` int(11) DEFAULT NULL,
  `frecuencia` int(11) DEFAULT NULL,
  `dosis` varchar(256) DEFAULT NULL,
  KEY `id_receta_medica` (`id_receta_medica`),
  KEY `id_medicamento` (`id_medicamento`),
  CONSTRAINT `detalle_receta_ibfk_1` FOREIGN KEY (`id_receta_medica`) REFERENCES `receta_medica` (`id_receta_medica`),
  CONSTRAINT `detalle_receta_ibfk_2` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamento` (`id_medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_receta`
--

LOCK TABLES `detalle_receta` WRITE;
/*!40000 ALTER TABLE `detalle_receta` DISABLE KEYS */;
INSERT INTO `detalle_receta` VALUES (1,1,'tomar cada 8 horas',3,3,'50mg'),(1,2,'tomar cada 6 horas',3,3,'20mg'),(1,3,'tomar cada 8 horas',3,3,'10mg'),(2,4,'tomar cada 12 horas',3,3,'1mg'),(2,2,'tomar cada 6 horas',3,3,'20mg'),(2,5,'tomar cada 8 horas',3,3,'10mg'),(3,6,'tomar cada 8 horas',3,3,'20mg'),(3,3,'tomar cada 8 horas',3,3,'100mg'),(3,1,'tomar cada 8 horas',3,3,'50mg'),(4,2,'tomar cada 6 horas',3,3,'20mg'),(4,3,'tomar cada 8 horas',3,3,'10mg'),(4,6,'tomar cada 8 horas',3,3,'20mg'),(5,4,'tomar cada 12 horas',3,3,'1mg'),(5,2,'tomar cada 6 horas',3,3,'20mg'),(5,6,'tomar cada 8 horas',3,3,'20mg'),(6,1,'tomar cada 8 horas',3,3,'50mg'),(6,3,'tomar cada 8 horas',3,3,'10mg'),(6,5,'tomar cada 8 horas',3,3,'10mg'),(7,2,'tomar cada 6 horas',3,3,'20mg'),(7,1,'tomar cada 8 horas',3,3,'50mg'),(7,4,'tomar cada 12 horas',3,3,'1mg'),(8,1,'tomar cada 8 horas',3,3,'50mg'),(8,2,'tomar cada 6 horas',3,3,'20mg'),(8,6,'tomar cada 8 horas',3,3,'20mg'),(9,6,'tomar cada 8 horas',3,3,'20mg'),(9,4,'tomar cada 12 horas',3,3,'1mg'),(9,3,'tomar cada 8 horas',3,3,'10mg'),(10,1,'tomar cada 8 horas',3,3,'50mg'),(10,2,'tomar cada 6 horas',3,3,'20mg'),(10,5,'tomar cada 8 horas',3,3,'10mg'),(11,1,'tomar cada 8 horas',3,3,'50mg'),(11,4,'tomar cada 12 horas',3,3,'1mg'),(11,3,'tomar cada 8 horas',3,3,'10mg'),(12,2,'tomar cada 6 horas',3,3,'20mg'),(12,6,'tomar cada 8 horas',3,3,'20mg'),(12,5,'tomar cada 8 horas',3,3,'10mg'),(13,5,'tomar cada 8 horas',3,3,'10mg'),(13,1,'tomar cada 8 horas',3,3,'50mg'),(13,3,'tomar cada 8 horas',3,3,'10mg'),(14,1,'tomar cada 8 horas',3,3,'50mg'),(14,2,'tomar cada 6 horas',3,3,'20mg'),(14,4,'tomar cada 12 horas',3,3,'1mg'),(15,6,'tomar cada 8 horas',3,3,'20mg'),(15,1,'tomar cada 8 horas',3,3,'50mg'),(15,3,'tomar cada 8 horas',3,3,'10mg'),(16,5,'tomar cada 8 horas',3,3,'10mg'),(16,1,'tomar cada 8 horas',3,3,'50mg'),(16,2,'tomar cada 6 horas',3,3,'20mg'),(17,3,'tomar cada 8 horas',3,3,'10mg'),(17,6,'tomar cada 8 horas',3,3,'20mg'),(17,1,'tomar cada 8 horas',3,3,'50mg'),(18,4,'tomar cada 12 horas',3,3,'1mg'),(18,5,'tomar cada 8 horas',3,3,'10mg'),(18,6,'tomar cada 8 horas',3,3,'20mg'),(19,2,'tomar cada 6 horas',3,3,'20mg'),(19,1,'tomar cada 8 horas',3,3,'50mg'),(19,4,'tomar cada 12 horas',3,3,'1mg'),(20,5,'tomar cada 8 horas',3,3,'10mg'),(20,4,'tomar cada 12 horas',3,3,'1mg'),(20,3,'tomar cada 8 horas',3,3,'10mg'),(21,3,'tomar cada 8 horas',3,3,'10mg'),(21,4,'tomar cada 12 horas',3,3,'1mg'),(21,1,'tomar cada 8 horas',3,3,'50mg'),(22,6,'tomar cada 8 horas',3,3,'20mg'),(22,2,'tomar cada 6 horas',3,3,'20mg'),(22,5,'tomar cada 8 horas',3,3,'10mg'),(23,1,'tomar cada 8 horas',3,3,'50mg'),(23,3,'tomar cada 8 horas',3,3,'10mg'),(23,2,'tomar cada 6 horas',3,3,'20mg'),(24,5,'tomar cada 8 horas',3,3,'10mg'),(24,4,'tomar cada 12 horas',3,3,'1mg'),(24,3,'tomar cada 8 horas',3,3,'10mg'),(25,2,'tomar cada 6 horas',3,3,'20mg'),(25,1,'tomar cada 8 horas',3,3,'50mg'),(25,6,'tomar cada 8 horas',3,3,'20mg');
/*!40000 ALTER TABLE `detalle_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnostico` (
  `id_dsm5` int(11) DEFAULT NULL,
  `id_consulta` int(11) DEFAULT NULL,
  KEY `id_dsm5` (`id_dsm5`),
  KEY `id_consulta` (`id_consulta`),
  CONSTRAINT `diagnostico_ibfk_1` FOREIGN KEY (`id_dsm5`) REFERENCES `dsm5` (`id_dsm5`),
  CONSTRAINT `diagnostico_ibfk_2` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,5),(1,6),(2,10),(3,15),(3,16),(3,17),(4,20),(5,25),(2,28),(3,32),(1,35),(5,39),(4,42),(1,46),(5,48),(3,50);
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `id_doctor` int(11) NOT NULL,
  `nombre` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_doctor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Juan');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dsm5`
--

DROP TABLE IF EXISTS `dsm5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dsm5` (
  `id_dsm5` int(11) NOT NULL,
  `icd9` varchar(256) DEFAULT NULL,
  `icd10` varchar(256) DEFAULT NULL,
  `dsm5_descripcion` text,
  PRIMARY KEY (`id_dsm5`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dsm5`
--

LOCK TABLES `dsm5` WRITE;
/*!40000 ALTER TABLE `dsm5` DISABLE KEYS */;
INSERT INTO `dsm5` VALUES (1,'290','F03','El paciente presenta demencia.'),(2,'300','F05','El paciente tiene episodios de deliración.'),(3,'300','F05','El paciente tiene episodios de deliración.'),(4,'300.4','F33','El paciente tiene depresión recurrente.'),(5,'302.2','F40','El paciente tiene trastornos de ansiedad fóbica.');
/*!40000 ALTER TABLE `dsm5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacion_medica_paciente`
--

DROP TABLE IF EXISTS `informacion_medica_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informacion_medica_paciente` (
  `id_informacion_medica_paciente` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `tipo_de_sangre` varchar(256) DEFAULT NULL,
  `fuma` tinyint(1) DEFAULT NULL,
  `tiene_problema_alcohol` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_informacion_medica_paciente`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `informacion_medica_paciente_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion_medica_paciente`
--

LOCK TABLES `informacion_medica_paciente` WRITE;
/*!40000 ALTER TABLE `informacion_medica_paciente` DISABLE KEYS */;
INSERT INTO `informacion_medica_paciente` VALUES (1,1,'O',0,0),(2,2,'AB',1,0),(3,3,'A+',0,1),(4,4,'B-',1,1),(5,5,'O+',0,0);
/*!40000 ALTER TABLE `informacion_medica_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instancia_prueba`
--

DROP TABLE IF EXISTS `instancia_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instancia_prueba` (
  `id_instancia_prueba` int(11) NOT NULL,
  `id_prueba` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_instancia_prueba`),
  KEY `id_prueba` (`id_prueba`),
  CONSTRAINT `instancia_prueba_ibfk_1` FOREIGN KEY (`id_prueba`) REFERENCES `prueba` (`id_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instancia_prueba`
--

LOCK TABLES `instancia_prueba` WRITE;
/*!40000 ALTER TABLE `instancia_prueba` DISABLE KEYS */;
INSERT INTO `instancia_prueba` VALUES (1,1,'2018-01-01',35),(2,1,'2018-01-02',34),(3,1,'2018-01-03',33),(4,1,'2018-01-04',31),(5,1,'2018-01-05',29),(6,2,'2018-01-06',NULL),(7,2,'2018-01-07',NULL),(8,2,'2018-01-08',NULL),(9,2,'2018-01-09',NULL),(10,2,'2018-01-10',NULL),(11,1,'2018-02-01',35),(12,1,'2018-02-02',34),(13,1,'2018-02-03',32),(14,1,'2018-02-04',28),(15,1,'2018-02-05',27),(16,2,'2018-02-06',NULL),(17,2,'2018-02-07',NULL),(18,2,'2018-02-08',NULL),(19,2,'2018-02-09',NULL),(20,2,'2018-02-10',NULL),(21,1,'2018-03-01',28),(22,1,'2018-03-02',30),(23,1,'2018-03-03',31),(24,1,'2018-03-04',29),(25,1,'2018-03-05',27),(26,2,'2018-03-06',NULL),(27,2,'2018-03-07',NULL),(28,2,'2018-03-08',NULL),(29,2,'2018-03-09',NULL),(30,2,'2018-03-10',NULL),(31,1,'2018-04-01',31),(32,1,'2018-04-02',31),(33,1,'2018-04-03',31),(34,1,'2018-04-04',28),(35,1,'2018-04-05',31),(36,2,'2018-04-06',NULL),(37,2,'2018-04-07',NULL),(38,2,'2018-04-08',NULL),(39,2,'2018-04-09',NULL),(40,2,'2018-04-10',NULL),(41,1,'2018-05-01',19),(42,1,'2018-05-02',27),(43,1,'2018-05-03',25),(44,1,'2018-05-04',21),(45,1,'2018-05-05',26),(46,2,'2018-05-06',NULL),(47,2,'2018-05-07',NULL),(48,2,'2018-05-08',NULL),(49,2,'2018-05-09',NULL),(50,2,'2018-05-10',NULL);
/*!40000 ALTER TABLE `instancia_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamento` (
  `id_medicamento` int(11) NOT NULL,
  `nombre` varchar(256) DEFAULT NULL,
  `ingrediente_activo` varchar(256) DEFAULT NULL,
  `laboratorio` varchar(256) DEFAULT NULL,
  `presentacion` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,'Tressvin','Sertralina','ifa Celtics','Tabletas'),(2,'Farmaxetina','Fluoxetina','ifa Celtics','Tabletas'),(3,'TIM ASF','Quetiapina','Asofarma','Tabletas'),(4,'Ativan','Lorazepam','Pfizer','Tabletas'),(5,'Valium','Diazepam','Roche','Comprimidos'),(6,'Prozac','Fluoxetina','Dista','Comprimidos');
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `nombre` varchar(256) DEFAULT NULL,
  `apellido` varchar(256) DEFAULT NULL,
  `direccion` text,
  `telefono` text,
  `ciudad` text,
  `estadoCivil` text,
  `religion` text,
  `ocupacion` text,
  `fecha_de_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Pedro','Perez','Camino al Alamo 207','8110678922','Monterrey','Soltero','Catolico','Estudiante','1997-06-11'),(2,'Pancho','Gutiérrez','Cempoala 380','8109231655','Monterrey','Soltero','Ateo','Estudiante','1997-05-14'),(3,'Jose','Juárez','Manzanos 51','5555839200','Monterrey','Casado','Catolico','Empleado','1990-02-20'),(4,'Ricardo','Ramírez','Filosofos 40','8122775511','Monterrey','Soltero','Ateo','Estudiante','1995-05-25'),(5,'Valeria','Vignau','Vasconcelos 109','8712453320','Torreon','Soltero','Judio','Empleado','1993-03-12');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta_prueba`
--

DROP TABLE IF EXISTS `pregunta_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta_prueba` (
  `id_pregunta_prueba` int(11) NOT NULL,
  `id_prueba` int(11) DEFAULT NULL,
  `numero_pregunta` int(11) DEFAULT NULL,
  `texto_pregunta` text,
  `ayuda_pregunta` text,
  PRIMARY KEY (`id_pregunta_prueba`),
  KEY `id_prueba` (`id_prueba`),
  CONSTRAINT `pregunta_prueba_ibfk_1` FOREIGN KEY (`id_prueba`) REFERENCES `prueba` (`id_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_prueba`
--

LOCK TABLES `pregunta_prueba` WRITE;
/*!40000 ALTER TABLE `pregunta_prueba` DISABLE KEYS */;
INSERT INTO `pregunta_prueba` VALUES (1,1,1,'Estado ansioso','Preocupaciones, temor de que suceda lo peor, temor anticipado, irritabilidad.'),(2,1,2,'Tensión','Sensaciones de tensión, fatigabilidad, sobresalto al responder, llanto fácil, temblores, sensación de inquietud, imposibilidad de relajarse.'),(3,1,3,'Temores','A la oscuridad, a los desconocidos, a ser dejado solo, a los animales, al tráfico, a las multitudes.'),(4,1,4,'Insomnio','Dificultad para conciliar el sueño. Sueño interrumpido, sueño insatisfactorio y sensación de fatiga al despertar, pesadillas, terrores nocturnos.'),(5,1,5,'Funciones intelectuales (Cognitivas)','Dificultad de concentración, mala o escasa memoria.'),(6,1,6,'Humor depresivo',' Pérdida de interés. Falta de placer en los pasatiempos, depresión, despertarse más temprano de lo esperado. Variaciones anímicas a lo largo del día.'),(7,1,7,'Síntomas somáticos musculares','Dolores musculares, espasmos musculares o calambres, rigidez muscular, tics, rechinar de dientes, voz vacilante, tono muscular aumentado.'),(8,1,8,'Síntomas somáticos sensoriales','Zumbido de oídos, visión borrosa, oleadas de frío y calor,  sensación de debilidad. Sensaciones parestésicas (pinchazos, picazón u hormigueos).'),(9,1,9,'Síntomas cardiovasculares','Taquicardia, palpitaciones, dolor precordial (en el pecho), pulsaciones vasculares pronunciadas, sensacion de \"baja presión\" o desmayo, arritmias.'),(10,1,10,'Síntomas respiratorios','Opresión o constricción en el tórax (pecho), sensación de ahogo, suspiros, disnea (sensación de falta de aire o de dificultad respiratoria).'),(11,1,11,'Síntomas gastrointestinales','Dificultades al deglutir, flatulencia, dolor abdominal, sensación de ardor, pesadez abdominal, nauseas, vómitos, borborismos, heces blandas, pérdida de peso, constipación.'),(12,1,12,'Sintomas genitourinarios','Micciones frecuentes, micción urgente, amenorrea (falta del período menstrual), menorragia, frigidez, eyaculación precoz, pérdida de libido, impotencia sexual.'),(13,1,13,'Síntomas del sistema nervioso autónomo',' Boca seca, accesos de enrojecimiento, palidez, tendencia a la sudoración, vértigos, cefaleas (dolor de cabeza) por tensión, erectismo piloso (piel de gallina).'),(14,1,14,'Conducta en el transcurso del test','Inquietud, impaciencia o intranquilidad, temblor de manos, fruncimiento del entrecejo, rostro preocupado, suspiros o respiración rápida, palidez facial, deglución de saliva, eructos, tics.'),(15,2,1,'Humor deprimido, tristeza (melancolía), desesperanza, desamparo, inutilidad',''),(16,2,2,'Sentimiento de culpa',''),(17,2,3,'Suicidio',''),(18,2,4,'Insomnio precoz',''),(19,2,5,'Insomnio intermedio',''),(20,2,6,'Insomnio tardío',''),(21,2,7,'Trabajo y actividades',''),(22,2,8,'Inhibición psicomotora',' (Lentitud de pensamiento y palabra, facultad de concentración disminuida, disminución de la actividad motora)'),(23,2,9,'Agitación psicomotora',''),(24,2,10,'Ansiedad psíquica',''),(25,2,11,'Ansiedad somática','(Signos físicos concomitantes de ansiedad tales como: Gastrointestinales: sequedad de boca, diarrea, eructos, etc. Cardiovasculares: palpitaciones, cefaleas. Respiratorios: hiperventilación, suspiros. Frecuencia de micción incrementada. Transpiración)'),(26,2,12,'Síntomas somáticos gastrointestinales',''),(27,2,13,'Síntomas somáticos generales',''),(28,2,14,'Síntomas genitales','(Disminución de la libido y trastornos menstruales)'),(29,2,15,'Hipocondría',''),(30,2,16,'Pérdida de peso',''),(31,2,17,'Perspicacia','');
/*!40000 ALTER TABLE `pregunta_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba`
--

DROP TABLE IF EXISTS `prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prueba` (
  `id_prueba` int(11) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba`
--

LOCK TABLES `prueba` WRITE;
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` VALUES (1,'test ansiedad'),(2,'test depresion');
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta_medica`
--

DROP TABLE IF EXISTS `receta_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta_medica` (
  `id_receta_medica` int(11) NOT NULL,
  PRIMARY KEY (`id_receta_medica`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_medica`
--

LOCK TABLES `receta_medica` WRITE;
/*!40000 ALTER TABLE `receta_medica` DISABLE KEYS */;
INSERT INTO `receta_medica` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25);
/*!40000 ALTER TABLE `receta_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta_prueba`
--

DROP TABLE IF EXISTS `respuesta_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuesta_prueba` (
  `id_respuesta_prueba` int(11) NOT NULL,
  `id_instancia_prueba` int(11) DEFAULT NULL,
  `id_pregunta_prueba` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_respuesta_prueba`),
  KEY `id_instancia_prueba` (`id_instancia_prueba`),
  KEY `id_pregunta_prueba` (`id_pregunta_prueba`),
  CONSTRAINT `respuesta_prueba_ibfk_1` FOREIGN KEY (`id_instancia_prueba`) REFERENCES `instancia_prueba` (`id_instancia_prueba`),
  CONSTRAINT `respuesta_prueba_ibfk_2` FOREIGN KEY (`id_pregunta_prueba`) REFERENCES `pregunta_prueba` (`id_pregunta_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta_prueba`
--

LOCK TABLES `respuesta_prueba` WRITE;
/*!40000 ALTER TABLE `respuesta_prueba` DISABLE KEYS */;
INSERT INTO `respuesta_prueba` VALUES (1,1,1,4),(2,1,2,2),(3,1,3,3),(4,1,4,2),(5,1,5,3),(6,1,6,2),(7,1,7,2),(8,1,8,2),(9,1,9,2),(10,1,10,2),(11,1,11,3),(12,1,12,2),(13,1,13,2),(14,1,14,4),(15,2,1,3),(16,2,2,2),(17,2,3,3),(18,2,4,2),(19,2,5,3),(20,2,6,2),(21,2,7,2),(22,2,8,2),(23,2,9,2),(24,2,10,2),(25,2,11,3),(26,2,12,2),(27,2,13,2),(28,2,14,4),(29,3,1,3),(30,3,2,2),(31,3,3,3),(32,3,4,2),(33,3,5,3),(34,3,6,2),(35,3,7,2),(36,3,8,2),(37,3,9,2),(38,3,10,2),(39,3,11,2),(40,3,12,2),(41,3,13,2),(42,3,14,4),(43,4,1,4),(44,4,2,2),(45,4,3,1),(46,4,4,2),(47,4,5,1),(48,4,6,2),(49,4,7,2),(50,4,8,2),(51,4,9,2),(52,4,10,2),(53,4,11,3),(54,4,12,2),(55,4,13,2),(56,4,14,4),(57,5,1,1),(58,5,2,2),(59,5,3,3),(60,5,4,2),(61,5,5,3),(62,5,6,2),(63,5,7,2),(64,5,8,2),(65,5,9,2),(66,5,10,2),(67,5,11,2),(68,5,12,2),(69,5,13,2),(70,5,14,2),(71,6,1,NULL),(72,6,2,NULL),(73,6,3,NULL),(74,6,4,NULL),(75,6,5,NULL),(76,6,6,NULL),(77,6,7,NULL),(78,6,8,NULL),(79,6,9,NULL),(80,6,10,NULL),(81,6,11,NULL),(82,6,12,NULL),(83,6,13,NULL),(84,6,14,NULL),(85,7,1,NULL),(86,7,2,NULL),(87,7,3,NULL),(88,7,4,NULL),(89,7,5,NULL),(90,7,6,NULL),(91,7,7,NULL),(92,7,8,NULL),(93,7,9,NULL),(94,7,10,NULL),(95,7,11,NULL),(96,7,12,NULL),(97,7,13,NULL),(98,7,14,NULL),(99,8,1,NULL),(100,8,2,NULL),(101,8,3,NULL),(102,8,4,NULL),(103,8,5,NULL),(104,8,6,NULL),(105,8,7,NULL),(106,8,8,NULL),(107,8,9,NULL),(108,8,10,NULL),(109,8,11,NULL),(110,8,12,NULL),(111,8,13,NULL),(112,8,14,NULL),(113,9,1,NULL),(114,9,2,NULL),(115,9,3,NULL),(116,9,4,NULL),(117,9,5,NULL),(118,9,6,NULL),(119,9,7,NULL),(120,9,8,NULL),(121,9,9,NULL),(122,9,10,NULL),(123,9,11,NULL),(124,9,12,NULL),(125,9,13,NULL),(126,9,14,NULL),(127,10,1,NULL),(128,10,2,NULL),(129,10,3,NULL),(130,10,4,NULL),(131,10,5,NULL),(132,10,6,NULL),(133,10,7,NULL),(134,10,8,NULL),(135,10,9,NULL),(136,10,10,NULL),(137,10,11,NULL),(138,10,12,NULL),(139,10,13,NULL),(140,10,14,NULL),(141,11,1,4),(142,11,2,2),(143,11,3,3),(144,11,4,2),(145,11,5,3),(146,11,6,2),(147,11,7,2),(148,11,8,2),(149,11,9,2),(150,11,10,2),(151,11,11,3),(152,11,12,2),(153,11,13,2),(154,11,14,4),(155,12,1,3),(156,12,2,2),(157,12,3,3),(158,12,4,2),(159,12,5,3),(160,12,6,2),(161,12,7,2),(162,12,8,2),(163,12,9,2),(164,12,10,2),(165,12,11,3),(166,12,12,2),(167,12,13,2),(168,12,14,4),(169,13,1,3),(170,13,2,2),(171,13,3,3),(172,13,4,2),(173,13,5,3),(174,13,6,2),(175,13,7,2),(176,13,8,2),(177,13,9,2),(178,13,10,2),(179,13,11,2),(180,13,12,2),(181,13,13,2),(182,13,14,3),(183,14,1,1),(184,14,2,2),(185,14,3,3),(186,14,4,2),(187,14,5,1),(188,14,6,2),(189,14,7,2),(190,14,8,2),(191,14,9,2),(192,14,10,2),(193,14,11,3),(194,14,12,1),(195,14,13,2),(196,14,14,3),(197,15,1,1),(198,15,2,1),(199,15,3,3),(200,15,4,2),(201,15,5,3),(202,15,6,2),(203,15,7,4),(204,15,8,2),(205,15,9,2),(206,15,10,1),(207,15,11,2),(208,15,12,1),(209,15,13,2),(210,15,14,1),(211,16,1,NULL),(212,16,2,NULL),(213,16,3,NULL),(214,16,4,NULL),(215,16,5,NULL),(216,16,6,NULL),(217,16,7,NULL),(218,16,8,NULL),(219,16,9,NULL),(220,16,10,NULL),(221,16,11,NULL),(222,16,12,NULL),(223,16,13,NULL),(224,16,14,NULL),(225,17,1,NULL),(226,17,2,NULL),(227,17,3,NULL),(228,17,4,NULL),(229,17,5,NULL),(230,17,6,NULL),(231,17,7,NULL),(232,17,8,NULL),(233,17,9,NULL),(234,17,10,NULL),(235,17,11,NULL),(236,17,12,NULL),(237,17,13,NULL),(238,17,14,NULL),(239,18,1,NULL),(240,18,2,NULL),(241,18,3,NULL),(242,18,4,NULL),(243,18,5,NULL),(244,18,6,NULL),(245,18,7,NULL),(246,18,8,NULL),(247,18,9,NULL),(248,18,10,NULL),(249,18,11,NULL),(250,18,12,NULL),(251,18,13,NULL),(252,18,14,NULL),(253,19,1,NULL),(254,19,2,NULL),(255,19,3,NULL),(256,19,4,NULL),(257,19,5,NULL),(258,19,6,NULL),(259,19,7,NULL),(260,19,8,NULL),(261,19,9,NULL),(262,19,10,NULL),(263,19,11,NULL),(264,19,12,NULL),(265,19,13,NULL),(266,19,14,NULL),(267,20,1,NULL),(268,20,2,NULL),(269,20,3,NULL),(270,20,4,NULL),(271,20,5,NULL),(272,20,6,NULL),(273,20,7,NULL),(274,20,8,NULL),(275,20,9,NULL),(276,20,10,NULL),(277,20,11,NULL),(278,20,12,NULL),(279,20,13,NULL),(280,20,14,NULL),(281,21,1,1),(282,21,2,2),(283,21,3,2),(284,21,4,2),(285,21,5,3),(286,21,6,2),(287,21,7,2),(288,21,8,2),(289,21,9,2),(290,21,10,2),(291,21,11,3),(292,21,12,2),(293,21,13,2),(294,21,14,1),(295,22,1,3),(296,22,2,2),(297,22,3,3),(298,22,4,2),(299,22,5,3),(300,22,6,2),(301,22,7,1),(302,22,8,1),(303,22,9,1),(304,22,10,1),(305,22,11,3),(306,22,12,2),(307,22,13,2),(308,22,14,4),(309,23,1,3),(310,23,2,2),(311,23,3,3),(312,23,4,2),(313,23,5,1),(314,23,6,2),(315,23,7,2),(316,23,8,2),(317,23,9,2),(318,23,10,2),(319,23,11,2),(320,23,12,2),(321,23,13,2),(322,23,14,4),(323,24,1,2),(324,24,2,2),(325,24,3,1),(326,24,4,2),(327,24,5,1),(328,24,6,2),(329,24,7,2),(330,24,8,2),(331,24,9,2),(332,24,10,2),(333,24,11,3),(334,24,12,2),(335,24,13,2),(336,24,14,4),(337,25,1,1),(338,25,2,2),(339,25,3,3),(340,25,4,2),(341,25,5,3),(342,25,6,2),(343,25,7,2),(344,25,8,2),(345,25,9,2),(346,25,10,2),(347,25,11,2),(348,25,12,1),(349,25,13,2),(350,25,14,1),(351,26,1,NULL),(352,26,2,NULL),(353,26,3,NULL),(354,26,4,NULL),(355,26,5,NULL),(356,26,6,NULL),(357,26,7,NULL),(358,26,8,NULL),(359,26,9,NULL),(360,26,10,NULL),(361,26,11,NULL),(362,26,12,NULL),(363,26,13,NULL),(364,26,14,NULL),(365,27,1,NULL),(366,27,2,NULL),(367,27,3,NULL),(368,27,4,NULL),(369,27,5,NULL),(370,27,6,NULL),(371,27,7,NULL),(372,27,8,NULL),(373,27,9,NULL),(374,27,10,NULL),(375,27,11,NULL),(376,27,12,NULL),(377,27,13,NULL),(378,27,14,NULL),(379,28,1,NULL),(380,28,2,NULL),(381,28,3,NULL),(382,28,4,NULL),(383,28,5,NULL),(384,28,6,NULL),(385,28,7,NULL),(386,28,8,NULL),(387,28,9,NULL),(388,28,10,NULL),(389,28,11,NULL),(390,28,12,NULL),(391,28,13,NULL),(392,28,14,NULL),(393,29,1,NULL),(394,29,2,NULL),(395,29,3,NULL),(396,29,4,NULL),(397,29,5,NULL),(398,29,6,NULL),(399,29,7,NULL),(400,29,8,NULL),(401,29,9,NULL),(402,29,10,NULL),(403,29,11,NULL),(404,29,12,NULL),(405,29,13,NULL),(406,29,14,NULL),(407,30,1,NULL),(408,30,2,NULL),(409,30,3,NULL),(410,30,4,NULL),(411,30,5,NULL),(412,30,6,NULL),(413,30,7,NULL),(414,30,8,NULL),(415,30,9,NULL),(416,30,10,NULL),(417,30,11,NULL),(418,30,12,NULL),(419,30,13,NULL),(420,30,14,NULL),(421,31,1,2),(422,31,2,1),(423,31,3,4),(424,31,4,2),(425,31,5,1),(426,31,6,3),(427,31,7,2),(428,31,8,1),(429,31,9,2),(430,31,10,3),(431,31,11,3),(432,31,12,1),(433,31,13,2),(434,31,14,4),(435,32,1,3),(436,32,2,2),(437,32,3,3),(438,32,4,2),(439,32,5,3),(440,32,6,1),(441,32,7,2),(442,32,8,1),(443,32,9,2),(444,32,10,4),(445,32,11,3),(446,32,12,2),(447,32,13,2),(448,32,14,1),(449,33,1,3),(450,33,2,2),(451,33,3,3),(452,33,4,2),(453,33,5,3),(454,33,6,2),(455,33,7,2),(456,33,8,2),(457,33,9,2),(458,33,10,2),(459,33,11,2),(460,33,12,2),(461,33,13,2),(462,33,14,2),(463,34,1,4),(464,34,2,1),(465,34,3,1),(466,34,4,2),(467,34,5,1),(468,34,6,2),(469,34,7,2),(470,34,8,2),(471,34,9,2),(472,34,10,2),(473,34,11,1),(474,34,12,2),(475,34,13,2),(476,34,14,4),(477,35,1,1),(478,35,2,2),(479,35,3,3),(480,35,4,2),(481,35,5,3),(482,35,6,2),(483,35,7,2),(484,35,8,2),(485,35,9,2),(486,35,10,2),(487,35,11,2),(488,35,12,2),(489,35,13,4),(490,35,14,2),(491,36,1,NULL),(492,36,2,NULL),(493,36,3,NULL),(494,36,4,NULL),(495,36,5,NULL),(496,36,6,NULL),(497,36,7,NULL),(498,36,8,NULL),(499,36,9,NULL),(500,36,10,NULL),(501,36,11,NULL),(502,36,12,NULL),(503,36,13,NULL),(504,36,14,NULL),(505,37,1,NULL),(506,37,2,NULL),(507,37,3,NULL),(508,37,4,NULL),(509,37,5,NULL),(510,37,6,NULL),(511,37,7,NULL),(512,37,8,NULL),(513,37,9,NULL),(514,37,10,NULL),(515,37,11,NULL),(516,37,12,NULL),(517,37,13,NULL),(518,37,14,NULL),(519,38,1,NULL),(520,38,2,NULL),(521,38,3,NULL),(522,38,4,NULL),(523,38,5,NULL),(524,38,6,NULL),(525,38,7,NULL),(526,38,8,NULL),(527,38,9,NULL),(528,38,10,NULL),(529,38,11,NULL),(530,38,12,NULL),(531,38,13,NULL),(532,38,14,NULL),(533,39,1,NULL),(534,39,2,NULL),(535,39,3,NULL),(536,39,4,NULL),(537,39,5,NULL),(538,39,6,NULL),(539,39,7,NULL),(540,39,8,NULL),(541,39,9,NULL),(542,39,10,NULL),(543,39,11,NULL),(544,39,12,NULL),(545,39,13,NULL),(546,39,14,NULL),(547,40,1,NULL),(548,40,2,NULL),(549,40,3,NULL),(550,40,4,NULL),(551,40,5,NULL),(552,40,6,NULL),(553,40,7,NULL),(554,40,8,NULL),(555,40,9,NULL),(556,40,10,NULL),(557,40,11,NULL),(558,40,12,NULL),(559,40,13,NULL),(560,40,14,NULL),(561,41,1,1),(562,41,2,1),(563,41,3,1),(564,41,4,2),(565,41,5,1),(566,41,6,1),(567,41,7,2),(568,41,8,1),(569,41,9,1),(570,41,10,1),(571,41,11,3),(572,41,12,1),(573,41,13,2),(574,41,14,1),(575,42,1,3),(576,42,2,2),(577,42,3,3),(578,42,4,1),(579,42,5,3),(580,42,6,1),(581,42,7,2),(582,42,8,1),(583,42,9,2),(584,42,10,1),(585,42,11,3),(586,42,12,2),(587,42,13,2),(588,42,14,1),(589,43,1,3),(590,43,2,2),(591,43,3,3),(592,43,4,1),(593,43,5,3),(594,43,6,1),(595,43,7,2),(596,43,8,1),(597,43,9,1),(598,43,10,2),(599,43,11,1),(600,43,12,2),(601,43,13,2),(602,43,14,1),(603,44,1,1),(604,44,2,1),(605,44,3,1),(606,44,4,2),(607,44,5,1),(608,44,6,2),(609,44,7,1),(610,44,8,2),(611,44,9,2),(612,44,10,2),(613,44,11,1),(614,44,12,2),(615,44,13,2),(616,44,14,1),(617,45,1,1),(618,45,2,2),(619,45,3,3),(620,45,4,2),(621,45,5,1),(622,45,6,2),(623,45,7,2),(624,45,8,2),(625,45,9,2),(626,45,10,2),(627,45,11,2),(628,45,12,2),(629,45,13,1),(630,45,14,2),(631,46,1,NULL),(632,46,2,NULL),(633,46,3,NULL),(634,46,4,NULL),(635,46,5,NULL),(636,46,6,NULL),(637,46,7,NULL),(638,46,8,NULL),(639,46,9,NULL),(640,46,10,NULL),(641,46,11,NULL),(642,46,12,NULL),(643,46,13,NULL),(644,46,14,NULL),(645,47,1,NULL),(646,47,2,NULL),(647,47,3,NULL),(648,47,4,NULL),(649,47,5,NULL),(650,47,6,NULL),(651,47,7,NULL),(652,47,8,NULL),(653,47,9,NULL),(654,47,10,NULL),(655,47,11,NULL),(656,47,12,NULL),(657,47,13,NULL),(658,47,14,NULL),(659,48,1,NULL),(660,48,2,NULL),(661,48,3,NULL),(662,48,4,NULL),(663,48,5,NULL),(664,48,6,NULL),(665,48,7,NULL),(666,48,8,NULL),(667,48,9,NULL),(668,48,10,NULL),(669,48,11,NULL),(670,48,12,NULL),(671,48,13,NULL),(672,48,14,NULL),(673,49,1,NULL),(674,49,2,NULL),(675,49,3,NULL),(676,49,4,NULL),(677,49,5,NULL),(678,49,6,NULL),(679,49,7,NULL),(680,49,8,NULL),(681,49,9,NULL),(682,49,10,NULL),(683,49,11,NULL),(684,49,12,NULL),(685,49,13,NULL),(686,49,14,NULL),(687,50,1,NULL),(688,50,2,NULL),(689,50,3,NULL),(690,50,4,NULL),(691,50,5,NULL),(692,50,6,NULL),(693,50,7,NULL),(694,50,8,NULL),(695,50,9,NULL),(696,50,10,NULL),(697,50,11,NULL),(698,50,12,NULL),(699,50,13,NULL),(700,50,14,NULL);
/*!40000 ALTER TABLE `respuesta_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyfinal'
--
/*!50003 DROP PROCEDURE IF EXISTS `borrar_ehr_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_ehr_paciente`(IN `getID` INT)
    NO SQL
begin

start transaction;



delete

	from diagnostico

    where id_consulta in (

        select id_consulta

        from consulta 

        where id_paciente = getID

    );

delete

	from respuesta_prueba 

    where id_instancia_prueba in (

    	select id_instancia_prueba

        from instancia_prueba

        where id_instancia_prueba in(

        	select id_instancia_prueba

        	from consulta 

        	where id_paciente = getID

        )

);

delete

	from detalle_receta 

    where id_receta_medica in (

        select id_receta_medica

        from receta_medica

        where id_receta_medica in (

            select id_receta_medica

            from consulta 

            where id_paciente = getID

        )

	);

/*borra incluso valores de null de receta_medica en consulta*/

delete instancia_prueba, receta_medica, consulta

	from consulta

    left join instancia_prueba on consulta.id_instancia_prueba = 		 instancia_prueba.id_instancia_prueba

    left join receta_medica on consulta.id_receta_medica = receta_medica.id_receta_medica

    where 

    consulta.id_paciente = getID and

    instancia_prueba.id_instancia_prueba = consulta.id_instancia_prueba;



delete 

	from informacion_medica_paciente

    where id_paciente = getID;

delete

	from catalogo_alergias

    where id_paciente = getID;

delete 

	from paciente

    where id_paciente = getID;

    

commit;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalles_receta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalles_receta`(IN `getID` INT)
    NO SQL
select c.fecha, m.nombre as 'nombre de medicina',

				dr.instrucciones, dr.dias, dr.frecuencia, dr.dosis

from paciente p

join consulta c on c.id_paciente = p.id_paciente

join receta_medica rm on rm.id_receta_medica = c.id_receta_medica

join detalle_receta dr on rm.id_receta_medica = dr.id_receta_medica

join medicamento m on dr.id_medicamento = m.id_medicamento

where dr.id_receta_medica = getID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalles_receta_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalles_receta_paciente`(IN `getID` INT)
    NO SQL
select CONCAT(p.nombre, " ", p.apellido) as 'nombre del paciente', d.nombre as 'nombre del doctor', c.fecha

from paciente p

join consulta c on c.id_paciente = p.id_paciente

join doctor d on c.id_doctor = d.id_doctor

join instancia_prueba ip on c.id_instancia_prueba = ip.id_instancia_prueba

where ip.id_instancia_prueba = getID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `diagnostico_paciente_last_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `diagnostico_paciente_last_name`(IN `getApellido` TEXT)
    NO SQL
select CONCAT(p.nombre, " ", p.apellido) as 'nombre completo', floor(datediff(curdate(), p.fecha_de_nacimiento)/365) as 'edad', 

c.fecha, ds.dsm5_descripcion

from paciente p

join consulta c on p.id_paciente = c.id_paciente

join diagnostico d on c.id_consulta = d.id_consulta 

join dsm5 ds on d.id_dsm5 = ds.id_dsm5

where p.apellido like CONCAT(getApellido,'%')

order by c.fecha desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `diagnostico_reporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `diagnostico_reporte`(IN `dateLow` DATE, IN `dateUpp` DATE)
    NO SQL
select ds.id_dsm5, ds.dsm5_descripcion, count(ds.id_dsm5) as'numero de diagnósticos'

from diagnostico d

join dsm5 ds on ds.id_dsm5 = d.id_dsm5

join consulta c on c.id_consulta = d.id_consulta

where c.fecha >= dateLow and c.fecha <= dateUpp

group by ds.id_dsm5

order by count(ds.id_dsm5) desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hamilton_anxiety_detalles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hamilton_anxiety_detalles`(IN `getID` INT)
    NO SQL
select pp.texto_pregunta, pp.ayuda_pregunta, rp.valor

from instancia_prueba ip 

join respuesta_prueba rp on rp.id_instancia_prueba = ip.id_instancia_prueba

join pregunta_prueba pp on rp.id_pregunta_prueba = pp.id_pregunta_prueba

where ip.id_instancia_prueba = getID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hamilton_anxiety_general` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hamilton_anxiety_general`(IN `getID` INT)
    NO SQL
select ip.fecha, CONCAT(pac.nombre, " ", pac.apellido) as 'nombre completo', d.nombre as 'nombre doctor', ip.total

from paciente pac

join consulta c on c.id_paciente = pac.id_paciente

join doctor d on c.id_doctor = d.id_doctor

join instancia_prueba ip on c.id_instancia_prueba = ip.id_instancia_prueba

where ip.id_instancia_prueba = getID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hamilton_anxiety_psiquico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hamilton_anxiety_psiquico`(IN `getID` INT)
    NO SQL
select sum(valor) as 'total psiquico'

    from (

    select valor

    from respuesta_prueba

    where id_instancia_prueba = getID

    and id_pregunta_prueba in

    (1,2,3,4,5,6,14)

) as psiquico ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hamilton_anxiety_psomatico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hamilton_anxiety_psomatico`(IN `getID` INT)
    NO SQL
select sum(valor) as 'total psomatico'

    from (

    select valor

    from respuesta_prueba

    where id_instancia_prueba = getID

    and id_pregunta_prueba in

    (7,8,9,10,11,12,13)

) as psomatico ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `paciente_ehr_consultas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `paciente_ehr_consultas`(IN `getID` INT)
    NO SQL
select c.id_consulta, c.fecha, d.nombre as 'nombre doctor', floor(datediff(curdate(), p.fecha_de_nacimiento)/365) as 'edad paciente', 

		c.motivo, c.nota_clinica, c.id_receta_medica

from consulta c

join doctor d on c.id_doctor = d.id_doctor

join paciente p on c.id_paciente = p.id_paciente

join receta_medica rm on c.id_receta_medica = rm.id_receta_medica

where c.id_paciente = getID

order by c.fecha desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `paciente_ehr_datos_medicos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `paciente_ehr_datos_medicos`(IN `getID` INT)
    NO SQL
select tipo_de_sangre, nombre_alergia as 'alergias'

from paciente p

join informacion_medica_paciente imp on p.id_paciente = imp.id_paciente

join catalogo_alergias ca on p.id_paciente = ca.id_paciente

where p.id_paciente = getID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `paciente_ehr_demograficos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `paciente_ehr_demograficos`(IN `getID` INT)
    NO SQL
select id_paciente, CONCAT(nombre, " ", apellido) as 'Nombre completo', direccion, 

		telefono, ciudad, estadoCivil, religion, ocupacion, fecha_de_nacimiento

from paciente p

where p.id_paciente = getID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `paciente_ehr_pruebas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `paciente_ehr_pruebas`(IN `getID` INT)
    NO SQL
select ip.id_instancia_prueba, ip.fecha, p.descripcion as 'nombre prueba', ip.total

from paciente pac

join consulta c on pac.id_paciente = c.id_paciente

join instancia_prueba ip on c.id_instancia_prueba = ip.id_instancia_prueba

join prueba p on ip.id_prueba = p.id_prueba

where pac.id_paciente = getID

order by ip.fecha desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `visitas_cuenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `visitas_cuenta`()
    NO SQL
select CONCAT(p.nombre, " ", p.apellido) as 'nombre completo', count(c.id_paciente) as 'numero de visitas'

from paciente p

join consulta c on c.id_paciente = p.id_paciente

group by c.id_paciente

order by p.nombre, p.apellido ;;
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

-- Dump completed on 2018-11-29 18:29:21
