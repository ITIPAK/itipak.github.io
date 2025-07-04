-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Dumping data for table iso.actionwr: ~0 rows (approximately)
/*!40000 ALTER TABLE `actionwr` DISABLE KEYS */;
INSERT INTO `actionwr` (`nowr`, `schedule`, `action`, `actiondate`, `close`) VALUES
	('WRIPAK/2017-02/0001', 1, 'Ganti Power Supply', '2017-02-01 11:32:18', 'Y'),
	('WRIPAK/2017-03/0001', 1, 'Restart Wifi - Instruksi Via Telp', '2017-03-12 13:59:30', 'Y'),
	('WRIPAK/2017-03/0002', 1, 'Backup Database Aplikasi. & Install Ulang Aplikasi', '2017-03-16 09:21:02', 'Y'),
	('WRIPAK/2017-05/0001', 1, 'Ganti Harddisk', '2017-05-02 10:13:02', 'Y'),
	('WRIPAK/2017-05/0002', 1, 'Cabut, kemudian pasang kembali wifi usb dengan benar ', '2017-05-12 15:20:12', 'Y'),
	('WRIPAK/2017-06/0001', 1, 'Charge Batre, kemudian nyalakan modem.', '2017-06-15 14:00:23', 'Y'),
	('WRIPAK/2017-04/0001', 1, 'Matikan dan Nyalakan Kembali Router', '2017-04-20 11:01:23', 'Y'),
	('WRIPAK/2017-06/0002', 1, 'Ganti Semua Kabel Listrik', '2017-06-30 12:32:31', 'Y'),
	('WRIPAK/2017-07/0001', 1, 'Ganti Power Supply', '2017-07-10 13:21:33', 'Y'),
	('WRIPAK/2017-08/0001', 1, 'Konfirm ke pihak Telkom', '2017-08-25 17:01:22', 'Y'),
	('WRIPAK/2017-09/0001', 1, 'Gude Via telp cara ubah Password', '2017-09-05 13:40:11', 'Y'),
	('WRIPAK/2017-10/0001', 1, 'Memastikan kabel telp terpasang di pabx', '2017-10-03 16:02:16', 'Y');
/*!40000 ALTER TABLE `actionwr` ENABLE KEYS */;

-- Dumping data for table iso.changedt: ~32 rows (approximately)
/*!40000 ALTER TABLE `changedt` DISABLE KEYS */;
INSERT INTO `changedt` (`nocp`, `idpart`, `qty`, `idunit`) VALUES
	('CP/2017-04/0001', 'DDR22', 0, 'pcs'),
	('CP/2017-04/0001', 'DDR31', 0, 'pcs'),
	('CP/2017-04/0001', 'DDR32', 0, 'pcs'),
	('CP/2017-04/0001', 'DDR34', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD1000', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD160', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD2000', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD250', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD500', 0, 'pcs'),
	('CP/2017-04/0001', 'MB1150', 0, 'pcs'),
	('CP/2017-04/0001', 'MB1155', 0, 'pcs'),
	('CP/2017-04/0001', 'MB775', 0, 'pcs'),
	('CP/2017-04/0001', 'PRC2', 0, 'pcs'),
	('CP/2017-04/0001', 'PRC3', 0, 'pcs'),
	('CP/2017-04/0001', 'PSU50', 0, 'pcs'),
	('CP/2017-04/0001', 'WINXP', 0, 'cd'),
	('CP/2017-04/0001', 'DDR22', 0, 'pcs'),
	('CP/2017-04/0001', 'DDR31', 0, 'pcs'),
	('CP/2017-04/0001', 'DDR32', 0, 'pcs'),
	('CP/2017-04/0001', 'DDR34', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD1000', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD160', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD2000', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD250', 0, 'pcs'),
	('CP/2017-04/0001', 'HDD500', 0, 'pcs'),
	('CP/2017-04/0001', 'MB1150', 0, 'pcs'),
	('CP/2017-04/0001', 'MB1155', 0, 'pcs'),
	('CP/2017-04/0001', 'MB775', 0, 'pcs'),
	('CP/2017-04/0001', 'PRC2', 0, 'pcs'),
	('CP/2017-04/0001', 'PRC3', 0, 'pcs'),
	('CP/2017-04/0001', 'PSU50', 0, 'pcs'),
	('CP/2017-04/0001', 'WINXP', 0, 'cd');
/*!40000 ALTER TABLE `changedt` ENABLE KEYS */;

-- Dumping data for table iso.changehd: ~2 rows (approximately)
/*!40000 ALTER TABLE `changehd` DISABLE KEYS */;
INSERT INTO `changehd` (`nocp`, `tanggal`, `idcomputer`, `keterangan`) VALUES
	('CP/2017-04/0001', '2017-04-27', '', ''),
	('CP/2017-04/0001', '2017-04-27', '', '');
/*!40000 ALTER TABLE `changehd` ENABLE KEYS */;

-- Dumping data for table iso.mscompany: ~2 rows (approximately)
/*!40000 ALTER TABLE `mscompany` DISABLE KEYS */;
INSERT INTO `mscompany` (`idcompany`, `company`, `address`, `phone`, `alias`, `logo`, `qa`, `active`) VALUES
	('ipak', 'PT. Inti Plastik Aneka Karet', 'Jl. Manis V No. 18', '021-5918118', 'IPAK', 'ipak.jpg', 'Indri', 'Y'),
	('vip', 'PT. Vortex Interplasindo', 'Jl. Manis Raya No. 7-9', '021-5916388', 'VIP', 'vip.jpg', 'Basuki', 'Y');
/*!40000 ALTER TABLE `mscompany` ENABLE KEYS */;

-- Dumping data for table iso.mscomputer: ~38 rows (approximately)
/*!40000 ALTER TABLE `mscomputer` DISABLE KEYS */;
INSERT INTO `mscomputer` (`idcomputer`, `computer`, `os`, `antivirus`, `expired`, `user`, `motherboard`, `processor`, `ram`, `hdd`, `vga`, `casing`, `monitor`, `printer`, `keyboard`, `mouse`, `other`, `iddivisi`, `remark`, `date`, `updatedate`, `ipaddress`, `aktif`) VALUES
	('admhl-vip', 'Admin Helm Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Nomi', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Admin Helm', '2017-02-01', '2017-02-01', '192.168.30.11', 'Y'),
	('assm1-vip', 'Assembling 1 Helm VIP', 'Windows 7', 'Avast Free', '2018-05-30', 'Kiki', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'Zebra Barcode', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 1 VIP', '2017-02-01', '2017-02-01', '192.168.30.13', 'Y'),
	('assm2-vip', 'Assembling 2 Helm VIP', 'Windows 7', 'Avast Free', '2018-05-30', 'Nia', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'LX300', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 2 VIP', '2017-02-01', '2017-02-01', '192.168.30.14', 'Y'),
	('assm3-vip', 'Assembling 3 Helm VIP', 'Windows 7', 'Avast Free', '2018-05-30', 'Mutia', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 3 VIP', '2017-02-01', '2017-02-01', '192.168.30.15', 'Y'),
	('decl-vip', 'Decal n Paint Helm VIP', 'Windows 7', 'Avast Free', '2018-05-30', 'dian', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Decal n painting VIP', '2017-02-01', '2017-02-01', '192.168.30.16', 'Y'),
	('dsn1-vip', 'Desain1 Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Yuli', 'Asus LGA 1155', 'Intel Core i5', 'DDR3 8 Gb', '1 Tb', 'DDR3 2Gb', 'Sim Cool', 'lcd 17 inc', 'epson l210', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Desain1 VIP', '2017-02-01', '2017-02-01', '192.168.30.9', 'Y'),
	('dsn2-vip', 'Desain1 Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Yuli', 'Asus LGA 1155', 'Intel Core i3', 'DDR3 4 Gb', '500Gb', 'DDR3 1Gb', 'Power Logic', 'lcd 15 inc', 'share', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Desain2 VIP', '2017-02-01', '2017-02-01', '192.168.30.10', 'Y'),
	('hrd-mot', 'HRD-MOT', 'Windows 7', 'avast Free', '2018-05-30', 'Nitta', 'Asus Lga 775', 'Dual core', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'MOT', 'CPU HRD MOT', '2017-02-16', NULL, '192.168.1.5', 'Y'),
	('hrd-vip', 'HRD-Vortex', 'Windows 7', 'avast Free', '2018-05-30', 'Entin', 'Asus Lga 775', 'Dual core', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU HRD VIP', '2017-02-16', NULL, '192.168.1.5', 'Y'),
	('inj1-cbn1', 'Admin - Caninent1', 'Windows 7', 'Avast', '2018-05-30', 'Priyanto', 'Asus', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L310', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Assembling Cabinet 1 SAS', '2016-07-18', '2017-10-26', '192.168.21.32', 'Y'),
	('inj1-cbn2', 'Admin - Caninent2', 'Windows 7', 'Avast', '2018-05-30', 'Ariyanto', 'Asus', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Assembling Cabinet 2 SAS', '2016-07-18', '2017-10-26', '192.168.21.32', 'Y'),
	('inj2-adm1', 'AdminWrhs - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Wastari', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.21', 'Y'),
	('inj2-adm2', 'AdminProd - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Sukma', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Admin produksi TOP', '2016-07-18', NULL, '192.168.21.32', 'Y'),
	('inj2-adm3', 'AdminProd - INJ3', 'Windows 7', 'Avast', '2018-05-30', 'Drajat', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Admin produksi 2 TOP', '2016-07-18', '2017-10-26', '192.168.21.32', 'Y'),
	('inj2-hrd', 'HRD - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Endang', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu HRD TOP', '2016-07-18', NULL, '192.168.21.33', 'Y'),
	('inj2-modem', 'Modem - INJ2', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Modem Internet TOP', '2016-07-18', NULL, '192.168.1.1', 'Y'),
	('inj2-ppic', 'PPIC - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Uus', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu PPIC TOP', '2016-07-18', NULL, '192.168.21.31', 'Y'),
	('inj2-prod', 'Produksi - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Dedi', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.11', 'Y'),
	('inj2-qc', 'QC - INJ2', 'Windows 7', 'Avast', '2018-05-30', 'Yasir', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu QC TOP', '2016-07-18', NULL, '192.168.21.34', 'Y'),
	('inj2-rtr1', 'RouterWifi 1 - INJ2', 'no', 'no', '2018-05-30', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Router Wifi 1 TOP', '2016-07-18', NULL, '192.168.21.1', 'Y'),
	('lgt-vip', 'Logistic Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Eka', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx 300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Surat Jalan', '2017-02-01', '2017-02-01', '192.168.30.2', 'Y'),
	('ped-vip', 'PED Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Restu', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'no', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU PED VIP', '2017-02-01', '2017-02-01', '192.168.30.6', 'Y'),
	('ppichl-vip', 'PPIC Helm Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Nela', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', '', 'Logitec', 'no', 'Helm', 'CPU PPIC Helm VIP', '2017-02-01', '2017-02-01', '192.168.30.12', 'Y'),
	('ppicinj-vip', 'PPIC Inj Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Ani', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU PPIC Injection VIP', '2017-02-01', '2017-02-01', '192.168.30.5', 'Y'),
	('qa-vip', 'QA Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Sodikin', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU QA VIP', '2017-02-01', '2017-02-01', '192.168.30.8', 'Y'),
	('qc-vip', 'QC Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Ria', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU QC VIP', '2017-02-01', '2017-02-01', '192.168.30.7', 'Y'),
	('rub-adm1', 'AdminProd 1 - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Fitri', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 1 AGP', '2016-07-18', NULL, '192.168.20.62', 'Y'),
	('rub-adm2', 'AdminProd 2 - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Ema', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 2 AGP', '2016-07-18', NULL, '192.168.20.63', 'Y'),
	('rub-adm3', 'AdminWrhs - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Sutris', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Gudang 2 AGP', '2016-07-18', NULL, '192.168.20.64', 'Y'),
	('rub-lab1', 'Lab 1 - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Lala', 'Asus', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 1 AGP', '2016-07-18', NULL, '192.168.20.51', 'Y'),
	('rub-lab2', 'Lab 2 - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Lala', 'Mobo LGA 1155', 'Intel Core i3 2.0 Ghz', 'DDR3 2Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 2 AGP', '2016-07-18', NULL, '192.168.20.52', 'Y'),
	('rub-lab3', 'Lab 3 - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Vini', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 3 AGP', '2016-07-18', NULL, '192.168.20.53', 'Y'),
	('rub-mix', 'Mixing - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Mulyono', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Mixing AGP', '2016-07-18', NULL, '192.168.20.66', 'Y'),
	('rub-ppic1', 'PPIC 1 - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Ayu', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu PPIC 1 AGP', '2016-07-18', NULL, '192.168.20.61', 'Y'),
	('rub-prod', 'Produksi - RUB', 'Windows 7', 'Avast', '2018-05-30', 'Mulyono', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Kepala Produksi AGP', '2016-07-18', NULL, '192.168.20.65', 'Y'),
	('svrvip', 'Server Vortex', 'Windows 7', 'avast Free', '2018-05-30', 'all', 'G41MT-S2PT', 'Core 2 Duo', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU server data', '2017-02-16', NULL, '192.168.30.1', 'Y'),
	('wh1-vip', 'Warehouse1 Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Iqbal', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx 300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Gudang 1', '2017-02-01', '2017-02-01', '192.168.30.3', 'Y'),
	('wh2-vip', 'Warehouse2 Vortex', 'Windows 7', 'Avast Free', '2018-05-30', 'Isro', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson l100', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Gudang 2', '2017-02-01', '2017-02-01', '192.168.30.4', 'Y');
/*!40000 ALTER TABLE `mscomputer` ENABLE KEYS */;

-- Dumping data for table iso.msdivisi: ~8 rows (approximately)
/*!40000 ALTER TABLE `msdivisi` DISABLE KEYS */;
INSERT INTO `msdivisi` (`iddivisi`, `divisi`, `idcompany`, `utama`, `leader`, `location`, `pin`, `email`, `ip`) VALUES
	('SAS', 'Injection 1', 'ipak', 'N', 'Drajat', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'opunk.janie@gmail.com', '::1'),
	('AGP', 'Rubber', 'ipak', 'Y', 'Mulyono', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'mul.rubber@gmail.com', ''),
	('TOP', 'Injection 2', 'ipak', 'Y', 'Dedi', 'Pasar Kemis - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'yance.prodfac@gmail.com', ''),
	('VIP', 'Injection', 'vip', 'Y', 'Ika', 'Jl Manis Raya - Tangerang', '14e1b600b1fd579f47433b88e8d85291', 'iis.sholicha@gmail.com', ''),
	('HELM', 'Helm', 'vip', 'Y', 'Triyono', 'Jl Manis Raya', 'e10adc3949ba59abbe56e057f20f883e', 'opunk.janie@gmail.com', ''),
	('MOT', 'Injection 2', 'vip', 'N', 'Timbul', 'Cikupa', 'e10adc3949ba59abbe56e057f20f883e', 'timbul@gmail.com', ''),
	('HO1', 'Kantor', 'ipak', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id', '192.168.10.68'),
	('HO2', 'Kantor', 'vip', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id', '');
/*!40000 ALTER TABLE `msdivisi` ENABLE KEYS */;

-- Dumping data for table iso.mslocation: ~5 rows (approximately)
/*!40000 ALTER TABLE `mslocation` DISABLE KEYS */;
INSERT INTO `mslocation` (`idlocation`, `idcompany`, `location`, `address`) VALUES
	('lcipak1', 'ipak', 'Kawasan Manis - Jatake', 'Jl. Manis V No. 18, Jatiuwung Banten'),
	('lcipak2', 'ipak', 'TOP-Pasar Kemis', 'Jl. Pasar Kemis Raya, Banten'),
	('lcipak3', 'ipak', 'HO-I', 'Ruko Pinangsia Blok I'),
	('lcipak4', 'ipak', 'HO-L', 'Ruko Pinangsia Blok L'),
	('lcipak5', 'ipak', 'Graha Kencana', 'Komplek Graha Kencana, Kebon Jeruk Jakarta Barat');
/*!40000 ALTER TABLE `mslocation` ENABLE KEYS */;

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

-- Dumping data for table iso.mspart: ~24 rows (approximately)
/*!40000 ALTER TABLE `mspart` DISABLE KEYS */;
INSERT INTO `mspart` (`idpart`, `part`, `remark`, `idtech`, `idunit`, `active`) VALUES
	('CSG', 'Cassing CPU', 'Cassing CPU Standard', 'IT1', 'pcs', 'Y'),
	('DDR21', 'DDR2 1Gb', 'Memory PC DDR2 1Gb', 'IT1', 'pcs', 'Y'),
	('DDR22', 'DDR2 2Gb', 'Memory PC DDR2 2Gb', 'IT1', 'pcs', 'Y'),
	('DDR31', 'DDR3 1Gb', 'Memory PC DDR3 1Gb', 'IT1', 'pcs', 'Y'),
	('DDR32', 'DDR3 2Gb', 'Memory PC DDR3 2Gb', 'IT1', 'pcs', 'Y'),
	('DDR34', 'DDR3 4Gb', 'Memory PC DDR3 4Gb', 'IT1', 'pcs', 'Y'),
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
	('PSU45', 'Power Supply 450W', 'Power Supply CPU 450W', 'IT1', 'pcs', 'Y'),
	('PSU50', '	Power Supply 500W', 'Power Supply CPU 500W', 'IT1', 'pcs', 'Y'),
	('WI1', 'Wifi Usb', 'Wifi Usb', 'IT1', 'pcs', 'Y'),
	('WINXP', 'Windows XP', 'Original Windows XP', 'IT2', 'cd', 'Y');
/*!40000 ALTER TABLE `mspart` ENABLE KEYS */;

-- Dumping data for table iso.mspartstock: ~24 rows (approximately)
/*!40000 ALTER TABLE `mspartstock` DISABLE KEYS */;
INSERT INTO `mspartstock` (`idpart`, `date`, `stock`, `idcompany`, `idunit`) VALUES
	('CSG', '2017-03-31 00:00:00', 5, NULL, 'pcs'),
	('DDR21', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('DDR22', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('DDR31', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('DDR32', '2017-03-31 00:00:00', 0, NULL, 'pcs'),
	('DDR34', '2017-03-31 00:00:00', 0, NULL, 'pcs'),
	('HDD1000', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('HDD160', '2017-03-31 00:00:00', 0, NULL, 'pcs'),
	('HDD2000', '2017-03-31 00:00:00', 12, NULL, 'pcs'),
	('HDD250', '2017-03-31 00:00:00', 0, NULL, 'pcs'),
	('HDD500', '2017-03-31 00:00:00', 2, NULL, 'pcs'),
	('HDD80', '2017-03-31 00:00:00', 0, NULL, 'pcs'),
	('KYB', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('LED15', '2017-03-31 00:00:00', 0, NULL, 'unit'),
	('MB1150', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('MB1155', '2017-03-31 00:00:00', 0, NULL, 'pcs'),
	('MB775', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('MOS', '2017-03-31 00:00:00', 5, NULL, 'pcs'),
	('PRC1', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('PRC2', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('PRC3', '2017-03-31 00:00:00', 1, NULL, 'pcs'),
	('PSU45', '2017-03-31 00:00:00', 5, NULL, 'pcs'),
	('PSU50', '2017-03-31 00:00:00', 0, NULL, 'pcs'),
	('WINXP', '2017-03-31 00:00:00', 20, NULL, 'cd'),
	('PSU45', '2017-03-31 00:00:00', 4, NULL, 'pcs'),
	('WI1', '2017-03-31 00:00:00', 2, NULL, 'pcs'),
	('HDD500', '2017-05-02 00:00:00', 1, NULL, 'pcs'),
	('PSU45', '2017-10-27 07:04:07', 4, NULL, 'pcs');
/*!40000 ALTER TABLE `mspartstock` ENABLE KEYS */;

-- Dumping data for table iso.mstech: ~0 rows (approximately)
/*!40000 ALTER TABLE `mstech` DISABLE KEYS */;
/*!40000 ALTER TABLE `mstech` ENABLE KEYS */;

-- Dumping data for table iso.msunit: ~3 rows (approximately)
/*!40000 ALTER TABLE `msunit` DISABLE KEYS */;
INSERT INTO `msunit` (`idunit`, `unit`, `remark`) VALUES
	('pcs', 'Pieces', NULL),
	('set', 'Set', NULL),
	('unt', 'Unit', NULL);
/*!40000 ALTER TABLE `msunit` ENABLE KEYS */;

-- Dumping data for table iso.opnamedt: ~24 rows (approximately)
/*!40000 ALTER TABLE `opnamedt` DISABLE KEYS */;
INSERT INTO `opnamedt` (`noop`, `idpart`, `qty`, `idunit`) VALUES
	('OP/2017-03/0001', 'CSG', 5, 'pcs'),
	('OP/2017-03/0001', 'DDR21', 1, 'pcs'),
	('OP/2017-03/0001', 'DDR22', 1, 'pcs'),
	('OP/2017-03/0001', 'DDR31', 1, 'pcs'),
	('OP/2017-03/0001', 'DDR32', 0, 'pcs'),
	('OP/2017-03/0001', 'DDR34', 0, 'pcs'),
	('OP/2017-03/0001', 'HDD1000', 1, 'pcs'),
	('OP/2017-03/0001', 'HDD160', 0, 'pcs'),
	('OP/2017-03/0001', 'HDD2000', 12, 'pcs'),
	('OP/2017-03/0001', 'HDD250', 0, 'pcs'),
	('OP/2017-03/0001', 'HDD500', 2, 'pcs'),
	('OP/2017-03/0001', 'HDD80', 0, 'pcs'),
	('OP/2017-03/0001', 'KYB', 1, 'pcs'),
	('OP/2017-03/0001', 'LED15', 0, 'unit'),
	('OP/2017-03/0001', 'MB1150', 1, 'pcs'),
	('OP/2017-03/0001', 'MB1155', 0, 'pcs'),
	('OP/2017-03/0001', 'MB775', 1, 'pcs'),
	('OP/2017-03/0001', 'MOS', 5, 'pcs'),
	('OP/2017-03/0001', 'PRC1', 1, 'pcs'),
	('OP/2017-03/0001', 'PRC2', 1, 'pcs'),
	('OP/2017-03/0001', 'PRC3', 1, 'pcs'),
	('OP/2017-03/0001', 'PSU45', 5, 'pcs'),
	('OP/2017-03/0001', 'PSU50', 0, 'pcs'),
	('OP/2017-03/0001', 'WINXP', 20, 'cd');
/*!40000 ALTER TABLE `opnamedt` ENABLE KEYS */;

-- Dumping data for table iso.opnamehd: ~1 rows (approximately)
/*!40000 ALTER TABLE `opnamehd` DISABLE KEYS */;
INSERT INTO `opnamehd` (`noop`, `tanggal`, `keterangan`) VALUES
	('OP/2017-03/0001', '2017-03-31', '');
/*!40000 ALTER TABLE `opnamehd` ENABLE KEYS */;

-- Dumping data for table iso.trgetpartdt: ~0 rows (approximately)
/*!40000 ALTER TABLE `trgetpartdt` DISABLE KEYS */;
INSERT INTO `trgetpartdt` (`nogp`, `idpart`, `qty`, `idunit`, `remark`) VALUES
	('GPTOP/2017-02/0001', 'PSU45', 1, 'pcs', ''),
	('GPAGP/2017-05/0001', 'HDD500', 1, 'pcs', ''),
	('GPTOP/2017-07/0001', 'PSU45', 1, 'pcs', '');
/*!40000 ALTER TABLE `trgetpartdt` ENABLE KEYS */;

-- Dumping data for table iso.trgetpartdt2: ~0 rows (approximately)
/*!40000 ALTER TABLE `trgetpartdt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `trgetpartdt2` ENABLE KEYS */;

-- Dumping data for table iso.trgetparthd: ~0 rows (approximately)
/*!40000 ALTER TABLE `trgetparthd` DISABLE KEYS */;
INSERT INTO `trgetparthd` (`nogp`, `nowr`, `date`, `remark`) VALUES
	('GPAGP/2017-05/0001', 'WRIPAK/2017-05/0001', '2017-05-02', NULL),
	('GPTOP/2017-02/0001', 'WRIPAK/2017-02/0001', '2017-02-01', NULL),
	('GPTOP/2017-07/0001', 'WRIPAK/2017-07/0001', '2017-07-10', NULL);
/*!40000 ALTER TABLE `trgetparthd` ENABLE KEYS */;

-- Dumping data for table iso.trprdt: ~0 rows (approximately)
/*!40000 ALTER TABLE `trprdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `trprdt` ENABLE KEYS */;

-- Dumping data for table iso.trprhd: ~0 rows (approximately)
/*!40000 ALTER TABLE `trprhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `trprhd` ENABLE KEYS */;

-- Dumping data for table iso.trrrdt: ~0 rows (approximately)
/*!40000 ALTER TABLE `trrrdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `trrrdt` ENABLE KEYS */;

-- Dumping data for table iso.trrrhd: ~0 rows (approximately)
/*!40000 ALTER TABLE `trrrhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `trrrhd` ENABLE KEYS */;

-- Dumping data for table iso.trwr: ~18 rows (approximately)
/*!40000 ALTER TABLE `trwr` DISABLE KEYS */;
INSERT INTO `trwr` (`nowr`, `date`, `idcomputer`, `idtech`, `user`, `idcompany`, `iddivisi`, `signature`, `assign`, `issue`, `alasan`, `status`, `closedate`, `getpart`, `request`, `vendor`) VALUES
	('WRIPAK/2017-02/0001', '2017-02-01 10:20:57', 'inj2-ppic', 'IT1', 'Sukma', 'ipak', 'TOP', 'Dedi', 'gofur', 'PC Mati', 'Power Supply Terbakar', 'CO', '2017-02-01 13:32:19', 'GPTOP/2017-02/0001', NULL, NULL),
	('WRIPAK/2017-03/0001', '2017-03-12 13:20:57', 'inj2-adm1', 'IT1', 'Sukma', 'ipak', 'TOP', 'Dedi', 'gofur', 'Share File Mati', 'Wifi Router Terlalu Panas', 'CO', '2017-03-12 13:58:30', NULL, NULL, NULL),
	('WRIPAK/2017-03/0002', '2017-03-15 16:20:57', 'rub-lab2', 'IT1', 'Lala', 'ipak', 'AGP', 'Mulyono', 'gofur', 'Aplikasi Mesin Error', 'Aplikasi Error', 'CO', '2017-03-16 09:21:02', NULL, NULL, NULL),
	('WRIPAK/2017-04/0001', '2017-04-20 10:20:57', 'inj2-hrd', 'IT1', 'Sukma', 'ipak', 'TOP', 'Dedi', 'gofur', 'Wifi tidak terdeteksi', 'Wifi Router Terlalu Panas', 'CO', '2017-04-20 11:01:23', NULL, NULL, NULL),
	('WRIPAK/2017-05/0001', '2017-05-02 08:20:57', 'rub-ppic1', 'IT1', 'Fitri', 'ipak', 'AGP', 'Mulyono', 'gofur', 'CPU Lambat', 'Harddisk Mulai Crash', 'CO', '2017-05-02 10:13:02', 'GPAGP/2017-05/0001', NULL, NULL),
	('WRIPAK/2017-05/0002', '2017-05-12 14:20:57', 'rub-adm1', 'IT1', 'Fitri', 'ipak', 'AGP', 'Mulyono', 'gofur', 'Gagal print share', 'Wifi Usb Tidak terpasang dengan Baik', 'CO', '2017-05-12 15:20:12', NULL, NULL, NULL),
	('WRIPAK/2017-06/0001', '2017-06-15 13:09:08', 'rub-adm2', 'IT1', 'Fitri', 'ipak', 'AGP', 'Mulyono', 'gofur', 'Email Error', 'Modem Mati karna Batrai kosong', 'CO', '2017-06-15 14:00:23', NULL, NULL, NULL),
	('WRIPAK/2017-06/0002', '2017-06-30 09:02:08', 'rub-ppic1', 'IT1', 'Fitri', 'ipak', 'AGP', 'Mulyono', 'gofur', 'Semua CPU Rubber Mati', 'Semua Kabel Listik Putus', 'CO', '2017-06-30 12:32:31', NULL, NULL, NULL),
	('WRIPAK/2017-07/0001', '2017-07-10 11:19:08', 'inj2-adm2', 'IT1', 'Sukma', 'ipak', 'TOP', 'Dedi', 'gofur', 'CPU PPIC Mati', 'Power Supply Rusak', 'CO', '2017-07-10 13:21:33', 'GPTOP/2017-07/0001', NULL, NULL),
	('WRIPAK/2017-08/0001', '2017-08-25 16:19:08', 'inj2-adm1', 'IT1', 'Sukma', 'ipak', 'TOP', 'Dedi', 'gofur', 'Internet Wifi Mati', 'Speedy Offline', 'CO', '2017-08-25 17:01:22', NULL, NULL, NULL),
	('WRIPAK/2017-09/0001', '2017-09-05 13:22:09', 'inj2-hrd', 'IT1', 'Sukma', 'ipak', 'TOP', 'Dedi', 'gofur', 'Request Ubah Password Wifi', '-', 'CO', '2017-09-05 13:59:21', NULL, NULL, NULL),
	('WRIPAK/2017-10/0001', '2017-10-03 14:20:57', 'inj2-hrd', 'IT1', 'Sukma', 'ipak', 'TOP', 'Dedi', 'gofur', 'Telp Ruangan Mati', 'kabel di pabx lepas', 'CO', '2017-10-03 16:02:16', NULL, NULL, NULL),
	('WRVIP/2017-02/0001', '2017-02-23 00:00:00', 'hrd-vip', 'IT1', 'Entin', 'vip', 'VIP', 'Basuki', NULL, 'Internet Error', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-03/0001', '2017-03-13 00:00:00', 'hrd-vip', 'IT1', 'entin', 'vip', 'VIP', 'Basuki', NULL, 'komputer minta ganti', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-03/0002', '2017-03-13 00:00:00', 'hrd-vip', 'IT1', 'Entin', 'vip', 'VIP', 'Basuki', NULL, 'error cpu', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-03/0003', '2017-03-13 00:00:00', 'hrd-vip', 'IT1', 'Entin', 'vip', 'VIP', 'Basuki', NULL, 'Error', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-03/0004', '2017-03-27 00:00:00', 'hrd-vip', 'IT1', 'Entin', 'vip', 'VIP', 'Basuki', NULL, 'CPU Error Layar Biru', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-04/0001', '2017-04-02 00:00:00', 'dsn2-vip', 'IT1', 'Nella', 'vip', 'VIP', 'Basuki', NULL, 'Windows Error', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-04/0002', '2017-04-16 00:00:00', 'svrvip', 'IT1', 'Ika', 'vip', 'VIP', 'Basuki', NULL, 'CPU Ga bisa Internet', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-04/0003', '2017-04-17 00:00:00', 'wh1-vip', 'IT1', 'Narko', 'vip', 'VIP', 'Basuki', NULL, 'CPU ga bisa share Print', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-04/0004', '2017-04-20 00:00:00', 'dsn1-vip', 'IT1', 'keren', 'vip', 'VIP', 'Basuki', NULL, 'komputer mati ', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-04/0005', '2017-04-23 11:03:49', 'ppichl-vip', 'IT1', 'Nella', 'vip', 'HELM', 'Triyono', NULL, 'CPU Off', NULL, 'O', NULL, NULL, NULL, NULL),
	('WRVIP/2017-04/0006', '2017-04-23 16:08:15', 'assm1-vip', 'IT1', 'Kiki', 'vip', 'HELM', 'Triyono', NULL, 'Cpu Lemot', NULL, 'O', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `trwr` ENABLE KEYS */;

-- Dumping data for table iso.wrschedule: ~0 rows (approximately)
/*!40000 ALTER TABLE `wrschedule` DISABLE KEYS */;
INSERT INTO `wrschedule` (`nowr`, `date`, `idcompany`, `iddivisi`, `schedule`) VALUES
	('WRIPAK/2017-02/0001', '2017-02-01', 'ipak', 'TOP', 1),
	('WRIPAK/2017-03/0001', '2017-03-12', 'ipak', 'TOP', 1),
	('WRIPAK/2017-03/0002', '2017-03-15', 'ipak', 'AGP', 1),
	('WRIPAK/2017-04/0001', '2017-04-20', 'ipak', 'TOP', 1),
	('WRIPAK/2017-05/0001', '2017-05-02', 'ipak', 'AGP', 1),
	('WRIPAK/2017-05/0002', '2017-05-12', 'ipak', 'AGP', 1),
	('WRIPAK/2017-06/0001', '2017-06-15', 'ipak', 'AGP', 1),
	('WRIPAK/2017-06/0002', '2017-06-30', 'ipak', 'AGP', 1),
	('WRIPAK/2017-07/0001', '2017-07-20', 'ipak', 'TOP', 1),
	('WRIPAK/2017-08/0001', '2017-08-25', 'ipak', 'TOP', 1),
	('WRIPAK/2017-09/0001', '2017-09-05', 'ipak', 'TOP', 1),
	('WRIPAK/2017-10/0001', '2017-10-03', 'ipak', 'TOP', 1);
/*!40000 ALTER TABLE `wrschedule` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
