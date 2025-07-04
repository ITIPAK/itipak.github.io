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
  `datesignature` date default NULL,
  `assign` varchar(45) default NULL,
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
INSERT INTO `trwr` VALUES ('WRIPAK/2015-02/0001','2015-02-18','lpt01','IT','gofur','IPAK',NULL,NULL,NULL,'Rusak Parah',NULL,NULL,'H',NULL,NULL);
/*!40000 ALTER TABLE `trwr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-18 15:10:09
