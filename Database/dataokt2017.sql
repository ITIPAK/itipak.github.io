-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.6.26 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table iso.actionwr
CREATE TABLE IF NOT EXISTS `actionwr` (
  `nowr` varchar(20) NOT NULL,
  `schedule` int(11) NOT NULL,
  `action` text NOT NULL,
  `actiondate` date NOT NULL,
  `close` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.actionwr: ~8 rows (approximately)
/*!40000 ALTER TABLE `actionwr` DISABLE KEYS */;
/*!40000 ALTER TABLE `actionwr` ENABLE KEYS */;


-- Dumping structure for table iso.changedt

/*!40000 ALTER TABLE `changedt` ENABLE KEYS */;


-- Dumping structure for table iso.changehd
CREATE TABLE IF NOT EXISTS `changehd` (
  `nocp` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `idcomputer` varchar(15) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.changehd: ~2 rows (approximately)
/*!40000 ALTER TABLE `changehd` DISABLE KEYS */;

/*!40000 ALTER TABLE `changehd` ENABLE KEYS */;


-- Dumping structure for table iso.mscompany
CREATE TABLE IF NOT EXISTS `mscompany` (
  `idcompany` varchar(10) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` text,
  `phone` varchar(40) DEFAULT NULL,
  `alias` varchar(15) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `qa` varchar(100) NOT NULL,
  `active` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idcompany`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.mscompany: ~2 rows (approximately)
/*!40000 ALTER TABLE `mscompany` DISABLE KEYS */;
/*!40000 ALTER TABLE `mscompany` ENABLE KEYS */;


-- Dumping structure for table iso.mscomputer
CREATE TABLE IF NOT EXISTS `mscomputer` (
  `idcomputer` varchar(15) NOT NULL,
  `computer` varchar(45) DEFAULT NULL,
  `os` varchar(50) DEFAULT NULL,
  `antivirus` varchar(50) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `motherboard` varchar(100) DEFAULT NULL,
  `processor` varchar(40) DEFAULT NULL,
  `ram` varchar(45) DEFAULT NULL,
  `hdd` varchar(50) DEFAULT NULL,
  `vga` varchar(45) DEFAULT NULL,
  `casing` varchar(45) DEFAULT NULL,
  `monitor` varchar(45) DEFAULT NULL,
  `printer` varchar(45) DEFAULT NULL,
  `keyboard` varchar(20) DEFAULT NULL,
  `mouse` varchar(20) DEFAULT NULL,
  `other` varchar(50) DEFAULT NULL,
  `iddivisi` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updatedate` date DEFAULT NULL,
  `ipaddress` varchar(25) DEFAULT NULL,
  `aktif` varchar(2) NOT NULL,
  PRIMARY KEY (`idcomputer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.mscomputer: ~35 rows (approximately)
/*!40000 ALTER TABLE `mscomputer` DISABLE KEYS */;

/*!40000 ALTER TABLE `mscomputer` ENABLE KEYS */;


-- Dumping structure for table iso.msdivisi
CREATE TABLE IF NOT EXISTS `msdivisi` (
  `iddivisi` varchar(10) DEFAULT NULL,
  `divisi` varchar(50) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `utama` varchar(10) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  `location` text,
  `pin` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.msdivisi: ~8 rows (approximately)
/*!40000 ALTER TABLE `msdivisi` DISABLE KEYS */;

/*!40000 ALTER TABLE `msdivisi` ENABLE KEYS */;


-- Dumping structure for table iso.mslocation
CREATE TABLE IF NOT EXISTS `mslocation` (
  `idlocation` varchar(10) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.mslocation: ~5 rows (approximately)
/*!40000 ALTER TABLE `mslocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mslocation` ENABLE KEYS */;


-- Dumping structure for table iso.mslogin
CREATE TABLE IF NOT EXISTS `mslogin` (
  `idlogin` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`idlogin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.mslogin: ~6 rows (approximately)
/*!40000 ALTER TABLE `mslogin` DISABLE KEYS */;

/*!40000 ALTER TABLE `mslogin` ENABLE KEYS */;


-- Dumping structure for table iso.mspart
CREATE TABLE IF NOT EXISTS `mspart` (
  `idpart` varchar(10) NOT NULL,
  `part` varchar(45) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `active` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idpart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.mspart: ~24 rows (approximately)
/*!40000 ALTER TABLE `mspart` DISABLE KEYS */;
/*!40000 ALTER TABLE `mspart` ENABLE KEYS */;


-- Dumping structure for table iso.mspartstock
CREATE TABLE IF NOT EXISTS `mspartstock` (
  `idpart` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.mspartstock: ~155 rows (approximately)
/*!40000 ALTER TABLE `mspartstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `mspartstock` ENABLE KEYS */;


-- Dumping structure for table iso.mstech
CREATE TABLE IF NOT EXISTS `mstech` (
  `idtech` varchar(5) NOT NULL,
  `tech` varchar(45) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idtech`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.mstech: ~3 rows (approximately)
/*!40000 ALTER TABLE `mstech` DISABLE KEYS */;
/*!40000 ALTER TABLE `mstech` ENABLE KEYS */;


-- Dumping structure for table iso.msunit
CREATE TABLE IF NOT EXISTS `msunit` (
  `idunit` varchar(10) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idunit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.msunit: ~3 rows (approximately)
/*!40000 ALTER TABLE `msunit` DISABLE KEYS */;
/*!40000 ALTER TABLE `msunit` ENABLE KEYS */;


-- Dumping structure for table iso.opnamedt
CREATE TABLE IF NOT EXISTS `opnamedt` (
  `noop` varchar(30) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.opnamedt: ~69 rows (approximately)
/*!40000 ALTER TABLE `opnamedt` DISABLE KEYS */;
/*!40000 ALTER TABLE `opnamedt` ENABLE KEYS */;


-- Dumping structure for table iso.opnamehd
CREATE TABLE IF NOT EXISTS `opnamehd` (
  `noop` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`noop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.opnamehd: ~6 rows (approximately)
/*!40000 ALTER TABLE `opnamehd` DISABLE KEYS */;
/*!40000 ALTER TABLE `opnamehd` ENABLE KEYS */;


-- Dumping structure for table iso.trgetpartdt
CREATE TABLE IF NOT EXISTS `trgetpartdt` (
  `nogp` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trgetpartdt: ~7 rows (approximately)
/*!40000 ALTER TABLE `trgetpartdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `trgetpartdt` ENABLE KEYS */;


-- Dumping structure for table iso.trgetpartdt2
CREATE TABLE IF NOT EXISTS `trgetpartdt2` (
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trgetpartdt2: ~0 rows (approximately)
/*!40000 ALTER TABLE `trgetpartdt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `trgetpartdt2` ENABLE KEYS */;


-- Dumping structure for table iso.trgetparthd
CREATE TABLE IF NOT EXISTS `trgetparthd` (
  `nogp` varchar(20) NOT NULL,
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nogp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trgetparthd: ~6 rows (approximately)
/*!40000 ALTER TABLE `trgetparthd` DISABLE KEYS */;
/*!40000 ALTER TABLE `trgetparthd` ENABLE KEYS */;


-- Dumping structure for table iso.trprdt
CREATE TABLE IF NOT EXISTS `trprdt` (
  `nopr` varchar(20) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trprdt: ~12 rows (approximately)
/*!40000 ALTER TABLE `trprdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `trprdt` ENABLE KEYS */;


-- Dumping structure for table iso.trprhd
CREATE TABLE IF NOT EXISTS `trprhd` (
  `nopr` varchar(20) NOT NULL,
  `nowr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`nopr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trprhd: ~5 rows (approximately)
/*!40000 ALTER TABLE `trprhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `trprhd` ENABLE KEYS */;


-- Dumping structure for table iso.trrrdt
CREATE TABLE IF NOT EXISTS `trrrdt` (
  `norr` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trrrdt: ~6 rows (approximately)
/*!40000 ALTER TABLE `trrrdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `trrrdt` ENABLE KEYS */;


-- Dumping structure for table iso.trrrhd
CREATE TABLE IF NOT EXISTS `trrrhd` (
  `norr` varchar(20) NOT NULL,
  `nopr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`norr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trrrhd: ~0 rows (approximately)
/*!40000 ALTER TABLE `trrrhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `trrrhd` ENABLE KEYS */;


-- Dumping structure for table iso.trwr
CREATE TABLE IF NOT EXISTS `trwr` (
  `nowr` varchar(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `idcomputer` varchar(15) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `iddivisi` varchar(10) DEFAULT NULL,
  `signature` varchar(45) DEFAULT NULL,
  `assign` varchar(45) DEFAULT NULL,
  `issue` text,
  `alasan` text,
  `status` varchar(45) DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `getpart` varchar(30) DEFAULT NULL,
  `request` varchar(30) DEFAULT NULL,
  `vendor` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nowr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trwr: ~18 rows (approximately)
/*!40000 ALTER TABLE `trwr` DISABLE KEYS */;
/*!40000 ALTER TABLE `trwr` ENABLE KEYS */;


-- Dumping structure for table iso.wrschedule
CREATE TABLE IF NOT EXISTS `wrschedule` (
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `iddivisi` varchar(10) DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.wrschedule: ~21 rows (approximately)
/*!40000 ALTER TABLE `wrschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `wrschedule` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
