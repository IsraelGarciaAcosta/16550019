-- MySQL dump 10.13  Distrib 5.5.8, for Win32 (x86)
--
-- Host: localhost    Database: inventario
-- ------------------------------------------------------
-- Server version	5.5.8-log

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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `no_ciudad` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`no_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'chihuahua'),(2,'cuauhtemoc'),(3,'Parral'),(4,'Delicias'),(5,'Juarez'),(6,'Ojinaga'),(7,'Aldama'),(8,'Camargo'),(9,'Casas Grandes'),(10,'Jimenez'),(11,'Egipto');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `no_cliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `a_paterno` varchar(45) NOT NULL,
  `a_materno` varchar(45) NOT NULL,
  `calle` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `no_casa` varchar(45) NOT NULL,
  `cp` int(11) NOT NULL,
  `ciudad_no_ciudad` int(11) NOT NULL,
  PRIMARY KEY (`no_cliente`,`ciudad_no_ciudad`),
  KEY `fk_clientes_ciudad1_idx` (`ciudad_no_ciudad`),
  CONSTRAINT `fk_clientes_ciudad1` FOREIGN KEY (`ciudad_no_ciudad`) REFERENCES `ciudad` (`no_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Jose','Torres','Cardenas','Victoriano salado','Villita','2351',4572,3),(2,'Karely','Aguilar','Arzate','Villa Morado','Mirador','6235',3483,6),(3,'Martin','Alanis','Ribera','Rigoberto','Popocateplth','2346',3473,7),(4,'Anaid','Tena','Farias','J.F, Kennedy','Plan de ayala','4527',3568,4),(5,'Alan','Rodriguez','Baeza','16 Septiembre','Villa juarez','8356',7345,1),(6,'Javier','Ayala','Vazquez','Mirador','Platanito','9725',2573,9),(7,'Tito','Hernandez ','Jaquez','Fuentes Mares','Rosario','1362',2757,10),(8,'Oscar','Coronado','Miramontes','4 Febrero','Centro','8734',1436,5),(9,'Omar ','Valdez','Cubitos','Pacheco','Villa del Sol','4572',8322,6),(10,'Daniel','Ortega ','Herrera','Taco','Salsa','6345',9552,7);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `no_empleado` int(11) NOT NULL,
  `nombre_e` varchar(45) NOT NULL,
  `apellido_p` varchar(45) NOT NULL,
  `apellido_m` varchar(45) NOT NULL,
  `calle` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `no_casa` varchar(45) NOT NULL,
  `cp` int(11) NOT NULL,
  `ciudad_no_ciudad` int(11) NOT NULL,
  PRIMARY KEY (`no_empleado`,`ciudad_no_ciudad`),
  KEY `fk_empleados_ciudad1_idx` (`ciudad_no_ciudad`),
  CONSTRAINT `fk_empleados_ciudad1` FOREIGN KEY (`ciudad_no_ciudad`) REFERENCES `ciudad` (`no_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (21,'Francisco','Flores','Rubalcaba','Street 231','Rigoberto Quiroz','62553',72532,6),(22,'Nellie ','Campobello','CampoUgly','Street1342','Rancho Viejo','73464',37345,7),(23,'Diana ','Luna','Sol','Street 543','sdhsf','46142',62874,2),(24,'Gilgamesh','Faraon','Piramide','Street1344','Ahgh','45734',57345,11),(25,'Nasus','Doggy','Can','Street 513','Buenos aires','73735',8435,3),(26,'Sophie ','Miller','Oplex','Street 234','Oracle','68356',2753,7),(27,'Roberto','Flores','Rodriguez','Street 23','Query','63458',3497,1),(28,'Sebastian','Saenz','Baca','Street 643','Inside','46233',8753,11),(29,'Jesus','Chrome','Fox','Street 346','Core','57245',3685,2),(30,'Elias','Flores','Steel','Street 246','Satelite','23575',5682,6);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `productos_clave_producto` varchar(10) NOT NULL,
  `existencia` int(11) NOT NULL,
  `inv_min` int(11) NOT NULL,
  `inv_max` int(11) NOT NULL,
  PRIMARY KEY (`productos_clave_producto`),
  KEY `fk_inventario_productos1_idx` (`productos_clave_producto`),
  CONSTRAINT `fk_inventario_productos1` FOREIGN KEY (`productos_clave_producto`) REFERENCES `productos` (`clave_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES ('ash-56',9,2,11),('kln-89',56,34,68),('qwert-23',23,8,25),('qwerty-101',72,34,90),('qwt-45',15,12,87),('qwu-78',3,2,7),('sadg-12',45,3,54),('yte-91',35,23,49),('zxbn-67',85,45,124),('zxcv-34',12,7,93);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `clave_producto` varchar(10) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio_unitario` float NOT NULL,
  `precio_vta` float NOT NULL,
  PRIMARY KEY (`clave_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('ash-56','Piano',5683,7457),('kln-89','Diodo',64,89),('qwert-23','Reloj',346,434),('qwerty-101','Zippo',125,225),('qwt-45','TV',3325,5654),('qwu-78','CellPhone',6235,8435),('sadg-12','Computadora',34623,45735),('yte-91','Audifonos',335,563),('zxbn-67','Skate',2224,3643),('zxcv-34','Guitarra',7343,8453);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `no_proveedor` int(11) NOT NULL,
  `clave_producto` varchar(10) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`no_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (101,'ash-56',5683),(102,'kln-89',64),(103,'qwert-23',346),(104,'qwerty-101',125),(105,'qwt-45',3325),(106,'qwu-78',6235),(107,'sadg-12',34623),(108,'yte-91',335),(109,'zxbn-67',2224),(110,'zxcv-34',7343);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_has_productos`
--

DROP TABLE IF EXISTS `proveedor_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor_has_productos` (
  `proveedor_no_proveedor` int(11) NOT NULL,
  `productos_clave_producto` varchar(10) NOT NULL,
  PRIMARY KEY (`proveedor_no_proveedor`,`productos_clave_producto`),
  KEY `fk_proveedor_has_productos_productos1_idx` (`productos_clave_producto`),
  KEY `fk_proveedor_has_productos_proveedor1_idx` (`proveedor_no_proveedor`),
  CONSTRAINT `fk_proveedor_has_productos_productos1` FOREIGN KEY (`productos_clave_producto`) REFERENCES `productos` (`clave_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_proveedor_has_productos_proveedor1` FOREIGN KEY (`proveedor_no_proveedor`) REFERENCES `proveedor` (`no_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_has_productos`
--

LOCK TABLES `proveedor_has_productos` WRITE;
/*!40000 ALTER TABLE `proveedor_has_productos` DISABLE KEYS */;
INSERT INTO `proveedor_has_productos` VALUES (101,'ash-56'),(101,'kln-89'),(102,'ash-56'),(102,'sadg-12'),(103,'kln-89'),(103,'yte-91'),(104,'qwert-23'),(104,'yte-91'),(105,'qwert-23'),(105,'zxcv-34'),(106,'qwt-45'),(106,'sadg-12'),(107,'qwerty-101'),(107,'zxbn-67'),(108,'qwt-45'),(108,'zxbn-67'),(109,'qwerty-101'),(109,'qwu-78'),(110,'qwu-78'),(110,'zxcv-34');
/*!40000 ALTER TABLE `proveedor_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `no_venta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `clientes_no_cliente` int(11) NOT NULL,
  `productos_clave_producto` varchar(10) NOT NULL,
  `empleados_no_emepleado` int(11) NOT NULL,
  PRIMARY KEY (`no_venta`),
  KEY `fk_ventas_clientes1_idx` (`clientes_no_cliente`),
  KEY `fk_ventas_productos1_idx` (`productos_clave_producto`),
  KEY `fk_ventas_empleados1_idx` (`empleados_no_emepleado`),
  CONSTRAINT `fk_ventas_clientes1` FOREIGN KEY (`clientes_no_cliente`) REFERENCES `clientes` (`no_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_empleados1` FOREIGN KEY (`empleados_no_emepleado`) REFERENCES `empleados` (`no_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_productos1` FOREIGN KEY (`productos_clave_producto`) REFERENCES `productos` (`clave_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2019-11-23',1,'kln-89',26),(2,'2017-03-22',2,'sadg-12',27),(3,'2014-06-27',3,'ash-56',23),(4,'2015-12-17',4,'qwerty-101',29),(5,'2016-01-28',5,'ash-56',21),(6,'2017-12-03',6,'qwt-45',30),(7,'2016-02-04',7,'kln-89',30),(8,'2017-04-03',8,'qwerty-101',22),(9,'2016-04-01',9,'zxbn-67',30),(10,'2015-09-16',10,'ash-56',30),(11,'2016-10-18',4,'zxbn-67',30),(12,'2019-03-21',6,'kln-89',27),(13,'2010-01-17',2,'sadg-12',30),(14,'2014-09-08',7,'ash-56',23),(15,'2016-06-04',3,'qwt-45',24),(16,'2015-02-25',6,'sadg-12',26),(17,'2010-11-17',4,'qwerty-101',25),(18,'2019-12-01',4,'yte-91',30),(19,'2017-05-26',8,'qwert-23',30),(20,'2014-09-17',10,'zxcv-34',28),(21,'2015-12-05',5,'qwerty-101',30),(22,'2012-05-12',7,'qwerty-101',29),(23,'2014-07-26',3,'qwu-78',21),(24,'2013-04-02',3,'kln-89',25),(25,'2015-07-04',6,'zxcv-34',26),(26,'2017-02-08',8,'qwert-23',30),(27,'2015-03-17',2,'zxbn-67',23),(28,'2013-08-04',9,'qwert-23',22),(29,'2019-09-17',3,'yte-91',30),(30,'2014-02-19',6,'zxbn-67',29);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_has_clientes`
--

DROP TABLE IF EXISTS `ventas_has_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_has_clientes` (
  `ventas_no_venta` int(11) NOT NULL,
  `clientes_no_cliente` int(11) NOT NULL,
  PRIMARY KEY (`ventas_no_venta`,`clientes_no_cliente`),
  KEY `fk_ventas_has_clientes_clientes1_idx` (`clientes_no_cliente`),
  KEY `fk_ventas_has_clientes_ventas_idx` (`ventas_no_venta`),
  CONSTRAINT `fk_ventas_has_clientes_clientes1` FOREIGN KEY (`clientes_no_cliente`) REFERENCES `clientes` (`no_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_has_clientes_ventas` FOREIGN KEY (`ventas_no_venta`) REFERENCES `ventas` (`no_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_has_clientes`
--

LOCK TABLES `ventas_has_clientes` WRITE;
/*!40000 ALTER TABLE `ventas_has_clientes` DISABLE KEYS */;
INSERT INTO `ventas_has_clientes` VALUES (1,1),(2,2),(13,2),(27,2),(3,3),(15,3),(23,3),(24,3),(29,3),(4,4),(11,4),(17,4),(18,4),(5,5),(21,5),(6,6),(12,6),(16,6),(25,6),(30,6),(7,7),(14,7),(22,7),(8,8),(19,8),(26,8),(9,9),(28,9),(10,10),(20,10);
/*!40000 ALTER TABLE `ventas_has_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_has_clientes_has_productos`
--

DROP TABLE IF EXISTS `ventas_has_clientes_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_has_clientes_has_productos` (
  `ventas_has_clientes_ventas_no_venta` int(11) NOT NULL,
  `ventas_has_clientes_clientes_no_cliente` int(11) NOT NULL,
  `productos_clave_producto` varchar(10) NOT NULL,
  PRIMARY KEY (`ventas_has_clientes_ventas_no_venta`,`ventas_has_clientes_clientes_no_cliente`,`productos_clave_producto`),
  KEY `fk_ventas_has_clientes_has_productos_productos1_idx` (`productos_clave_producto`),
  KEY `fk_ventas_has_clientes_has_productos_ventas_has_clientes1_idx` (`ventas_has_clientes_ventas_no_venta`,`ventas_has_clientes_clientes_no_cliente`),
  CONSTRAINT `fk_ventas_has_clientes_has_productos_productos1` FOREIGN KEY (`productos_clave_producto`) REFERENCES `productos` (`clave_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_has_clientes_has_productos_ventas_has_clientes1` FOREIGN KEY (`ventas_has_clientes_ventas_no_venta`, `ventas_has_clientes_clientes_no_cliente`) REFERENCES `ventas_has_clientes` (`ventas_no_venta`, `clientes_no_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_has_clientes_has_productos`
--

LOCK TABLES `ventas_has_clientes_has_productos` WRITE;
/*!40000 ALTER TABLE `ventas_has_clientes_has_productos` DISABLE KEYS */;
INSERT INTO `ventas_has_clientes_has_productos` VALUES (1,1,'kln-89'),(2,2,'sadg-12'),(3,3,'ash-56'),(4,4,'qwerty-101'),(5,5,'ash-56'),(6,6,'qwt-45'),(7,7,'kln-89'),(8,8,'qwerty-101'),(9,9,'zxbn-67'),(10,10,'ash-56'),(11,4,'zxbn-67'),(12,6,'kln-89'),(13,2,'sadg-12'),(14,7,'ash-56'),(15,3,'qwt-45'),(16,6,'sadg-12'),(17,4,'qwerty-101'),(18,4,'yte-91'),(19,8,'qwert-23'),(20,10,'zxcv-34'),(21,5,'qwerty-101'),(22,7,'qwerty-101'),(23,3,'qwu-78'),(24,3,'kln-89'),(25,6,'zxcv-34'),(26,8,'qwert-23'),(27,2,'zxbn-67'),(28,9,'qwert-23'),(29,3,'yte-91'),(30,6,'zxbn-67');
/*!40000 ALTER TABLE `ventas_has_clientes_has_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-21 10:31:49
