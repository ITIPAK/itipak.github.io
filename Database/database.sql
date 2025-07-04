-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ipak1.actionwr
CREATE TABLE IF NOT EXISTS `actionwr` (
  `nowr` varchar(20) NOT NULL,
  `schedule` int(11) NOT NULL,
  `action` text NOT NULL,
  `actiondate` date NOT NULL,
  `close` varchar(2) NOT NULL
);

-- Dumping data for table ipak1.actionwr: 2 rows
/*!40000 ALTER TABLE `actionwr` DISABLE KEYS */;
INSERT INTO `actionwr` (`nowr`, `schedule`, `action`, `actiondate`, `close`) VALUES
	('WRIPAK/2015-06/0001', 2, 'Install Wifi Lan untuk Jaringan', '2015-05-08', 'Y'),
	('WRIPAK/2015-06/0001', 1, 'Periksa Jaringan CPU user, Request wifi LAN', '2015-05-04', 'N');
/*!40000 ALTER TABLE `actionwr` ENABLE KEYS */;


-- Dumping structure for table ipak1.mscompany
CREATE TABLE IF NOT EXISTS `mscompany` (
  `idcompany` varchar(10) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` text,
  `phone` varchar(40) DEFAULT NULL,
  `alias` varchar(15) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idcompany`)
);

-- Dumping data for table ipak1.mscompany: 3 rows
/*!40000 ALTER TABLE `mscompany` DISABLE KEYS */;
INSERT INTO `mscompany` (`idcompany`, `company`, `address`, `phone`, `alias`, `logo`, `active`, `ip`) VALUES
	('ipak', 'PT. Inti Plastik Aneka Karet', 'Jl. Manis V No. 18', '021-5918118', 'IPAK', 'ipak.jpg', 'Y', NULL),
	('vip', 'PT. Vortex Interplasindo', 'Jl. Manis Raya No. 7-9', '021-5916388', 'VIP', 'vip.jpg', 'Y', NULL),
	('mot', 'PT. Mitra Optic Technology', 'Cikupa Raya', '02165567', 'MOT', 'mot.jpg', 'N', NULL);
/*!40000 ALTER TABLE `mscompany` ENABLE KEYS */;


-- Dumping structure for table ipak1.mscompanyld
CREATE TABLE IF NOT EXISTS `mscompanyld` (
  `idcompany` varchar(10) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL
);

-- Dumping data for table ipak1.mscompanyld: 5 rows
/*!40000 ALTER TABLE `mscompanyld` DISABLE KEYS */;
INSERT INTO `mscompanyld` (`idcompany`, `leader`, `pin`, `email`) VALUES
	('ipak', 'Dani', 'e10adc3949ba59abbe56e057f20f883e', 'dani.qa@gmail.com'),
	('ipak', 'Mulyono', 'e10adc3949ba59abbe56e057f20f883e', 'ghofur@toko-seroja.com'),
	('ipak', 'Gofur', 'e10adc3949ba59abbe56e057f20f883e', 'ghofur@toko-seroja.com'),
	('vip', 'Basuki', 'e10adc3949ba59abbe56e057f20f883e', 'basuki.rafa@gmail.com'),
	('ipak', 'Sudrajat', 'e10adc3949ba59abbe56e057f20f883e', 'ghofur@toko-seroja.com');
/*!40000 ALTER TABLE `mscompanyld` ENABLE KEYS */;


-- Dumping structure for table ipak1.mscomputer
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
  PRIMARY KEY (`idcomputer`)
);

-- Dumping data for table ipak1.mscomputer: 9 rows
/*!40000 ALTER TABLE `mscomputer` DISABLE KEYS */;
INSERT INTO `mscomputer` (`idcomputer`, `computer`, `os`, `antivirus`, `expired`, `user`, `motherboard`, `processor`, `ram`, `hdd`, `vga`, `casing`, `monitor`, `printer`, `keyboard`, `mouse`, `other`, `iddivisi`, `remark`, `date`, `updatedate`, `ipaddress`) VALUES
	('srvipak1', 'Server 1 IPAK', 'Windows Server 2003', 'no', '2020-01-01', 'IT', 'Asus P5G43T-M', 'Intel Core2Duo 3.0 Ghz', 'DDR3 1Gb', 'HDD 80 Gb', 'No', 'Power Logic 450W', 'CRT', 'share', 'logitech ps2', 'logitech usb', 'Lan Card D-Link', 'sas', 'CPU Server Internet IPAK 1', '2016-07-18', NULL, '192.168.20.1'),
	('srvipak2', 'Server 2 IPAK', 'Windows 7', 'Avast', '2017-06-06', 'IT', 'Asus P5G43T-M', 'Intel Core2Duo 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'share CRT', 'share', 'Share logitech ps2', 'Share logitech usb', 'Lan Card D-Link', 'sas', 'CPU Server Internet 2 - IPAK', '2016-07-18', NULL, '192.168.20.2'),
	('intipak1', 'Internet Center IPAK', 'Windows 7', 'Avast', '2017-06-06', 'Umum', 'Varrio', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L120', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'sas', 'Cpu Internet & printing Center untuk Umum', '2016-07-18', NULL, '192.168.20.5'),
	('lgtipak1', 'Logistic IPAK 1', 'Windows XP', 'Avast', '2017-06-06', 'Thomas', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 512Mb', 'HDD 80 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Alat Timbangan', 'sas', 'CPU Logistik & Timbangan IPAK', '2016-07-18', NULL, '192.168.20.11'),
	('lgtipak2', 'Logistic IPAK 2', 'Windows 7', 'Avast', '2017-06-06', 'Thomas', 'Asus P5G41TM_LX', 'Intel Dual Core 2.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'sas', 'Cpu Logistic IPAK2', '2016-07-18', NULL, '192.168.20.12');
/*!40000 ALTER TABLE `mscomputer` ENABLE KEYS */;


-- Dumping structure for table ipak1.msdivisi
CREATE TABLE IF NOT EXISTS `msdivisi` (
  `iddivisi` varchar(10) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  `location` text,
  `pin` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
);

-- Dumping data for table ipak1.msdivisi: ~5 rows (approximately)
/*!40000 ALTER TABLE `msdivisi` DISABLE KEYS */;
INSERT INTO `msdivisi` (`iddivisi`, `idcompany`, `leader`, `location`, `pin`, `email`) VALUES
	('sas', 'ipak', 'Drajat', 'Jl Manis V - Tangerang', '9a78f2779fa53128aa0eccefffb5761c', 'drajat@gmail.com'),
	('egp', 'ipak', 'Mulyono', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'mul.rubber@gmail.com'),
	('top', 'ipak', 'Yance', 'Pasar Kemis - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'yance.prodfac@gmail.com'),
	('vip', 'vip', 'Basuki', 'Jl Manis Raya - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'basuki@gmail.com'),
	('helm', 'vip', 'Triyono', 'Jl Manis Raya', 'e10adc3949ba59abbe56e057f20f883e', 'tri.helm@gmail.com'),
	('mot', 'vip', 'Timbul', 'Cikupa', 'e10adc3949ba59abbe56e057f20f883e', 'timbul@gmail.com');
/*!40000 ALTER TABLE `msdivisi` ENABLE KEYS */;


-- Dumping structure for table ipak1.mslocation
CREATE TABLE IF NOT EXISTS `mslocation` (
  `idlocation` varchar(10) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` text
);

-- Dumping data for table ipak1.mslocation: ~4 rows (approximately)
/*!40000 ALTER TABLE `mslocation` DISABLE KEYS */;
INSERT INTO `mslocation` (`idlocation`, `idcompany`, `location`, `address`) VALUES
	('lcipak1', 'ipak', 'Kawasan Manis - Jatake', 'Jl. Manis V No. 18, Jatiuwung Banten'),
	('lcipak2', 'ipak', 'TOP-Pasar Kemis', 'Jl. Pasar Kemis Raya, Banten'),
	('lcipak3', 'ipak', 'HO-I', 'Ruko Pinangsia Blok I'),
	('lcipak4', 'ipak', 'HO-L', 'Ruko Pinangsia Blok L'),
	('lcipak5', 'ipak', 'Graha Kencana', 'Komplek Graha Kencana, Kebon Jeruk Jakarta Barat');
/*!40000 ALTER TABLE `mslocation` ENABLE KEYS */;


-- Dumping structure for table ipak1.mslogin
CREATE TABLE IF NOT EXISTS `mslogin` (
  `idlogin` varchar(10) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idlogin`)
);

-- Dumping data for table ipak1.mslogin: 4 rows
/*!40000 ALTER TABLE `mslogin` DISABLE KEYS */;
INSERT INTO `mslogin` (`idlogin`, `password`, `active`, `idcompany`, `idtech`) VALUES
	('admin', '21232f297a57a5a743894a0e4a801fc3', 'Y', 'ALL', 'ALL'),
	('vip', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'vip', NULL),
	('ipak', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ipak', NULL),
	('gofur', 'e28c4514a9fdf386f8a01e0b46cbceda', 'Y', 'ALL', 'IT1');
/*!40000 ALTER TABLE `mslogin` ENABLE KEYS */;


-- Dumping structure for table ipak1.mspart
CREATE TABLE IF NOT EXISTS `mspart` (
  `idpart` varchar(10) NOT NULL,
  `part` varchar(45) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `active` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idpart`)
);

-- Dumping data for table ipak1.mspart: 15 rows
/*!40000 ALTER TABLE `mspart` DISABLE KEYS */;
INSERT INTO `mspart` (`idpart`, `part`, `remark`, `idtech`, `active`) VALUES
	('HDD80', 'Harddisk 80 Gb', 'Harddisk Space 80 Gb', 'IT1', 'Y'),
	('WINXP', 'Windows XP', 'Original Windows XP', 'IT2', 'Y'),
	('DDR21', 'DDR2 1Gb', 'Memory PC DDR2 1Gb', 'IT1', 'Y'),
	('DDR22', 'DDR2 2Gb', 'Memory PC DDR2 2Gb', 'IT1', 'Y'),
	('DDR31', 'DDR3 1Gb', 'Memory PC DDR3 1Gb', 'IT1', 'Y'),
	('DDR32', 'DDR3 2Gb', 'Memory PC DDR3 2Gb', 'IT1', 'Y'),
	('DDR34', 'DDR3 4Gb', 'Memory PC DDR3 4Gb', 'IT1', 'Y'),
	('HDD160', 'Harddisk 160 Gb', 'Harddisk Space 160 Gb', 'IT1', 'Y'),
	('HDD250', 'Harddisk 250 Gb', 'Harddisk Space 250 Gb', 'IT1', 'Y'),
	('HDD500', 'Harddisk 500 Gb', 'Harddisk Space 500 Gb', 'IT1', 'Y'),
	('HDD1000', 'Harddisk 1 Tb', 'Harddisk Space 1 Tb', 'IT1', 'Y'),
	('HDD2000', 'Harddisk 2 Tb', 'Harddisk Space 2 Tb', 'IT1', 'Y'),
	('PRC1', 'Intel Dual Core 2.0Ghz', 'Processor Intel Dual Core 2.0Ghz', 'IT1', 'Y'),
	('PRC2', 'Intel Dual Core 3.0Ghz', 'Processor Intel Dual Core 3.0Ghz', 'IT1', 'Y'),
	('PRC3', 'Intel Core2Duo 3.0Ghz', 'Processor Intel Core2Duo 3.0Ghz', 'IT1', 'Y');
/*!40000 ALTER TABLE `mspart` ENABLE KEYS */;


-- Dumping structure for table ipak1.mspartstock
CREATE TABLE IF NOT EXISTS `mspartstock` (
  `idpart` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
);

-- Dumping data for table ipak1.mspartstock: 0 rows
/*!40000 ALTER TABLE `mspartstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `mspartstock` ENABLE KEYS */;


-- Dumping structure for table ipak1.mstech
CREATE TABLE IF NOT EXISTS `mstech` (
  `idtech` varchar(5) NOT NULL,
  `tech` varchar(45) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idtech`)
);

-- Dumping data for table ipak1.mstech: 3 rows
/*!40000 ALTER TABLE `mstech` DISABLE KEYS */;
INSERT INTO `mstech` (`idtech`, `tech`, `remark`, `email`, `active`, `leader`) VALUES
	('IT1', 'IT support', 'IT & Support', 'it.vip001@gmail.com', 'Y', 'Achmad Gofur'),
	('IT2', 'IT Software & System', 'Software Development', 'opunk.janie@gmail.com', 'N', 'Hasanah'),
	('MN1', 'Maintenance Mesin', 'Maintenance Tehnik Mesin', 'maintenance@ipak.go.id', 'N', NULL);
/*!40000 ALTER TABLE `mstech` ENABLE KEYS */;


-- Dumping structure for table ipak1.msunit
CREATE TABLE IF NOT EXISTS `msunit` (
  `idunit` varchar(10) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idunit`)
);

-- Dumping data for table ipak1.msunit: 0 rows
/*!40000 ALTER TABLE `msunit` DISABLE KEYS */;
/*!40000 ALTER TABLE `msunit` ENABLE KEYS */;


-- Dumping structure for table ipak1.trgetpartdt
CREATE TABLE IF NOT EXISTS `trgetpartdt` (
  `nogp` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
);

-- Dumping data for table ipak1.trgetpartdt: 0 rows
/*!40000 ALTER TABLE `trgetpartdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `trgetpartdt` ENABLE KEYS */;


-- Dumping structure for table ipak1.trgetpartdt2
CREATE TABLE IF NOT EXISTS `trgetpartdt2` (
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(50) DEFAULT NULL
);

-- Dumping data for table ipak1.trgetpartdt2: 0 rows
/*!40000 ALTER TABLE `trgetpartdt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `trgetpartdt2` ENABLE KEYS */;


-- Dumping structure for table ipak1.trgetparthd
CREATE TABLE IF NOT EXISTS `trgetparthd` (
  `nogp` varchar(20) NOT NULL,
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`nogp`)
);

-- Dumping data for table ipak1.trgetparthd: 0 rows
/*!40000 ALTER TABLE `trgetparthd` DISABLE KEYS */;
/*!40000 ALTER TABLE `trgetparthd` ENABLE KEYS */;


-- Dumping structure for table ipak1.trwr
CREATE TABLE IF NOT EXISTS `trwr` (
  `nowr` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `idcomputer` varchar(15) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `signature` varchar(45) DEFAULT NULL,
  `datesignature` date DEFAULT NULL,
  `assign` varchar(45) DEFAULT NULL,
  `issue` text,
  `status` varchar(45) DEFAULT NULL,
  `closedate` date DEFAULT NULL,
  `related` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nowr`)
);

-- Dumping data for table ipak1.trwr: 4 rows
/*!40000 ALTER TABLE `trwr` DISABLE KEYS */;
INSERT INTO `trwr` (`nowr`, `date`, `idcomputer`, `idtech`, `user`, `idcompany`, `signature`, `datesignature`, `assign`, `issue`, `status`, `closedate`, `related`) VALUES
	('WRIPAK/2015-06/0003', '2015-05-03', 'share', 'IT1', 'Indri', 'ipak', 'Dani', NULL, NULL, 'Data share gagal open!', 'H', NULL, NULL),
	('WRIPAK/2015-06/0004', '2015-05-07', 'warehouse01', 'IT1', 'Lasta', 'ipak', 'Sudrajat', '2015-06-10', NULL, 'Website SCS (Suzuki) gagal open, Web lain berhasil terbuka!', 'G', NULL, NULL),
	('WRIPAK/2015-06/0002', '2015-05-03', 'logistik01', 'IT1', 'Restu', 'ipak', 'Sudrajat', '2015-06-10', 'gofur', 'Nilai Timbangan Error di CPU', 'A', NULL, NULL),
	('WRIPAK/2015-06/0001', '2015-05-01', 'adminprub03', 'IT1', 'Ayu', 'ipak', 'Mulyono', '2015-06-10', 'gofur', 'CPU gagal Print Data', 'CO', '2015-05-08', NULL);
/*!40000 ALTER TABLE `trwr` ENABLE KEYS */;


-- Dumping structure for table ipak1.wrschedule
CREATE TABLE IF NOT EXISTS `wrschedule` (
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL
);

-- Dumping data for table ipak1.wrschedule: 3 rows
/*!40000 ALTER TABLE `wrschedule` DISABLE KEYS */;
INSERT INTO `wrschedule` (`nowr`, `date`, `idcompany`, `schedule`) VALUES
	('WRIPAK/2015-06/0002', '2015-05-05', 'ipak', 1),
	('WRIPAK/2015-06/0001', '2015-05-07', 'ipak', 2),
	('WRIPAK/2015-06/0001', '2015-05-04', 'ipak', 1);
/*!40000 ALTER TABLE `wrschedule` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
