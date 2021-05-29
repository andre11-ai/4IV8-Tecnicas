-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: kardex
-- ------------------------------------------------------
-- Server version	5.7.17-enterprise-commercial-advanced-log

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
-- Table structure for table `cespecialidad`
--

DROP TABLE IF EXISTS `cespecialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cespecialidad` (
  `id_esp` int(11) NOT NULL AUTO_INCREMENT,
  `des_esp` varchar(20) NOT NULL,
  PRIMARY KEY (`id_esp`),
  KEY `des_esp` (`des_esp`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cespecialidad`
--



--
-- Table structure for table `cnivel`
--

DROP TABLE IF EXISTS `cnivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cnivel` (
  `id_niv` int(11) NOT NULL AUTO_INCREMENT,
  `des_niv` varchar(10) NOT NULL,
  PRIMARY KEY (`id_niv`),
  KEY `des_niv` (`des_niv`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnivel`
--

LOCK TABLES `cnivel` WRITE;
/*!40000 ALTER TABLE `cnivel` DISABLE KEYS */;
INSERT INTO `cnivel` VALUES (4,'CUARTO'),(13,'decimo'),(9,'noveno'),(8,'OCTAVO'),(12,'onceavo'),(1,'PRIMERO'),(5,'QUINTO'),(2,'SEGUNDO'),(7,'septimo'),(6,'SEXTO'),(3,'TERCERO');
/*!40000 ALTER TABLE `cnivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cperiodoacreditacion`
--

DROP TABLE IF EXISTS `cperiodoacreditacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cperiodoacreditacion` (
  `id_pa` int(11) NOT NULL AUTO_INCREMENT,
  `des_pa` varchar(7) NOT NULL,
  PRIMARY KEY (`id_pa`),
  KEY `des_pa` (`des_pa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cperiodoacreditacion`
--

LOCK TABLES `cperiodoacreditacion` WRITE;
/*!40000 ALTER TABLE `cperiodoacreditacion` DISABLE KEYS */;
INSERT INTO `cperiodoacreditacion` VALUES (3,'ETS'),(2,'EXT'),(1,'ORD'),(4,'REC');
/*!40000 ALTER TABLE `cperiodoacreditacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dkardex`
--

DROP TABLE IF EXISTS `dkardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dkardex` (
  `cal_kdx` int(11) DEFAULT NULL,
  `id_mc` int(11) NOT NULL,
  `id_ekd` int(11) NOT NULL,
  `id_pa` int(11) NOT NULL,
  KEY `cal_kdx` (`cal_kdx`),
  KEY `fk_dkardex_ekardex` (`id_ekd`),
  KEY `fk_dkardex_mmapa` (`id_mc`),
  KEY `fk_dkardex_cperiodo` (`id_pa`),
  CONSTRAINT `fk_dkardex_cperiodo` FOREIGN KEY (`id_pa`) REFERENCES `cperiodoacreditacion` (`id_pa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_dkardex_ekardex` FOREIGN KEY (`id_ekd`) REFERENCES `ekardex` (`id_ekd`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_dkardex_mmapa` FOREIGN KEY (`id_mc`) REFERENCES `mmapacurricular` (`id_mc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dkardex`
--

LOCK TABLES `dkardex` WRITE;
/*!40000 ALTER TABLE `dkardex` DISABLE KEYS */;
INSERT INTO `dkardex` VALUES (7,140,2,3),(9,141,2,1),(6,142,2,3),(7,143,2,1),(7,144,2,1),(8,149,2,1),(6,155,2,1),(8,153,2,1),(9,150,2,1),(8,152,2,1),(6,151,2,1),(7,156,2,1),(6,161,2,1),(7,159,2,3),(6,162,2,3),(6,163,2,3),(7,164,2,1),(7,165,2,1),(10,166,2,1),(6,191,2,1),(9,178,2,1),(8,179,2,1),(8,180,2,1);
/*!40000 ALTER TABLE `dkardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekardex`
--

DROP TABLE IF EXISTS `ekardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekardex` (
  `id_ekd` int(11) NOT NULL AUTO_INCREMENT,
  `bol_alu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ekd`),
  KEY `fk_ekardex_malumno` (`bol_alu`),
  CONSTRAINT `fk_ekardex_malumno` FOREIGN KEY (`bol_alu`) REFERENCES `malumno` (`bol_alu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekardex`
--

LOCK TABLES `ekardex` WRITE;
/*!40000 ALTER TABLE `ekardex` DISABLE KEYS */;
INSERT INTO `ekardex` VALUES (5,94000000),(1,2009121126),(2,2011090712),(3,2012090119),(4,2012090505);
/*!40000 ALTER TABLE `ekardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fecha`
--

DROP TABLE IF EXISTS `fecha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fecha` (
  `fecharegistro` date NOT NULL,
  PRIMARY KEY (`fecharegistro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fecha`
--

LOCK TABLES `fecha` WRITE;
/*!40000 ALTER TABLE `fecha` DISABLE KEYS */;
INSERT INTO `fecha` VALUES ('2014-08-22'),('2014-09-17'),('2017-01-01'),('2017-02-28'),('2017-03-24');
/*!40000 ALTER TABLE `fecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malumno`
--

DROP TABLE IF EXISTS `malumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malumno` (
  `bol_alu` int(10) NOT NULL,
  `app_alu` varchar(20) NOT NULL,
  `apm_alu` varchar(20) NOT NULL,
  `nom_alu` varchar(20) NOT NULL,
  `dir_alu` varchar(50) DEFAULT NULL,
  `sex_alu` varchar(10) NOT NULL,
  PRIMARY KEY (`bol_alu`),
  KEY `app_alu` (`app_alu`),
  KEY `apm_alu` (`apm_alu`),
  KEY `nom_alu` (`nom_alu`),
  KEY `sex_alu` (`sex_alu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malumno`
--

LOCK TABLES `malumno` WRITE;
/*!40000 ALTER TABLE `malumno` DISABLE KEYS */;
INSERT INTO `malumno` VALUES (94000000,'XYZ','abc','def','casa','mujer'),(94030607,'Alvarez','Galvan ','Armando','Mar Mediterr','hombre\r'),(1234567890,'de la  Rosa','PEDRO','PEDRO','primavera 2','hombre\r'),(2009090001,'\"de la Rosa\"','Gil','Alberto','primavera 2','hombre\r'),(2009095690,'Davila','Augusto','\"Sofia\"','Nueces 340','Mujer\r'),(2009121126,'tapia','hernandez','brian','privada de los sauces 16','hombre'),(2010098911,'Rodriguez','Juarez ','Eduardo','Mar de java 300 ','hombre\r'),(2011090712,'simon','zepeda','carlos eduardo','hombres ilustres 300','hombre'),(2011091234,'Vargas','\"Toscano\"','Ra','Hamburgo 40 int 4','Hombre\r'),(2011098888,'Esquivel','\"Toscano\"','Gerardo','montevideo 3','Hombre\r'),(2012090119,'colin','soto','david ricardo','diego arenas guzman 199','hombre'),(2012090505,'ortiz','rosas','christian jesus','oriente 251 112','hombre'),(2012114567,'Suarez','Sanchez','Andrea','Guanabana 21','mujer\r');
/*!40000 ALTER TABLE `malumno` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER asignarkardex AFTER INSERT ON malumno
FOR EACH ROW 
INSERT INTO ekardex (bol_alu) values (NEW.bol_alu) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mmapacurricular`
--

DROP TABLE IF EXISTS `mmapacurricular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mmapacurricular` (
  `id_mc` int(11) NOT NULL AUTO_INCREMENT,
  `cla_ua` varchar(5) DEFAULT NULL,
  `id_esp` int(11) NOT NULL,
  `id_niv` int(11) NOT NULL,
  PRIMARY KEY (`id_mc`),
  KEY `fk_mmapa_cespecialidad` (`id_esp`),
  KEY `fk_mmapa_cnivel` (`id_niv`),
  KEY `cla_ua` (`cla_ua`),
  CONSTRAINT `fk_mmapa_cespecialidad` FOREIGN KEY (`id_esp`) REFERENCES `cespecialidad` (`id_esp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mmapa_cnivel` FOREIGN KEY (`id_niv`) REFERENCES `cnivel` (`id_niv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `mmapacurricular_ibfk_1` FOREIGN KEY (`cla_ua`) REFERENCES `munidadaprendizaje` (`cla_ua`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mmapacurricular`
--

LOCK TABLES `mmapacurricular` WRITE;
/*!40000 ALTER TABLE `mmapacurricular` DISABLE KEYS */;
INSERT INTO `mmapacurricular` VALUES (140,'0101',1,1),(141,'0102',1,1),(142,'0103',1,1),(143,'0104',1,1),(144,'0105',1,1),(145,'0106',1,1),(146,'0107',1,1),(147,'0170',1,1),(148,'0171',1,1),(149,'0172',1,1),(150,'0202',1,2),(151,'0203',1,2),(152,'0204',1,2),(153,'0205',1,2),(154,'0207',1,2),(155,'0210',1,2),(156,'0211',1,2),(157,'0273',1,2),(158,'0274',1,2),(159,'0275',1,2),(160,'P304',2,3),(161,'P311',2,3),(162,'P316',2,3),(163,'P317',2,3),(164,'P318',2,3),(165,'P320',2,3),(166,'M304',3,3),(167,'M311',3,3),(168,'M316',3,3),(169,'M317',3,3),(170,'M318',3,3),(171,'M320',3,3),(172,'S304',4,3),(173,'S311',4,3),(174,'S316',4,3),(175,'S317',4,3),(176,'S318',4,3),(177,'S320',4,3),(178,'P319',2,3),(179,'P321',2,3),(180,'P322',2,3),(181,'M319',3,3),(182,'M321',3,3),(183,'M322',3,3),(184,'S319',4,3),(185,'S321',4,3),(186,'S322',4,3),(187,'P417',2,4),(188,'P418',2,4),(189,'P422',2,4),(190,'P425',2,4),(191,'P426',2,4),(192,'M417',3,4),(193,'M419',3,4),(194,'M422',3,4),(195,'M424',3,4),(196,'M426',3,4),(197,'S417',4,4),(198,'S418',4,4),(199,'S422',4,4),(200,'S424',4,4),(201,'S426',4,4),(202,'P423',2,4),(203,'P424',2,4),(204,'P427',2,4),(205,'P428',2,4),(206,'M423',3,4),(207,'M425',3,4),(208,'M479',3,4),(209,'M480',3,4),(210,'S423',4,4),(211,'S425',4,4),(212,'S427',4,4),(213,'P522',2,5),(214,'P527',2,5),(215,'P529',2,5),(216,'M522',3,5),(217,'M528',3,5),(218,'M529',3,5),(219,'S522',4,5),(220,'S528',4,5),(221,'S529',4,5),(222,'P524',2,5),(223,'P528',2,5),(224,'P530',2,5),(225,'P532',2,5),(226,'P531',2,5),(227,'M530',3,5),(228,'M531',3,5),(229,'M533',3,5),(230,'M534',3,5),(231,'M576',3,5),(232,'S530',4,5),(233,'S531',4,5),(234,'S532',4,5),(235,'S533',4,5),(236,'S581',4,5),(237,'P629',2,6),(238,'P632',2,6),(239,'P633',2,6),(240,'M629',3,6),(241,'M635',3,6),(242,'M636',3,6),(243,'S629',4,6),(244,'S635',4,6),(245,'S636',4,6),(246,'P634',2,6),(247,'P635',2,6),(248,'P636',2,6),(249,'P637',2,6),(250,'P638',2,6),(251,'M632',3,6),(252,'M634',3,6),(253,'M637',3,6),(254,'M638',3,6),(255,'M681',3,6),(256,'S634',4,6),(257,'S637',4,6),(258,'S638',4,6),(259,'S639',4,6),(260,'P406',2,4);
/*!40000 ALTER TABLE `mmapacurricular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `munidadaprendizaje`
--

DROP TABLE IF EXISTS `munidadaprendizaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `munidadaprendizaje` (
  `cla_ua` varchar(5) NOT NULL,
  `nom_ua` varchar(150) NOT NULL,
  PRIMARY KEY (`cla_ua`),
  KEY `nom_ua` (`nom_ua`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `munidadaprendizaje`
--

LOCK TABLES `munidadaprendizaje` WRITE;
/*!40000 ALTER TABLE `munidadaprendizaje` DISABLE KEYS */;
INSERT INTO `munidadaprendizaje` VALUES ('0106','ADMINISTRACION Y CALIDAD'),('P322','ADMON. DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION I'),('P428','ADMON. DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION II'),('0101','ALGEBRA'),('0171','APRECIACION ARTISTICA'),('S531','ARQUITECTURA DE DISPOSITIVOS PROGRAMABLES'),('P406','BASES DE DATOS'),('M424','BIOLOGIA BASICA'),('P425','BIOLOGIA BASICA'),('S424','BIOLOGIA BASICA'),('M422','CALCULO DIFERENCIAL'),('P422','CALCULO DIFERENCIAL'),('S422','CALCULO DIFERENCIAL'),('M522','CALCULO INTEGRAL'),('P522','CALCULO INTEGRAL'),('S522','CALCULO INTEGRAL'),('S427','CIRCUITOS DIGITALES'),('S319','CIRCUITOS ELECTRONICOS'),('0102','COMPUTACION BASICA I'),('0202','COMPUTACION BASICA II'),('M320','COMUNICACION CIENTIFICA'),('P320','COMUNICACION CIENTIFICA'),('S320','COMUNICACION CIENTIFICA'),('0203','COMUNICACION ORAL Y ESCRITA'),('0273','COMUNICACION Y LIDERAZGO'),('M637','CONTROL Y COSTOS DE PROCESOS INDUSTRIALES'),('0274','CREATIVIDAD E INNOVACION TECNOLOGICA'),('0172','DESARROLLO DE HABILIDADES DEL PENSAMIENTO'),('M638','DESARROLLO DE PROYECTO TECNOLOGICO'),('M480','DIBUJO ASISTIDO POR COMPUTADORA'),('0107','DIBUJO TECNICO I'),('0207','DIBUJO TECNICO II'),('S532','DISPOSITIVOS ELECTRONICOS'),('0170','EDUCACION PARA LA SALUD'),('S530','ELECTRONICA ANALOGICA Y DIGITAL'),('S581','ELECTRONICA EMPRESARIAL'),('S423','ELEMENTOS ELECTRONICOS'),('M426','ENTORNO SOCIOECONOMICO DE MEXICO'),('P426','ENTORNO SOCIOECONOMICO DE MEXICO'),('S426','ENTORNO SOCIOECONOMICO DE MEXICO'),('0105','FILOSOFIA I'),('0205','FILOSOFIA II'),('M317','FISICA I'),('P317','FISICA I'),('S317','FISICA I'),('M417','FISICA II'),('P417','FISICA II'),('S417','FISICA II'),('M528','FISICA III'),('P527','FISICA III'),('S528','FISICA III'),('M636','FISICA IV'),('P633','FISICA IV'),('S636','FISICA IV'),('M576','FORMACION EMPRESARIAL'),('M316','GEOMETRIA ANALITICA'),('P316','GEOMETRIA ANALITICA'),('S316','GEOMETRIA ANALITICA'),('0210','GEOMETRIA Y TRIGONOMETRIA'),('0211','HISTORIA DE MEXICO CONTEMPORANEO I'),('M311','HISTORIA DE MEXICO CONTEMPORANEO II'),('P311','HISTORIA DE MEXICO CONTEMPORANEO II'),('S311','HISTORIA DE MEXICO CONTEMPORANEO II'),('P635','INGENIERIA DE SOFTWARE BASICA'),('0104','INGLES I'),('0204','INGLES II'),('M304','INGLES III'),('P304','INGLES III'),('S304','INGLES III'),('M681','INSTALACIONES DE SISTEMAS AUTOMATIZADOS'),('P524','INTRODUCCION A LA INGENIERIA DE PRUEBAS'),('P528','INTRODUCCION A LOS SISTEMAS DISTRIBUIDOS'),('P321','LAB. DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION I'),('P427','LAB. DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION II'),('P531','LAB. DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION III'),('P532','LAB. DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION IV'),('P637','LAB. DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION V'),('0103','LENGUA Y COMUNICACION'),('S533','LENGUAJE DE PROGRAMACION'),('S321','LOGICA DIGITAL'),('M530','MANEJO DE ELEMENTOS DE CONTROL'),('M319','MANEJO DE INSTRUMENTOS DE MEDICION'),('M632','MANTENIMIENTO A SISTEMAS AUTOMATIZADOS'),('S634','MANTENIMIENTO DE EQUIPO DE COMPUTO'),('M533','MANUFACTURA ASISTIDA POR COMPUTADORA'),('S322','MEDICIONES ELECTRONICAS'),('P636','METODOS AGILES DE PROGRAMACION'),('S637','MICROELECTRONICA PROGRAMABLE'),('M322','OPERACION DE ELEMENTOS ELECTRICOS Y ELECTRONICOS'),('M425','OPERACION DE ELEMENTOS HIDRONEUMATICOS'),('M531','OPERACION DE EQUIPOS ELECTROHIDRONEUMATICOS'),('M423','OPERACION DE MAQUINAS CONVENCIONALES'),('S639','PRINCIPIOS DE AUTOMATIZACION'),('M635','PROBABILIDAD Y ESTADISTICA'),('P632','PROBABILIDAD Y ESTADISTICA'),('S635','PROBABILIDAD Y ESTADISTICA'),('M634','PROGRAMACION DE SISTEMAS AUTOMATIZADOS'),('P319','PROGRAMACION ORIENTADA A OBJETOS'),('P424','PROGRAMACION Y SERVICIOS WEB'),('P638','PROYECTO INTEGRADOR'),('M318','QUIMICA I'),('P318','QUIMICA I'),('S318','QUIMICA I'),('M419','QUIMICA II'),('P418','QUIMICA II'),('S418','QUIMICA II'),('M529','QUIMICA III'),('P529','QUIMICA III'),('S529','QUIMICA III'),('M629','QUIMICA IV'),('P629','QUIMICA IV'),('S629','QUIMICA IV'),('S638','REDES DIGITALES'),('P530','SEGURIDAD WEB Y APLICACIONES'),('M534','SIST. AUTOMATIZADOS CON CONTROLADORES LOG. PROGRAMABLES'),('S425','SOFTWARE PARA DISENO ELECTRONICO'),('P634','SOPORTE DE SOFTWARE'),('0275','TECNICAS DE INVESTIGACION DE CAMPO'),('P423','TECNICAS DE PROGRAMACION PERSONAL CON CALIDAD'),('M479','TECNICAS DE SUPERVISION'),('M321','TECNOLOGIA DE PROCESOS Y MATERIALES');
/*!40000 ALTER TABLE `munidadaprendizaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `solouaprogra`
--

DROP TABLE IF EXISTS `solouaprogra`;
/*!50001 DROP VIEW IF EXISTS `solouaprogra`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `solouaprogra` AS SELECT 
 1 AS `nom_ua`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `temporalejercicio`
--

DROP TABLE IF EXISTS `temporalejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporalejercicio` (
  `id_tem` int(11) NOT NULL AUTO_INCREMENT,
  `des_tem` varchar(30) NOT NULL DEFAULT 'prueba',
  `CAMPO` varchar(30) DEFAULT NULL COMMENT 'ES UNA PRUEBA DE ALTER',
  PRIMARY KEY (`id_tem`),
  KEY `des_tem` (`des_tem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalejercicio`
--

LOCK TABLES `temporalejercicio` WRITE;
/*!40000 ALTER TABLE `temporalejercicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `uaprogra`
--

DROP TABLE IF EXISTS `uaprogra`;
/*!50001 DROP VIEW IF EXISTS `uaprogra`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `uaprogra` AS SELECT 
 1 AS `des_niv`,
 1 AS `cla_ua`,
 1 AS `nom_ua`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'kardex'
--

--
-- Dumping routines for database 'kardex'
--
/*!50003 DROP PROCEDURE IF EXISTS `agregarespecialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarespecialidad`(esp varchar(20))
begin
declare validaresp varchar(20);
set validaresp="sinregistro";
select des_esp into validaresp from cespecialidad where des_esp=esp;
if(validaresp="sinregistro") then
insert into cespecialidad (des_esp) values (esp);
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarmapa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarmapa`(carrera varchar(20), semestre varchar(10),ua varchar(150))
BEGIN
declare idcarrera int;
declare idsemestre int;
declare claveua varchar(5);
declare letraespecialidad varchar(1);
declare idmapa int;
set idcarrera = 0;
set idsemestre=0;
set claveua="s/c";
set letraespecialidad = ' ';
set idmapa=0;
select id_esp into idcarrera from cespecialidad where des_esp=carrera;
select id_niv into idsemestre from cnivel where des_niv=semestre;
select substring(carrera,1,1) into letraespecialidad; 
select cla_ua into claveua from munidadaprendizaje where nom_ua=ua and cla_ua like concat (letraespecialidad,"%"); 
select id_mc into idmapa from mmapacurricular where cla_ua=claveua and id_esp=idcarrera and id_niv=idsemestre;
if (idmapa=0) then 
insert into mmapacurricular (cla_ua,id_esp,id_niv) values (claveua,idcarrera,idsemestre);
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambiarespecialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiarespecialidad`(espanterior varchar(20), espactual varchar(20))
begin
update cespecialidad set des_esp=espactual where des_esp=espanterior;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultaEspecialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultaEspecialidad`(in carrera varchar(40))
select * from cespecialidad where des_esp=carrera ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UAtotalesporcalif` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UAtotalesporcalif`(paterno varchar(20),materno varchar(20), nombre varchar (20), calificacion int)
begin 
select count(*) from malumno natural join ekardex natural join dkardex  
where app_alu=paterno and apm_alu=materno and nom_alu=nombre and cal_kdx=calificacion; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerClaveUA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VerClaveUA`(ua varchar(50))
begin
select cla_ua from munidadaprendizaje where nom_ua=ua;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `solouaprogra`
--

/*!50001 DROP VIEW IF EXISTS `solouaprogra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `solouaprogra` AS select `uaprogra`.`nom_ua` AS `nom_ua` from `uaprogra` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `uaprogra`
--

/*!50001 DROP VIEW IF EXISTS `uaprogra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uaprogra` AS select `cnivel`.`des_niv` AS `des_niv`,`mmapacurricular`.`cla_ua` AS `cla_ua`,`munidadaprendizaje`.`nom_ua` AS `nom_ua` from (((`mmapacurricular` join `munidadaprendizaje` on((`mmapacurricular`.`cla_ua` = `munidadaprendizaje`.`cla_ua`))) join `cnivel` on((`mmapacurricular`.`id_niv` = `cnivel`.`id_niv`))) join `cespecialidad` on((`mmapacurricular`.`id_esp` = `cespecialidad`.`id_esp`))) where (`cespecialidad`.`des_esp` = 'programacion') */;
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

-- Dump completed on 2017-04-19 19:06:48
