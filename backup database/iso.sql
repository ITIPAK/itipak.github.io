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
INSERT INTO `mscompany` VALUES ('IPAK','PT. Inti Plastik Aneka Karet','Jl. Manis V no. 18','021-5918118','IPAK','ipak.jpg','drajat','fcea920f7412b5da7be0cf42b8c93759','ghofur@toko-seroja.com','Y',NULL),('VIP','PT. Vortex Inter Plasindo','Jl. Manis Raya','021-5916388','VIP','vip.jpg','basuki','e10adc3949ba59abbe56e057f20f883e','basuki.rafa@gmail.com','Y',NULL),('TOP','PT. Tri Orien Pasifik','Jl. Raya Pasar Kemis Km 6.2 No. 78','021-5900321','TOP','top.jpg','yance','e10adc3949ba59abbe56e057f20f883e','yance.prodfac@gmail.com','Y',NULL),('MOT','PT. Mitra Optik Technology','Jl. Raya Otonom, Cikupa','021-5961424','MOT','mot.jpg','timbul','e10adc3949ba59abbe56e057f20f883e','timbul@gmail.com','Y',NULL);
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
INSERT INTO `mslogin` VALUES ('ipak','e6bf3c9fb06cd2ed27e6d045eccd72d6','Y','IPAK',NULL),('vip','e10adc3949ba59abbe56e057f20f883e','Y','VIP',NULL),('top','1590587b01f8c9345032643e24f68e3e','Y','TOP',NULL),('gofur','e28c4514a9fdf386f8a01e0b46cbceda','Y','ALL','IT'),('mot','6ab382a39f3b7cefc8f22268a266e407','Y','MOT',NULL),('admin','e6bf3c9fb06cd2ed27e6d045eccd72d6','Y','ALL','ALL');
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
-- Dumping data for table `mscomputer`
--

LOCK TABLES `mscomputer` WRITE;
/*!40000 ALTER TABLE `mscomputer` DISABLE KEYS */;
INSERT INTO `mscomputer` VALUES ('servip1','Server Utama IPAK','Gofur','ASUS P5KPL-M','Intel Core 2 Duo 3.0 Ghz','DDR3 2Gb','Seagate 80 Gb','No','Simbada Power 450W','CRT Samsung Share 1','share','Logitech Share 1','Logitech Share 1','No','IPAK','Server Control Jaringan','2015-01-01','2015-02-02','Y',NULL),('lpt01','Laptop IT','Gofur','Lenovo','Core I3 2.27 Ghz','4 Gb','WDC 320 Gb','Nvidia Geforce','Lenovo','Display 14 inc','share','lenovo keyboard','Logitech','No','IPAK','Inventaris','2015-01-01','2015-02-02','Y',NULL),('lpt02','Laptop CCTV','Gofur','HP','Quad Core 2.27 Ghz','1 Gb','Toshiba 320 Gb','no','HP','Display 14 inc','share','hp keyboard','no','No','IPAK','Backup CCTV','2015-01-01','2015-02-02','Y',NULL),('ddp01','System Dadap 01','Tia','Gigabyte','Core I3 2.27 Ghz','2 Gb','WDC 320 Gb','Nvidia Geforce','Simbada Cool','LCD 15 inc','share','Logitech','Logitech','No','IPAK','CPU System Dadap','2015-01-01','2015-02-02','Y',NULL);
/*!40000 ALTER TABLE `mscomputer` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mstech` VALUES ('IT','IT Support','IT and System','ghofur@toko-seroja.com'),('MN','Maintenance','Maintenance and Setting',NULL);
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
-- Dumping data for table `trwr`
--

LOCK TABLES `trwr` WRITE;
/*!40000 ALTER TABLE `trwr` DISABLE KEYS */;
INSERT INTO `trwr` VALUES ('WRIPAK/2015-02/0001','2015-02-09','serverip','IT','opunk','ipak','drajat','IT','CPU Mati total','Ganti Power Supply','2015-02-10','A',NULL,NULL),('WRIPAK/2015-02/0005','2015-02-16','lpt01','IT','gofur','IPAK',NULL,NULL,'JJAHJKA',NULL,NULL,'H',NULL,NULL),('WRIPAK/2015-02/0006','2015-02-16','servip1','IT','opunk','IPAK',NULL,NULL,'PUTUS SEMUA',NULL,NULL,'H',NULL,NULL),('WRIPAK/2015-02/0004','2015-02-16','ddp01','IT','gofur','IPAK',NULL,NULL,'Hancurrrr',NULL,NULL,'H',NULL,NULL),('WRIPAK/2015-02/0002','2015-02-16','lpt01','IT','opunk','IPAK',NULL,NULL,'Rusak',NULL,NULL,'H',NULL,NULL),('WRIPAK/2015-02/0003','2015-02-16','lpt01','IT','opunk','IPAK',NULL,NULL,'PARAAHHH',NULL,NULL,'H',NULL,NULL);
/*!40000 ALTER TABLE `trwr` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mspart` VALUES ('hdd01','Hardisk Seagate 80 Gb','Hardisk','IT','Y'),('bor01','Alat Bor 5 Inc','Alat Bor','MN','Y'),('ddr01','DDR3 2Gb','Memory DDR3 2 Gb','IT','Y');
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

-- Dump completed on 2015-02-17 12:21:00
