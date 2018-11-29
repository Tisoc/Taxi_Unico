-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: taxiunico
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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `Admin_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'JohnSada','SHPWLNSHA','John Sada','johnsada97@gmail.com','836343682'),(2,'JoanSada','SHPWLNASHA','Joan Sada','joansada97@gmail.com','836343683'),(3,'JeanSada','SHPWLNASHADA','Jean Sada','jeansada97@gmail.com','836343684'),(4,'JuanSada','SHPWLNASHADADA','Juan Sada','juansada97@gmail.com','836343685'),(5,'JaneSada','SHPWLNASHADADADA','Jane Sada','janesada97@gmail.com','836343686'),(6,'1','1','dummy','dummy@gmail.com','0000000');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carro` (
  `Placa` varchar(50) NOT NULL,
  `Taxista_ID` int(11) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Año` int(11) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Placa`),
  KEY `Taxista_ID` (`Taxista_ID`),
  CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`Taxista_ID`) REFERENCES `taxista` (`Taxista_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES ('CHK700',7,'Ford','Fiesta',2000,'Rojo'),('HAS-09-76',3,'Honda','Accord',1999,'Azul'),('SAR-21-81',5,'Tesla','Model-T',2018,'Rojo'),('SMP-17-34',2,'Toyota','Yaris R',2018,'Rojo'),('SSH-33-83',1,'Audi','A3',2014,'Gris'),('SSJ-23-99',4,'Nissan','Sentra',2015,'Gris');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `Cliente_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Estatus` bit(1) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  PRIMARY KEY (`Cliente_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'','Jaime1997','JaimeGarza','Jaime E. Garza','jaimegarza97@gmail.com','83636383',0),(2,'','PabloMan','pabloSF','Pablo Andrade','pabloemilio97@gmail.com','83636384',0),(3,'','Alvarol','SaxMann','Alvaro M.','alvaro@gmail.com','83636385',0),(4,'','AlexXxX','yeahboi81','Alex Lara','alexanderlarius@gmail.com','83636386',0),(5,'\0','PePe88','holasoyopepe','Pedro Pedrina','P3P3@gmail.com','83636383',0),(6,'','1','1','dummy','dummy@gmail.com','0000000000',0);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestacliente`
--

DROP TABLE IF EXISTS `encuestacliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuestacliente` (
  `EncuestaCliente_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Comentarios` varchar(50) DEFAULT NULL,
  `Calificacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`EncuestaCliente_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestacliente`
--

LOCK TABLES `encuestacliente` WRITE;
/*!40000 ALTER TABLE `encuestacliente` DISABLE KEYS */;
INSERT INTO `encuestacliente` VALUES (1,'Muy linda persona, me gustaria conocerla mas',5),(2,'Muy lindo mijo, muy paciente.',5),(3,'Me escucho',5),(4,'No es un cobarde',5),(5,'No hablo mucho',5);
/*!40000 ALTER TABLE `encuestacliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestataxista`
--

DROP TABLE IF EXISTS `encuestataxista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuestataxista` (
  `EncuestaTaxista_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Comentarios` varchar(50) DEFAULT NULL,
  `Calificacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`EncuestaTaxista_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestataxista`
--

LOCK TABLES `encuestataxista` WRITE;
/*!40000 ALTER TABLE `encuestataxista` DISABLE KEYS */;
INSERT INTO `encuestataxista` VALUES (1,'Se echo unos comentarios raros',2),(2,'Tuvo flatulencia de Monterrey hasta Buenos Aires',5),(3,'Platicamos mucho, tiene ideas revolucionarias',5),(4,'Me saco una pistola, pero es muy buena onda :)',5),(5,'Creo que tiene complicaciones estomacales',3);
/*!40000 ALTER TABLE `encuestataxista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifa`
--

DROP TABLE IF EXISTS `tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifa` (
  `Tarifa_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Multiplicador` float DEFAULT NULL,
  `CostoPorKm` float DEFAULT NULL,
  PRIMARY KEY (`Tarifa_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifa`
--

LOCK TABLES `tarifa` WRITE;
/*!40000 ALTER TABLE `tarifa` DISABLE KEYS */;
INSERT INTO `tarifa` VALUES (1,1.1,20.2),(2,1.5,25),(3,0.8,21),(4,2,30),(5,1.7,28);
/*!40000 ALTER TABLE `tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarjeta` (
  `Tarjeta_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente_ID` int(11) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Numero` varchar(50) DEFAULT NULL,
  `CVV` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Tarjeta_ID`),
  KEY `Cliente_ID` (`Cliente_ID`),
  CONSTRAINT `tarjeta_ibfk_1` FOREIGN KEY (`Cliente_ID`) REFERENCES `cliente` (`Cliente_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1,1,'MasterCard','1234567432','033'),(2,2,'Visa','1234567433','034'),(3,3,'Visa','1234567434','035'),(4,4,'MasterCard','1234567435','036'),(5,5,'MasterCard','1234567436','037');
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxista`
--

DROP TABLE IF EXISTS `taxista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxista` (
  `Taxista_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Estatus` bit(1) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  PRIMARY KEY (`Taxista_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxista`
--

LOCK TABLES `taxista` WRITE;
/*!40000 ALTER TABLE `taxista` DISABLE KEYS */;
INSERT INTO `taxista` VALUES (1,'','Taxi','12345678990','Pancho Tijerina','panchillo80@hotmail.com','5434512',0),(2,'','GreatTaxi','hola99hola','Maria Dolores de Panza','mariadoloresdp@live.com','5434513',0),(3,'','UltraTaxi','taxicashmoney','Venustiano Hidalgo','venustianohi@hotmail.com','5434514',0),(4,'','MasterTaxi','TaxiMaestro','Adolfo Porfirio Mussolini','adopormus@live.com','5434515',0),(5,'\0','NetTaxi','denmelanaporfa','Juan de la Parrila','mariadoloresdp@live.com','5434513',0),(6,'','1','1','dummy','dummy@gmail.com','0000000000',0),(7,'','melvin','chocokrispis','melvinp','choco@gmail.com','88888882',0);
/*!40000 ALTER TABLE `taxista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viaje`
--

DROP TABLE IF EXISTS `viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viaje` (
  `Viaje_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Taxista_ID` int(11) DEFAULT NULL,
  `Cliente_ID` int(11) DEFAULT NULL,
  `Tarifa_ID` int(11) DEFAULT NULL,
  `Origen` varchar(50) DEFAULT NULL,
  `Destino` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Distancia` float DEFAULT NULL,
  `Costo` float DEFAULT NULL,
  `FormaDePago` varchar(50) DEFAULT NULL,
  `EncuestaTaxista_ID` int(11) DEFAULT NULL,
  `EncuestaCliente_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Viaje_ID`),
  KEY `EncuestaTaxista_ID` (`EncuestaTaxista_ID`),
  KEY `EncuestaCliente_ID` (`EncuestaCliente_ID`),
  KEY `Taxista_ID` (`Taxista_ID`),
  KEY `Cliente_ID` (`Cliente_ID`),
  KEY `Tarifa_ID` (`Tarifa_ID`),
  CONSTRAINT `viaje_ibfk_1` FOREIGN KEY (`EncuestaTaxista_ID`) REFERENCES `encuestataxista` (`EncuestaTaxista_ID`),
  CONSTRAINT `viaje_ibfk_2` FOREIGN KEY (`EncuestaCliente_ID`) REFERENCES `encuestacliente` (`EncuestaCliente_ID`),
  CONSTRAINT `viaje_ibfk_3` FOREIGN KEY (`Taxista_ID`) REFERENCES `taxista` (`Taxista_ID`),
  CONSTRAINT `viaje_ibfk_4` FOREIGN KEY (`Cliente_ID`) REFERENCES `cliente` (`Cliente_ID`),
  CONSTRAINT `viaje_ibfk_5` FOREIGN KEY (`Tarifa_ID`) REFERENCES `tarifa` (`Tarifa_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaje`
--

LOCK TABLES `viaje` WRITE;
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
INSERT INTO `viaje` VALUES (1,1,1,1,'Monterrey','Houston','Terminado','2018-01-20 08:00:30',732.3,0,'MasterCard',1,1),(2,2,2,2,'Monterrey','Buenos Aires','Terminado','2018-01-22 10:02:30',8024,0,'Visa',2,2),(3,3,3,3,'Monterrey','Saltillo','Terminado','2018-02-10 12:10:45',50,0,'MasterCard',3,3),(4,4,4,4,'Ciudad de Mexico','Guadalajara','Terminado','2018-01-30 00:00:00',535.6,0,'MasterCard',4,4),(5,5,5,5,'Guadalajara','Laredo','Terminado','2018-01-20 08:00:30',1005.2,0,'Visa',5,5),(6,1,2,1,'Monterrey','Laredo','Agendado','2018-02-02 06:02:15',224.7,0,'MasterCard',NULL,NULL),(7,3,4,4,'Seattle','Houston','EnProgreso','2018-01-20 08:00:30',3761.3,0,'Visa',NULL,NULL),(8,2,1,2,'Chicago','Baja California','Cancelado','2018-01-20 08:00:30',2745,0,'Visa',NULL,NULL);
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'taxiunico'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCosto_viaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCosto_viaje`(IN id_viaje INT)
BEGIN
	UPDATE Viaje 
    SET Costo = (
		SELECT Viaje.Distancia * Tarifa.CostoPorKm 
        FROM (SELECT * FROM Viaje) AS v JOIN Tarifa ON v.Tarifa_ID = Tarifa.Tarifa_ID
        WHERE v.Viaje_ID = id_viaje
    )
    WHERE Viaje.Viaje_ID = id_viaje;
    
    SELECT Costo FROM Viaje WHERE Viaje.Viaje_ID = id_viaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_perfil_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_perfil_cliente`()
BEGIN
UPDATE Cliente
SET Usuario = nuevo_usuario, Nombre = nuevo_nombre, Correo = nuevo_correo, Telefono = nuevo_telefono
WHERE (Cliente_ID = id_cliente);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_perfil_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_perfil_taxista`()
BEGIN
UPDATE Taxista
SET Usuario = nuevo_usuario, Nombre = nuevo_nombre, Correo = nuevo_correo, Telefono = nuevo_telefono
WHERE (Taxista_ID = id_taxista);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_rating_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_rating_cliente`(IN id_cliente INT)
BEGIN
	UPDATE Cliente
    SET Rating = (
		SELECT AVG(Calificacion)
        FROM Viaje JOIN EncuestaCliente ON Viaje.EncuestaCliente_ID = EncuestaCliente.EncuestaCliente_ID
        WHERE Viaje.Cliente_ID = id_cliente
    )
    WHERE Cliente.Cliente_ID = id_cliente;
    
    SELECT Rating FROM Cliente WHERE Cliente_ID = id_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_rating_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_rating_taxista`(IN id_taxista INT)
BEGIN
	UPDATE Taxista
    SET Rating = (
		SELECT AVG(Calificacion)
        FROM Viaje JOIN EncuestaTaxista ON Viaje.EncuestaTaxista_ID = EncuestaTaxista.EncuestaTaxista_ID
        WHERE Viaje.Taxista_ID = id_taxista
    )
    WHERE Taxista.Taxista_ID = id_taxista;
    
    SELECT Rating FROM Taxista WHERE Taxista_ID = id_taxista;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_tarifa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_tarifa`()
BEGIN
UPDATE Tarifa
SET Multiplicador = nuevo_multiplicador, CostoPorKm = nuevo_costo
WHERE (Tarifa_ID = id_tarifa);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agendar_viaje_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agendar_viaje_taxista`()
BEGIN
INSERT INTO Viaje(Viaje_ID, Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha) values(id_viaje,id_taxista,id_cliente,id_tarifa,origen,destino,'Agendado',fecha);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `borrar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_cliente`()
BEGIN
UPDATE Cliente
SET Estatus = 0
WHERE (Cliente_ID = id_cliente);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `borrar_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_taxista`()
BEGIN
UPDATE Taxista
SET Estatus = 0
WHERE (Taxista_ID = id_taxista);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calcular_costo_viaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcular_costo_viaje`()
BEGIN
SELECT Tarifa_ID, Distancia FROM Viaje
WHERE (Viaje_ID = id_viaje)
INTO @V_id_tarifa, @V_distancia;

SELECT Multiplicador, CostoPorKm FROM Tarifa
WHERE (Tarifa_ID = @V_id_tarifa)
INTO @T_multiplicador, @T_costoPorKm;

UPDATE Viaje
SET Costo = (Distancia * @T_multiplicador) * @T_costoPorKm
WHERE (Viaje_ID = id_viaje);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cancelarViaje_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cancelarViaje_Cliente`(IN id_cliente INT)
BEGIN
	UPDATE Viaje
    SET Estatus = "Cancelado"
    WHERE Viaje.Viaje_ID = (
    	SELECT Viaje_ID
		FROM Viaje JOIN Cliente ON Viaje.Cliente_ID = Cliente.Cliente_ID
		WHERE Cliente_ID = id_cliente AND Viaje.Estatus = "Agendado"
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contestar_encuesta_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contestar_encuesta_cliente`()
BEGIN
INSERT EncuestaCliente(EncuestaCliente_ID, Comentarios, Calificacion) values(id_viaje, comentarios, calificacion);

UPDATE Viaje
SET EncuestaCliente_ID = id_viaje
WHERE (Viaje_ID = id_viaje);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contestar_encuesta_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contestar_encuesta_taxista`()
BEGIN
INSERT EncuestaTaxista(EncuestaTaxista_ID, Comentarios, Calificacion) values(id_viaje, comentarios, calificacion);

UPDATE Viaje
SET EncuestaTaxista_ID = id_viaje
WHERE (Viaje_ID = id_viaje);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_cliente`(IN usuario_cliente VARCHAR(50), IN contrasena_cliente VARCHAR(50), IN nombre_cliente VARCHAR(50), IN correo_cliente VARCHAR(50), IN telefono_cliente VARCHAR(50))
BEGIN
INSERT INTO Cliente(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) 
		VALUES(1, usuario_cliente, contrasena_cliente, nombre_cliente, correo_cliente, telefono_cliente, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_taxista`(IN usuario_taxista VARCHAR(50), IN contrasena_taxista VARCHAR(50), IN nombre_taxista VARCHAR(50), IN correo_taxista VARCHAR(50), IN telefono_taxista VARCHAR(50), IN marca_carro VARCHAR(50), IN placa_carro VARCHAR(50), IN modelo_carro VARCHAR(50), IN color_carro VARCHAR(50), IN año_carro VARCHAR(50))
BEGIN
INSERT INTO Taxista(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) 
		VALUES(1, usuario_taxista, contrasena_taxista, nombre_taxista, correo_taxista, telefono_taxista, 0);
SET @id := (SELECT MAX(Taxista_ID) FROM Taxista);
INSERT INTO Carro(Placa, Taxista_ID, Marca, Modelo, Año, Color) 
		VALUES(placa_carro, @id, marca_carro, modelo_carro, año_carro, color_carro);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalle_encuesta_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalle_encuesta_cliente`()
BEGIN
SELECT * FROM EncuestaCliente
WHERE (EncuestaCliente_ID = id_cliente);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalle_encuesta_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalle_encuesta_taxista`()
BEGIN
SELECT * FROM EncuestaTaxista
WHERE (EncuestaTaxista_ID = id_taxista);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_mail_admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_mail_admin`(IN correo_admin VARCHAR(50))
BEGIN
SELECT Correo
FROM Administrador
WHERE Correo = correo_admin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_mail_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_mail_cliente`(IN correo_cliente VARCHAR(50))
BEGIN
SELECT Correo
FROM Cliente
WHERE Correo = correo_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_mail_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_mail_taxista`(IN correo_taxista VARCHAR(50))
BEGIN
SELECT Correo
FROM Taxista
WHERE Correo = correo_taxista;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Usuario_Contrasena_Admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Usuario_Contrasena_Admin`(IN `user_admin` VARCHAR(50))
BEGIN

SELECT Usuario, Contrasena

FROM Administrador

WHERE Administrador.Usuario = user_admin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Usuario_Contrasena_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Usuario_Contrasena_Cliente`(IN user_cliente VARCHAR(50))
BEGIN
SELECT Usuario, Contrasena
FROM Cliente
WHERE Cliente.Usuario = user_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Usuario_Contrasena_Taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Usuario_Contrasena_Taxista`(IN user_taxista VARCHAR(50))
BEGIN
SELECT Usuario, Contrasena
FROM Taxista
WHERE Taxista.Usuario = user_taxista;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_viajeActual_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_viajeActual_cliente`(IN id_cliente INT)
BEGIN
	SELECT Origen, Destino, Nombre, Telefono, Rating, Placa, Marca, Modelo, Año, Color
	FROM (
			SELECT Taxista.Taxista_ID, Origen, Destino, Nombre, Telefono, Rating
			FROM Viaje JOIN Taxista ON Viaje.Taxista_ID = Taxista.Taxista_ID 
            WHERE Cliente_ID = id_cliente AND Viaje.Estatus = "EnProgreso"
		) AS ViajeTaxista 
        JOIN Carro ON Carro.Taxista_ID = ViajeTaxista.Taxista_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_viajeActual_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_viajeActual_taxista`(IN id_taxista INT)
BEGIN
SELECT Origen, Destino, Nombre, Telefono, Rating
FROM Viaje JOIN Cliente ON Viaje.Cliente_ID = Cliente.Cliente_ID
WHERE Taxista_ID = id_taxista AND Viaje.Estatus = "EnProgreso";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_viajes_encuestas_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
CREATE DATABASE IF NOT EXISTS taxiunico;
USE taxiunico;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_viajes_encuestas_cliente`(IN id_cliente INT)
BEGIN
SELECT Origen, Destino, Estatus, Fecha, Distancia, Costo, Calificacion, Comentarios
FROM Viaje JOIN EncuestaCliente ON Viaje.EncuestaCliente_ID = EncuestaCliente.EncuestaCliente_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_viajes_encuestas_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_viajes_encuestas_taxista`(IN id_taxista INT)
BEGIN
SELECT Origen, Destino, Estatus, Fecha, Distancia, Costo, Calificacion, Comentarios
FROM Viaje JOIN EncuestaTaxista ON Viaje.EncuestaTaxista_ID = EncuestaTaxista.EncuestaTaxista_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `terminarViaje_taxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `terminarViaje_taxista`(IN id_taxista INT)
BEGIN
	UPDATE Viaje
    SET Estatus = "Terminado"
    WHERE Viaje.Viaje_ID = (
    	SELECT Viaje_ID
		FROM Viaje JOIN Taxista ON Viaje.Taxista_ID = Taxista.Taxista_ID
		WHERE Taxista_ID = id_taxista AND Viaje.Estatus = "EnProgreso"
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_clientes`()
BEGIN
SELECT * FROM Cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_taxistas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_taxistas`()
BEGIN
SELECT * FROM Taxista JOIN Carro ON Taxista.Taxista_ID = Carro.Taxista_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_viajes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_viajes`()
BEGIN
	SELECT ViajeCliente.Nombre as "Cliente", Taxista.Nombre as "Taxista", Origen, Destino, Fecha, ViajeCliente.Estatus, ViajeCliente.Rating as "Rating Cliente", Taxista.Rating as "Rating Taxista", Distancia, Costo
    FROM (
			SELECT Taxista_ID, Cliente.Nombre, Cliente.Rating, Origen, Destino, Fecha, Viaje.Estatus, Distancia, Costo
            FROM Viaje JOIN Cliente ON Viaje.Cliente_ID = Cliente.Cliente_ID
		) as ViajeCliente
	JOIN Taxista ON ViajeCliente.Taxista_ID = Taxista.Taxista_ID;
END ;;
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

-- Dump completed on 2018-11-28 20:36:47
