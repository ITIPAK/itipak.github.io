-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 5.6.26 - MySQL Community Server (GPL)
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.1.0.4867
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

-- Dumping data for table iso.actionwr: ~5 rows (approximately)
/*!40000 ALTER TABLE `actionwr` DISABLE KEYS */;
INSERT INTO `actionwr` (`nowr`, `schedule`, `action`, `actiondate`, `close`) VALUES
	('WRIPAK/2022-01/0001', 1, 'Ganti Harddisk & ambil data dari Backup', '2022-01-05', 'Y'),
	('WRIPAK/2022-01/0002', 1, 'Perbaikan koneksi Wifi', '2022-01-10', 'Y'),
	('WRVIP/2022-01/0001', 1, 'Memasang dengan benar kabel LAN di CPU', '2022-01-10', 'Y'),
	('WRVIP/2022-01/0002', 1, 'Bantu user dalam pemasangan kabel2 via Video Call', '2022-01-13', 'Y'),
	('WRIPAK/2022-01/0003', 1, 'Backup Data & Ganti Harddisk', '2022-01-29', 'Y'),
	('WRIPAK/2022-02/0001', 1, 'Ganti Wifi USB', '2022-02-04', 'Y'),
	('WRIPAK/2022-02/0002', 1, 'Upgrade memakai fingerprint', '2022-02-08', 'Y'),
	('WRIPAK/2022-02/0003', 1, 'Hubungin Telkom untuk perbaikan', '2022-02-25', 'Y'),
	('WRVIP/2022-02/0001', 1, 'Teteskan oli pelumas di kipas', '2022-02-16', 'Y'),
	('WRVIP/2022-02/0002', 1, 'Clean head clean', '2022-02-21', 'Y'),
	('WRVIP/2022-02/0003', 1, 'Kencangkan kabel LAN pada modem', '2022-02-23', 'Y');
/*!40000 ALTER TABLE `actionwr` ENABLE KEYS */;


-- Dumping structure for table iso.changedt
CREATE TABLE IF NOT EXISTS `changedt` (
  `nocp` varchar(20) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.changedt: ~0 rows (approximately)
/*!40000 ALTER TABLE `changedt` DISABLE KEYS */;
/*!40000 ALTER TABLE `changedt` ENABLE KEYS */;


-- Dumping structure for table iso.changehd
CREATE TABLE IF NOT EXISTS `changehd` (
  `nocp` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `idcomputer` varchar(15) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.changehd: ~0 rows (approximately)
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
INSERT INTO `mscompany` (`idcompany`, `company`, `address`, `phone`, `alias`, `logo`, `qa`, `active`) VALUES
	('ipak', 'PT. Inti Plastik Aneka Karet', 'Jl. Manis V No. 18', '021-5918118', 'IPAK', 'ipak.jpg', 'Murdono', 'Y'),
	('vip', 'PT. Vortex Interplasindo', 'Jl. Manis Raya No. 7-9', '021-5916388', 'VIP', 'vip.jpg', 'Basuki', 'Y');
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

-- Dumping data for table iso.mscomputer: ~51 rows (approximately)
/*!40000 ALTER TABLE `mscomputer` DISABLE KEYS */;
INSERT INTO `mscomputer` (`idcomputer`, `computer`, `os`, `antivirus`, `expired`, `user`, `motherboard`, `processor`, `ram`, `hdd`, `vga`, `casing`, `monitor`, `printer`, `keyboard`, `mouse`, `other`, `iddivisi`, `remark`, `date`, `updatedate`, `ipaddress`, `aktif`) VALUES
	('adm-prod', 'Admin - SAS', 'Windows 7', 'Avast', '2021-05-30', 'Budi', 'Intel G41', 'Intel Dual Core 3.0 Ghz', 'DDR3 2Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Admin SAS', '2016-07-18', '2020-10-26', '192.168.20.12', 'Y'),
	('admhl-vip', 'Admin Helm Vortex', 'Windows 10', 'Avast Free', '2021-09-10', 'Dian', 'Intel H55B - 115x', 'Intel Core i3 - 3.0Ghz', 'DDR3 8 Gb', '250 Gb', '1 Gb', 'power logic', 'lcd 14 inc', 'LX 300', 'USB Standard', 'USB Standard', 'no', 'HELM', 'CPU Admin Helm', '2017-02-01', '2020-09-10', '192.168.30.11', 'Y'),
	('asshl-vip', 'Assembling  Helm VIP', 'Windows 7', 'Avast Free', '2018-05-30', '-', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'Zebra Barcode', 'Logitec', 'Logitec', 'no', 'HELM', 'CPU Assembling 1 VIP', '2017-02-01', '2017-02-01', '192.168.30.13', 'Y'),
	('barhl-vip', 'Barcode Helm VIP', 'Windows 7', 'Avast Free', '2018-05-30', '-', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'HELM', 'CPU Barcode Helm VIP', '2017-02-01', '2017-02-01', '192.168.30.16', 'Y'),
	('dechl-vip', 'Decal n Paint Helm VIP', 'Windows 7', 'Avast Free', '2018-05-30', '', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'HELM', 'CPU Decal n painting VIP', '2017-02-01', '2017-02-01', '192.168.30.16', 'Y'),
	('dsn1-vip', 'Desain1 Vortex', 'Windows 10', 'Avast Free', '2021-09-30', 'Dimas', 'Asus LGA 1150', 'Intel Core i7', 'DDR3 8 Gb', '1 Tb', 'DDR3 2Gb', 'Sim Cool', 'lcd 17 inc', 'epson L800', 'Logitec', 'Mouse Wifi', 'no', 'VIP', 'CPU Desain1 VIP', '2017-02-01', '0000-00-00', '192.168.10.167', 'Y'),
	('head-top', 'Produksi - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Dedi', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.11', 'Y'),
	('hrd-top', 'HRD - INJ2', 'Windows 10', 'Avast', '2021-05-30', 'Lukman', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu HRD TOP', '2016-07-18', NULL, '192.168.21.33', 'Y'),
	('hrd-vip', 'HRD-Vortex-Helm', 'Windows 10', 'avast Free', '2021-05-30', 'Kiki', 'Intel H55B - 115x', 'Core i3 - 3.0Ghz', 'DDR3 8Gb', '120Gb', 'no', 'power logic', 'LCD 15"', 'Share', 'USB Standard', 'USB Standard', 'no', 'VIP', 'CPU HRD VIP - Helm', '2017-02-16', '2020-05-30', '192.168.30.176', 'Y'),
	('it-ho', 'IT HO', 'Windows 10', 'Avast Free', '2021-05-30', 'Gofur', 'Asus LGA 1155', 'Intel Core i5', 'DDR3 8 Gb', '500Gb', 'DDR3 1Gb', 'Power Logic', 'lcd 15 inc', 'share', 'Logitec', 'Mouse Wifi', 'no', 'HO2', 'CPU IT HO', '2017-02-01', '2020-05-30', '192.168.10.168', 'Y'),
	('lab1-agp', 'Lab 1 - Rubber', 'Windows 7', 'Avast', '2018-05-30', '-', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 3 AGP', '2016-07-18', NULL, '192.168.20.53', 'N'),
	('lab2-agp', 'Lab 2 - Rubber', 'Windows 7', 'Avast', '2018-05-30', '-', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Mixing AGP', '2016-07-18', NULL, '192.168.20.66', 'N'),
	('lab3-agp', 'Lab3 - Rubber', 'Windows 7', 'Avast', '2018-05-30', '-', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu PPIC 1 AGP', '2016-07-18', NULL, '192.168.20.61', 'N'),
	('lgt-vip', 'Logistic Vortex', 'Windows 7', 'Avast Free', '2021-05-30', 'Rocky', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 2 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx 300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Surat Jalan VIP', '2017-02-01', '2017-02-01', '192.168.30.2', 'Y'),
	('logistik-sas', 'logistik - SAS', 'Windows 7', 'Avast', '2018-05-30', 'Sumi', 'Asus', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Logistik SAS', '2016-07-18', '2017-10-26', '192.168.20.31', 'Y'),
	('mix-agp', 'mixing - rubber', 'Windows 7', 'Avast', '2018-05-30', '-', 'Mobo LGA 1155', 'Intel Core i3 2.0 Ghz', 'DDR3 2Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 2 AGP', '2016-07-18', NULL, '192.168.20.52', 'N'),
	('modem-mot', 'Modem MOT', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'MOT', 'Modem Internet MOT', '2016-07-18', NULL, '192.168.1.1', 'Y'),
	('modem-sas', 'Modem SAS', 'no', 'no', '2018-05-30', 'no', 'Huawei', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Modem Internet SAS', '2016-07-18', NULL, '192.168.8.1', 'Y'),
	('modem-top', 'Modem - INJ2', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Modem Internet TOP', '2016-07-18', NULL, '192.168.1.1', 'Y'),
	('modem-vip', 'Modem VIP', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'VIP', 'Modem Internet VIP', '2016-07-18', NULL, '192.168.1.1', 'Y'),
	('pabx-cbn2', 'pabx - SAS', 'Windows 7', 'Avast', '2018-05-30', '-', 'Asus', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PABX SAS', '2016-07-18', '2017-10-26', '192.168.20.2', 'Y'),
	('ped-sas', 'PED - SAS', 'Windows 10', 'Avast', '2021-05-30', 'Gozali', 'Intel H55B - 115x', 'Intel Core i3, 3.0 Ghz', 'DDR3 8Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PED SAS', '2016-07-18', '2020-05-30', '192.168.20.15', 'Y'),
	('ped-vip', 'PED & Admin Prod Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Gozali', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'no', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU PED VIP', '2017-02-01', '2017-02-01', '192.168.30.6', 'Y'),
	('ppic-agp', 'ppic - Rubber', 'Windows 7', 'Avast', '2018-05-30', 'Sumi', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 2 AGP', '2016-07-18', NULL, '192.168.20.63', 'N'),
	('ppic-sas', 'ppic - SAS', 'Windows 10', 'Avast', '2021-05-30', 'Diana', 'Intel H55B - 115x', 'Intel Core i3, 3.0 Ghz', 'DDR3 8Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PPIC SAS', '2016-07-18', '2020-05-26', '192.168.20.26', 'Y'),
	('ppic-top', 'PPIC - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Lukman', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu PPIC TOP', '2016-07-18', NULL, '192.168.21.31', 'Y'),
	('ppichl-vip', 'PPIC Helm Vortex', 'Windows 10', 'Avast Free', '2021-05-30', 'Dian', 'Intel H55B - 115x', 'Intel Core i3 - 3.0Ghz', 'DDR3 8 Gb', '500 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'USB Standard', 'USB Standard', 'no', 'HELM', 'CPU PPIC Helm VIP', '2017-02-01', '2020-05-30', '192.168.30.12', 'Y'),
	('prod-agp', 'produksi - Rubber', 'Windows 7', 'Avast', '2018-05-30', 'Sumi', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 1 AGP', '2016-07-18', NULL, '192.168.20.62', 'Y'),
	('prod-sas', 'produksi - SAS', 'Windows 10', 'Avast', '2021-05-30', 'Diana', 'Intel H55B - 115x', 'Intel Core i3, 3.0 Ghz', 'DDR3 8Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L110', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Produksi SAS', '2016-07-18', '2020-10-26', '192.168.20.15', 'Y'),
	('prod1-top', 'AdminProd - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Lukman', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Admin produksi TOP', '2016-07-18', NULL, '192.168.21.32', 'Y'),
	('prod2-top', 'AdminProd - INJ3', 'Windows 7', 'Avast', '2018-05-30', 'Shinta', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Admin produksi 2 TOP', '2016-07-18', '2017-10-26', '192.168.21.32', 'Y'),
	('qa-sas', 'QA - SAS', 'Windows 10', 'Avast', '2021-04-30', 'Tisha', 'Intel H55B - 115x', 'Intel Core i3, 3.0 Ghz', 'DDR3 8Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Canon Scan Copy', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu QA SAS', '2016-07-18', '2020-04-26', '192.168.20.9', 'Y'),
	('qaqc-vip', 'QA - QC Vortex', 'Windows 7', 'Avast Free', '2018-05-30', '-', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU QA QC VIP', '2017-02-01', '2017-02-01', '192.168.30.8', 'Y'),
	('qc-sas', 'QC - SAS', 'Windows 10', 'Avast', '2021-05-30', '', 'Intel H55B - 115x', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu QC SAS', '2016-07-18', '2017-10-26', '192.168.20.8', 'Y'),
	('qc-top', 'QC - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Shinta', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu QC TOP', '2016-07-18', NULL, '192.168.21.34', 'Y'),
	('server-sas', 'Server - SAS', 'Windows 10', 'Avast', '2021-05-30', '-', 'Intel G41', 'Intel Core2Duo 3.0 Ghz', 'DDR3 4Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Server SAS', '2016-07-18', '2020-05-26', '192.168.20.51', 'Y'),
	('svr-vip', 'Server Vortex', 'Windows 10', 'avast Free', '2021-05-30', 'all', 'Intel H55B - 115x', 'Core i3 - 3.0Ghz', 'DDR3 8Gb', '500Gb', 'no', 'power logic', 'LCD 15"', 'Canon G3010', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU server data VIP', '2017-02-16', NULL, '192.168.30.1', 'Y'),
	('swhl-vip', 'Sewing Helm VIP', 'Windows 10', 'Avast Free', '2021-09-15', '-', 'Intel H55b - 115x', 'Intel Core i3 - 3.0Ghz', 'DDR3 4 Gb', '120 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'HELM', 'CPU Sewing Helm VIP', '2017-02-01', '2020-09-15', '192.168.30.16', 'Y'),
	('timbang-sas', 'timbangan - SAS', 'Windows 7', 'Avast', '2021-05-30', 'Sumi', 'Intel H55B - 115x', 'Intel Core i3, 3.0 Ghz', 'DDR3 4Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Lx300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Timbangan SAS', '2016-07-18', '2020-10-26', '192.168.20.32', 'Y'),
	('vsr-mot', 'Visor MOT', 'Windows 7', 'avast Free', '2018-05-30', 'Wardi', 'Asus Lga 775', 'Dual core', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L100', 'Logitec', 'Logitec', 'no', 'MOT', 'CPU Admin 3 MOT', '2017-02-16', NULL, '192.168.1.5', 'Y'),
	('wh-agp', 'warehouse - Rubber', 'Windows 7', 'Avast', '2018-05-30', 'Sahid', 'Asus', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 1 AGP', '2016-07-18', NULL, '192.168.20.51', 'N'),
	('wh-sas', 'warehouse - SAS', 'Windows 10', 'Avast', '2018-05-30', 'Sumi', 'Intel G41', 'Intel Dual Core 3.0 Ghz', 'DDR3 4Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson Lx300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Warehouse SAS', '2016-07-18', '2017-10-26', '192.168.20.102', 'Y'),
	('wh-top', 'AdminWrhs - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Ahmad', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.21', 'Y'),
	('wh1-vip', 'Warehouse1 Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Rocky', 'Intel G41', 'Intel Dual Core', 'DDR2 2 Gb', '160 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx 300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Gudang 1', '2017-02-01', '2017-02-01', '192.168.30.3', 'Y'),
	('wh2-vip', 'Warehouse2 Vortex', 'Windows 7', 'Avast Free', '2018-05-30', '-', 'Intel G41', 'Intel Core 2 Duo', 'DDR3 4 Gb', '160 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson l100', 'Logitec', 'Logitec', 'no', 'HELM', 'CPU Gudang 2', '2017-02-01', '2017-02-01', '192.168.30.4', 'Y'),
	('wifi-mot', 'Wifi Staff MOT', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'MOT', 'Wifi Karyawan MOT', '2016-07-18', NULL, '192.168.1.5', 'Y'),
	('wifi-top', 'RouterWifi 1 - INJ2', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Router Wifi 1 TOP', '2016-07-18', NULL, '192.168.21.1', 'Y'),
	('wifi1-sas', 'Wifi Staff SAS', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Wifi Karyawan SAS', '2016-07-18', NULL, '192.168.8.5', 'Y'),
	('wifi1-vip', 'Wifi Staff VIP', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'VIP', 'Wifi Karyawan VIP', '2016-07-18', NULL, '192.168.1.5', 'Y'),
	('wifi2-sas', 'Wifi Tamu SAS', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Wifi Tamu SAS', '2016-07-18', NULL, '192.168.21.1', 'Y'),
	('wifi2-vip', 'Wifi Tamu VIP', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'VIP', 'Wifi Tamu VIP', '2016-07-18', NULL, '192.168.30.2', 'Y');
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
INSERT INTO `msdivisi` (`iddivisi`, `divisi`, `idcompany`, `utama`, `leader`, `location`, `pin`, `email`, `ip`) VALUES
	('SAS', 'Injection 1', 'ipak', 'Y', 'Murdono', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'opunk.janie@gmail.com', '::1'),
	('AGP', 'Rubber', 'ipak', 'Y', 'Murdono', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'mul.rubber@gmail.com', ''),
	('TOP', 'Injection 2', 'ipak', 'Y', 'Sumardi', 'Pasar Kemis - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'yance.prodfac@gmail.com', ''),
	('VIP', 'Injection', 'vip', 'Y', 'Basuki', 'Jl Manis Raya - Tangerang', '14e1b600b1fd579f47433b88e8d85291', 'iis.sholicha@gmail.com', ''),
	('HELM', 'Helm', 'vip', 'Y', 'Triyono', 'Jl Manis Raya', 'e10adc3949ba59abbe56e057f20f883e', 'opunk.janie@gmail.com', ''),
	('MOT', 'Injection 2', 'vip', 'N', 'Timbul', 'Cikupa', 'e10adc3949ba59abbe56e057f20f883e', 'timbul@gmail.com', ''),
	('HO1', 'Kantor', 'ipak', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id', '::1'),
	('HO2', 'Kantor', 'vip', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id', '192.168.10.181');
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
INSERT INTO `mslocation` (`idlocation`, `idcompany`, `location`, `address`) VALUES
	('lcipak1', 'ipak', 'Kawasan Manis - Jatake', 'Jl. Manis V No. 18, Jatiuwung Banten'),
	('lcipak2', 'ipak', 'TOP-Pasar Kemis', 'Jl. Pasar Kemis Raya, Banten'),
	('lcipak3', 'ipak', 'HO-I', 'Ruko Pinangsia Blok I'),
	('lcipak4', 'ipak', 'HO-L', 'Ruko Pinangsia Blok L'),
	('lcipak5', 'ipak', 'Graha Kencana', 'Komplek Graha Kencana, Kebon Jeruk Jakarta Barat');
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
INSERT INTO `mslogin` (`idlogin`, `nama`, `password`, `active`, `idcompany`, `idtech`, `email`) VALUES
	('admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Y', 'ALL', 'ALL', ''),
	('desi', 'Desiyanti', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ALL', 'IT1', 'jual.jasait@gmail.com'),
	('gofur', 'Achmad Gofur', 'e28c4514a9fdf386f8a01e0b46cbceda', 'Y', 'ALL', 'IT1', 'it.divisi01@gmail.com'),
	('ika', 'Iis Solicha', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ALL', 'IT1', 'opunk.janie@gmail.com'),
	('ipak', 'ipak', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ipak', NULL, ''),
	('vip', 'vip', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'vip', NULL, '');
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

-- Dumping data for table iso.mspart: ~29 rows (approximately)
/*!40000 ALTER TABLE `mspart` DISABLE KEYS */;
INSERT INTO `mspart` (`idpart`, `part`, `remark`, `idtech`, `idunit`, `active`) VALUES
	('CSG', 'Cassing CPU', 'Cassing CPU Standard', 'IT1', 'pcs', 'Y'),
	('DDR21', 'DDR2 1Gb', 'Memory PC DDR2 1Gb', 'IT1', 'pcs', 'Y'),
	('DDR22', 'DDR2 2Gb', 'Memory PC DDR2 2Gb', 'IT1', 'pcs', 'Y'),
	('DDR31', 'DDR3 1Gb', 'Memory PC DDR3 1Gb', 'IT1', 'pcs', 'Y'),
	('DDR32', 'DDR3 2Gb', 'Memory PC DDR3 2Gb', 'IT1', 'pcs', 'Y'),
	('DDR34', 'DDR3 4Gb', 'Memory PC DDR3 4Gb', 'IT1', 'pcs', 'Y'),
	('FGPR1', 'Fingerprint X1xx', 'Mesin Absen Sidik Jari', 'IT1', 'pcs', 'Y'),
	('HDD1000', 'Harddisk 1 Tb', 'Harddisk Space 1 Tb', 'IT1', 'pcs', 'Y'),
	('HDD160', 'Harddisk 160 Gb', 'Harddisk Space 160 Gb', 'IT1', 'pcs', 'Y'),
	('HDD2000', 'Harddisk 2 Tb', 'Harddisk Space 2 Tb', 'IT1', 'pcs', 'Y'),
	('HDD250', 'Harddisk 250 Gb', 'Harddisk Space 250 Gb', 'IT1', 'pcs', 'Y'),
	('HDD500', 'Harddisk 500 Gb', 'Harddisk Space 500 Gb', 'IT1', 'pcs', 'Y'),
	('HDD80', 'Harddisk 80 Gb', 'Harddisk Space 80 Gb', 'IT1', 'pcs', 'Y'),
	('KYB', 'Keyboard', 'Keyboard Standard', 'IT1', 'pcs', 'Y'),
	('LED15', 'Monitor LED 15inc', 'Monitor LED 15 inc', 'IT1', 'unit', 'Y'),
	('MB1150', 'Motherboard LGA 1150', 'Maibboard Cocket LGA 1150', 'IT1', 'pcs', 'Y'),
	('MB1155', 'Motherboard LGA 1155', 'Maibboard Cocket LGA 1155', 'IT1', 'pcs', 'Y'),
	('MB775', 'Motherboard LGA 775', 'Maibboard Cocket LGA 775', 'IT1', 'pcs', 'Y'),
	('MOS', 'Mouse', 'Mouse Standard', 'IT1', 'pcs', 'Y'),
	('PRC1', 'Intel Dual Core 2.0Ghz', 'Processor Intel Dual Core 2.0Ghz', 'IT1', 'pcs', 'Y'),
	('PRC2', 'Intel Dual Core 3.0Ghz', 'Processor Intel Dual Core 3.0Ghz', 'IT1', 'pcs', 'Y'),
	('PRC3', 'Intel Core2Duo 3.0Ghz', 'Processor Intel Core2Duo 3.0Ghz', 'IT1', 'pcs', 'Y'),
	('PRC4', 'Intel Core I3 - 3.0Ghz', 'Processor Intel Core I3 3.0Ghz LGA 115x', 'IT1', 'pcs', 'Y'),
	('PRC5', 'Intel Core I5 - 3.0Ghz', 'Processor Intel Core I5 3.0Ghz LGA 115x', 'IT1', 'pcs', 'Y'),
	('PRC6', 'Intel Core I7 - 3.0Ghz', 'Processor Intel Core I7 3.0Ghz LGA 115x', 'IT1', 'pcs', 'Y'),
	('PSU45', 'Power Supply 450W', 'Power Supply CPU 450W', 'IT1', 'pcs', 'Y'),
	('PSU50', '	Power Supply 500W', 'Power Supply CPU 500W', 'IT1', 'pcs', 'Y'),
	('SSD120', 'SSD 120 Gb', 'Harddisk SSD Space 120 Gb', 'IT1', 'pcs', 'Y'),
	('SSD240', 'SSD 240 Gb', 'Harddisk SSD Space 240 Gb', 'IT1', 'pcs', 'Y'),
	('WIFIOUT1', 'Wifi Outdoor', 'Wifi AP Outdoor', 'IT1', 'pcs', 'Y'),
	('WIFIUSB', 'Wifi Usb LAN', 'Wifi LAN USB', 'IT1', 'pcs', 'Y'),
	('WINXP', 'Windows XP', 'Original Windows XP', 'IT2', 'cd', 'Y');
/*!40000 ALTER TABLE `mspart` ENABLE KEYS */;


-- Dumping structure for table iso.mspartstock
CREATE TABLE IF NOT EXISTS `mspartstock` (
  `idpart` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.mspartstock: ~274 rows (approximately)
/*!40000 ALTER TABLE `mspartstock` DISABLE KEYS */;
INSERT INTO `mspartstock` (`idpart`, `date`, `stock`, `idcompany`, `idunit`) VALUES
	('DDR21', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('DDR22', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('DDR32', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('DDR34', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('HDD1000', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('HDD160', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('HDD2000', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('HDD250', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('HDD500', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('HDD80', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('PRC1', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('PRC2', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('PRC3', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('WINXP', '2016-07-24 00:00:00', 0, 'ipak', 'pcs'),
	('DDR21', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('DDR22', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('DDR32', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('DDR34', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('HDD1000', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('HDD160', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('HDD2000', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('HDD250', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('HDD500', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('HDD80', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('PRC1', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('PRC2', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('PRC3', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('WINXP', '2016-07-29 00:00:00', 0, 'ipak', 'pcs'),
	('DDR21', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('DDR22', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('DDR31', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('DDR32', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('DDR34', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('HDD1000', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('HDD160', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('HDD2000', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('HDD250', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('HDD500', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('HDD80', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('PRC1', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('PRC2', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('PRC3', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('WINXP', '2016-07-29 00:00:00', 0, 'vip', 'pcs'),
	('PSU45', '2016-07-30 00:00:00', 0, 'vip', 'pcs'),
	('PSU50', '2016-07-30 00:00:00', 0, 'ipak', 'pcs'),
	('PSU50', '2016-07-30 00:00:00', 0, 'vip', 'pcs'),
	('DDR21', '2016-07-31 00:00:00', 1, 'ipak', 'pcs'),
	('HDD2000', '2016-07-31 00:00:00', 5, 'ipak', 'pcs'),
	('HDD250', '2016-07-31 00:00:00', 1, 'ipak', 'pcs'),
	('HDD500', '2016-07-31 00:00:00', 4, 'ipak', 'pcs'),
	('PRC1', '2016-07-31 00:00:00', 1, 'ipak', 'pcs'),
	('PRC2', '2016-07-31 00:00:00', 1, 'ipak', 'pcs'),
	('WINXP', '2016-07-31 00:00:00', 20, 'ipak', 'cd'),
	('HDD500', '2016-08-01 00:00:00', 2, 'ipak', 'pcs'),
	('HDD2000', '2016-08-02 00:00:00', 2, 'ipak', 'pcs'),
	('HDD500', '2016-08-01 00:00:00', 1, 'vip', 'pcs'),
	('WINXP', '2016-08-01 00:00:00', 10, 'vip', 'cd'),
	('DDR21', '2016-08-02 00:00:00', 2, 'ipak', 'pcs'),
	('KYB', '2016-08-03 00:00:00', 0, 'ipak', 'pcs'),
	('KYB', '2016-08-03 00:00:00', 0, 'vip', 'pcs'),
	('MOS', '2016-08-03 00:00:00', 0, 'ipak', 'pcs'),
	('MOS', '2016-08-03 00:00:00', 0, 'vip', 'pcs'),
	('CSG', '2016-08-03 00:00:00', 0, 'ipak', 'pcs'),
	('CSG', '2016-08-03 00:00:00', 0, 'vip', 'pcs'),
	('CSG', '2016-08-03 00:00:00', 3, 'ipak', 'pcs'),
	('DDR21', '2016-08-03 00:00:00', 2, 'ipak', 'pcs'),
	('HDD2000', '2016-08-03 00:00:00', 2, 'ipak', 'pcs'),
	('HDD250', '2016-08-03 00:00:00', 1, 'ipak', 'pcs'),
	('HDD500', '2016-08-03 00:00:00', 2, 'ipak', 'pcs'),
	('PRC1', '2016-08-03 00:00:00', 1, 'ipak', 'pcs'),
	('PRC2', '2016-08-03 00:00:00', 1, 'ipak', 'pcs'),
	('WINXP', '2016-08-03 00:00:00', 20, 'ipak', 'cd'),
	('CSG', '2016-08-04 00:00:00', 3, 'ipak', 'pcs'),
	('DDR21', '2016-08-04 00:00:00', 1, 'ipak', 'pcs'),
	('HDD2000', '2016-08-04 00:00:00', 1, 'ipak', 'pcs'),
	('HDD500', '2016-08-04 00:00:00', 4, 'ipak', 'pcs'),
	('PRC1', '2016-08-04 00:00:00', 3, 'ipak', 'pcs'),
	('WINXP', '2016-08-04 00:00:00', 20, 'ipak', 'cd'),
	('MB775', '2016-08-08 00:00:00', 0, 'vip', 'pcs'),
	('MB1150', '2016-08-08 00:00:00', 0, 'ipak', 'pcs'),
	('MB1150', '2016-08-08 00:00:00', 0, 'vip', 'pcs'),
	('MB1155', '2016-08-08 00:00:00', 0, 'ipak', 'pcs'),
	('MB1155', '2016-08-08 00:00:00', 0, 'vip', 'pcs'),
	('DDR31', '2016-06-06 00:00:00', 1, 'ipak', 'pcs'),
	('MB775', '2016-06-06 00:00:00', 1, 'ipak', 'pcs'),
	('MB775', '2016-06-07 00:00:00', 0, 'ipak', 'pcs'),
	('DDR31', '2016-06-07 00:00:00', 0, 'ipak', 'pcs'),
	('PSU45', '2016-06-07 00:00:00', 1, 'ipak', 'pcs'),
	('PSU45', '2016-06-08 00:00:00', 0, 'ipak', 'pcs'),
	('MOS', '2017-03-21 00:00:00', 1, 'vip', 'pcs'),
	('MOS', '2017-03-21 00:00:00', 0, 'vip', 'pcs'),
	('PSU50', '2017-04-19 00:00:00', 1, 'vip', 'pcs'),
	('PSU50', '2017-04-20 00:00:00', 0, 'vip', 'pcs'),
	('HDD500', '2017-04-24 00:00:00', 0, 'vip', 'pcs'),
	('CSG', '2017-04-26 00:00:00', 4, '', 'pcs'),
	('DDR21', '2017-04-26 00:00:00', 1, '', 'pcs'),
	('DDR22', '2017-04-26 00:00:00', 2, '', 'pcs'),
	('HDD2000', '2017-04-26 00:00:00', 15, '', 'pcs'),
	('HDD500', '2017-04-26 00:00:00', 4, '', 'pcs'),
	('MOS', '2017-04-26 00:00:00', 1, '', 'pcs'),
	('PRC1', '2017-04-26 00:00:00', 2, '', 'pcs'),
	('PSU45', '2017-04-26 00:00:00', 1, '', 'pcs'),
	('WINXP', '2017-04-26 00:00:00', 20, '', 'cd'),
	('CSG', '2017-04-26 00:00:00', 4, NULL, 'pcs'),
	('DDR21', '2017-04-26 00:00:00', 1, NULL, 'pcs'),
	('DDR22', '2017-04-26 00:00:00', 2, NULL, 'pcs'),
	('DDR31', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('DDR32', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('DDR34', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('HDD1000', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('HDD160', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('HDD2000', '2017-04-26 00:00:00', 15, NULL, 'pcs'),
	('HDD250', '2017-04-26 00:00:00', 1, NULL, 'pcs'),
	('HDD500', '2017-04-26 00:00:00', 4, NULL, 'pcs'),
	('HDD80', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('KYB', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('MB1150', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('MB1155', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('MB775', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('MOS', '2017-04-26 00:00:00', 1, NULL, 'pcs'),
	('PRC1', '2017-04-26 00:00:00', 2, NULL, 'pcs'),
	('PRC2', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('PRC3', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('PSU45', '2017-04-26 00:00:00', 1, NULL, 'pcs'),
	('PSU50', '2017-04-26 00:00:00', 0, NULL, 'pcs'),
	('WINXP', '2017-04-26 00:00:00', 20, NULL, 'cd'),
	('CSG', '2017-04-27 00:00:00', 5, NULL, 'pcs'),
	('DDR21', '2017-04-27 00:00:00', 1, NULL, 'pcs'),
	('DDR22', '2017-04-27 00:00:00', 2, NULL, 'pcs'),
	('DDR31', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('DDR32', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('DDR34', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('HDD1000', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('HDD160', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('HDD2000', '2017-04-27 00:00:00', 15, NULL, 'pcs'),
	('HDD250', '2017-04-27 00:00:00', 1, NULL, 'pcs'),
	('HDD500', '2017-04-27 00:00:00', 4, NULL, 'pcs'),
	('HDD80', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('KYB', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('MB1150', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('MB1155', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('MB775', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('MOS', '2017-04-27 00:00:00', 1, NULL, 'pcs'),
	('PRC1', '2017-04-27 00:00:00', 2, NULL, 'pcs'),
	('PRC2', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('PRC3', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('PSU45', '2017-04-27 00:00:00', 1, NULL, 'pcs'),
	('PSU50', '2017-04-27 00:00:00', 0, NULL, 'pcs'),
	('WINXP', '2017-04-27 00:00:00', 20, NULL, 'cd'),
	('PRC1', '2017-04-26 00:00:00', 1, NULL, 'pcs'),
	('PRC1', '2017-04-27 00:00:00', 1, NULL, 'pcs'),
	('PRC3', '2017-04-27 05:00:00', 2, NULL, 'pcs'),
	('PRC3', '2017-04-27 05:06:44', 1, NULL, 'pcs'),
	('LED15', '2017-04-27 00:00:00', 0, 'ipak', 'unit'),
	('LED15', '2017-04-27 00:00:00', 0, 'vip', 'unit'),
	('CSG', '2020-01-01 00:00:00', 5, NULL, 'pcs'),
	('DDR21', '2020-01-01 00:00:00', 1, NULL, 'pcs'),
	('DDR22', '2020-01-01 00:00:00', 2, NULL, 'pcs'),
	('DDR31', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('DDR32', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('DDR34', '2020-01-01 00:00:00', 1, NULL, 'pcs'),
	('HDD1000', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('HDD160', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('HDD2000', '2020-01-01 00:00:00', 10, NULL, 'pcs'),
	('HDD250', '2020-01-01 00:00:00', 1, NULL, 'pcs'),
	('HDD500', '2020-01-01 00:00:00', 4, NULL, 'pcs'),
	('HDD80', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('KYB', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('LED15', '2020-01-01 00:00:00', 0, NULL, 'unit'),
	('MB1150', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('MB1155', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('MB775', '2020-01-01 00:00:00', 2, NULL, 'pcs'),
	('MOS', '2020-01-01 00:00:00', 1, NULL, 'pcs'),
	('PRC1', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('PRC2', '2020-01-01 00:00:00', 1, NULL, 'pcs'),
	('PRC3', '2020-01-01 00:00:00', 1, NULL, 'pcs'),
	('PRC4', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('PRC5', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('PRC6', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('PSU45', '2020-01-01 00:00:00', 1, NULL, 'pcs'),
	('PSU50', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('SSD120', '2020-01-01 00:00:00', 2, NULL, 'pcs'),
	('SSD240', '2020-01-01 00:00:00', 0, NULL, 'pcs'),
	('WINXP', '2020-01-01 00:00:00', 20, NULL, 'cd'),
	('CSG', '2020-06-01 00:00:00', 3, NULL, 'pcs'),
	('DDR21', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('DDR22', '2020-06-01 00:00:00', 2, NULL, 'pcs'),
	('DDR31', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('DDR32', '2020-06-01 00:00:00', 2, NULL, 'pcs'),
	('DDR34', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('HDD1000', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('HDD160', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('HDD2000', '2020-06-01 00:00:00', 8, NULL, 'pcs'),
	('HDD250', '2020-06-01 00:00:00', 1, NULL, 'pcs'),
	('HDD500', '2020-06-01 00:00:00', 4, NULL, 'pcs'),
	('HDD80', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('KYB', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('LED15', '2020-06-01 00:00:00', 0, NULL, 'unit'),
	('MB1150', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('MB1155', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('MB775', '2020-06-01 00:00:00', 1, NULL, 'pcs'),
	('MOS', '2020-06-01 00:00:00', 2, NULL, 'pcs'),
	('PRC1', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('PRC2', '2020-06-01 00:00:00', 1, NULL, 'pcs'),
	('PRC3', '2020-06-01 00:00:00', 1, NULL, 'pcs'),
	('PRC4', '2020-06-01 00:00:00', 1, NULL, 'pcs'),
	('PRC5', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('PRC6', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('PSU45', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('PSU50', '2020-06-01 00:00:00', 1, NULL, 'pcs'),
	('SSD120', '2020-06-01 00:00:00', 1, NULL, 'pcs'),
	('SSD240', '2020-06-01 00:00:00', 0, NULL, 'pcs'),
	('WINXP', '2020-06-01 00:00:00', 20, NULL, 'cd'),
	('CSG', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('DDR21', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('DDR22', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('DDR31', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('DDR32', '2021-12-31 00:00:00', 3, NULL, 'pcs'),
	('DDR34', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('HDD1000', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('HDD160', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('HDD2000', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('HDD250', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('HDD500', '2021-12-31 00:00:00', 3, NULL, 'pcs'),
	('HDD80', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('KYB', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('LED15', '2021-12-31 00:00:00', 0, NULL, 'unit'),
	('MB1150', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('MB1155', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('MB775', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('MOS', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('PRC1', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PRC2', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('PRC3', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('PRC4', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PRC5', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PRC6', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PSU45', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PSU50', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('SSD120', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('SSD240', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('WINXP', '2021-12-31 00:00:00', 20, NULL, 'cd'),
	('HDD500', '2022-01-05 10:21:26', 2, NULL, 'pcs'),
	('CSG', '2021-12-31 00:00:00', 3, NULL, 'pcs'),
	('DDR21', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('DDR22', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('DDR31', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('DDR32', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('DDR34', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('HDD1000', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('HDD160', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('HDD2000', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('HDD250', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('HDD500', '2021-12-31 00:00:00', 4, NULL, 'pcs'),
	('HDD80', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('KYB', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('LED15', '2021-12-31 00:00:00', 3, NULL, 'unit'),
	('MB1150', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('MB1155', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('MB775', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('MOS', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('PRC1', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PRC2', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('PRC3', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('PRC4', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PRC5', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PRC6', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PSU45', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('PSU50', '2021-12-31 00:00:00', 1, NULL, 'pcs'),
	('SSD120', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('SSD240', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('WINXP', '2021-12-31 00:00:00', 20, NULL, 'cd'),
	('HDD2000', '2022-02-02 00:00:00', 3, NULL, 'pcs'),
	('HDD2000', '2022-01-29 00:00:00', 2, NULL, 'pcs'),
	('WIFIUSB', '2021-12-31 00:00:00', 2, NULL, 'pcs'),
	('WIFIUSB', '2022-02-04 00:00:00', 1, NULL, 'pcs'),
	('FGPR1', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('WIFIOUT1', '2021-12-31 00:00:00', 0, NULL, 'pcs'),
	('FGPR1', '2022-07-16 12:34:19', -2, NULL, 'pcs'),
	('WIFIOUT1', '2022-07-16 12:34:19', -2, NULL, 'pcs'),
	('FGPR1', '2022-02-09 00:00:00', 0, NULL, 'pcs'),
	('WIFIOUT1', '2022-02-09 00:00:00', 0, NULL, 'pcs'),
	('WIFIUSB', '2022-07-16 12:35:32', 4, NULL, 'pcs');
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
INSERT INTO `mstech` (`idtech`, `tech`, `remark`, `email`, `active`, `leader`) VALUES
	('IT1', 'IT support', 'IT & Support', 'it.vip001@gmail.com', 'Y', 'Achmad Gofur'),
	('IT2', 'IT Software & System', 'Software Development', 'opunk.janie@gmail.com', 'N', 'Hasanah'),
	('MN1', 'Maintenance Mesin', 'Maintenance Tehnik Mesin', 'maintenance@ipak.go.id', 'N', NULL);
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
INSERT INTO `msunit` (`idunit`, `unit`, `remark`) VALUES
	('pcs', 'Pieces', NULL),
	('set', 'Set', NULL),
	('unt', 'Unit', NULL);
/*!40000 ALTER TABLE `msunit` ENABLE KEYS */;


-- Dumping structure for table iso.opnamedt
CREATE TABLE IF NOT EXISTS `opnamedt` (
  `noop` varchar(30) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.opnamedt: ~185 rows (approximately)
/*!40000 ALTER TABLE `opnamedt` DISABLE KEYS */;
INSERT INTO `opnamedt` (`noop`, `idpart`, `qty`, `idunit`) VALUES
	('OPIPAK/2016-07/0001', 'DDR21', 1, 'pcs'),
	('OPIPAK/2016-07/0001', 'HDD2000', 5, 'pcs'),
	('OPIPAK/2016-07/0001', 'HDD250', 1, 'pcs'),
	('OPIPAK/2016-07/0001', 'HDD500', 4, 'pcs'),
	('OPIPAK/2016-07/0001', 'PRC1', 1, 'pcs'),
	('OPIPAK/2016-07/0001', 'PRC2', 1, 'pcs'),
	('OPIPAK/2016-07/0001', 'WINXP', 20, 'cd'),
	('OPVIP/2016-08/0001', 'HDD500', 1, 'pcs'),
	('OPVIP/2016-08/0001', 'WINXP', 10, 'cd'),
	('OPIPAK/2016-08/0001', 'CSG', 3, 'pcs'),
	('OPIPAK/2016-08/0001', 'DDR21', 2, 'pcs'),
	('OPIPAK/2016-08/0001', 'HDD2000', 2, 'pcs'),
	('OPIPAK/2016-08/0001', 'HDD250', 1, 'pcs'),
	('OPIPAK/2016-08/0001', 'HDD500', 2, 'pcs'),
	('OPIPAK/2016-08/0001', 'PRC1', 1, 'pcs'),
	('OPIPAK/2016-08/0001', 'PRC2', 1, 'pcs'),
	('OPIPAK/2016-08/0001', 'WINXP', 20, 'cd'),
	('OPIPAK/2016-08/0002', 'CSG', 3, 'pcs'),
	('OPIPAK/2016-08/0002', 'DDR21', 1, 'pcs'),
	('OPIPAK/2016-08/0002', 'HDD2000', 1, 'pcs'),
	('OPIPAK/2016-08/0002', 'HDD500', 4, 'pcs'),
	('OPIPAK/2016-08/0002', 'PRC1', 3, 'pcs'),
	('OPIPAK/2016-08/0002', 'WINXP', 20, 'cd'),
	('OP/2017-04/0001', 'CSG', 4, 'pcs'),
	('OP/2017-04/0001', 'DDR21', 1, 'pcs'),
	('OP/2017-04/0001', 'DDR22', 2, 'pcs'),
	('OP/2017-04/0001', 'DDR31', 0, 'pcs'),
	('OP/2017-04/0001', 'DDR32', 0, 'pcs'),
	('OP/2017-04/0001', 'DDR34', 0, 'pcs'),
	('OP/2017-04/0001', 'HDD1000', 0, 'pcs'),
	('OP/2017-04/0001', 'HDD160', 0, 'pcs'),
	('OP/2017-04/0001', 'HDD2000', 15, 'pcs'),
	('OP/2017-04/0001', 'HDD250', 1, 'pcs'),
	('OP/2017-04/0001', 'HDD500', 4, 'pcs'),
	('OP/2017-04/0001', 'HDD80', 0, 'pcs'),
	('OP/2017-04/0001', 'KYB', 0, 'pcs'),
	('OP/2017-04/0001', 'MB1150', 0, 'pcs'),
	('OP/2017-04/0001', 'MB1155', 0, 'pcs'),
	('OP/2017-04/0001', 'MB775', 0, 'pcs'),
	('OP/2017-04/0001', 'MOS', 1, 'pcs'),
	('OP/2017-04/0001', 'PRC1', 2, 'pcs'),
	('OP/2017-04/0001', 'PRC2', 0, 'pcs'),
	('OP/2017-04/0001', 'PRC3', 0, 'pcs'),
	('OP/2017-04/0001', 'PSU45', 1, 'pcs'),
	('OP/2017-04/0001', 'PSU50', 0, 'pcs'),
	('OP/2017-04/0001', 'WINXP', 20, 'cd'),
	('OP/2017-04/0002', 'CSG', 5, 'pcs'),
	('OP/2017-04/0002', 'DDR21', 1, 'pcs'),
	('OP/2017-04/0002', 'DDR22', 2, 'pcs'),
	('OP/2017-04/0002', 'DDR31', 0, 'pcs'),
	('OP/2017-04/0002', 'DDR32', 0, 'pcs'),
	('OP/2017-04/0002', 'DDR34', 0, 'pcs'),
	('OP/2017-04/0002', 'HDD1000', 0, 'pcs'),
	('OP/2017-04/0002', 'HDD160', 0, 'pcs'),
	('OP/2017-04/0002', 'HDD2000', 15, 'pcs'),
	('OP/2017-04/0002', 'HDD250', 1, 'pcs'),
	('OP/2017-04/0002', 'HDD500', 4, 'pcs'),
	('OP/2017-04/0002', 'HDD80', 0, 'pcs'),
	('OP/2017-04/0002', 'KYB', 0, 'pcs'),
	('OP/2017-04/0002', 'MB1150', 0, 'pcs'),
	('OP/2017-04/0002', 'MB1155', 0, 'pcs'),
	('OP/2017-04/0002', 'MB775', 0, 'pcs'),
	('OP/2017-04/0002', 'MOS', 1, 'pcs'),
	('OP/2017-04/0002', 'PRC1', 2, 'pcs'),
	('OP/2017-04/0002', 'PRC2', 0, 'pcs'),
	('OP/2017-04/0002', 'PRC3', 0, 'pcs'),
	('OP/2017-04/0002', 'PSU45', 1, 'pcs'),
	('OP/2017-04/0002', 'PSU50', 0, 'pcs'),
	('OP/2017-04/0002', 'WINXP', 20, 'cd'),
	('OP/2020-01/0001', 'CSG', 5, 'pcs'),
	('OP/2020-01/0001', 'DDR21', 1, 'pcs'),
	('OP/2020-01/0001', 'DDR22', 2, 'pcs'),
	('OP/2020-01/0001', 'DDR31', 0, 'pcs'),
	('OP/2020-01/0001', 'DDR32', 0, 'pcs'),
	('OP/2020-01/0001', 'DDR34', 1, 'pcs'),
	('OP/2020-01/0001', 'HDD1000', 0, 'pcs'),
	('OP/2020-01/0001', 'HDD160', 0, 'pcs'),
	('OP/2020-01/0001', 'HDD2000', 10, 'pcs'),
	('OP/2020-01/0001', 'HDD250', 1, 'pcs'),
	('OP/2020-01/0001', 'HDD500', 4, 'pcs'),
	('OP/2020-01/0001', 'HDD80', 0, 'pcs'),
	('OP/2020-01/0001', 'KYB', 0, 'pcs'),
	('OP/2020-01/0001', 'LED15', 0, 'unit'),
	('OP/2020-01/0001', 'MB1150', 0, 'pcs'),
	('OP/2020-01/0001', 'MB1155', 0, 'pcs'),
	('OP/2020-01/0001', 'MB775', 2, 'pcs'),
	('OP/2020-01/0001', 'MOS', 1, 'pcs'),
	('OP/2020-01/0001', 'PRC1', 0, 'pcs'),
	('OP/2020-01/0001', 'PRC2', 1, 'pcs'),
	('OP/2020-01/0001', 'PRC3', 1, 'pcs'),
	('OP/2020-01/0001', 'PRC4', 0, 'pcs'),
	('OP/2020-01/0001', 'PRC5', 0, 'pcs'),
	('OP/2020-01/0001', 'PRC6', 0, 'pcs'),
	('OP/2020-01/0001', 'PSU45', 1, 'pcs'),
	('OP/2020-01/0001', 'PSU50', 0, 'pcs'),
	('OP/2020-01/0001', 'SSD120', 2, 'pcs'),
	('OP/2020-01/0001', 'SSD240', 0, 'pcs'),
	('OP/2020-01/0001', 'WINXP', 20, 'cd'),
	('OP/2020-06/0001', 'CSG', 3, 'pcs'),
	('OP/2020-06/0001', 'DDR21', 0, 'pcs'),
	('OP/2020-06/0001', 'DDR22', 2, 'pcs'),
	('OP/2020-06/0001', 'DDR31', 0, 'pcs'),
	('OP/2020-06/0001', 'DDR32', 2, 'pcs'),
	('OP/2020-06/0001', 'DDR34', 0, 'pcs'),
	('OP/2020-06/0001', 'HDD1000', 0, 'pcs'),
	('OP/2020-06/0001', 'HDD160', 0, 'pcs'),
	('OP/2020-06/0001', 'HDD2000', 8, 'pcs'),
	('OP/2020-06/0001', 'HDD250', 1, 'pcs'),
	('OP/2020-06/0001', 'HDD500', 4, 'pcs'),
	('OP/2020-06/0001', 'HDD80', 0, 'pcs'),
	('OP/2020-06/0001', 'KYB', 0, 'pcs'),
	('OP/2020-06/0001', 'LED15', 0, 'unit'),
	('OP/2020-06/0001', 'MB1150', 0, 'pcs'),
	('OP/2020-06/0001', 'MB1155', 0, 'pcs'),
	('OP/2020-06/0001', 'MB775', 1, 'pcs'),
	('OP/2020-06/0001', 'MOS', 2, 'pcs'),
	('OP/2020-06/0001', 'PRC1', 0, 'pcs'),
	('OP/2020-06/0001', 'PRC2', 1, 'pcs'),
	('OP/2020-06/0001', 'PRC3', 1, 'pcs'),
	('OP/2020-06/0001', 'PRC4', 1, 'pcs'),
	('OP/2020-06/0001', 'PRC5', 0, 'pcs'),
	('OP/2020-06/0001', 'PRC6', 0, 'pcs'),
	('OP/2020-06/0001', 'PSU45', 0, 'pcs'),
	('OP/2020-06/0001', 'PSU50', 1, 'pcs'),
	('OP/2020-06/0001', 'SSD120', 1, 'pcs'),
	('OP/2020-06/0001', 'SSD240', 0, 'pcs'),
	('OP/2020-06/0001', 'WINXP', 20, 'cd'),
	('OP/2021-12/0001', 'CSG', 2, 'pcs'),
	('OP/2021-12/0001', 'DDR21', 0, 'pcs'),
	('OP/2021-12/0001', 'DDR22', 0, 'pcs'),
	('OP/2021-12/0001', 'DDR31', 0, 'pcs'),
	('OP/2021-12/0001', 'DDR32', 3, 'pcs'),
	('OP/2021-12/0001', 'DDR34', 0, 'pcs'),
	('OP/2021-12/0001', 'HDD1000', 0, 'pcs'),
	('OP/2021-12/0001', 'HDD160', 0, 'pcs'),
	('OP/2021-12/0001', 'HDD2000', 2, 'pcs'),
	('OP/2021-12/0001', 'HDD250', 1, 'pcs'),
	('OP/2021-12/0001', 'HDD500', 3, 'pcs'),
	('OP/2021-12/0001', 'HDD80', 2, 'pcs'),
	('OP/2021-12/0001', 'KYB', 1, 'pcs'),
	('OP/2021-12/0001', 'LED15', 0, 'unit'),
	('OP/2021-12/0001', 'MB1150', 0, 'pcs'),
	('OP/2021-12/0001', 'MB1155', 0, 'pcs'),
	('OP/2021-12/0001', 'MB775', 0, 'pcs'),
	('OP/2021-12/0001', 'MOS', 2, 'pcs'),
	('OP/2021-12/0001', 'PRC1', 0, 'pcs'),
	('OP/2021-12/0001', 'PRC2', 2, 'pcs'),
	('OP/2021-12/0001', 'PRC3', 1, 'pcs'),
	('OP/2021-12/0001', 'PRC4', 0, 'pcs'),
	('OP/2021-12/0001', 'PRC5', 0, 'pcs'),
	('OP/2021-12/0001', 'PRC6', 0, 'pcs'),
	('OP/2021-12/0001', 'PSU45', 0, 'pcs'),
	('OP/2021-12/0001', 'PSU50', 1, 'pcs'),
	('OP/2021-12/0001', 'SSD120', 0, 'pcs'),
	('OP/2021-12/0001', 'SSD240', 0, 'pcs'),
	('OP/2021-12/0001', 'WINXP', 20, 'cd'),
	('OP/2021-12/0002', 'CSG', 3, 'pcs'),
	('OP/2021-12/0002', 'DDR21', 0, 'pcs'),
	('OP/2021-12/0002', 'DDR22', 0, 'pcs'),
	('OP/2021-12/0002', 'DDR31', 0, 'pcs'),
	('OP/2021-12/0002', 'DDR32', 2, 'pcs'),
	('OP/2021-12/0002', 'DDR34', 2, 'pcs'),
	('OP/2021-12/0002', 'HDD1000', 1, 'pcs'),
	('OP/2021-12/0002', 'HDD160', 0, 'pcs'),
	('OP/2021-12/0002', 'HDD2000', 1, 'pcs'),
	('OP/2021-12/0002', 'HDD250', 2, 'pcs'),
	('OP/2021-12/0002', 'HDD500', 4, 'pcs'),
	('OP/2021-12/0002', 'HDD80', 2, 'pcs'),
	('OP/2021-12/0002', 'KYB', 1, 'pcs'),
	('OP/2021-12/0002', 'LED15', 3, 'unit'),
	('OP/2021-12/0002', 'MB1150', 0, 'pcs'),
	('OP/2021-12/0002', 'MB1155', 0, 'pcs'),
	('OP/2021-12/0002', 'MB775', 0, 'pcs'),
	('OP/2021-12/0002', 'MOS', 1, 'pcs'),
	('OP/2021-12/0002', 'PRC1', 0, 'pcs'),
	('OP/2021-12/0002', 'PRC2', 2, 'pcs'),
	('OP/2021-12/0002', 'PRC3', 1, 'pcs'),
	('OP/2021-12/0002', 'PRC4', 0, 'pcs'),
	('OP/2021-12/0002', 'PRC5', 0, 'pcs'),
	('OP/2021-12/0002', 'PRC6', 0, 'pcs'),
	('OP/2021-12/0002', 'PSU45', 0, 'pcs'),
	('OP/2021-12/0002', 'PSU50', 1, 'pcs'),
	('OP/2021-12/0002', 'SSD120', 0, 'pcs'),
	('OP/2021-12/0002', 'SSD240', 0, 'pcs'),
	('OP/2021-12/0002', 'WINXP', 20, 'cd');
/*!40000 ALTER TABLE `opnamedt` ENABLE KEYS */;


-- Dumping structure for table iso.opnamehd
CREATE TABLE IF NOT EXISTS `opnamehd` (
  `noop` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`noop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.opnamehd: ~10 rows (approximately)
/*!40000 ALTER TABLE `opnamehd` DISABLE KEYS */;
INSERT INTO `opnamehd` (`noop`, `tanggal`, `keterangan`) VALUES
	('OP/2017-04/0001', '2017-04-26', ''),
	('OP/2017-04/0002', '2017-04-27', 'SO April 2017'),
	('OP/2020-01/0001', '2020-01-01', 'Opname 6 Bulan'),
	('OP/2020-06/0001', '2020-06-01', 'Opname 6 Bulan'),
	('OP/2021-12/0001', '2021-12-31', ''),
	('OP/2021-12/0002', '2021-12-31', ''),
	('OPIPAK/2016-07/0001', '2016-07-31', ''),
	('OPIPAK/2016-08/0001', '2016-08-03', ''),
	('OPIPAK/2016-08/0002', '2016-08-04', ''),
	('OPVIP/2016-08/0001', '2016-08-01', '');
/*!40000 ALTER TABLE `opnamehd` ENABLE KEYS */;


-- Dumping structure for table iso.trgetpartdt
CREATE TABLE IF NOT EXISTS `trgetpartdt` (
  `nogp` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trgetpartdt: ~2 rows (approximately)
/*!40000 ALTER TABLE `trgetpartdt` DISABLE KEYS */;
INSERT INTO `trgetpartdt` (`nogp`, `idpart`, `qty`, `idunit`, `remark`) VALUES
	('GPSAS/2022-01/0001', 'HDD500', 1, 'pcs', ''),
	('GPSAS/2022-01/0002', 'HDD2000', 1, 'pcs', ''),
	('GPSAS/2022-02/0001', 'WIFIUSB', 1, 'pcs', ''),
	('GPSAS/2022-07/0001', 'FGPR1', 2, 'pcs', ''),
	('GPSAS/2022-07/0001', 'WIFIOUT1', 2, 'pcs', '');
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

-- Dumping data for table iso.trgetparthd: ~2 rows (approximately)
/*!40000 ALTER TABLE `trgetparthd` DISABLE KEYS */;
INSERT INTO `trgetparthd` (`nogp`, `nowr`, `date`, `remark`) VALUES
	('GPSAS/2022-01/0001', 'WRIPAK/2022-01/0001', '2022-01-05', NULL),
	('GPSAS/2022-01/0002', 'WRIPAK/2022-01/0003', '2022-01-29', NULL),
	('GPSAS/2022-02/0001', 'WRIPAK/2022-02/0001', '2022-02-04', NULL),
	('GPSAS/2022-07/0001', 'WRIPAK/2022-02/0002', '2022-07-16', NULL);
/*!40000 ALTER TABLE `trgetparthd` ENABLE KEYS */;


-- Dumping structure for table iso.trprdt
CREATE TABLE IF NOT EXISTS `trprdt` (
  `nopr` varchar(20) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trprdt: ~1 rows (approximately)
/*!40000 ALTER TABLE `trprdt` DISABLE KEYS */;
INSERT INTO `trprdt` (`nopr`, `idpart`, `qty`, `idunit`, `remark`) VALUES
	('PRSAS/2022-01/0001', 'HDD2000', 2, 'pcs', ''),
	('PRSAS/2022-02/0001', 'WIFIUSB', 3, 'pcs', ''),
	('PRSAS/2022-02/0002', 'FGPR1', 2, 'pcs', ''),
	('PRSAS/2022-02/0002', 'WIFIOUT1', 2, 'pcs', '');
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

-- Dumping data for table iso.trprhd: ~1 rows (approximately)
/*!40000 ALTER TABLE `trprhd` DISABLE KEYS */;
INSERT INTO `trprhd` (`nopr`, `nowr`, `tanggal`, `remark`, `status`) VALUES
	('PRSAS/2022-01/0001', 'WRIPAK/2022-01/0003', '2022-01-29', '', 'C'),
	('PRSAS/2022-02/0001', 'WRIPAK/2022-02/0001', '2022-02-09', '', 'C'),
	('PRSAS/2022-02/0002', 'WRIPAK/2022-02/0002', '2022-02-09', '', 'C');
/*!40000 ALTER TABLE `trprhd` ENABLE KEYS */;


-- Dumping structure for table iso.trrrdt
CREATE TABLE IF NOT EXISTS `trrrdt` (
  `norr` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trrrdt: ~1 rows (approximately)
/*!40000 ALTER TABLE `trrrdt` DISABLE KEYS */;
INSERT INTO `trrrdt` (`norr`, `idpart`, `qty`, `idunit`) VALUES
	('RRIT/2022-02/0001', 'HDD2000', 2, 'pcs'),
	('RRIT/2022-02/0002', 'FGPR1', 2, 'pcs'),
	('RRIT/2022-02/0002', 'WIFIOUT1', 2, 'pcs'),
	('RRIT/2022-07/0001', 'WIFIUSB', 3, 'pcs');
/*!40000 ALTER TABLE `trrrdt` ENABLE KEYS */;


-- Dumping structure for table iso.trrrhd
CREATE TABLE IF NOT EXISTS `trrrhd` (
  `norr` varchar(20) NOT NULL,
  `nopr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`norr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.trrrhd: ~1 rows (approximately)
/*!40000 ALTER TABLE `trrrhd` DISABLE KEYS */;
INSERT INTO `trrrhd` (`norr`, `nopr`, `tanggal`, `remark`) VALUES
	('RRIT/2022-02/0001', 'PRSAS/2022-01/0001', '2022-02-02', ''),
	('RRIT/2022-02/0002', 'PRSAS/2022-02/0002', '2022-02-09', ''),
	('RRIT/2022-07/0001', 'PRSAS/2022-02/0001', '2022-07-16', '');
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

-- Dumping data for table iso.trwr: ~6 rows (approximately)
/*!40000 ALTER TABLE `trwr` DISABLE KEYS */;
INSERT INTO `trwr` (`nowr`, `date`, `idcomputer`, `idtech`, `user`, `idcompany`, `iddivisi`, `signature`, `assign`, `issue`, `alasan`, `status`, `closedate`, `getpart`, `request`, `vendor`) VALUES
	('WRIPAK/2022-01/0001', '2022-01-05 08:59:47', 'logistik-sas', 'IT1', 'Sumi', 'ipak', 'SAS', 'Murdono', 'gofur', 'CPU SJ Data tidak terbaca', 'Harddisk Error', 'CO', '2022-01-05 11:07:12', 'GPSAS/2022-01/0001', NULL, NULL),
	('WRIPAK/2022-01/0002', '2022-01-10 11:35:51', 'wh-agp', 'IT1', 'Sahid', 'ipak', 'AGP', 'Murdono', 'gofur', 'Ga bisa print', 'Koneksi Jaringan terputus', 'CO', '2022-01-10 12:28:36', NULL, NULL, NULL),
	('WRIPAK/2022-01/0003', '2022-01-29 12:14:34', 'server-sas', 'IT1', 'Diana', 'ipak', 'SAS', 'Murdono', 'gofur', 'Komputer Lama saat nyala', 'Harddisk Status BAD Sector', 'CO', '2022-01-29 15:41:10', 'GPSAS/2022-01/0002', 'PRSAS/2022-01/0001', NULL),
	('WRIPAK/2022-02/0001', '2022-02-04 10:15:54', 'timbang-sas', 'IT1', 'Sumi', 'ipak', 'SAS', 'Murdono', 'gofur', 'Koneksi printer gagal', 'Wifi USB Rusak', 'CO', '2022-02-04 11:35:58', 'GPSAS/2022-02/0001', 'PRSAS/2022-02/0001', NULL),
	('WRIPAK/2022-02/0002', '2022-02-08 11:25:02', 'server-sas', 'IT1', 'Diana', 'ipak', 'SAS', 'Murdono', 'gofur', 'Permintaan Absen System', 'Absen Masih Manual', 'CO', '2022-07-16 12:38:11', 'GPSAS/2022-07/0001', 'PRSAS/2022-02/0002', NULL),
	('WRIPAK/2022-02/0003', '2022-02-25 13:23:54', 'prod-agp', 'IT1', 'Sumi', 'ipak', 'AGP', 'Murdono', 'gofur', 'tidak bisa kirim email', 'Internet gangguan', 'CO', '2022-07-16 12:38:53', NULL, NULL, NULL),
	('WRVIP/2022-01/0001', '2022-01-10 12:05:11', 'svr-vip', 'IT1', 'Dian', 'vip', 'VIP', 'Basuki', 'gofur', 'Internet di server mati', 'Kabel LAN terlepas', 'CO', '2022-01-10 13:59:02', NULL, NULL, NULL),
	('WRVIP/2022-01/0002', '2022-01-13 10:09:12', 'dechl-vip', 'IT1', 'Rizal', 'vip', 'HELM', 'Triyono', 'gofur', 'Printer tidak bisa karna pindahan', 'Kabel printer belum terpasang pas', 'CO', '2022-01-13 11:11:37', NULL, NULL, NULL),
	('WRVIP/2022-02/0001', '2022-02-16 13:21:27', 'lgt-vip', 'IT1', 'Roky', 'vip', 'VIP', 'Basuki', 'gofur', 'Komputer Panas', 'Kipas processor kurang berputar', 'CO', '2022-07-16 12:39:28', NULL, NULL, NULL),
	('WRVIP/2022-02/0002', '2022-02-21 08:35:05', 'admhl-vip', 'IT1', 'Dian', 'vip', 'HELM', 'Triyono', 'gofur', 'Hasil print garis-garis', 'Head print kotor', 'CO', '2022-07-16 12:40:17', NULL, NULL, NULL),
	('WRVIP/2022-02/0003', '2022-02-23 07:59:10', 'wifi2-vip', 'IT1', 'Nela', 'vip', 'VIP', 'Basuki', 'gofur', 'Wifi untuk tamu tidak bisa koneksi', 'Kabel di modem sedikit kendor', 'CO', '2022-07-16 12:40:40', NULL, NULL, NULL);
/*!40000 ALTER TABLE `trwr` ENABLE KEYS */;


-- Dumping structure for table iso.wrschedule
CREATE TABLE IF NOT EXISTS `wrschedule` (
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `iddivisi` varchar(10) DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iso.wrschedule: ~5 rows (approximately)
/*!40000 ALTER TABLE `wrschedule` DISABLE KEYS */;
INSERT INTO `wrschedule` (`nowr`, `date`, `idcompany`, `iddivisi`, `schedule`) VALUES
	('WRIPAK/2022-01/0001', '2022-01-05', 'ipak', 'SAS', 1),
	('WRIPAK/2022-01/0002', '2022-01-10', 'ipak', 'AGP', 1),
	('WRVIP/2022-01/0001', '2022-01-10', 'vip', 'VIP', 1),
	('WRVIP/2022-01/0002', '2022-01-13', 'vip', 'HELM', 1),
	('WRIPAK/2022-01/0003', '2022-01-29', 'ipak', 'SAS', 1),
	('WRIPAK/2022-02/0001', '2022-02-04', 'ipak', 'SAS', 1),
	('WRIPAK/2022-02/0002', '2022-02-08', 'ipak', 'SAS', 1),
	('WRIPAK/2022-02/0003', '2022-02-25', 'ipak', 'AGP', 1),
	('WRVIP/2022-02/0001', '2022-02-16', 'vip', 'VIP', 1),
	('WRVIP/2022-02/0002', '2022-02-21', 'vip', 'HELM', 1),
	('WRVIP/2022-02/0003', '2022-02-23', 'vip', 'VIP', 1);
/*!40000 ALTER TABLE `wrschedule` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
