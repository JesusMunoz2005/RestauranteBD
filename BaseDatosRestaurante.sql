-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 3.80.223.173    Database: restaurante
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detallesmenu`
--

DROP TABLE IF EXISTS `detallesmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallesmenu` (
  `idDetallesMenu` int NOT NULL AUTO_INCREMENT,
  `menu_idMenu` int NOT NULL,
  `productos_idPlato` int NOT NULL,
  PRIMARY KEY (`idDetallesMenu`),
  KEY `fk_Menu_has_Productos_Productos1_idx` (`productos_idPlato`),
  KEY `fk_Menu_has_Productos_Menu1_idx` (`menu_idMenu`),
  CONSTRAINT `fk_Menu_has_Productos_Menu1` FOREIGN KEY (`menu_idMenu`) REFERENCES `menu` (`idMenu`),
  CONSTRAINT `fk_Menu_has_Productos_Productos1` FOREIGN KEY (`productos_idPlato`) REFERENCES `productos` (`idPlato`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesmenu`
--

LOCK TABLES `detallesmenu` WRITE;
/*!40000 ALTER TABLE `detallesmenu` DISABLE KEYS */;
INSERT INTO `detallesmenu` VALUES (1,1,701),(2,1,702),(3,1,703),(4,1,704),(5,2,705),(6,2,706),(7,2,707),(8,2,708),(9,3,709),(10,3,710),(11,3,711),(12,3,712),(13,4,713),(14,4,714),(15,4,715),(16,4,716),(17,5,717),(18,5,718),(19,5,719),(20,5,720),(21,6,721),(22,6,722),(23,6,723),(24,6,724),(25,7,725),(26,7,726),(27,7,727),(28,7,728),(29,8,729),(30,8,730),(31,8,731),(32,8,732),(33,9,733),(34,9,734),(35,9,735),(36,9,736),(37,10,737),(38,10,738),(39,10,739),(40,10,740),(41,11,741),(42,11,742),(43,11,743),(44,11,744),(45,12,745),(46,12,746),(47,12,747),(48,12,748),(49,13,749),(50,13,750),(51,13,751),(52,13,752),(53,14,753),(54,14,754),(55,14,755),(56,14,756),(57,15,757),(58,15,758),(59,15,759),(60,15,760),(61,16,761),(62,16,762),(63,16,763),(64,16,764),(65,17,765),(66,17,766),(67,17,767),(68,17,768),(69,18,769),(70,18,770),(71,18,771),(72,18,772),(73,19,773),(74,19,774),(75,19,775),(76,19,776),(77,20,777),(78,20,778),(79,20,779),(80,20,780),(81,21,781),(82,21,782),(83,21,783),(84,21,784),(85,22,785),(86,22,786),(87,22,787),(88,22,788),(89,23,789),(90,23,790),(91,23,791),(92,23,792),(93,24,793),(94,24,794),(95,24,795),(96,24,796),(97,25,797),(98,25,798),(99,25,799),(100,25,800);
/*!40000 ALTER TABLE `detallesmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallespedido`
--

DROP TABLE IF EXISTS `detallespedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallespedido` (
  `idDetallesPedido` int NOT NULL AUTO_INCREMENT,
  `Pedido_idPedido` int NOT NULL,
  `Producto_idPlato` int NOT NULL,
  PRIMARY KEY (`idDetallesPedido`),
  KEY `fk_Pedido_has_Producto_Producto1_idx` (`Producto_idPlato`),
  KEY `fk_Pedido_has_Producto_Pedido1_idx` (`Pedido_idPedido`),
  CONSTRAINT `fk_Pedido_has_Producto_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `fk_Pedido_has_Producto_Producto1` FOREIGN KEY (`Producto_idPlato`) REFERENCES `productos` (`idPlato`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallespedido`
--

LOCK TABLES `detallespedido` WRITE;
/*!40000 ALTER TABLE `detallespedido` DISABLE KEYS */;
INSERT INTO `detallespedido` VALUES (1,1,701),(2,1,702),(3,1,703),(4,1,704),(5,2,705),(6,2,706),(7,2,707),(8,2,708),(9,3,709),(10,3,710),(11,3,711),(12,3,712),(13,4,713),(14,4,714),(15,4,715),(16,4,716),(17,5,717),(18,5,718),(19,5,719),(20,5,720),(21,6,721),(22,6,722),(23,6,723),(24,6,724),(25,7,725),(26,7,726),(27,7,727),(28,7,728),(29,8,729),(30,8,730),(31,8,731),(32,8,732),(33,9,733),(34,9,734),(35,9,735),(36,9,736),(37,10,737),(38,10,738),(39,10,739),(40,10,740),(41,11,741),(42,11,742),(43,11,743),(44,11,744),(45,12,745),(46,12,746),(47,12,747),(48,12,748),(49,13,749),(50,13,750),(51,13,751),(52,13,752),(53,14,753),(54,14,754),(55,14,755),(56,14,756),(57,15,757),(58,15,758),(59,15,759),(60,15,760),(61,16,761),(62,16,762),(63,16,763),(64,16,764),(65,17,765),(66,17,766),(67,17,767),(68,17,768),(69,18,769),(70,18,770),(71,18,771),(72,18,772),(73,19,773),(74,19,774),(75,19,775),(76,19,776),(77,20,777),(78,20,778),(79,20,779),(80,20,780),(81,21,781),(82,21,782),(83,21,783),(84,21,784),(85,22,785),(86,22,786),(87,22,787),(88,22,788),(89,23,789),(90,23,790),(91,23,791),(92,23,792),(93,24,793),(94,24,794),(95,24,795),(96,24,796),(97,25,797),(98,25,798),(99,25,799),(100,25,800);
/*!40000 ALTER TABLE `detallespedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `puesto` varchar(45) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `Jefe_idEmpleado` int DEFAULT NULL,
  `Pedido_idPedido` int DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_Empleados_Empleados_idx` (`Jefe_idEmpleado`),
  KEY `fk_Empleados_Pedido1_idx` (`Pedido_idPedido`),
  CONSTRAINT `fk_Empleados_Empleados` FOREIGN KEY (`Jefe_idEmpleado`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `fk_Empleados_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Carlos','Iglesias','Jefe',3500.00,'1987-07-16',23,NULL),(2,'Sofia','Ruiz','Empleado',1321.62,'1996-10-22',23,NULL),(3,'Manuel','Santos','Empleado',1495.04,'1991-12-24',23,NULL),(4,'Laura','Fernandez','Empleado',837.87,'1980-02-26',23,NULL),(5,'Alejandro','Lopez','Empleado',1036.78,'1998-05-07',23,NULL),(6,'Elena','Gomez','Empleado',1071.20,'1987-05-23',7,NULL),(7,'David','Martin','Empleado',1430.84,'1989-12-12',23,NULL),(8,'Ana','Megany','Empleado',933.91,'1982-03-06',7,NULL),(9,'Francisco','Stuckes','Empleado',800.20,'1989-03-30',7,NULL),(10,'Isabel','Roome','Empleado',1732.53,'1998-06-11',7,NULL),(11,'Alberto','Castanaga','Empleado',923.37,'1993-11-14',23,NULL),(12,'Javier','Lovat','Jefe',820.05,'1990-03-22',23,NULL),(13,'Maria','Lamonby','Empleado',1772.04,'1990-06-05',23,NULL),(14,'Luis','Shrimpling','Empleado',1440.29,'1986-05-31',23,NULL),(15,'Isabel','Murrey','Empleado',1357.27,'1990-08-26',23,NULL),(16,'Sergio','Maffeo','Empleado',1590.47,'1983-09-20',23,NULL),(17,'Alicia','Fackney','Empleado',1504.50,'1996-12-07',23,NULL),(18,'Javier','Yaakov','Empleado',1489.12,'1995-06-19',23,NULL),(19,'Beatriz','Mattiato','Empleado',862.98,'2000-03-13',23,NULL),(20,'Antonio','Grisard','Empleado',892.34,'2001-02-18',23,NULL),(21,'Laura','Turley','Empleado',1356.01,'1988-05-15',23,NULL),(22,'Ricardo','Lewson','Empleado',1680.58,'1988-10-19',23,NULL),(23,'Silvia','Bush','Empleado',1680.19,'1987-02-16',23,NULL),(24,'Ana','Arney','Empleado',1347.52,'1994-05-11',23,NULL),(25,'Pablo','Studdal','Empleado',1718.25,'1998-11-28',23,NULL),(26,'Laura','Lyven','Empleado',1046.07,'1997-12-15',23,NULL),(27,'Carmen','Mintram','Empleado',1084.69,'1990-04-10',23,NULL),(28,'Manuel','Hargate','Empleado',1057.23,'1997-12-27',23,NULL),(29,'Raul','Carrabot','Empleado',1015.89,'1998-12-29',7,NULL),(30,'Lucia','Tysall','Empleado',1140.28,'1992-03-14',7,NULL),(31,'Sofia','Aughton','Empleado',934.04,'1996-10-24',7,NULL),(32,'Marta','Pergens','Empleado',1259.22,'2002-12-23',7,NULL),(33,'Isabel','Dalliwatr','Empleado',1272.33,'1986-10-10',7,NULL),(34,'Javier','Smithson','Empleado',1363.13,'1980-02-19',7,NULL),(35,'Ana','Hazeltine','Empleado',1595.93,'1985-10-19',7,NULL),(36,'Carlos','Cantor','Empleado',1156.58,'2002-08-02',7,NULL),(37,'Alvaro','Daens','Empleado',1643.65,'2003-07-29',7,NULL),(38,'Jose','Mechi','Empleado',1132.91,'1990-06-20',7,NULL),(39,'Marta','Spadazzi','Empleado',1624.79,'1981-03-08',7,NULL),(40,'Julia','Gathwaite','Empleado',1014.22,'1985-04-06',7,NULL),(41,'Lucia','Rittelmeyer','Empleado',1329.80,'1981-02-21',7,NULL),(42,'Ana','Swallwell','Empleado',1512.92,'1981-01-22',7,NULL),(43,'Sofia','Grieg','Empleado',1157.44,'1985-02-08',7,NULL),(44,'Juan','O\'Driscole','Empleado',1471.83,'2003-05-19',7,NULL),(45,'Maria','Perello','Empleado',1070.65,'1987-12-31',7,NULL),(46,'Ana','Ollier','Empleado',1015.42,'1988-03-05',7,NULL),(47,'Zoe','Telling','Empleado',1575.01,'1982-08-12',7,NULL),(48,'Esteban','Ceschelli','Empleado',1513.46,'1982-04-13',7,NULL),(49,'Eugenia','Ahrens','Empleado',963.20,'1985-08-11',7,NULL),(50,'Selena','Beirne','Empleado',1483.84,'1990-10-22',7,NULL),(51,'Juan','Perez','Cocinero',2500.00,'2024-05-20',NULL,NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `actualizar_salario` AFTER UPDATE ON `empleados` FOR EACH ROW BEGIN
    IF NEW.salario != OLD.salario THEN
        INSERT INTO registro_salarios (idEmpleado, salarioAnterior, salarioNuevo)
        VALUES (NEW.idEmpleado, OLD.salario, NEW.salario);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `idMenu` int NOT NULL AUTO_INCREMENT,
  `nombreMenu` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripción` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Época de Sabores','2016-12-14','Un recorrido estacional que cuenta la historia de la temporada a través de exquisitos sabores.'),(2,'Rutas Gastronómicas','2017-09-03','Descubre nuevas rutas culinarias que fusionan tradiciones de todo el mundo.'),(3,'Experiencia Culinary','2016-08-12','Una experiencia única que combina arte y sabor en cada plato.'),(4,'Viaje de los Sentidos','2019-08-16','Sumérgete en un viaje sensorial que despierta todos tus sentidos.'),(5,'Festín del Arte Culinario','2014-10-08','Celebración culinaria donde cada plato es una obra de arte comestible.'),(6,'Delicias del Chef Maestro','2015-07-27','Deleita tus sentidos con platillos maestros guiados por un chef experto.'),(7,'Sinfonía de Sabores','2015-08-18','Armonía de sabores seleccionados cuidadosamente para crear una experiencia única.'),(8,'Paseo Gastronómico','2022-04-15','Un paseo por diversos sabores y texturas que te transportará por el mundo.'),(9,'Menú Encantado','2014-05-09','Descubre platillos mágicos que encantan el paladar y transportan a un mundo de delicias.'),(10,'Cocina de Ensueño','2013-07-26','Sumérgete en una experiencia culinaria que parece salida de un sueño donde cada bocado es celestial.'),(11,'Maravillas del Paladar','2014-05-28','Explora las maravillas que la cocina puede ofrecer con platos sorprendentes y satisfactorios.'),(12,'Fantasía Gastronómica','2021-12-24','Un menú lleno de imaginación y creatividad donde los sabores te transportan a un lugar único y especial.'),(13,'Aventuras en el Plato','2013-12-21','Aventúrate en un viaje culinario que combina ingredientes exquisitos para una experiencia inolvidable.'),(14,'Cuentos del Sabor','2018-10-23','Sazón única que te transporta a un mundo de deliciosas sorpresas en cada plato.'),(15,'Encuentro Culinario','2016-12-07','Una fusión de ingredientes frescos y creatividad culinaria para una experiencia gastronómica única.'),(16,'Odisea Gourmet','2022-10-19','Un menú que celebra la diversidad de sabores texturas y aromas para satisfacer todos los paladares.'),(17,'Secretos de la Sazón','2017-06-20','Descubre secretos culinarios con sabores que evocan emociones y recuerdos.'),(18,'Travesía Deliciosa','2020-01-06','Platos cuidadosamente seleccionados que te llevan en una deliciosa travesía por la cocina gourmet.'),(19,'Magia en el Plato','2023-06-04','Magia en cada bocado con sabores que te transportan a un lugar de deleite culinario.'),(20,'Sueños Gastronómicos','2017-11-22','Sueños gastronómicos convertidos en realidad con cada platillo que sorprende y complace.'),(21,'Esencia del Festín','2020-10-25','Esencia de festín que resalta la diversidad de sabores en una experiencia culinaria inolvidable.'),(22,'Misterios del Menú','2021-01-16','Misterios culinarios revelados en cada plato que despiertan la curiosidad del paladar.'),(23,'Delirio de Degustación','2020-03-11','Delirio de degustación con una variedad de sabores que estimulan y satisfacen.'),(24,'Travesía de Aromas','2019-08-14','Travesía de aromas y sabores que te sumergen en una experiencia gastronómica única.'),(25,'Placeres en el Plato','2015-12-18','Placeres en el plato que despiertan la alegría del paladar en cada bocado.'),(26,'Galaxia Gastronómica','2012-10-27','Galaxia gastronómica que explora sabores cósmicos y combinaciones únicas.'),(27,'Sabores Celestiales','2017-01-07','Sabores celestiales que te transportan a un lugar de deleite culinario único.'),(28,'Travesía del Sibarita','2019-11-29','Travesía del sibarita que ofrece una experiencia gourmet exclusiva.'),(29,'Experiencia Gastronómica Única','2020-07-23','Experiencia gastronómica única que sorprende y encanta en cada momento.'),(30,'Danza de Sabores','2018-01-27','Danza de sabores que despierta la alegría del paladar con cada movimiento.'),(31,'Enigma Culinary','2018-03-14','Enigma culinario que invita a descubrir sabores intrigantes y deliciosos.'),(32,'Festín de Inspiración','2012-05-26','Festín de inspiración que combina ingredientes creativos para una experiencia culinaria única.'),(33,'Ritos del Sabor','2018-03-20','Ritos del sabor que celebran la diversidad y la riqueza de la gastronomía.'),(34,'Travesía Culinaria','2022-10-18','Travesía culinaria que explora nuevas fronteras de sabores y texturas.'),(35,'Magia en Cada Bocado','2012-03-17','Magia en cada bocado con platos que encantan y deleitan en cada momento.'),(36,'Odissea del Paladar','2016-05-08','Odisea del paladar que te lleva en un viaje culinario inolvidable.'),(37,'Sinfonía de Aromas','2012-12-08','Sinfonía de aromas que envuelve tus sentidos en una experiencia gastronómica única.'),(38,'Encanto en el Plato','2022-11-29','Encanto en el plato con una selección de delicias que cautivan tu paladar.'),(39,'Festival de los Sentidos','2012-09-03','Maratón de sabores que estimula y satisface en cada etapa culinaria.'),(40,'Travesía de Sabores','2021-02-11','Caprichos culinarios que te llevan en un viaje de placer gastronómico.'),(41,'Experiencia Culinaria','2022-07-19','Euforia gastronómica con una explosión de sabores que alegran el paladar.'),(42,'Menú de Celebración','2018-01-12','Caminos del sabor que te conducen a destinos culinarios emocionantes.'),(43,'Aventuras Gastronómicas','2020-09-14','Aventura en el paladar con platos que despiertan la curiosidad y el gusto.'),(44,'Armonía en el Plato','2023-03-26','Viaje sensorial que te sumerge en una experiencia culinaria única.'),(45,'Delicias del Paladar','2012-09-18','Orquesta de delicias que armoniza sabores para una experiencia completa.'),(46,'Sinfonía de Especias','2013-07-14','Travesía de exquisitos que exploran la elegancia y la fineza en cada plato.'),(47,'Menú Inspirador','2017-11-08','Encuentro culinario que celebra la diversidad de sabores y texturas.'),(48,'Exploración Culinaria','2020-10-15','Exploración culinaria que te lleva por nuevos territorios de sabor.'),(49,'Rincón Gourmet','2018-10-19','Sonata gastronómica que crea melodías de placer en cada bocado.'),(50,'Sabores del Mundo','2022-02-03','Fiesta de los sentidos que despierta estimula y complace en cada plato.');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesas`
--

DROP TABLE IF EXISTS `mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesas` (
  `idMesa` int NOT NULL AUTO_INCREMENT,
  `capacidad` int DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idMesa`)
) ENGINE=InnoDB AUTO_INCREMENT=1051 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesas`
--

LOCK TABLES `mesas` WRITE;
/*!40000 ALTER TABLE `mesas` DISABLE KEYS */;
INSERT INTO `mesas` VALUES (1,4,'libre'),(2,2,'reservada'),(3,4,'reservada'),(4,11,'libre'),(5,6,'reservada'),(6,2,'reservada'),(7,6,'Ocupada'),(8,10,'reservada'),(9,10,'Ocupada'),(10,7,'Ocupada'),(11,4,'libre'),(12,3,'Ocupada'),(13,2,'Ocupada'),(14,2,'libre'),(15,2,'Ocupada'),(16,2,'reservada'),(17,8,'Ocupada'),(18,6,'Ocupada'),(19,12,'Ocupada'),(20,9,'Ocupada'),(21,2,'Ocupada'),(22,8,'libre'),(23,2,'reservada'),(24,10,'Ocupada'),(25,7,'libre'),(26,4,'reservada'),(27,7,'Ocupada'),(28,10,'reservada'),(29,6,'Ocupada'),(30,8,'libre'),(31,8,'Ocupada'),(32,5,'reservada'),(33,9,'libre'),(34,8,'reservada'),(35,12,'libre'),(36,10,'reservada'),(37,4,'libre'),(38,6,'reservada'),(39,12,'Ocupada'),(40,10,'reservada'),(41,2,'reservada'),(42,7,'reservada'),(43,2,'Ocupada'),(44,4,'reservada'),(45,3,'reservada'),(46,3,'Ocupada'),(47,9,'Ocupada'),(48,12,'libre'),(49,10,'libre'),(50,6,'Ocupada'),(51,NULL,NULL),(52,NULL,NULL),(53,NULL,NULL),(54,NULL,NULL),(55,NULL,NULL),(56,NULL,NULL),(57,NULL,NULL),(58,NULL,NULL),(59,NULL,NULL),(60,NULL,NULL),(61,NULL,NULL),(62,NULL,NULL),(63,NULL,NULL),(64,NULL,NULL),(65,NULL,NULL),(66,NULL,NULL),(67,NULL,NULL),(68,NULL,NULL),(69,NULL,NULL),(70,NULL,NULL),(71,NULL,NULL),(72,NULL,NULL),(73,NULL,NULL),(74,NULL,NULL),(75,NULL,NULL),(76,NULL,NULL),(77,NULL,NULL),(78,NULL,NULL),(79,NULL,NULL),(80,NULL,NULL),(81,NULL,NULL),(82,NULL,NULL),(83,NULL,NULL),(84,NULL,NULL),(85,NULL,NULL),(86,NULL,NULL),(87,NULL,NULL),(88,NULL,NULL),(89,NULL,NULL),(90,NULL,NULL),(91,NULL,NULL),(92,NULL,NULL),(93,NULL,NULL),(94,NULL,NULL),(95,NULL,NULL),(96,NULL,NULL),(97,NULL,NULL),(98,NULL,NULL),(99,NULL,NULL),(100,NULL,NULL),(101,NULL,NULL),(102,NULL,NULL),(103,NULL,NULL),(104,NULL,NULL),(105,NULL,NULL),(106,NULL,NULL),(107,NULL,NULL),(108,NULL,NULL),(109,NULL,NULL),(110,NULL,NULL),(111,NULL,NULL),(112,NULL,NULL),(113,NULL,NULL),(114,NULL,NULL),(115,NULL,NULL),(116,NULL,NULL),(117,NULL,NULL),(118,NULL,NULL),(119,NULL,NULL),(120,NULL,NULL),(121,NULL,NULL),(122,NULL,NULL),(123,NULL,NULL),(124,NULL,NULL),(125,NULL,NULL),(126,NULL,NULL),(127,NULL,NULL),(128,NULL,NULL),(129,NULL,NULL),(130,NULL,NULL),(131,NULL,NULL),(132,NULL,NULL),(133,NULL,NULL),(134,NULL,NULL),(135,NULL,NULL),(136,NULL,NULL),(137,NULL,NULL),(138,NULL,NULL),(139,NULL,NULL),(140,NULL,NULL),(141,NULL,NULL),(142,NULL,NULL),(143,NULL,NULL),(144,NULL,NULL),(145,NULL,NULL),(146,NULL,NULL),(147,NULL,NULL),(148,NULL,NULL),(149,NULL,NULL),(150,NULL,NULL),(151,NULL,NULL),(152,NULL,NULL),(153,NULL,NULL),(154,NULL,NULL),(155,NULL,NULL),(156,NULL,NULL),(157,NULL,NULL),(158,NULL,NULL),(159,NULL,NULL),(160,NULL,NULL),(161,NULL,NULL),(162,NULL,NULL),(163,NULL,NULL),(164,NULL,NULL),(165,NULL,NULL),(166,NULL,NULL),(167,NULL,NULL),(168,NULL,NULL),(169,NULL,NULL),(170,NULL,NULL),(171,NULL,NULL),(172,NULL,NULL),(173,NULL,NULL),(174,NULL,NULL),(175,NULL,NULL),(176,NULL,NULL),(177,NULL,NULL),(178,NULL,NULL),(179,NULL,NULL),(180,NULL,NULL),(181,NULL,NULL),(182,NULL,NULL),(183,NULL,NULL),(184,NULL,NULL),(185,NULL,NULL),(186,NULL,NULL),(187,NULL,NULL),(188,NULL,NULL),(189,NULL,NULL),(190,NULL,NULL),(191,NULL,NULL),(192,NULL,NULL),(193,NULL,NULL),(194,NULL,NULL),(195,NULL,NULL),(196,NULL,NULL),(197,NULL,NULL),(198,NULL,NULL),(199,NULL,NULL),(200,NULL,NULL),(201,NULL,NULL),(202,NULL,NULL),(203,NULL,NULL),(204,NULL,NULL),(205,NULL,NULL),(206,NULL,NULL),(207,NULL,NULL),(208,NULL,NULL),(209,NULL,NULL),(210,NULL,NULL),(211,NULL,NULL),(212,NULL,NULL),(213,NULL,NULL),(214,NULL,NULL),(215,NULL,NULL),(216,NULL,NULL),(217,NULL,NULL),(218,NULL,NULL),(219,NULL,NULL),(220,NULL,NULL),(221,NULL,NULL),(222,NULL,NULL),(223,NULL,NULL),(224,NULL,NULL),(225,NULL,NULL),(226,NULL,NULL),(227,NULL,NULL),(228,NULL,NULL),(229,NULL,NULL),(230,NULL,NULL),(231,NULL,NULL),(232,NULL,NULL),(233,NULL,NULL),(234,NULL,NULL),(235,NULL,NULL),(236,NULL,NULL),(237,NULL,NULL),(238,NULL,NULL),(239,NULL,NULL),(240,NULL,NULL),(241,NULL,NULL),(242,NULL,NULL),(243,NULL,NULL),(244,NULL,NULL),(245,NULL,NULL),(246,NULL,NULL),(247,NULL,NULL),(248,NULL,NULL),(249,NULL,NULL),(250,NULL,NULL),(251,NULL,NULL),(252,NULL,NULL),(253,NULL,NULL),(254,NULL,NULL),(255,NULL,NULL),(256,NULL,NULL),(257,NULL,NULL),(258,NULL,NULL),(259,NULL,NULL),(260,NULL,NULL),(261,NULL,NULL),(262,NULL,NULL),(263,NULL,NULL),(264,NULL,NULL),(265,NULL,NULL),(266,NULL,NULL),(267,NULL,NULL),(268,NULL,NULL),(269,NULL,NULL),(270,NULL,NULL),(271,NULL,NULL),(272,NULL,NULL),(273,NULL,NULL),(274,NULL,NULL),(275,NULL,NULL),(276,NULL,NULL),(277,NULL,NULL),(278,NULL,NULL),(279,NULL,NULL),(280,NULL,NULL),(281,NULL,NULL),(282,NULL,NULL),(283,NULL,NULL),(284,NULL,NULL),(285,NULL,NULL),(286,NULL,NULL),(287,NULL,NULL),(288,NULL,NULL),(289,NULL,NULL),(290,NULL,NULL),(291,NULL,NULL),(292,NULL,NULL),(293,NULL,NULL),(294,NULL,NULL),(295,NULL,NULL),(296,NULL,NULL),(297,NULL,NULL),(298,NULL,NULL),(299,NULL,NULL),(300,NULL,NULL),(301,NULL,NULL),(302,NULL,NULL),(303,NULL,NULL),(304,NULL,NULL),(305,NULL,NULL),(306,NULL,NULL),(307,NULL,NULL),(308,NULL,NULL),(309,NULL,NULL),(310,NULL,NULL),(311,NULL,NULL),(312,NULL,NULL),(313,NULL,NULL),(314,NULL,NULL),(315,NULL,NULL),(316,NULL,NULL),(317,NULL,NULL),(318,NULL,NULL),(319,NULL,NULL),(320,NULL,NULL),(321,NULL,NULL),(322,NULL,NULL),(323,NULL,NULL),(324,NULL,NULL),(325,NULL,NULL),(326,NULL,NULL),(327,NULL,NULL),(328,NULL,NULL),(329,NULL,NULL),(330,NULL,NULL),(331,NULL,NULL),(332,NULL,NULL),(333,NULL,NULL),(334,NULL,NULL),(335,NULL,NULL),(336,NULL,NULL),(337,NULL,NULL),(338,NULL,NULL),(339,NULL,NULL),(340,NULL,NULL),(341,NULL,NULL),(342,NULL,NULL),(343,NULL,NULL),(344,NULL,NULL),(345,NULL,NULL),(346,NULL,NULL),(347,NULL,NULL),(348,NULL,NULL),(349,NULL,NULL),(350,NULL,NULL),(351,NULL,NULL),(352,NULL,NULL),(353,NULL,NULL),(354,NULL,NULL),(355,NULL,NULL),(356,NULL,NULL),(357,NULL,NULL),(358,NULL,NULL),(359,NULL,NULL),(360,NULL,NULL),(361,NULL,NULL),(362,NULL,NULL),(363,NULL,NULL),(364,NULL,NULL),(365,NULL,NULL),(366,NULL,NULL),(367,NULL,NULL),(368,NULL,NULL),(369,NULL,NULL),(370,NULL,NULL),(371,NULL,NULL),(372,NULL,NULL),(373,NULL,NULL),(374,NULL,NULL),(375,NULL,NULL),(376,NULL,NULL),(377,NULL,NULL),(378,NULL,NULL),(379,NULL,NULL),(380,NULL,NULL),(381,NULL,NULL),(382,NULL,NULL),(383,NULL,NULL),(384,NULL,NULL),(385,NULL,NULL),(386,NULL,NULL),(387,NULL,NULL),(388,NULL,NULL),(389,NULL,NULL),(390,NULL,NULL),(391,NULL,NULL),(392,NULL,NULL),(393,NULL,NULL),(394,NULL,NULL),(395,NULL,NULL),(396,NULL,NULL),(397,NULL,NULL),(398,NULL,NULL),(399,NULL,NULL),(400,NULL,NULL),(401,NULL,NULL),(402,NULL,NULL),(403,NULL,NULL),(404,NULL,NULL),(405,NULL,NULL),(406,NULL,NULL),(407,NULL,NULL),(408,NULL,NULL),(409,NULL,NULL),(410,NULL,NULL),(411,NULL,NULL),(412,NULL,NULL),(413,NULL,NULL),(414,NULL,NULL),(415,NULL,NULL),(416,NULL,NULL),(417,NULL,NULL),(418,NULL,NULL),(419,NULL,NULL),(420,NULL,NULL),(421,NULL,NULL),(422,NULL,NULL),(423,NULL,NULL),(424,NULL,NULL),(425,NULL,NULL),(426,NULL,NULL),(427,NULL,NULL),(428,NULL,NULL),(429,NULL,NULL),(430,NULL,NULL),(431,NULL,NULL),(432,NULL,NULL),(433,NULL,NULL),(434,NULL,NULL),(435,NULL,NULL),(436,NULL,NULL),(437,NULL,NULL),(438,NULL,NULL),(439,NULL,NULL),(440,NULL,NULL),(441,NULL,NULL),(442,NULL,NULL),(443,NULL,NULL),(444,NULL,NULL),(445,NULL,NULL),(446,NULL,NULL),(447,NULL,NULL),(448,NULL,NULL),(449,NULL,NULL),(450,NULL,NULL),(451,NULL,NULL),(452,NULL,NULL),(453,NULL,NULL),(454,NULL,NULL),(455,NULL,NULL),(456,NULL,NULL),(457,NULL,NULL),(458,NULL,NULL),(459,NULL,NULL),(460,NULL,NULL),(461,NULL,NULL),(462,NULL,NULL),(463,NULL,NULL),(464,NULL,NULL),(465,NULL,NULL),(466,NULL,NULL),(467,NULL,NULL),(468,NULL,NULL),(469,NULL,NULL),(470,NULL,NULL),(471,NULL,NULL),(472,NULL,NULL),(473,NULL,NULL),(474,NULL,NULL),(475,NULL,NULL),(476,NULL,NULL),(477,NULL,NULL),(478,NULL,NULL),(479,NULL,NULL),(480,NULL,NULL),(481,NULL,NULL),(482,NULL,NULL),(483,NULL,NULL),(484,NULL,NULL),(485,NULL,NULL),(486,NULL,NULL),(487,NULL,NULL),(488,NULL,NULL),(489,NULL,NULL),(490,NULL,NULL),(491,NULL,NULL),(492,NULL,NULL),(493,NULL,NULL),(494,NULL,NULL),(495,NULL,NULL),(496,NULL,NULL),(497,NULL,NULL),(498,NULL,NULL),(499,NULL,NULL),(500,NULL,NULL),(501,NULL,NULL),(502,NULL,NULL),(503,NULL,NULL),(504,NULL,NULL),(505,NULL,NULL),(506,NULL,NULL),(507,NULL,NULL),(508,NULL,NULL),(509,NULL,NULL),(510,NULL,NULL),(511,NULL,NULL),(512,NULL,NULL),(513,NULL,NULL),(514,NULL,NULL),(515,NULL,NULL),(516,NULL,NULL),(517,NULL,NULL),(518,NULL,NULL),(519,NULL,NULL),(520,NULL,NULL),(521,NULL,NULL),(522,NULL,NULL),(523,NULL,NULL),(524,NULL,NULL),(525,NULL,NULL),(526,NULL,NULL),(527,NULL,NULL),(528,NULL,NULL),(529,NULL,NULL),(530,NULL,NULL),(531,NULL,NULL),(532,NULL,NULL),(533,NULL,NULL),(534,NULL,NULL),(535,NULL,NULL),(536,NULL,NULL),(537,NULL,NULL),(538,NULL,NULL),(539,NULL,NULL),(540,NULL,NULL),(541,NULL,NULL),(542,NULL,NULL),(543,NULL,NULL),(544,NULL,NULL),(545,NULL,NULL),(546,NULL,NULL),(547,NULL,NULL),(548,NULL,NULL),(549,NULL,NULL),(550,NULL,NULL),(551,NULL,NULL),(552,NULL,NULL),(553,NULL,NULL),(554,NULL,NULL),(555,NULL,NULL),(556,NULL,NULL),(557,NULL,NULL),(558,NULL,NULL),(559,NULL,NULL),(560,NULL,NULL),(561,NULL,NULL),(562,NULL,NULL),(563,NULL,NULL),(564,NULL,NULL),(565,NULL,NULL),(566,NULL,NULL),(567,NULL,NULL),(568,NULL,NULL),(569,NULL,NULL),(570,NULL,NULL),(571,NULL,NULL),(572,NULL,NULL),(573,NULL,NULL),(574,NULL,NULL),(575,NULL,NULL),(576,NULL,NULL),(577,NULL,NULL),(578,NULL,NULL),(579,NULL,NULL),(580,NULL,NULL),(581,NULL,NULL),(582,NULL,NULL),(583,NULL,NULL),(584,NULL,NULL),(585,NULL,NULL),(586,NULL,NULL),(587,NULL,NULL),(588,NULL,NULL),(589,NULL,NULL),(590,NULL,NULL),(591,NULL,NULL),(592,NULL,NULL),(593,NULL,NULL),(594,NULL,NULL),(595,NULL,NULL),(596,NULL,NULL),(597,NULL,NULL),(598,NULL,NULL),(599,NULL,NULL),(600,NULL,NULL),(601,NULL,NULL),(602,NULL,NULL),(603,NULL,NULL),(604,NULL,NULL),(605,NULL,NULL),(606,NULL,NULL),(607,NULL,NULL),(608,NULL,NULL),(609,NULL,NULL),(610,NULL,NULL),(611,NULL,NULL),(612,NULL,NULL),(613,NULL,NULL),(614,NULL,NULL),(615,NULL,NULL),(616,NULL,NULL),(617,NULL,NULL),(618,NULL,NULL),(619,NULL,NULL),(620,NULL,NULL),(621,NULL,NULL),(622,NULL,NULL),(623,NULL,NULL),(624,NULL,NULL),(625,NULL,NULL),(626,NULL,NULL),(627,NULL,NULL),(628,NULL,NULL),(629,NULL,NULL),(630,NULL,NULL),(631,NULL,NULL),(632,NULL,NULL),(633,NULL,NULL),(634,NULL,NULL),(635,NULL,NULL),(636,NULL,NULL),(637,NULL,NULL),(638,NULL,NULL),(639,NULL,NULL),(640,NULL,NULL),(641,NULL,NULL),(642,NULL,NULL),(643,NULL,NULL),(644,NULL,NULL),(645,NULL,NULL),(646,NULL,NULL),(647,NULL,NULL),(648,NULL,NULL),(649,NULL,NULL),(650,NULL,NULL),(651,NULL,NULL),(652,NULL,NULL),(653,NULL,NULL),(654,NULL,NULL),(655,NULL,NULL),(656,NULL,NULL),(657,NULL,NULL),(658,NULL,NULL),(659,NULL,NULL),(660,NULL,NULL),(661,NULL,NULL),(662,NULL,NULL),(663,NULL,NULL),(664,NULL,NULL),(665,NULL,NULL),(666,NULL,NULL),(667,NULL,NULL),(668,NULL,NULL),(669,NULL,NULL),(670,NULL,NULL),(671,NULL,NULL),(672,NULL,NULL),(673,NULL,NULL),(674,NULL,NULL),(675,NULL,NULL),(676,NULL,NULL),(677,NULL,NULL),(678,NULL,NULL),(679,NULL,NULL),(680,NULL,NULL),(681,NULL,NULL),(682,NULL,NULL),(683,NULL,NULL),(684,NULL,NULL),(685,NULL,NULL),(686,NULL,NULL),(687,NULL,NULL),(688,NULL,NULL),(689,NULL,NULL),(690,NULL,NULL),(691,NULL,NULL),(692,NULL,NULL),(693,NULL,NULL),(694,NULL,NULL),(695,NULL,NULL),(696,NULL,NULL),(697,NULL,NULL),(698,NULL,NULL),(699,NULL,NULL),(700,NULL,NULL),(701,NULL,NULL),(702,NULL,NULL),(703,NULL,NULL),(704,NULL,NULL),(705,NULL,NULL),(706,NULL,NULL),(707,NULL,NULL),(708,NULL,NULL),(709,NULL,NULL),(710,NULL,NULL),(711,NULL,NULL),(712,NULL,NULL),(713,NULL,NULL),(714,NULL,NULL),(715,NULL,NULL),(716,NULL,NULL),(717,NULL,NULL),(718,NULL,NULL),(719,NULL,NULL),(720,NULL,NULL),(721,NULL,NULL),(722,NULL,NULL),(723,NULL,NULL),(724,NULL,NULL),(725,NULL,NULL),(726,NULL,NULL),(727,NULL,NULL),(728,NULL,NULL),(729,NULL,NULL),(730,NULL,NULL),(731,NULL,NULL),(732,NULL,NULL),(733,NULL,NULL),(734,NULL,NULL),(735,NULL,NULL),(736,NULL,NULL),(737,NULL,NULL),(738,NULL,NULL),(739,NULL,NULL),(740,NULL,NULL),(741,NULL,NULL),(742,NULL,NULL),(743,NULL,NULL),(744,NULL,NULL),(745,NULL,NULL),(746,NULL,NULL),(747,NULL,NULL),(748,NULL,NULL),(749,NULL,NULL),(750,NULL,NULL),(751,NULL,NULL),(752,NULL,NULL),(753,NULL,NULL),(754,NULL,NULL),(755,NULL,NULL),(756,NULL,NULL),(757,NULL,NULL),(758,NULL,NULL),(759,NULL,NULL),(760,NULL,NULL),(761,NULL,NULL),(762,NULL,NULL),(763,NULL,NULL),(764,NULL,NULL),(765,NULL,NULL),(766,NULL,NULL),(767,NULL,NULL),(768,NULL,NULL),(769,NULL,NULL),(770,NULL,NULL),(771,NULL,NULL),(772,NULL,NULL),(773,NULL,NULL),(774,NULL,NULL),(775,NULL,NULL),(776,NULL,NULL),(777,NULL,NULL),(778,NULL,NULL),(779,NULL,NULL),(780,NULL,NULL),(781,NULL,NULL),(782,NULL,NULL),(783,NULL,NULL),(784,NULL,NULL),(785,NULL,NULL),(786,NULL,NULL),(787,NULL,NULL),(788,NULL,NULL),(789,NULL,NULL),(790,NULL,NULL),(791,NULL,NULL),(792,NULL,NULL),(793,NULL,NULL),(794,NULL,NULL),(795,NULL,NULL),(796,NULL,NULL),(797,NULL,NULL),(798,NULL,NULL),(799,NULL,NULL),(800,NULL,NULL),(801,NULL,NULL),(802,NULL,NULL),(803,NULL,NULL),(804,NULL,NULL),(805,NULL,NULL),(806,NULL,NULL),(807,NULL,NULL),(808,NULL,NULL),(809,NULL,NULL),(810,NULL,NULL),(811,NULL,NULL),(812,NULL,NULL),(813,NULL,NULL),(814,NULL,NULL),(815,NULL,NULL),(816,NULL,NULL),(817,NULL,NULL),(818,NULL,NULL),(819,NULL,NULL),(820,NULL,NULL),(821,NULL,NULL),(822,NULL,NULL),(823,NULL,NULL),(824,NULL,NULL),(825,NULL,NULL),(826,NULL,NULL),(827,NULL,NULL),(828,NULL,NULL),(829,NULL,NULL),(830,NULL,NULL),(831,NULL,NULL),(832,NULL,NULL),(833,NULL,NULL),(834,NULL,NULL),(835,NULL,NULL),(836,NULL,NULL),(837,NULL,NULL),(838,NULL,NULL),(839,NULL,NULL),(840,NULL,NULL),(841,NULL,NULL),(842,NULL,NULL),(843,NULL,NULL),(844,NULL,NULL),(845,NULL,NULL),(846,NULL,NULL),(847,NULL,NULL),(848,NULL,NULL),(849,NULL,NULL),(850,NULL,NULL),(851,NULL,NULL),(852,NULL,NULL),(853,NULL,NULL),(854,NULL,NULL),(855,NULL,NULL),(856,NULL,NULL),(857,NULL,NULL),(858,NULL,NULL),(859,NULL,NULL),(860,NULL,NULL),(861,NULL,NULL),(862,NULL,NULL),(863,NULL,NULL),(864,NULL,NULL),(865,NULL,NULL),(866,NULL,NULL),(867,NULL,NULL),(868,NULL,NULL),(869,NULL,NULL),(870,NULL,NULL),(871,NULL,NULL),(872,NULL,NULL),(873,NULL,NULL),(874,NULL,NULL),(875,NULL,NULL),(876,NULL,NULL),(877,NULL,NULL),(878,NULL,NULL),(879,NULL,NULL),(880,NULL,NULL),(881,NULL,NULL),(882,NULL,NULL),(883,NULL,NULL),(884,NULL,NULL),(885,NULL,NULL),(886,NULL,NULL),(887,NULL,NULL),(888,NULL,NULL),(889,NULL,NULL),(890,NULL,NULL),(891,NULL,NULL),(892,NULL,NULL),(893,NULL,NULL),(894,NULL,NULL),(895,NULL,NULL),(896,NULL,NULL),(897,NULL,NULL),(898,NULL,NULL),(899,NULL,NULL),(900,NULL,NULL),(901,NULL,NULL),(902,NULL,NULL),(903,NULL,NULL),(904,NULL,NULL),(905,NULL,NULL),(906,NULL,NULL),(907,NULL,NULL),(908,NULL,NULL),(909,NULL,NULL),(910,NULL,NULL),(911,NULL,NULL),(912,NULL,NULL),(913,NULL,NULL),(914,NULL,NULL),(915,NULL,NULL),(916,NULL,NULL),(917,NULL,NULL),(918,NULL,NULL),(919,NULL,NULL),(920,NULL,NULL),(921,NULL,NULL),(922,NULL,NULL),(923,NULL,NULL),(924,NULL,NULL),(925,NULL,NULL),(926,NULL,NULL),(927,NULL,NULL),(928,NULL,NULL),(929,NULL,NULL),(930,NULL,NULL),(931,NULL,NULL),(932,NULL,NULL),(933,NULL,NULL),(934,NULL,NULL),(935,NULL,NULL),(936,NULL,NULL),(937,NULL,NULL),(938,NULL,NULL),(939,NULL,NULL),(940,NULL,NULL),(941,NULL,NULL),(942,NULL,NULL),(943,NULL,NULL),(944,NULL,NULL),(945,NULL,NULL),(946,NULL,NULL),(947,NULL,NULL),(948,NULL,NULL),(949,NULL,NULL),(950,NULL,NULL),(951,NULL,NULL),(952,NULL,NULL),(953,NULL,NULL),(954,NULL,NULL),(955,NULL,NULL),(956,NULL,NULL),(957,NULL,NULL),(958,NULL,NULL),(959,NULL,NULL),(960,NULL,NULL),(961,NULL,NULL),(962,NULL,NULL),(963,NULL,NULL),(964,NULL,NULL),(965,NULL,NULL),(966,NULL,NULL),(967,NULL,NULL),(968,NULL,NULL),(969,NULL,NULL),(970,NULL,NULL),(971,NULL,NULL),(972,NULL,NULL),(973,NULL,NULL),(974,NULL,NULL),(975,NULL,NULL),(976,NULL,NULL),(977,NULL,NULL),(978,NULL,NULL),(979,NULL,NULL),(980,NULL,NULL),(981,NULL,NULL),(982,NULL,NULL),(983,NULL,NULL),(984,NULL,NULL),(985,NULL,NULL),(986,NULL,NULL),(987,NULL,NULL),(988,NULL,NULL),(989,NULL,NULL),(990,NULL,NULL),(991,NULL,NULL),(992,NULL,NULL),(993,NULL,NULL),(994,NULL,NULL),(995,NULL,NULL),(996,NULL,NULL),(997,NULL,NULL),(998,NULL,NULL),(999,NULL,NULL),(1000,NULL,NULL),(1001,NULL,NULL),(1002,NULL,NULL),(1003,NULL,NULL),(1004,NULL,NULL),(1005,NULL,NULL),(1006,NULL,NULL),(1007,NULL,NULL),(1008,NULL,NULL),(1009,NULL,NULL),(1010,NULL,NULL),(1011,NULL,NULL),(1012,NULL,NULL),(1013,NULL,NULL),(1014,NULL,NULL),(1015,NULL,NULL),(1016,NULL,NULL),(1017,NULL,NULL),(1018,NULL,NULL),(1019,NULL,NULL),(1020,NULL,NULL),(1021,NULL,NULL),(1022,NULL,NULL),(1023,NULL,NULL),(1024,NULL,NULL),(1025,NULL,NULL),(1026,NULL,NULL),(1027,NULL,NULL),(1028,NULL,NULL),(1029,NULL,NULL),(1030,NULL,NULL),(1031,NULL,NULL),(1032,NULL,NULL),(1033,NULL,NULL),(1034,NULL,NULL),(1035,NULL,NULL),(1036,NULL,NULL),(1037,NULL,NULL),(1038,NULL,NULL),(1039,NULL,NULL),(1040,NULL,NULL),(1041,NULL,NULL),(1042,NULL,NULL),(1043,NULL,NULL),(1044,NULL,NULL),(1045,NULL,NULL),(1046,NULL,NULL),(1047,NULL,NULL),(1048,NULL,NULL),(1049,NULL,NULL),(1050,NULL,NULL);
/*!40000 ALTER TABLE `mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idPedido` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `estadoPedido` varchar(45) DEFAULT NULL,
  `Mesas_idMesa` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idPedido`),
  KEY `fk_Pedido_Mesas1_idx` (`Mesas_idMesa`),
  CONSTRAINT `fk_Pedido_Mesas1` FOREIGN KEY (`Mesas_idMesa`) REFERENCES `mesas` (`idMesa`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2023-06-29','Entregado',24),(2,'2023-05-31','Listo',23),(3,'2023-05-03','Entregado',8),(4,'2023-06-13','Entregado',1),(5,'2023-10-12','En preparación',45),(6,'2023-12-17','Entregado',25),(7,'2024-01-17','Entregado',37),(8,'2023-08-15','En preparación',8),(9,'2024-01-10','En preparacion',4),(10,'2024-01-11','En preparacion',48),(11,'2023-06-02','Entregado',45),(12,'2023-11-30','En preparación',41),(13,'2023-07-02','Entregado',41),(14,'2023-07-01','En preparación',45),(15,'2023-07-25','En preparación',44),(16,'2024-01-15','Entregado',31),(17,'2023-07-11','En preparación',10),(18,'2023-12-12','En preparación',48),(19,'2023-06-28','Entregado',49),(20,'2023-12-01','En preparación',17),(21,'2024-02-10','En preparación',31),(22,'2023-04-28','Entregado',44),(23,'2023-02-14','En preparación',15),(24,'2023-02-26','En preparación',5),(25,'2023-09-15','En preparación',14),(26,'2024-02-07','Entregado',25),(27,'2023-07-10','En preparación',4),(28,'2024-01-11','En preparación',39),(29,'2023-07-01','Entregado',28),(30,'2023-10-30','Entregado',28),(31,'2023-03-27','En preparación',32),(32,'2023-10-21','Entregado',49),(33,'2023-07-13','Entregado',6),(34,'2023-12-28','Entregado',34),(35,'2023-12-01','Entregado',6),(36,'2023-09-29','Entregado',33),(37,'2023-06-22','Entregado',2),(38,'2023-06-08','Entregado',3),(39,'2023-10-09','Entregado',45),(40,'2023-07-29','En preparación',31),(41,'2023-06-12','En preparación',4),(42,'2023-03-31','En preparación',4),(43,'2023-08-27','En preparación',33),(44,'2023-11-13','En preparación',24),(45,'2023-02-15','Entregado',13),(46,'2023-05-31','En preparación',36),(47,'2024-01-13','Entregado',44),(48,'2023-06-09','En preparación',33),(49,'2024-01-19','Entregado',26),(50,'2024-01-20','En preparación',5),(51,'2023-06-17','Entregado',31),(52,'2023-02-23','En preparación',12),(53,'2023-03-26','En preparación',24),(54,'2024-01-25','En preparación',31),(55,'2023-09-02','En preparación',16),(56,'2023-12-25','Entregado',39),(57,'2024-02-09','En preparación',26),(58,'2023-06-04','En preparación',13),(59,'2023-09-21','Entregado',7),(60,'2023-06-15','Entregado',15),(61,'2023-06-24','Entregado',36),(62,'2023-11-28','En preparación',10),(63,'2023-06-13','Entregado',3),(64,'2023-06-08','En preparación',29),(65,'2023-04-06','En preparación',38),(66,'2024-01-20','En preparación',25),(67,'2023-09-18','Entregado',11),(68,'2023-12-24','En preparación',39),(69,'2023-04-10','Entregado',8),(70,'2023-09-13','Entregado',6),(71,'2023-09-24','Entregado',12),(72,'2024-01-02','En preparación',19),(73,'2024-01-08','Entregado',10),(74,'2023-02-12','En preparación',20),(75,'2023-06-21','Entregado',34),(76,'2023-03-31','Entregado',41),(77,'2024-01-21','En preparación',11),(78,'2023-11-06','Entregado',12),(79,'2023-07-27','En preparación',12),(80,'2023-11-05','En preparación',48),(81,'2023-09-09','Entregado',31),(82,'2023-10-30','En preparación',7),(83,'2023-09-20','Entregado',22),(84,'2023-04-19','En preparación',11),(85,'2023-06-15','En preparación',49),(86,'2023-05-17','En preparación',33),(87,'2023-06-15','Entregado',3),(88,'2023-02-15','Entregado',48),(89,'2023-05-14','Entregado',30),(90,'2023-04-17','Entregado',15),(91,'2023-11-28','Entregado',47),(92,'2023-04-13','Entregado',14),(93,'2023-06-12','Entregado',28),(94,'2023-09-13','Entregado',10),(95,'2023-04-26','Entregado',32),(96,'2023-03-16','En preparación',19),(97,'2023-02-12','Entregado',4),(98,'2023-10-07','En preparación',37),(99,'2023-04-09','Entregado',5),(100,'2023-08-21','En preparación',25),(101,'2023-12-14','En preparación',26),(102,'2023-10-25','En preparación',39),(103,'2023-03-14','En preparación',29),(104,'2023-06-26','Entregado',39),(105,'2023-03-17','Entregado',6),(106,'2023-04-07','En preparación',30),(107,'2023-11-15','En preparación',11),(108,'2023-03-02','En preparación',8),(109,'2023-07-04','En preparación',14),(110,'2023-02-14','En preparación',41),(111,'2023-07-14','En preparación',30),(112,'2023-08-24','Entregado',5),(113,'2023-11-28','Entregado',39),(114,'2023-06-12','Entregado',12),(115,'2023-10-30','Entregado',21),(116,'2023-04-23','Entregado',11),(117,'2023-09-13','Entregado',28),(118,'2023-08-03','Entregado',17),(119,'2023-03-11','Entregado',14),(120,'2023-05-22','En preparación',40),(121,'2024-01-14','Entregado',23),(122,'2023-12-20','En preparación',40),(123,'2023-04-19','Entregado',38),(124,'2023-09-04','Entregado',30),(125,'2023-11-23','Entregado',30),(126,'2024-01-03','En preparación',20),(127,'2023-08-02','Entregado',28),(128,'2023-05-03','En preparación',23),(129,'2024-02-07','Entregado',44),(130,'2024-02-02','En preparación',47),(131,'2024-01-07','En preparación',27),(132,'2023-11-28','Entregado',49),(133,'2023-11-06','En preparación',32),(134,'2023-08-22','En preparación',31),(135,'2023-10-27','Entregado',13),(136,'2023-07-18','En preparación',30),(137,'2023-03-16','En preparación',19),(138,'2024-01-09','Entregado',6),(139,'2023-09-30','Entregado',42),(140,'2023-09-13','Entregado',24),(141,'2023-02-15','Entregado',21),(142,'2023-11-10','Entregado',31),(143,'2023-06-24','En preparación',32),(144,'2023-08-05','En preparación',50),(145,'2023-08-06','Entregado',33),(146,'2023-03-29','En preparación',43),(147,'2024-01-25','En preparación',37),(148,'2023-08-13','Entregado',19),(149,'2023-02-28','En preparación',35),(150,'2023-10-08','En preparación',41),(151,'2023-11-11','Entregado',44),(152,'2023-03-04','Entregado',41),(153,'2023-09-14','Entregado',41),(154,'2023-07-24','En preparación',5),(155,'2023-06-30','En preparación',23),(156,'2023-10-05','En preparación',41),(157,'2024-01-05','Entregado',24),(158,'2023-11-29','Entregado',42),(159,'2023-11-23','Entregado',45),(160,'2023-09-28','Entregado',40),(161,'2024-02-03','En preparación',46),(162,'2023-08-26','Entregado',43),(163,'2024-01-23','Entregado',32),(164,'2023-05-24','Entregado',50),(165,'2023-06-11','En preparación',19),(166,'2023-03-22','Entregado',6),(167,'2023-07-11','En preparación',18),(168,'2023-03-31','En preparación',39),(169,'2024-01-15','En preparación',48),(170,'2024-01-06','Entregado',32),(171,'2023-04-18','Entregado',27),(172,'2023-10-05','En preparación',32),(173,'2024-01-04','En preparación',17),(174,'2023-07-29','En preparación',6),(175,'2023-05-21','Entregado',3),(176,'2023-11-04','Entregado',46),(177,'2023-07-02','Entregado',50),(178,'2023-10-21','En preparación',19),(179,'2023-04-02','En preparación',41),(180,'2023-11-04','Entregado',13),(181,'2024-01-27','Entregado',10),(182,'2023-03-28','En preparación',10),(183,'2023-05-19','Entregado',49),(184,'2024-02-08','Entregado',10),(185,'2023-04-21','Entregado',15),(186,'2023-09-18','En preparación',29),(187,'2024-01-11','Entregado',43),(188,'2023-12-27','Entregado',39),(189,'2023-05-20','Entregado',19),(190,'2023-11-15','Entregado',25),(191,'2024-01-12','En preparación',8),(192,'2023-02-23','En preparación',40),(193,'2023-07-15','En preparación',17),(194,'2023-10-20','Entregado',25),(195,'2024-01-05','Entregado',37),(196,'2023-10-19','Entregado',19),(197,'2023-03-19','En preparación',23),(198,'2023-09-14','En preparación',36),(199,'2023-06-11','En preparación',15),(200,'2023-09-14','Entregado',10),(201,'2023-10-05','Entregado',34),(202,'2024-01-27','En preparación',23),(203,'2023-07-18','En preparación',37),(204,'2023-04-19','En preparación',6),(205,'2023-03-15','En preparación',48),(206,'2023-05-02','Entregado',22),(207,'2023-10-07','Entregado',37),(208,'2023-04-23','En preparación',22),(209,'2023-11-08','En preparación',20),(210,'2023-08-27','Entregado',1),(211,'2023-05-22','Entregado',20),(212,'2023-09-04','Entregado',2),(213,'2023-08-30','En preparación',47),(214,'2023-06-22','Entregado',36),(215,'2023-09-24','Entregado',48),(216,'2023-10-18','En preparación',13),(217,'2023-02-13','Entregado',3),(218,'2023-07-21','En preparación',42),(219,'2023-07-10','Entregado',11),(220,'2023-05-17','En preparación',45),(221,'2023-05-25','En preparación',26),(222,'2023-07-31','En preparación',35),(223,'2023-03-07','En preparación',19),(224,'2023-10-12','Entregado',6),(225,'2023-03-03','Entregado',36),(226,'2023-09-10','En preparación',47),(227,'2023-09-02','En preparación',7),(228,'2023-10-01','En preparación',4),(229,'2023-04-18','En preparación',4),(230,'2023-05-13','Entregado',46),(231,'2023-03-16','Entregado',17),(232,'2023-10-05','Entregado',12),(233,'2023-06-01','En preparación',24),(234,'2023-12-29','Entregado',1),(235,'2023-09-18','Entregado',25),(236,'2023-04-10','En preparación',48),(237,'2024-01-07','En preparación',37),(238,'2023-10-23','En preparación',37),(239,'2023-12-15','Entregado',7),(240,'2023-05-19','Entregado',7),(241,'2023-10-13','En preparación',31),(242,'2023-02-13','En preparación',15),(243,'2023-05-15','En preparación',2),(244,'2023-06-18','Entregado',24),(245,'2023-03-28','Entregado',8),(246,'2023-07-16','En preparación',43),(247,'2023-11-19','Entregado',17),(248,'2023-02-23','Entregado',20),(249,'2023-10-29','Entregado',37),(250,'2023-03-15','En preparación',11),(251,'2023-11-15','En preparación',48),(252,'2023-11-18','En preparación',45),(253,'2023-11-13','Entregado',33),(254,'2023-04-15','En preparación',39),(255,'2024-01-21','Entregado',4),(256,'2023-05-24','En preparación',8),(257,'2023-12-08','Entregado',11),(258,'2024-01-13','En preparación',21),(259,'2023-10-11','Entregado',36),(260,'2023-12-07','En preparación',4),(261,'2024-01-20','Entregado',37),(262,'2023-02-18','Entregado',2),(263,'2023-04-26','En preparación',25),(264,'2023-12-14','En preparación',27),(265,'2023-05-10','Entregado',32),(266,'2023-12-04','Entregado',40),(267,'2023-07-11','En preparación',31),(268,'2023-05-19','Entregado',10),(269,'2024-01-12','En preparación',6),(270,'2023-08-05','En preparación',13),(271,'2023-10-13','Entregado',8),(272,'2023-11-18','En preparación',30),(273,'2023-04-04','En preparación',25),(274,'2023-03-24','En preparación',18),(275,'2024-01-18','Entregado',33),(276,'2023-02-13','En preparación',37),(277,'2023-05-23','En preparación',2),(278,'2023-12-02','Entregado',8),(279,'2023-03-28','En preparación',25),(280,'2023-04-09','En preparación',37),(281,'2023-10-10','En preparación',43),(282,'2023-09-12','En preparación',3),(283,'2023-12-06','En preparación',6),(284,'2023-07-01','En preparación',41),(285,'2023-07-17','En preparación',22),(286,'2023-10-13','En preparación',7),(287,'2023-12-05','En preparación',45),(288,'2023-06-19','Entregado',36),(289,'2023-09-07','En preparación',14),(290,'2023-04-01','Entregado',32),(291,'2023-06-10','Entregado',48),(292,'2023-10-10','En preparación',4),(293,'2023-11-25','En preparación',41),(294,'2023-11-06','En preparación',50),(295,'2023-03-06','En preparación',30),(296,'2024-01-07','Entregado',43),(297,'2023-08-15','En preparación',9),(298,'2023-10-29','En preparación',12),(299,'2023-07-06','Entregado',35),(300,'2023-02-18','En preparación',7),(301,'2023-03-30','En preparación',33),(302,'2023-03-14','En preparación',23),(303,'2023-08-25','Entregado',19),(304,'2024-01-10','Entregado',14),(305,'2023-05-04','Entregado',4),(306,'2023-08-23','En preparación',30),(307,'2023-09-23','Entregado',29),(308,'2023-12-20','En preparación',14),(309,'2023-03-26','Entregado',3),(310,'2023-03-11','Entregado',41),(311,'2023-10-24','Entregado',16),(312,'2023-11-23','Entregado',36),(313,'2023-11-02','En preparación',4),(314,'2023-10-30','En preparación',25),(315,'2023-09-13','Entregado',20),(316,'2023-03-17','Entregado',5),(317,'2024-01-03','En preparación',12),(318,'2023-08-13','Entregado',16),(319,'2023-07-01','En preparación',9),(320,'2023-12-16','En preparación',10),(321,'2023-09-05','En preparación',9),(322,'2023-08-10','Entregado',44),(323,'2023-03-11','Entregado',50),(324,'2023-05-03','Entregado',43),(325,'2023-10-14','En preparación',46),(326,'2023-07-26','En preparación',26),(327,'2023-04-09','Entregado',42),(328,'2023-10-05','Entregado',18),(329,'2023-10-02','Entregado',39),(330,'2023-09-06','Entregado',24),(331,'2023-10-22','En preparación',34),(332,'2024-01-14','Entregado',11),(333,'2023-10-06','Entregado',48),(334,'2024-01-10','En preparación',21),(335,'2024-02-10','Entregado',28),(336,'2023-10-22','En preparación',38),(337,'2023-04-06','Entregado',38),(338,'2023-08-05','En preparación',36),(339,'2023-10-01','Entregado',40),(340,'2023-12-19','Entregado',24),(341,'2023-05-05','Entregado',33),(342,'2023-04-05','Entregado',37),(343,'2023-12-10','En preparación',8),(344,'2023-10-09','Entregado',20),(345,'2023-06-22','En preparación',6),(346,'2023-09-24','En preparación',48),(347,'2023-05-02','Entregado',32),(348,'2023-03-18','Entregado',27),(349,'2023-07-28','En preparación',6),(350,'2023-10-10','En preparación',42),(351,'2024-01-27','En preparación',20),(352,'2024-01-01','Entregado',35),(353,'2023-06-06','Entregado',4),(354,'2023-04-24','Entregado',50),(355,'2023-11-01','Entregado',25),(356,'2023-08-12','En preparación',40),(357,'2024-01-17','Entregado',29),(358,'2023-03-01','Entregado',26),(359,'2023-11-18','Entregado',23),(360,'2023-09-02','Entregado',46),(361,'2023-09-02','En preparación',3),(362,'2023-06-04','En preparación',3),(363,'2023-08-16','Entregado',40),(364,'2023-11-11','En preparación',6),(365,'2023-09-15','Entregado',19),(366,'2023-06-17','Entregado',33),(367,'2023-10-11','En preparación',34),(368,'2023-04-16','Entregado',9),(369,'2023-05-08','Entregado',37),(370,'2023-06-10','Entregado',24),(371,'2023-05-26','Entregado',34),(372,'2023-02-18','Entregado',25),(373,'2023-04-27','En preparación',8),(374,'2023-04-28','En preparación',45),(375,'2023-09-18','En preparación',8),(376,'2023-12-06','En preparación',14),(377,'2023-09-07','En preparación',11),(378,'2023-04-29','En preparación',50),(379,'2023-11-28','En preparación',5),(380,'2023-05-10','En preparación',6),(381,'2023-05-11','Entregado',37),(382,'2023-07-20','En preparación',5),(383,'2023-04-24','En preparación',16),(384,'2023-10-22','En preparación',42),(385,'2023-09-30','Entregado',7),(386,'2023-06-09','En preparación',39),(387,'2023-04-20','Entregado',46),(388,'2023-12-15','En preparación',9),(389,'2023-11-14','Entregado',9),(390,'2023-06-24','En preparación',36),(391,'2023-07-05','En preparación',3),(392,'2023-06-01','Entregado',44),(393,'2023-04-07','Entregado',44),(394,'2023-11-17','En preparación',13),(395,'2023-07-05','En preparación',39),(396,'2023-12-07','En preparación',20),(397,'2023-03-12','Entregado',47),(398,'2023-02-18','Entregado',18),(399,'2023-04-14','En preparación',21),(400,'2023-03-29','Entregado',19),(401,'2023-09-26','Entregado',48),(402,'2023-04-22','En preparación',6),(403,'2023-03-06','En preparación',39),(404,'2024-01-20','En preparación',46),(405,'2023-08-05','Entregado',38),(406,'2023-06-29','En preparación',49),(407,'2023-10-05','En preparación',13),(408,'2024-02-02','En preparación',7),(409,'2023-02-21','Entregado',48),(410,'2023-04-13','En preparación',42),(411,'2023-08-01','Entregado',43),(412,'2023-10-06','Entregado',7),(413,'2024-01-14','Entregado',45),(414,'2023-10-29','Entregado',48),(415,'2023-12-03','En preparación',1),(416,'2023-05-08','Entregado',12),(417,'2023-10-19','Entregado',26),(418,'2023-08-21','En preparación',27),(419,'2023-04-23','Entregado',46),(420,'2023-12-03','Entregado',25),(421,'2023-06-01','Entregado',21),(422,'2023-09-13','Entregado',34),(423,'2023-04-30','En preparación',31),(424,'2023-08-27','Entregado',33),(425,'2023-05-09','Entregado',49),(426,'2023-10-08','Entregado',16),(427,'2023-06-06','En preparación',28),(428,'2023-05-30','En preparación',16),(429,'2023-12-12','En preparación',9),(430,'2023-06-23','Entregado',6),(431,'2024-01-24','Entregado',40),(432,'2023-11-21','En preparación',31),(433,'2023-12-23','Entregado',11),(434,'2023-12-04','Entregado',15),(435,'2023-09-10','Entregado',11),(436,'2024-01-31','En preparación',15),(437,'2023-06-18','En preparación',20),(438,'2023-06-18','En preparación',49),(439,'2023-07-20','En preparación',23),(440,'2023-11-11','Entregado',24),(441,'2024-01-04','En preparación',7),(442,'2024-01-02','En preparación',43),(443,'2023-12-22','Entregado',13),(444,'2023-04-12','En preparación',27),(445,'2023-11-22','En preparación',28),(446,'2024-02-07','Entregado',8),(447,'2023-03-21','Entregado',28),(448,'2024-01-16','En preparación',45),(449,'2023-03-15','En preparación',50),(450,'2023-09-19','En preparación',2),(451,'2023-09-03','En preparación',35),(452,'2023-03-05','Entregado',9),(453,'2023-10-16','Entregado',1),(454,'2023-09-26','Entregado',23),(455,'2023-07-20','En preparación',32),(456,'2023-08-28','Entregado',11),(457,'2023-12-28','En preparación',2),(458,'2023-05-02','En preparación',6),(459,'2023-12-01','En preparación',7),(460,'2023-02-15','En preparación',24),(461,'2023-04-02','Entregado',18),(462,'2023-12-30','En preparación',43),(463,'2023-06-13','En preparación',8),(464,'2023-03-23','En preparación',28),(465,'2023-06-15','Entregado',47),(466,'2023-03-26','En preparación',36),(467,'2023-05-21','Entregado',9),(468,'2023-07-17','En preparación',34),(469,'2023-11-20','En preparación',10),(470,'2023-09-15','Entregado',1),(471,'2023-05-26','Entregado',45),(472,'2023-12-14','En preparación',3),(473,'2024-01-18','Entregado',38),(474,'2023-07-01','En preparación',22),(475,'2023-09-01','En preparación',12),(476,'2024-01-14','En preparación',31),(477,'2023-06-20','Entregado',8),(478,'2023-04-09','En preparación',5),(479,'2023-04-13','En preparación',2),(480,'2024-01-18','Entregado',47),(481,'2023-08-01','En preparación',36),(482,'2023-03-06','Entregado',4),(483,'2023-06-15','En preparación',7),(484,'2023-12-29','Entregado',36),(485,'2023-06-04','Entregado',25),(486,'2023-10-02','En preparación',46),(487,'2024-02-07','Entregado',1),(488,'2023-03-31','Entregado',49),(489,'2023-12-09','En preparación',43),(490,'2023-03-29','En preparación',26),(491,'2023-02-17','Entregado',15),(492,'2023-11-22','Entregado',36),(493,'2023-11-10','En preparación',22),(494,'2023-06-10','En preparación',6),(495,'2023-03-28','En preparación',48),(496,'2023-02-26','En preparación',20),(497,'2024-01-27','Entregado',39),(498,'2024-01-26','Entregado',44),(499,'2023-10-07','Entregado',22),(500,'2023-10-27','Entregado',15),(501,'2023-06-14','En preparación',47),(502,'2023-11-05','En preparación',28),(503,'2023-04-26','En preparación',40),(504,'2023-04-12','Entregado',11),(505,'2023-08-13','Entregado',42),(506,'2023-03-21','En preparación',31),(507,'2023-08-05','En preparación',9),(508,'2024-01-10','En preparación',30),(509,'2023-07-11','En preparación',25),(510,'2023-10-28','Entregado',6),(511,'2023-06-20','En preparación',35),(512,'2023-07-01','Entregado',11),(513,'2023-06-15','En preparación',14),(514,'2023-06-14','Entregado',50),(515,'2023-09-27','Entregado',35),(516,'2023-06-20','Entregado',50),(517,'2023-10-23','En preparación',23),(518,'2024-01-15','Entregado',6),(519,'2023-11-29','Entregado',28),(520,'2023-11-09','Entregado',30),(521,'2023-06-09','Entregado',3),(522,'2023-05-10','En preparación',43),(523,'2023-05-03','Entregado',38),(524,'2023-07-12','Entregado',15),(525,'2023-03-20','Entregado',15),(526,'2023-04-25','Entregado',46),(527,'2023-09-05','En preparación',39),(528,'2023-09-29','Entregado',9),(529,'2023-12-03','En preparación',34),(530,'2023-12-25','Entregado',35),(531,'2023-05-24','En preparación',39),(532,'2023-03-07','Entregado',11),(533,'2023-04-04','Entregado',46),(534,'2023-02-20','Entregado',50),(535,'2023-05-09','En preparación',37),(536,'2024-02-02','Entregado',49),(537,'2023-11-17','En preparación',23),(538,'2023-04-12','En preparación',49),(539,'2023-10-04','Entregado',24),(540,'2023-06-19','En preparación',14),(541,'2023-06-25','En preparación',5),(542,'2023-08-20','Entregado',40),(543,'2023-04-26','En preparación',47),(544,'2023-11-22','En preparación',40),(545,'2024-01-29','En preparación',11),(546,'2023-06-03','Entregado',7),(547,'2023-11-03','Entregado',48),(548,'2023-03-22','En preparación',11),(549,'2023-06-29','En preparación',29),(550,'2023-07-25','Entregado',35),(551,'2023-08-09','Entregado',12),(552,'2023-09-22','En preparación',1),(553,'2024-01-23','Entregado',35),(554,'2023-05-26','En preparación',33),(555,'2023-05-11','Entregado',12),(556,'2023-11-13','En preparación',32),(557,'2024-02-04','En preparación',50),(558,'2024-01-03','Entregado',41),(559,'2023-11-17','En preparación',32),(560,'2023-11-18','En preparación',6),(561,'2023-11-18','Entregado',20),(562,'2023-12-09','En preparación',32),(563,'2023-08-28','Entregado',47),(564,'2023-02-12','Entregado',39),(565,'2023-09-06','Entregado',12),(566,'2023-05-25','Entregado',39),(567,'2023-08-05','En preparación',3),(568,'2023-08-08','En preparación',1),(569,'2023-05-23','En preparación',22),(570,'2023-08-18','En preparación',2),(571,'2023-09-13','En preparación',14),(572,'2023-05-10','En preparación',35),(573,'2023-03-29','En preparación',28),(574,'2023-08-12','Entregado',10),(575,'2023-03-03','En preparación',26),(576,'2024-01-26','En preparación',26),(577,'2023-07-20','Entregado',44),(578,'2023-09-02','Entregado',42),(579,'2023-11-03','Entregado',6),(580,'2023-05-20','Entregado',40),(581,'2023-11-16','En preparación',40),(582,'2023-02-11','Entregado',20),(583,'2023-10-31','Entregado',33),(584,'2023-04-16','En preparación',26),(585,'2023-10-27','En preparación',31),(586,'2023-03-14','En preparación',22),(587,'2023-03-11','Entregado',20),(588,'2023-02-20','Entregado',27),(589,'2023-10-10','En preparación',5),(590,'2023-08-06','Entregado',42),(591,'2023-02-25','Entregado',31),(592,'2023-09-19','Entregado',44),(593,'2023-11-02','Entregado',41),(594,'2023-11-16','Entregado',49),(595,'2024-01-22','En preparación',27),(596,'2024-01-16','Entregado',16),(597,'2023-07-29','Entregado',39),(598,'2023-02-11','Entregado',6),(599,'2023-03-21','Entregado',33),(600,'2024-01-29','En preparación',39),(601,'2023-05-08','En preparación',1),(602,'2023-10-25','Entregado',24),(603,'2023-05-19','En preparación',22),(604,'2023-06-01','En preparación',46),(605,'2023-03-09','En preparación',8),(606,'2024-01-16','En preparación',21),(607,'2023-12-25','Entregado',3),(608,'2023-04-14','Entregado',2),(609,'2023-04-13','En preparación',44),(610,'2023-12-09','Entregado',23),(611,'2023-12-13','En preparación',50),(612,'2023-09-17','Entregado',36),(613,'2023-03-03','Entregado',48),(614,'2023-06-08','Entregado',1),(615,'2023-08-14','En preparación',9),(616,'2024-01-04','En preparación',2),(617,'2023-10-11','En preparación',35),(618,'2023-04-13','En preparación',15),(619,'2023-06-28','Entregado',4),(620,'2023-12-24','Entregado',9),(621,'2023-04-25','Entregado',40),(622,'2023-11-07','En preparación',1),(623,'2023-09-17','Entregado',4),(624,'2023-12-29','Entregado',47),(625,'2023-10-13','Entregado',15),(626,'2024-02-05','En preparación',26),(627,'2023-10-20','Entregado',43),(628,'2023-11-30','En preparación',50),(629,'2023-11-06','En preparación',2),(630,'2023-08-02','En preparación',30),(631,'2023-11-03','Entregado',7),(632,'2023-07-12','En preparación',35),(633,'2023-10-21','En preparación',27),(634,'2023-07-09','Entregado',42),(635,'2023-12-09','Entregado',35),(636,'2023-05-05','En preparación',7),(637,'2023-08-09','Entregado',29),(638,'2023-03-08','Entregado',30),(639,'2023-12-07','Entregado',15),(640,'2023-09-14','En preparación',6),(641,'2023-05-02','Entregado',50),(642,'2023-03-03','Entregado',18),(643,'2023-05-26','En preparación',45),(644,'2023-10-19','Entregado',10),(645,'2023-08-11','En preparación',1),(646,'2023-09-03','En preparación',24),(647,'2023-02-18','Entregado',36),(648,'2023-11-16','En preparación',50),(649,'2023-07-31','Entregado',6),(650,'2023-07-01','Entregado',38),(651,'2023-07-21','En preparación',24),(652,'2023-10-25','Entregado',48),(653,'2023-09-28','Entregado',1),(654,'2023-04-29','En preparación',7),(655,'2023-07-28','En preparación',12),(656,'2023-11-15','Entregado',50),(657,'2023-11-30','En preparación',41),(658,'2023-03-25','En preparación',34),(659,'2023-04-23','Entregado',36),(660,'2023-06-10','En preparación',30),(661,'2023-12-26','En preparación',4),(662,'2023-05-18','En preparación',31),(663,'2024-01-03','Entregado',21),(664,'2023-12-01','En preparación',13),(665,'2023-09-27','Entregado',50),(666,'2023-12-18','Entregado',11),(667,'2023-04-14','Entregado',10),(668,'2023-11-14','En preparación',43),(669,'2023-04-13','En preparación',32),(670,'2023-08-09','En preparación',21),(671,'2023-03-19','En preparación',38),(672,'2023-05-24','Entregado',3),(673,'2023-03-21','Entregado',26),(674,'2024-01-02','Entregado',38),(675,'2024-01-21','Entregado',3),(676,'2023-06-28','Entregado',17),(677,'2023-06-12','En preparación',21),(678,'2023-11-07','Entregado',43),(679,'2023-08-05','Entregado',41),(680,'2023-08-22','Entregado',31),(681,'2023-06-19','En preparación',20),(682,'2023-08-02','En preparación',41),(683,'2024-01-14','Entregado',19),(684,'2023-08-14','En preparación',22),(685,'2023-04-22','En preparación',44),(686,'2023-07-05','En preparación',11),(687,'2023-06-29','Entregado',12),(688,'2023-03-24','En preparación',45),(689,'2023-12-12','En preparación',35),(690,'2023-12-04','Entregado',37),(691,'2023-03-16','Entregado',9),(692,'2023-08-21','Entregado',41),(693,'2023-12-13','Entregado',5),(694,'2023-03-25','En preparación',41),(695,'2023-12-19','Entregado',34),(696,'2023-05-09','En preparación',23),(697,'2023-12-30','En preparación',22),(698,'2023-11-26','Entregado',16),(699,'2023-08-13','Entregado',1),(700,'2023-08-21','En preparación',6),(701,'2023-12-31','En preparación',10),(702,'2023-09-17','En preparación',22),(703,'2023-05-03','En preparación',34),(704,'2023-07-14','En preparación',9),(705,'2023-10-24','Entregado',35),(706,'2023-05-04','En preparación',39),(707,'2023-07-30','En preparación',8),(708,'2023-03-02','En preparación',14),(709,'2024-02-03','Entregado',48),(710,'2023-12-19','En preparación',24),(711,'2023-05-13','En preparación',13),(712,'2023-02-22','En preparación',29),(713,'2023-05-28','En preparación',3),(714,'2023-05-17','En preparación',37),(715,'2023-05-31','En preparación',48),(716,'2023-06-20','En preparación',16),(717,'2024-01-29','En preparación',48),(718,'2023-05-20','En preparación',49),(719,'2024-01-13','En preparación',21),(720,'2023-09-23','Entregado',7),(721,'2023-03-14','Entregado',45),(722,'2023-04-05','Entregado',35),(723,'2023-05-12','Entregado',36),(724,'2023-10-12','En preparación',31),(725,'2023-09-18','Entregado',43),(726,'2023-07-21','En preparación',44),(727,'2023-08-22','Entregado',16),(728,'2023-09-23','Entregado',19),(729,'2024-01-05','En preparación',28),(730,'2023-05-12','En preparación',2),(731,'2023-07-07','Entregado',6),(732,'2023-12-12','En preparación',17),(733,'2023-10-22','Entregado',47),(734,'2023-07-03','En preparación',22),(735,'2023-11-19','Entregado',26),(736,'2023-09-29','Entregado',26),(737,'2023-08-01','Entregado',34),(738,'2023-05-14','Entregado',38),(739,'2023-12-11','En preparación',38),(740,'2023-02-21','Entregado',2),(741,'2023-03-05','Entregado',3),(742,'2023-07-27','En preparación',2),(743,'2023-10-02','Entregado',44),(744,'2023-03-09','En preparación',49),(745,'2023-08-04','En preparación',3),(746,'2024-01-01','En preparación',36),(747,'2024-01-10','Entregado',34),(748,'2023-02-11','En preparación',7),(749,'2023-12-30','Entregado',48),(750,'2023-12-06','En preparación',9),(751,'2023-03-15','En preparación',18),(752,'2023-12-02','Entregado',49),(753,'2023-05-12','Entregado',5),(754,'2023-03-20','Entregado',18),(755,'2023-03-09','Entregado',6),(756,'2023-11-03','Entregado',13),(757,'2023-06-30','En preparación',20),(758,'2023-06-03','En preparación',18),(759,'2023-08-24','En preparación',28),(760,'2023-07-26','En preparación',17),(761,'2023-04-13','En preparación',17),(762,'2023-09-12','Entregado',41),(763,'2023-12-16','En preparación',47),(764,'2023-06-20','Entregado',15),(765,'2023-07-13','Entregado',24),(766,'2023-04-07','Entregado',44),(767,'2023-09-06','Entregado',11),(768,'2024-01-01','Entregado',10),(769,'2023-06-20','En preparación',11),(770,'2023-08-11','Entregado',38),(771,'2023-10-20','En preparación',24),(772,'2023-10-10','Entregado',1),(773,'2023-08-06','Entregado',42),(774,'2023-08-21','Entregado',3),(775,'2023-12-11','Entregado',21),(776,'2024-02-05','En preparación',30),(777,'2023-08-08','En preparación',2),(778,'2023-05-11','En preparación',12),(779,'2023-05-31','Entregado',9),(780,'2023-08-02','En preparación',23),(781,'2023-07-21','En preparación',26),(782,'2023-02-27','En preparación',20),(783,'2023-09-26','Entregado',47),(784,'2023-11-04','En preparación',49),(785,'2024-01-12','En preparación',44),(786,'2023-12-22','En preparación',42),(787,'2023-05-04','Entregado',45),(788,'2023-02-11','En preparación',38),(789,'2023-07-08','En preparación',49),(790,'2023-09-21','Entregado',37),(791,'2023-11-11','Entregado',34),(792,'2023-06-10','En preparación',15),(793,'2023-11-02','En preparación',41),(794,'2023-09-04','Entregado',49),(795,'2023-04-13','En preparación',46),(796,'2023-09-02','En preparación',8),(797,'2023-03-28','Entregado',28),(798,'2023-07-04','Entregado',31),(799,'2023-07-17','Entregado',4),(800,'2023-03-22','En preparación',47),(801,'2023-11-30','En preparación',10),(802,'2023-05-23','Entregado',45),(803,'2023-05-21','Entregado',10),(804,'2023-09-10','En preparación',25),(805,'2023-07-06','En preparación',30),(806,'2023-07-30','Entregado',9),(807,'2023-12-30','En preparación',18),(808,'2024-01-10','Entregado',31),(809,'2023-08-03','Entregado',2),(810,'2023-12-18','En preparación',17),(811,'2023-08-28','En preparación',7),(812,'2023-11-15','En preparación',41),(813,'2023-05-25','En preparación',8),(814,'2024-01-30','En preparación',27),(815,'2023-11-12','Entregado',40),(816,'2024-01-14','Entregado',25),(817,'2023-09-02','En preparación',46),(818,'2024-01-03','En preparación',4),(819,'2023-11-03','En preparación',17),(820,'2023-11-14','En preparación',18),(821,'2023-09-08','En preparación',25),(822,'2023-08-05','Entregado',47),(823,'2023-11-29','En preparación',41),(824,'2023-10-10','En preparación',2),(825,'2023-04-26','Entregado',18),(826,'2023-12-23','Entregado',5),(827,'2023-03-14','Entregado',30),(828,'2023-09-17','Entregado',12),(829,'2023-03-18','Entregado',14),(830,'2023-06-10','En preparación',49),(831,'2023-03-04','En preparación',47),(832,'2023-10-23','Entregado',29),(833,'2023-11-29','Entregado',6),(834,'2023-10-10','En preparación',12),(835,'2023-02-15','En preparación',9),(836,'2023-12-28','En preparación',38),(837,'2023-08-04','Entregado',19),(838,'2023-07-15','En preparación',3),(839,'2023-03-20','Entregado',13),(840,'2023-06-28','Entregado',27),(841,'2023-11-27','En preparación',9),(842,'2023-06-10','En preparación',12),(843,'2023-02-26','Entregado',21),(844,'2023-08-10','En preparación',22),(845,'2023-04-12','Entregado',49),(846,'2023-06-16','En preparación',26),(847,'2023-10-19','En preparación',41),(848,'2023-11-11','Entregado',33),(849,'2023-12-08','En preparación',26),(850,'2023-09-05','Entregado',29),(851,'2023-10-07','En preparación',16),(852,'2023-06-08','En preparación',18),(853,'2024-01-03','Entregado',8),(854,'2023-04-01','En preparación',15),(855,'2024-02-07','En preparación',49),(856,'2023-07-20','Entregado',21),(857,'2023-04-27','En preparación',37),(858,'2023-12-29','En preparación',41),(859,'2023-06-26','En preparación',44),(860,'2023-12-25','Entregado',29),(861,'2024-01-03','En preparación',36),(862,'2023-06-05','Entregado',13),(863,'2023-05-31','En preparación',25),(864,'2023-03-28','Entregado',12),(865,'2023-05-27','En preparación',38),(866,'2023-04-28','Entregado',15),(867,'2023-03-21','Entregado',14),(868,'2024-01-20','En preparación',48),(869,'2024-01-07','Entregado',47),(870,'2023-09-22','En preparación',36),(871,'2023-10-11','En preparación',50),(872,'2023-12-14','En preparación',16),(873,'2023-04-03','Entregado',31),(874,'2023-06-24','Entregado',38),(875,'2023-03-31','Entregado',18),(876,'2024-01-03','Entregado',3),(877,'2024-01-04','En preparación',47),(878,'2023-08-02','En preparación',49),(879,'2023-07-23','Entregado',28),(880,'2023-04-26','En preparación',48),(881,'2023-07-10','En preparación',23),(882,'2024-01-04','En preparación',18),(883,'2024-01-14','Entregado',47),(884,'2023-07-31','Entregado',44),(885,'2023-12-23','En preparación',38),(886,'2023-07-10','Entregado',27),(887,'2023-07-16','Entregado',47),(888,'2023-12-02','Entregado',38),(889,'2023-06-04','Entregado',9),(890,'2023-04-19','Entregado',6),(891,'2024-01-16','Entregado',23),(892,'2023-06-24','Entregado',36),(893,'2023-05-04','Entregado',31),(894,'2023-09-07','En preparación',26),(895,'2023-06-12','En preparación',32),(896,'2023-12-11','Entregado',50),(897,'2023-07-16','Entregado',13),(898,'2023-08-03','En preparación',47),(899,'2023-12-07','En preparación',22),(900,'2023-07-28','Entregado',10),(901,'2023-09-27','Entregado',32),(902,'2023-09-04','En preparación',33),(903,'2023-02-24','Entregado',38),(904,'2023-09-11','Entregado',4),(905,'2024-01-19','Entregado',48),(906,'2024-01-28','Entregado',30),(907,'2023-04-13','En preparación',41),(908,'2023-10-27','Entregado',13),(909,'2024-01-28','Entregado',41),(910,'2023-05-23','En preparación',39),(911,'2023-09-13','En preparación',20),(912,'2023-08-29','En preparación',4),(913,'2023-05-27','En preparación',27),(914,'2023-08-29','Entregado',3),(915,'2023-03-15','Entregado',10),(916,'2023-07-24','En preparación',1),(917,'2023-06-18','Entregado',15),(918,'2023-07-26','En preparación',11),(919,'2023-07-21','En preparación',16),(920,'2023-11-21','Entregado',32),(921,'2023-09-27','Entregado',25),(922,'2023-07-15','En preparación',28),(923,'2024-01-12','Entregado',4),(924,'2023-07-20','En preparación',16),(925,'2023-09-10','En preparación',4),(926,'2023-02-25','En preparación',6),(927,'2023-12-18','Entregado',15),(928,'2024-01-31','En preparación',43),(929,'2023-07-24','Entregado',29),(930,'2023-05-13','En preparación',10),(931,'2024-01-16','En preparación',47),(932,'2024-01-04','Entregado',7),(933,'2023-03-02','En preparación',27),(934,'2024-01-21','En preparación',11),(935,'2023-10-01','En preparación',9),(936,'2023-05-31','Entregado',6),(937,'2023-10-14','Entregado',1),(938,'2023-05-06','Entregado',22),(939,'2023-09-13','En preparación',4),(940,'2023-10-09','En preparación',25),(941,'2023-08-20','Entregado',14),(942,'2023-04-08','Entregado',28),(943,'2024-01-25','En preparación',37),(944,'2023-12-13','En preparación',27),(945,'2024-01-17','En preparación',20),(946,'2023-07-02','Entregado',35),(947,'2023-04-26','En preparación',27),(948,'2023-05-31','Entregado',6),(949,'2023-09-05','Entregado',35),(950,'2023-05-16','En preparación',37),(951,'2023-08-30','En preparación',15),(952,'2023-05-23','En preparación',48),(953,'2024-01-21','En preparación',46),(954,'2023-03-18','Entregado',37),(955,'2023-11-25','En preparación',5),(956,'2023-04-21','Entregado',24),(957,'2023-12-27','En preparación',13),(958,'2024-01-19','Entregado',20),(959,'2023-03-26','Entregado',32),(960,'2023-08-22','Entregado',11),(961,'2023-07-12','En preparación',5),(962,'2023-07-20','En preparación',49),(963,'2023-09-28','Entregado',18),(964,'2023-09-20','En preparación',17),(965,'2023-07-29','En preparación',42),(966,'2023-08-29','En preparación',3),(967,'2023-07-06','En preparación',20),(968,'2023-09-28','En preparación',12),(969,'2023-03-08','Entregado',36),(970,'2023-08-18','En preparación',23),(971,'2023-08-22','En preparación',37),(972,'2023-02-22','Entregado',43),(973,'2023-08-23','Entregado',43),(974,'2024-01-01','En preparación',6),(975,'2024-02-01','En preparación',36),(976,'2023-04-09','En preparación',50),(977,'2023-08-13','En preparación',10),(978,'2023-06-30','Entregado',4),(979,'2023-06-20','Entregado',48),(980,'2023-04-17','Entregado',32),(981,'2023-08-25','En preparación',34),(982,'2023-08-20','En preparación',46),(983,'2023-08-21','En preparación',8),(984,'2023-04-30','Entregado',13),(985,'2023-06-04','En preparación',49),(986,'2023-08-16','Entregado',20),(987,'2023-11-27','Entregado',46),(988,'2023-09-14','Entregado',39),(989,'2023-09-22','Entregado',29),(990,'2023-10-01','Entregado',1),(991,'2023-08-11','En preparación',50),(992,'2023-09-17','Entregado',18),(993,'2024-01-06','Entregado',16),(994,'2024-01-06','Entregado',16),(995,'2023-06-26','Entregado',8),(996,'2023-10-20','En preparación',17),(997,'2023-09-24','Entregado',7),(998,'2023-10-20','En preparación',17),(999,'2023-10-01','Entregado',18),(1000,'2023-03-01','Entregado',44);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idPlato` int NOT NULL AUTO_INCREMENT,
  `nombrePlato` varchar(45) DEFAULT NULL,
  `descripcion` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  PRIMARY KEY (`idPlato`)
) ENGINE=InnoDB AUTO_INCREMENT=804 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (701,'Risotto Primavera','Risotto cremoso con una mezcla de verduras frescas de la temporada, decorado con queso parmesano.',15.99,'Italiana',1),(702,'Salmón Teriyaki','Salmón a la parrilla glaseado con una irresistible salsa teriyaki, acompañado de arroz al vapor.',18.50,'Asiática',2),(703,'Filete Mignon','Filete de ternera premium a la parrilla, servido con puré de papas trufado y espárragos.',28.99,'Parrilla',3),(704,'Pasta Carbonara','Pasta al dente con una cremosa salsa carbonara, panceta crujiente y queso pecorino.',14.95,'Italiana',4),(705,'Ensalada de Quinoa Fresca','Ensalada ligera y saludable con quinoa, aguacate, tomate y aderezo de limón.',12.75,'Ensaladas',5),(706,'Pollo al Curry','Pollo tierno cocido a fuego lento en una rica salsa de curry, servido con arroz basmati.',16.99,'Asiática',6),(707,'Lasagna Clásica','Capas de pasta, carne molida, salsa de tomate y queso fundido al horno a la perfección.',17.50,'Italiana',7),(708,'Tacos de Pescado','Tortillas de maíz rellenas de pescado a la parrilla, repollo rallado y salsa de aguacate.',14.25,'Mexicana',8),(709,'Cordero al Horno','Cordero sazonado y asado lentamente, acompañado de puré de batatas y vegetales asados.',22.50,'Asiática',9),(710,'Carpaccio de Res','Finas láminas de carne de res marinadas con aceite de oliva, alcaparras y queso parmesano.',13.99,'Entradas',10),(711,'Ramen de Mariscos','Sopa ramen abundante con una mezcla de mariscos frescos y fideos al dente.',19.95,'Asiática',11),(712,'Pizza Margherita','Clásica pizza italiana con salsa de tomate, mozzarella fresca y hojas de albahaca.',16.50,'Italiana',12),(713,'Tartar de Aguacate y Tomate','Tartar fresco de aguacate y tomate con cilantro, limón y chips de tortilla.',11.75,'Entradas',13),(714,'Sushi Variado','Selección de sushi fresco que incluye nigiri, sashimi y rollos de temporada.',22.99,'Asiática',14),(715,'Camarones a la Parrilla','Camarones jugosos a la parrilla con ajo, limón y hierbas, acompañados de arroz salvaje.',20.25,'Mariscos',15),(716,'Ceviche de Mango y Camarón','Ceviche refrescante con camarones, mango, aguacate y cilantro, marinado en cítricos.',15.50,'Mariscos',16),(717,'Bistec de Flanco Marinado','Bistec de flanco marinado en especias, a la parrilla y acompañado de chimichurri.',18.75,'Parrilla',17),(718,'Pasta Pesto Genovés','Pasta con una generosa porción de pesto genovés, piñones y queso parmesano.',14.25,'Italiana',18),(719,'Ensalada de Pollo César','Ensalada clásica con pollo a la parrilla, croutones, queso parmesano y aderezo césar.',13.99,'Ensaladas',19),(720,'Tacos Al Pastor','Tacos mexicanos tradicionales con cerdo marinado, piña y salsa de cilantro.',12.50,'Mexicana',20),(721,'Sopa de Tomate y Albahaca','Sopa reconfortante de tomate y albahaca, servida con crujientes tostadas de ajo.',10.95,'Sopas',21),(722,'Ravioli de Calabaza','Ravioli relleno de calabaza asada, bañado en una salsa de mantequilla y salvia.',16.75,'Italiana',22),(723,'Pato a la Naranja','Pato crujiente con glaseado de naranja, acompañado de puré de patatas y espárragos.',24.50,'Gourmet',23),(724,'Poke Bowl de Salmón','Poke bowl saludable con salmón fresco, aguacate, edamame y aderezo de soja y jengibre.',17.99,'Asiática',24),(725,'Pasta Alfredo con Champiñones','Pasta fettuccine con una cremosa salsa Alfredo y champiñones salteados.',15.25,'Italiana',25),(726,'Sushi Vegano','Rollos de sushi vegano con aguacate, pepino, zanahoria y aderezo de wasabi.',14.50,'Vegano',26),(727,'Hamburguesa BBQ de Portobello','Hamburguesa vegetariana de portobello a la parrilla con salsa BBQ y queso cheddar.',13.75,'Vegano',27),(728,'Ternera Stroganoff','Ternera tierna cocida en una salsa rica y cremosa de champiñones, servida sobre fideos de huevo.',19.99,'Platos Principales',28),(729,'Ensalada Caprese','Ensalada fresca con tomate, mozzarella y albahaca, aliñada con aceite de oliva balsámico.',11.25,'Ensaladas',29),(730,'Tacos de Barbacoa','Tacos mexicanos con carne de res desmenuzada, cebolla y cilantro, acompañados de salsa.',12.75,'Mexicana',30),(731,'Camarones Picantes','Camarones salteados con chile y ajo, servidos sobre una cama de arroz jazmín.',18.95,'Mariscos',31),(732,'Pasta Puttanesca','Pasta penne con una salsa picante de tomate, ajo, aceite de oliva y hojuelas de chile.',15.50,'Italiana',32),(733,'Lasaña de Espinacas','Lasaña vegetariana con capas de espinacas, ricotta y salsa de tomate.',16.25,'Vegano',33),(734,'Paella de Mariscos','Paella valenciana con una mezcla abundante de mariscos y arroz socarrat.',21.50,'Mariscos',34),(735,'Bowl de Pollo Teriyaki','Bowl saludable con pollo teriyaki, arroz, aguacate y verduras salteadas.',15.75,'Asiática',35),(736,'Cazuela de Mariscos','Cazuela abundante con una selección de mariscos en una rica salsa de tomate.',19.99,'Mariscos',36),(737,'Tacos Veganos','Tacos veganos con carne de soja sazonada, guacamole y salsa de pico de gallo.',13.25,'Vegano',37),(738,'Pasta Bolognesa','Pasta con una salsa clásica boloñesa de carne molida y tomate.',14.50,'Italiana',38),(739,'Ensalada Waldorf','Ensalada clásica con manzanas, apio, nueces y aderezo de mayonesa.',10.50,'Ensaladas',39),(740,'Hamburguesa de Salmón','Hamburguesa jugosa de salmón con mayonesa de eneldo y aguacate.',16.95,'Parrilla',40),(741,'Tagliatelle con Trufa','Tagliatelle con una cremosa salsa de trufa, champiñones y parmesano.',18.75,'Italiana',41),(742,'Rollitos de Primavera','Rollitos de primavera rellenos de vegetales y tofu, con salsa agridulce.',11.25,'Asiática',42),(743,'Pechuga de Pavo Rellena','Pechuga de pavo rellena de espinacas y queso feta, acompañada de puré de batatas.',17.50,'Platos Principales',43),(744,'Ensalada de Frutas de Mar','Ensalada fresca con pulpo, camarones y calamares, aderezada con limón y aceite de oliva.',22.99,'Mariscos',44),(745,'Pasta con Salsa de Champiñones','Pasta penne con una rica salsa de champiñones, ajo y perejil.',11.99,'Italiana',45),(746,'Ceviche de Mango y Aguacate','Ceviche refrescante con mango, aguacate y pescado fresco, marinado en cítricos.',17.50,'Mariscos',46),(747,'Tofu a la Parrilla','Tofu marinado y a la parrilla con especias, servido con quinoa y verduras asadas.',14.25,'Vegano',47),(748,'Arroz con Pollo','Arroz al estilo latino con pollo, guisantes, pimientos y un toque de azafrán.',16.99,'Asiática',48),(749,'Ensalada de Remolacha','Ensalada vibrante con remolacha asada, queso de cabra y nueces, aliñada con vinagreta balsámica.',12.50,'Ensaladas',49),(750,'Tacos de Camarones','Tacos mexicanos con camarones salteados, repollo rallado y salsa de aguacate.',15.25,'Mexicana',50),(751,'Pasta con Pesto de Albahaca','Pasta fusilli con pesto fresco de albahaca, piñones y queso parmesano.',14.50,'Italiana',51),(752,'Roll de Tempura','Roll de sushi con tempura de verduras, aguacate y salsa de anguila.',16.75,'Asiática',52),(753,'Cordero al Curry','Cordero tierno cocido a fuego lento en una rica salsa de curry, servido con arroz basmati.',21.99,'Asiática',53),(754,'Sopa de Tomate Asado','Sopa reconfortante de tomates asados, con albahaca fresca y croutones.',10.75,'Internacional',54),(755,'Burritos de Pollo y Frijoles Negros','Burritos rellenos de pollo sazonado, frijoles negros, arroz y salsa de tomate.',13.99,'Mexicana',55),(756,'Risotto de Champiñones','Risotto cremoso con champiñones salteados, queso parmesano y hierbas frescas.',16.50,'Italiana',56),(757,'Pescado a la Parrilla con Salsa de Mango','Filete de pescado a la parrilla con una refrescante salsa de mango y cilantro.',18.25,'Mariscos',57),(758,'Enchiladas Vegetarianas','Enchiladas rellenas de verduras frescas, queso y salsa roja picante.',12.99,'Mexicana',58),(759,'Pollo Marsala','Pechuga de pollo tierna cocida en una sabrosa salsa de vino Marsala, con champiñones.',19.75,'Italiana',59),(760,'Sushi de Salmón y Aguacate','Roll de sushi con salmón fresco, aguacate, pepino y mayonesa picante.',14.50,'Asiática',60),(761,'Tarta de Limón Merengada','Deliciosa tarta con relleno de crema de limón y merengue tostado.',8.99,'Postres',61),(762,'Tacos de Carnitas','Tacos tradicionales mexicanos con carnitas jugosas, cebolla y cilantro.',14.25,'Mexicana',62),(763,'Lasagna de Berenjena','Lasagna vegetariana con capas de berenjena, ricotta, espinacas y salsa de tomate.',15.99,'Italiana',63),(764,'Sopa Miso con Tofu','Sopa japonesa miso con tofu, algas y cebollines.',11.50,'Asiática',64),(765,'Pollo al Limón con Hierbas','Pechuga de pollo marinada en limón y hierbas, asada a la perfección.',17.50,'Internacional',65),(766,'Ceviche de Mango y Aguacate','Ceviche fresco de pescado con dados de mango, aguacate y cilantro.',20.99,'Mariscos',66),(767,'Pizza Margarita','Pizza clásica con tomate, mozzarella fresca y albahaca.',13.75,'Italiana',67),(768,'Sopa de Lentejas con Chorizo','Sopa abundante de lentejas con chorizo, zanahorias y apio.',11.25,'Internacional',68),(769,'Roll de Aguacate Tempura','Roll de sushi con aguacate fresco, tempura crujiente y salsa de soja.',16.50,'Asiática',69),(770,'Ensalada Caprese','Ensalada refrescante con tomate, mozzarella, albahaca y aderezo balsámico.',14.75,'Ensaladas',70),(771,'Filete de Ternera con Salsa de Champiñones','Jugoso filete de ternera a la parrilla acompañado de una cremosa salsa de champiñones.',22.50,'Internacional',71),(772,'Tostadas de Atún Picante','Tostadas crujientes con atún marinado en salsa picante, aguacate y rábano.',17.25,'Asiática',72),(773,'Espaguetis Carbonara','Espaguetis al dente con una mezcla de huevos, queso parmesano, panceta y pimienta negra.',15.75,'Italiana',73),(774,'Sopa de Mariscos','Sopa abundante con una variedad de mariscos, verduras frescas y caldo de pescado.',23.99,'Mariscos',74),(775,'Tacos al Pastor','Tacos mexicanos tradicionales con carne de cerdo adobada, piña y cilantro.',14.99,'Mexicana',75),(776,'Pizza de Pollo BBQ','Pizza con pollo a la barbacoa, cebolla roja, queso cheddar y cilantro fresco.',16.50,'Internacional',76),(777,'Roll de Salmón Philly','Roll de sushi con salmón, queso crema, aguacate y cebollín.',18.75,'Asiática',77),(778,'Ensalada de Quinoa y Vegetales Asados','Ensalada saludable con quinoa, verduras asadas, aguacate y aderezo de limón.',13.50,'Internacional',78),(779,'Cazuela de Pollo con Papas','Cazuela reconfortante con pollo, papas, zanahorias y hierbas aromáticas.',19.25,'Internacional',79),(780,'Tiramisú','Clásico postre italiano con capas de bizcocho empapado en café y crema de mascarpone.',9.99,'Postres',80),(781,'Sushi de Aguacate y Pepino','Roll de sushi vegetariano con aguacate, pepino y mayonesa de wasabi.',12.50,'Asiática',81),(782,'Paella de Mariscos','Paella española con arroz, mejillones, gambas y calamares en su tinta.',24.50,'Mariscos',82),(783,'Fajitas de Pollo','Fajitas mexicanas con tiras de pollo marinado, pimientos y cebollas, servidas con tortillas calientes.',16.99,'Mexicana',83),(784,'Gnocchi con Salsa de Tomate y Albahaca','Gnocchi de papa con salsa de tomate fresco, albahaca y queso ricotta.',14.75,'Italiana',84),(785,'Sopa de Cebolla Gratinada','Sopa de cebolla caramelizada, caldo de res y queso gratinado.',11.75,'Internacional',85),(786,'Tacos de Pescado Baja Style','Tacos de pescado empanizado, repollo morado, salsa de chipotle y limón.',17.50,'Mexicana',86),(787,'Pappardelle con Ragú de Cordero','Pappardelle con ragú de cordero cocido a fuego lento, tomate y hierbas.',18.99,'Italiana',87),(788,'Poke Bowl de Salmón','Bowl de arroz sushi con salmón fresco, aguacate, edamame y aderezo de soja.',19.50,'Asiática',88),(789,'Ensalada Waldorf','Ensalada clásica con lechuga, manzanas, apio, nueces y aderezo de mayonesa.',13.25,'Ensaladas',89),(790,'Raviolis de Espinaca y Ricotta','Raviolis rellenos de espinaca y queso ricotta con salsa de tomate fresco.',15.75,'Italiana',90),(791,'Teriyaki de Tofu','Tofu glaseado con salsa teriyaki, acompañado de arroz y verduras salteadas.',14.50,'Asiática',91),(792,'Tacos de Barbacoa','Tacos tradicionales de barbacoa de res, cebolla, cilantro y salsa verde.',16.99,'Mexicana',92),(793,'Pizza de Vegetales a la Parrilla','Pizza con vegetales a la parrilla, mozzarella, tomate y pesto.',16.25,'Italiana',93),(794,'Roll de Mango y Aguacate','Roll de sushi con mango fresco, aguacate, pepino y mayonesa de sriracha.',15.50,'Asiática',94),(795,'Ensalada de Quinoa y Fresas','Ensalada de quinoa con fresas frescas, espinacas y aderezo de balsámico.',14.75,'Ensaladas',95),(796,'Pollo al Curry Rojo','Trozos de pollo en una cremosa salsa de curry rojo, servido con arroz jazmín.',20.25,'Asiática',96),(797,'Tacos de Chorizo y Papa','Tacos con chorizo picante, papas doradas, cebolla y cilantro.',13.75,'Mexicana',97),(798,'Linguini con Vongole','Linguini con almejas, ajo, vino blanco y perejil fresco.',17.99,'Italiana',98),(799,'Ceviche de Pulpo','Ceviche de pulpo con tomate, cebolla morada, cilantro y limón.',21.50,'Mariscos',99),(800,'Brownie con Helado','Brownie caliente servido con una bola de helado de vainilla y salsa de chocolate.',10.99,'Postres',100),(801,'Hamburguesa','Hamburguesa con queso y papas',10.99,NULL,NULL),(802,'Pizza','Pizza de pepperoni',12.50,NULL,NULL),(803,'Ensalada','Ensalada verde',7.25,NULL,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `precio_productos_nuevos` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
    DECLARE producto_id INT;
    DECLARE precio_anterior DECIMAL(10, 2);
    
    SET producto_id = NEW.idPlato;
    
    SELECT precio INTO precio_anterior FROM productos WHERE idPlato = producto_id;
    
    INSERT INTO registro_precios_productos (idPlato, precioAnterior, precioNuevo, fechaCambio)
    VALUES (producto_id, precio_anterior, NEW.precio, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `registro_precios_productos`
--

DROP TABLE IF EXISTS `registro_precios_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_precios_productos` (
  `idRegistro` int NOT NULL AUTO_INCREMENT,
  `idPlato` int NOT NULL,
  `precioAnterior` decimal(10,2) NOT NULL,
  `precioNuevo` decimal(10,2) NOT NULL,
  `fechaCambio` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idRegistro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_precios_productos`
--

LOCK TABLES `registro_precios_productos` WRITE;
/*!40000 ALTER TABLE `registro_precios_productos` DISABLE KEYS */;
INSERT INTO `registro_precios_productos` VALUES (1,745,11.99,11.99,'2024-05-17 09:42:03');
/*!40000 ALTER TABLE `registro_precios_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_salarios`
--

DROP TABLE IF EXISTS `registro_salarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_salarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` int DEFAULT NULL,
  `salarioAnterior` decimal(10,2) DEFAULT NULL,
  `salarioNuevo` decimal(10,2) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_salarios`
--

LOCK TABLES `registro_salarios` WRITE;
/*!40000 ALTER TABLE `registro_salarios` DISABLE KEYS */;
INSERT INTO `registro_salarios` VALUES (1,1,1023.97,3500.00,'2024-05-17 09:29:56');
/*!40000 ALTER TABLE `registro_salarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_estadisticas_pedidos`
--

DROP TABLE IF EXISTS `vista_estadisticas_pedidos`;
/*!50001 DROP VIEW IF EXISTS `vista_estadisticas_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_estadisticas_pedidos` AS SELECT 
 1 AS `categoria`,
 1 AS `total_pedidos`,
 1 AS `total_ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_mensuales`
--

DROP TABLE IF EXISTS `vista_ventas_mensuales`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_mensuales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_mensuales` AS SELECT 
 1 AS `Año`,
 1 AS `Mes`,
 1 AS `TotalVentas`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'restaurante'
--
/*!50003 DROP FUNCTION IF EXISTS `calcular_precio_total_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `calcular_precio_total_pedido`(pedido_id int) RETURNS decimal(10,2)
    DETERMINISTIC
begin
   declare total decimal(10, 2);
  
   select sum(productos.precio)
   into total
   from detallespedido
   inner join productos on detallespedido.producto_idplato = productos.idplato
   where detallespedido.pedido_idpedido = pedido_id;
  
   return total;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calcular_promedio_precios_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `calcular_promedio_precios_pedido`(pedido_id int) RETURNS decimal(10,2)
    DETERMINISTIC
begin
    declare promedio decimal(10, 2);
    
    select avg(productos.precio)
    into promedio
    from detallespedido
    inner join productos on detallespedido.producto_idplato = productos.idplato
    where detallespedido.pedido_idpedido = pedido_id;
    
    return promedio;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `empleado_con_salario_superior_promedio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `empleado_con_salario_superior_promedio`(empleado_id int) RETURNS tinyint(1)
    DETERMINISTIC
begin
    declare promedio_salario decimal(10, 2);
    declare salario_empleado decimal(10, 2);
    declare superior boolean;
    
    select avg(salario) into promedio_salario from empleados;
    
    select salario into salario_empleado from empleados where idempleado = empleado_id;
    
    if salario_empleado > promedio_salario then
        set superior = true;
    else
        set superior = false;
    end if;
    
    return superior;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_estado_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `actualizar_estado_pedido`(in pedido_id int, in nuevo_estado varchar(50), in usuario varchar(50))
begin
    declare estado_anterior varchar(50);
    
    select estadoPedido into estado_anterior from pedido where idPedido = pedido_id;
    
    update pedido
    set estadoPedido = nuevo_estado
    where idPedido = pedido_id;
    
    insert into registro_pedidos (idPedido, estadoAnterior, nuevoEstado, usuario, fecha)
    values (pedido_id, estado_anterior, nuevo_estado, usuario, now());
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_detalle_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `mostrar_detalle_pedido`(IN pedido_id INT)
BEGIN
    DECLARE salida VARCHAR(2000);
    DECLARE fecha_pedido DATE;
    DECLARE estado_pedido VARCHAR(50);
    DECLARE total_pedido DECIMAL(10, 2);

    SELECT fecha, estadoPedido
    INTO fecha_pedido, estado_pedido
    FROM pedido
    WHERE idPedido = pedido_id;

    SET total_pedido = calcular_precio_total_pedido(pedido_id);

    SET salida = CONCAT('====== DETALLE DEL PEDIDO ', pedido_id, ' =====\n');

    SET salida = CONCAT(salida, 'Fecha: ', fecha_pedido, '\n');
    SET salida = CONCAT(salida, 'Estado: ', estado_pedido, '\n');
    SET salida = CONCAT(salida, 'Precio Total: ', total_pedido, '€\n');

    SELECT salida;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_empleados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `mostrar_empleados`()
BEGIN
    DECLARE id_empleado INT;
    DECLARE nombre_empleado VARCHAR(45);
    DECLARE apellido_empleado VARCHAR(45);
    DECLARE puesto_empleado VARCHAR(45);
    DECLARE salario_empleado DECIMAL(10, 2);
    DECLARE fecha_empleado DATE;
    DECLARE jefe_id_empleado INT;
    DECLARE pedido_id_pedido INT;
    DECLARE done BOOL DEFAULT FALSE;
    DECLARE salida VARCHAR(16383) DEFAULT '';

    DECLARE c1 CURSOR FOR
        SELECT idEmpleado, nombre, apellido, puesto, salario, fecha, Jefe_idEmpleado, Pedido_idPedido
        FROM empleados
        ORDER BY idEmpleado;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN c1;

    SET salida = CONCAT(salida, '======LISTA DE EMPLEADOS=====\n\n');

    WHILE NOT done DO
        FETCH c1 INTO id_empleado, nombre_empleado, apellido_empleado, puesto_empleado,
                      salario_empleado, fecha_empleado, jefe_id_empleado, pedido_id_pedido;
        IF NOT done THEN
            SET salida = CONCAT(salida, 'ID: ', id_empleado, '\n');
            SET salida = CONCAT(salida, 'Nombre: ', nombre_empleado, ' ', apellido_empleado, '\n');
            SET salida = CONCAT(salida, 'Puesto: ', puesto_empleado, '\n');
            SET salida = CONCAT(salida, 'Salario: ', salario_empleado, '\n');
            SET salida = CONCAT(salida, 'Fecha de nacimiento: ', fecha_empleado, '\n');
            IF jefe_id_empleado IS NOT NULL THEN
                SET salida = CONCAT(salida, 'ID Jefe: ', jefe_id_empleado, '\n');
            END IF;
            IF pedido_id_pedido IS NOT NULL THEN
                SET salida = CONCAT(salida, 'ID Pedido Asignado: ', pedido_id_pedido, '\n');
            END IF;
            SET salida = CONCAT(salida, '\n');
        END IF;
    END WHILE;

    CLOSE c1;

    SELECT salida;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_estadisticas_pedidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `mostrar_estadisticas_pedidos`()
BEGIN
   DECLARE salida VARCHAR(2000) DEFAULT '';
   DECLARE totalPedidos INT;
   DECLARE totalVentas DECIMAL(15,2);
   DECLARE anio INT;
   DECLARE done BOOL DEFAULT FALSE;
   
   DECLARE c1 CURSOR FOR
      SELECT YEAR(p.fecha), COUNT(*), SUM(pr.precio)
      FROM pedido p
      JOIN detallespedido d ON p.idPedido = d.Pedido_idPedido
      JOIN productos pr ON d.Productos_idPlato = pr.idProducto
      GROUP BY YEAR(p.fecha);
   
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

   SET salida = CONCAT(salida, '======ESTADISTICAS=====\n');
   SET salida = CONCAT(salida, '--------TOTALES--------\n');
   
   -- Total number of orders
   SELECT COUNT(*) INTO totalPedidos FROM pedido;
   SET salida = CONCAT(salida, 'Total de Pedidos: ', totalPedidos, '\n');
   
   -- Total sales
   SELECT SUM(pr.precio) INTO totalVentas
   FROM detallespedido d
   JOIN productos pr ON d.Producto_idPlato = pr.idProducto;
   SET salida = CONCAT(salida, 'Ventas totales: ', totalVentas, '€\n');

   OPEN c1;
   WHILE (NOT done) DO
      FETCH c1 INTO anio, totalPedidos, totalVentas;
      IF (NOT done) THEN
         SET salida = CONCAT(salida, 'En ', anio, ': ', totalPedidos, ' pedidos, ', totalVentas, '€\n');
      END IF;
   END WHILE;
   CLOSE c1;

   SELECT salida;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_estadisticas_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `vista_estadisticas_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_estadisticas_pedidos` AS select `p`.`categoria` AS `categoria`,count(`d`.`Pedido_idPedido`) AS `total_pedidos`,sum(`p3`.`precio`) AS `total_ventas` from (((`productos` `p` join `detallespedido` `d` on((`p`.`idPlato` = `d`.`Producto_idPlato`))) join `pedido` `p2` on((`d`.`Pedido_idPedido` = `p2`.`idPedido`))) join `productos` `p3` on((`d`.`Producto_idPlato` = `p3`.`idPlato`))) group by `p`.`categoria` order by `total_pedidos` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_mensuales`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_mensuales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_mensuales` AS select year(`p`.`fecha`) AS `Año`,month(`p`.`fecha`) AS `Mes`,concat(sum(`p2`.`precio`),'€') AS `TotalVentas` from ((`pedido` `p` join `detallespedido` `d` on((`p`.`idPedido` = `d`.`Pedido_idPedido`))) join `productos` `p2` on((`d`.`Producto_idPlato` = `p2`.`idPlato`))) group by year(`p`.`fecha`),month(`p`.`fecha`) order by `Año`,`Mes` */;
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

-- Dump completed on 2024-05-17 13:18:02
