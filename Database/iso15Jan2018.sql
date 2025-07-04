-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Jan 2018 pada 11.16
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iso`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `actionwr`
--

CREATE TABLE `actionwr` (
  `nowr` varchar(20) NOT NULL,
  `schedule` int(11) NOT NULL,
  `action` text NOT NULL,
  `actiondate` datetime NOT NULL,
  `close` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `changedt`
--

CREATE TABLE `changedt` (
  `nocp` varchar(20) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `changehd`
--

CREATE TABLE `changehd` (
  `nocp` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `idcomputer` varchar(15) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mscompany`
--

CREATE TABLE `mscompany` (
  `idcompany` varchar(10) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` text,
  `phone` varchar(40) DEFAULT NULL,
  `alias` varchar(15) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `qa` varchar(100) NOT NULL,
  `active` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mscompany`
--

INSERT INTO `mscompany` (`idcompany`, `company`, `address`, `phone`, `alias`, `logo`, `qa`, `active`) VALUES
('ipak', 'PT. Inti Plastik Aneka Karet', 'Jl. Manis V No. 18', '021-5918118', 'IPAK', 'ipak.jpg', 'Indri', 'Y'),
('vip', 'PT. Vortex Interplasindo', 'Jl. Manis Raya No. 7-9', '021-5916388', 'VIP', 'vip.jpg', 'Basuki', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mscomputer`
--

CREATE TABLE `mscomputer` (
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
  `aktif` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mscomputer`
--

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `msdivisi`
--

CREATE TABLE `msdivisi` (
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

--
-- Dumping data untuk tabel `msdivisi`
--

INSERT INTO `msdivisi` (`iddivisi`, `divisi`, `idcompany`, `utama`, `leader`, `location`, `pin`, `email`, `ip`) VALUES
('SAS', 'Injection 1', 'ipak', 'N', 'Drajat', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'opunk.janie@gmail.com', '::1'),
('AGP', 'Rubber', 'ipak', 'Y', 'Mulyono', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'mul.rubber@gmail.com', ''),
('TOP', 'Injection 2', 'ipak', 'Y', 'Dedi', 'Pasar Kemis - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'yance.prodfac@gmail.com', ''),
('VIP', 'Injection', 'vip', 'Y', 'Ika', 'Jl Manis Raya - Tangerang', '14e1b600b1fd579f47433b88e8d85291', 'iis.sholicha@gmail.com', ''),
('HELM', 'Helm', 'vip', 'Y', 'Triyono', 'Jl Manis Raya', 'e10adc3949ba59abbe56e057f20f883e', 'opunk.janie@gmail.com', ''),
('MOT', 'Injection 2', 'vip', 'N', 'Timbul', 'Cikupa', 'e10adc3949ba59abbe56e057f20f883e', 'timbul@gmail.com', ''),
('HO1', 'Kantor', 'ipak', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id', '192.168.10.68'),
('HO2', 'Kantor', 'vip', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mslocation`
--

CREATE TABLE `mslocation` (
  `idlocation` varchar(10) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mslocation`
--

INSERT INTO `mslocation` (`idlocation`, `idcompany`, `location`, `address`) VALUES
('lcipak1', 'ipak', 'Kawasan Manis - Jatake', 'Jl. Manis V No. 18, Jatiuwung Banten'),
('lcipak2', 'ipak', 'TOP-Pasar Kemis', 'Jl. Pasar Kemis Raya, Banten'),
('lcipak3', 'ipak', 'HO-I', 'Ruko Pinangsia Blok I'),
('lcipak4', 'ipak', 'HO-L', 'Ruko Pinangsia Blok L'),
('lcipak5', 'ipak', 'Graha Kencana', 'Komplek Graha Kencana, Kebon Jeruk Jakarta Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mslogin`
--

CREATE TABLE `mslogin` (
  `idlogin` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mslogin`
--

INSERT INTO `mslogin` (`idlogin`, `nama`, `password`, `active`, `idcompany`, `idtech`, `email`) VALUES
('admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Y', 'ALL', 'ALL', ''),
('desi', 'Desiyanti', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ALL', 'IT1', 'jual.jasait@gmail.com'),
('gofur', 'Achmad Gofur', 'e28c4514a9fdf386f8a01e0b46cbceda', 'Y', 'ALL', 'IT1', 'it.divisi01@gmail.com'),
('ika', 'Iis Solicha', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ALL', 'IT1', 'opunk.janie@gmail.com'),
('ipak', 'ipak', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ipak', NULL, ''),
('vip', 'vip', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'vip', NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mspart`
--

CREATE TABLE `mspart` (
  `idpart` varchar(10) NOT NULL,
  `part` varchar(45) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `active` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mspart`
--

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `mspartstock`
--

CREATE TABLE `mspartstock` (
  `idpart` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mspartstock`
--

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
('PSU45', '2017-10-27 07:04:07', 4, NULL, 'pcs'),
('WI1', '2018-01-15 16:43:38', 3, NULL, 'pcs'),
('WI1', '2018-01-15 16:44:23', 2, NULL, 'pcs'),
('PSU45', '2018-01-15 17:03:09', 5, NULL, 'pcs'),
('PSU45', '2018-01-15 17:04:58', 4, NULL, 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mstech`
--

CREATE TABLE `mstech` (
  `idtech` varchar(5) NOT NULL,
  `tech` varchar(45) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mstech`
--

INSERT INTO `mstech` (`idtech`, `tech`, `remark`, `email`, `active`, `leader`) VALUES
('IT1', 'IT support', 'IT & Support', 'it.vip001@gmail.com', 'Y', 'Achmad Gofur'),
('IT2', 'IT Software & System', 'Software Development', 'opunk.janie@gmail.com', 'N', 'Hasanah'),
('MN1', 'Maintenance Mesin', 'Maintenance Tehnik Mesin', 'maintenance@ipak.go.id', 'N', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `msunit`
--

CREATE TABLE `msunit` (
  `idunit` varchar(10) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `msunit`
--

INSERT INTO `msunit` (`idunit`, `unit`, `remark`) VALUES
('pcs', 'Pieces', NULL),
('set', 'Set', NULL),
('unt', 'Unit', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `opnamedt`
--

CREATE TABLE `opnamedt` (
  `noop` varchar(30) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `opnamehd`
--

CREATE TABLE `opnamehd` (
  `noop` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trgetpartdt`
--

CREATE TABLE `trgetpartdt` (
  `nogp` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trgetpartdt2`
--

CREATE TABLE `trgetpartdt2` (
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trgetparthd`
--

CREATE TABLE `trgetparthd` (
  `nogp` varchar(20) NOT NULL,
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trprdt`
--

CREATE TABLE `trprdt` (
  `nopr` varchar(20) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trprhd`
--

CREATE TABLE `trprhd` (
  `nopr` varchar(20) NOT NULL,
  `nowr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trrrdt`
--

CREATE TABLE `trrrdt` (
  `norr` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trrrhd`
--

CREATE TABLE `trrrhd` (
  `norr` varchar(20) NOT NULL,
  `nopr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trwr`
--

CREATE TABLE `trwr` (
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
  `vendor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wrschedule`
--

CREATE TABLE `wrschedule` (
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `iddivisi` varchar(10) DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mscompany`
--
ALTER TABLE `mscompany`
  ADD PRIMARY KEY (`idcompany`);

--
-- Indexes for table `mscomputer`
--
ALTER TABLE `mscomputer`
  ADD PRIMARY KEY (`idcomputer`);

--
-- Indexes for table `mslogin`
--
ALTER TABLE `mslogin`
  ADD PRIMARY KEY (`idlogin`);

--
-- Indexes for table `mspart`
--
ALTER TABLE `mspart`
  ADD PRIMARY KEY (`idpart`);

--
-- Indexes for table `mstech`
--
ALTER TABLE `mstech`
  ADD PRIMARY KEY (`idtech`);

--
-- Indexes for table `msunit`
--
ALTER TABLE `msunit`
  ADD PRIMARY KEY (`idunit`);

--
-- Indexes for table `opnamehd`
--
ALTER TABLE `opnamehd`
  ADD PRIMARY KEY (`noop`);

--
-- Indexes for table `trgetparthd`
--
ALTER TABLE `trgetparthd`
  ADD PRIMARY KEY (`nogp`);

--
-- Indexes for table `trprhd`
--
ALTER TABLE `trprhd`
  ADD PRIMARY KEY (`nopr`);

--
-- Indexes for table `trrrhd`
--
ALTER TABLE `trrrhd`
  ADD PRIMARY KEY (`norr`);

--
-- Indexes for table `trwr`
--
ALTER TABLE `trwr`
  ADD PRIMARY KEY (`nowr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
