CREATE DATABASE  IF NOT EXISTS `iso` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `iso`;
-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
--
-- Host: localhost    Database: iso
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `mscompany`
--

DROP TABLE IF EXISTS `mscompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mscompany` (
  `idcompany` varchar(10) NOT NULL,
  `company` varchar(100) default NULL,
  `address` text,
  `phone` varchar(40) default NULL,
  `alias` varchar(15) default NULL,
  `logo` varchar(45) default NULL,
  `signature` varchar(45) default NULL,
  `pin` varchar(70) default NULL,
  `email` varchar(60) default NULL,
  `active` varchar(2) default NULL,
  `ip` varchar(50) default NULL,
  PRIMARY KEY  (`idcompany`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mscompany`
--

LOCK TABLES `mscompany` WRITE;
/*!40000 ALTER TABLE `mscompany` DISABLE KEYS */;
INSERT INTO `mscompany` VALUES ('IPAK','PT. Inti Plastik Aneka Karet','Jl. Manis V no. 18','021-5918118','IPAK','ipak.jpg','drajat','fcea920f7412b5da7be0cf42b8c93759','ghofur@toko-seroja.com','Y',NULL);
INSERT INTO `mscompany` VALUES ('VIP','PT. Vortex Inter Plasindo','Jl. Manis Raya','021-5916388','VIP','vip.jpg','basuki','e10adc3949ba59abbe56e057f20f883e','basuki.rafa@gmail.com','Y',NULL);
INSERT INTO `mscompany` VALUES ('TOP','PT. Tri Orien Pasifik','Jl. Raya Pasar Kemis Km 6.2 No. 78','021-5900321','TOP','top.jpg','yance','e10adc3949ba59abbe56e057f20f883e','yance.prodfac@gmail.com','Y',NULL);
INSERT INTO `mscompany` VALUES ('MOT','PT. Mitra Optik Technology','Jl. Raya Otonom, Cikupa','021-5961424','MOT','mot.jpg','timbul','e10adc3949ba59abbe56e057f20f883e','timbul@gmail.com','Y',NULL);
/*!40000 ALTER TABLE `mscompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mslogin`
--

DROP TABLE IF EXISTS `mslogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mslogin` (
  `idlogin` varchar(10) NOT NULL,
  `password` varchar(100) default NULL,
  `active` varchar(2) default NULL,
  `idcompany` varchar(10) default NULL,
  `idtech` varchar(5) default NULL,
  PRIMARY KEY  (`idlogin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mslogin`
--

LOCK TABLES `mslogin` WRITE;
/*!40000 ALTER TABLE `mslogin` DISABLE KEYS */;
INSERT INTO `mslogin` VALUES ('ipak','e6bf3c9fb06cd2ed27e6d045eccd72d6','Y','IPAK',NULL);
INSERT INTO `mslogin` VALUES ('vip','e10adc3949ba59abbe56e057f20f883e','Y','VIP',NULL);
INSERT INTO `mslogin` VALUES ('top','1590587b01f8c9345032643e24f68e3e','Y','TOP',NULL);
INSERT INTO `mslogin` VALUES ('gofur','e28c4514a9fdf386f8a01e0b46cbceda','Y','ALL','IT');
INSERT INTO `mslogin` VALUES ('mot','6ab382a39f3b7cefc8f22268a266e407','Y','MOT',NULL);
INSERT INTO `mslogin` VALUES ('admin','e6bf3c9fb06cd2ed27e6d045eccd72d6','Y','ALL','ALL');
/*!40000 ALTER TABLE `mslogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mscomputer`
--

DROP TABLE IF EXISTS `mscomputer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mscomputer` (
  `idcomputer` varchar(15) NOT NULL,
  `computer` varchar(45) default NULL,
  `user` varchar(45) default NULL,
  `motherboard` varchar(100) default NULL,
  `processor` varchar(40) default NULL,
  `ram` varchar(45) default NULL,
  `hdd` varchar(50) default NULL,
  `vga` varchar(45) default NULL,
  `casing` varchar(45) default NULL,
  `monitor` varchar(45) default NULL,
  `printer` varchar(45) default NULL,
  `keyboard` varchar(20) default NULL,
  `mouse` varchar(20) default NULL,
  `other` varchar(50) default NULL,
  `idcompany` varchar(10) default NULL,
  `remark` varchar(100) default NULL,
  `date` date default NULL,
  `updatedate` date default NULL,
  `active` varchar(5) default NULL,
  `ipaddress` varchar(25) default NULL,
  PRIMARY KEY  (`idcomputer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `mstech`
--

DROP TABLE IF EXISTS `mstech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mstech` (
  `idtech` varchar(5) NOT NULL,
  `tech` varchar(45) default NULL,
  `remark` varchar(100) default NULL,
  `email` varchar(45) default NULL,
  PRIMARY KEY  (`idtech`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstech`
--

LOCK TABLES `mstech` WRITE;
/*!40000 ALTER TABLE `mstech` DISABLE KEYS */;
INSERT INTO `mstech` VALUES ('IT','IT Support','IT and System','ghofur@toko-seroja.com');
INSERT INTO `mstech` VALUES ('MN','Maintenance','Maintenance and Setting',NULL);
/*!40000 ALTER TABLE `mstech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mspartstock`
--

DROP TABLE IF EXISTS `mspartstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mspartstock` (
  `idpart` varchar(10) default NULL,
  `date` date default NULL,
  `stock` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mspartstock`
--

LOCK TABLES `mspartstock` WRITE;
/*!40000 ALTER TABLE `mspartstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `mspartstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trwr`
--

DROP TABLE IF EXISTS `trwr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trwr` (
  `nowr` varchar(20) NOT NULL,
  `date` date default NULL,
  `idcomputer` varchar(15) default NULL,
  `idtech` varchar(5) default NULL,
  `user` varchar(45) default NULL,
  `idcompany` varchar(10) default NULL,
  `signature` varchar(45) default NULL,
  `knowladge` varchar(45) default NULL,
  `issue` text,
  `action` text,
  `actdate` date default NULL,
  `status` varchar(45) default NULL,
  `closedate` date default NULL,
  `related` varchar(45) default NULL,
  PRIMARY KEY  (`nowr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `mspart`
--

DROP TABLE IF EXISTS `mspart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mspart` (
  `idpart` varchar(10) NOT NULL,
  `part` varchar(45) default NULL,
  `remark` varchar(100) default NULL,
  `idtech` varchar(5) default NULL,
  `active` varchar(5) default NULL,
  PRIMARY KEY  (`idpart`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mspart`
--

LOCK TABLES `mspart` WRITE;
/*!40000 ALTER TABLE `mspart` DISABLE KEYS */;
INSERT INTO `mspart` VALUES ('hdd01','Hardisk Seagate 80 Gb','Hardisk','IT','Y');
INSERT INTO `mspart` VALUES ('bor01','Alat Bor 5 Inc','Alat Bor','MN','Y');
INSERT INTO `mspart` VALUES ('ddr01','DDR3 2Gb','Memory DDR3 2 Gb','IT','Y');
/*!40000 ALTER TABLE `mspart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `troutpart`
--

DROP TABLE IF EXISTS `troutpart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `troutpart` (
  `noop` varchar(20) NOT NULL,
  `idpart` varchar(15) default NULL,
  `qty` int(11) default NULL,
  `nowr` varchar(20) default NULL,
  `remark` varchar(100) default NULL,
  PRIMARY KEY  (`noop`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `troutpart`
--

LOCK TABLES `troutpart` WRITE;
/*!40000 ALTER TABLE `troutpart` DISABLE KEYS */;
/*!40000 ALTER TABLE `troutpart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-18  9:59:11
