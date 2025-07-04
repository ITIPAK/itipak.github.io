SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+07:00";


--
-- Table structure for table `actionwr`
--

CREATE TABLE `actionwr` (
  `nowr` varchar(20) NOT NULL,
  `schedule` int(11) NOT NULL,
  `action` text NOT NULL,
  `actiondate` date NOT NULL,
  `close` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `changedt`
--

CREATE TABLE `changedt` (
  `nocp` varchar(20) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `changehd`
--

CREATE TABLE `changehd` (
  `nocp` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `idcomputer` varchar(15) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `mscompany`
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
-- Table structure for table `mscomputer`
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
-- Table structure for table `msdivisi`
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
-- Table structure for table `mslocation`
--

CREATE TABLE `mslocation` (
  `idlocation` varchar(10) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `mslogin`
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
-- Table structure for table `mspart`
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
-- Table structure for table `mspartstock`
--

CREATE TABLE `mspartstock` (
  `idpart` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `mstech`
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
-- Table structure for table `msunit`
--

CREATE TABLE `msunit` (
  `idunit` varchar(10) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `opnamedt`
--

CREATE TABLE `opnamedt` (
  `noop` varchar(30) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `opnamehd`
--

CREATE TABLE `opnamehd` (
  `noop` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `trgetpartdt`
--

CREATE TABLE `trgetpartdt` (
  `nogp` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `trgetpartdt2`
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
-- Table structure for table `trgetparthd`
--

CREATE TABLE `trgetparthd` (
  `nogp` varchar(20) NOT NULL,
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `trprdt`
--

CREATE TABLE `trprdt` (
  `nopr` varchar(20) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `trprhd`
--

CREATE TABLE `trprhd` (
  `nopr` varchar(20) NOT NULL,
  `nowr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `trrrdt`
--

CREATE TABLE `trrrdt` (
  `norr` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `trrrhd`
--

CREATE TABLE `trrrhd` (
  `norr` varchar(20) NOT NULL,
  `nopr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `trwr`
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



--
-- Table structure for table `wrschedule`
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



--
-- Dumping data for table `changedt`
--

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
('CP/2017-04/0001', 'WINXP', 0, 'cd');

-- --------------------------------------------------------

--
-- Dumping data for table `changehd`
--

INSERT INTO `changehd` (`nocp`, `tanggal`, `idcomputer`, `keterangan`) VALUES
('CP/2017-04/0001', '2017-04-27', '', '');

-- --------------------------------------------------------

--
-- Dumping data for table `mscomputer`
--

INSERT INTO `mscomputer` (`idcomputer`, `computer`, `os`, `antivirus`, `expired`, `user`, `motherboard`, `processor`, `ram`, `hdd`, `vga`, `casing`, `monitor`, `printer`, `keyboard`, `mouse`, `other`, `iddivisi`, `remark`, `date`, `updatedate`, `ipaddress`, `aktif`) VALUES
('admhl-vip', 'Admin Helm Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Nomi', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Admin Helm', '2017-02-01', '2017-02-01', '192.168.30.11', 'Y'),
('assm1-vip', 'Assembling 1 Helm VIP', 'Windows 7', 'Avast Free', '2017-07-01', 'Kiki', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'Zebra Barcode', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 1 VIP', '2017-02-01', '2017-02-01', '192.168.30.13', 'Y'),
('assm2-vip', 'Assembling 2 Helm VIP', 'Windows 7', 'Avast Free', '2017-07-01', 'Nia', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'LX300', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 2 VIP', '2017-02-01', '2017-02-01', '192.168.30.14', 'Y'),
('assm3-vip', 'Assembling 3 Helm VIP', 'Windows 7', 'Avast Free', '2017-07-01', 'Mutia', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 3 VIP', '2017-02-01', '2017-02-01', '192.168.30.15', 'Y'),
('decl-vip', 'Decal n Paint Helm VIP', 'Windows 7', 'Avast Free', '2017-07-01', 'dian', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Decal n painting VIP', '2017-02-01', '2017-02-01', '192.168.30.16', 'Y'),
('dsn1-vip', 'Desain1 Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Yuli', 'Asus LGA 1155', 'Intel Core i5', 'DDR3 8 Gb', '1 Tb', 'DDR3 2Gb', 'Sim Cool', 'lcd 17 inc', 'epson l210', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Desain1 VIP', '2017-02-01', '2017-02-01', '192.168.30.9', 'Y'),
('dsn2-vip', 'Desain1 Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Yuli', 'Asus LGA 1155', 'Intel Core i3', 'DDR3 4 Gb', '500Gb', 'DDR3 1Gb', 'Power Logic', 'lcd 15 inc', 'share', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Desain2 VIP', '2017-02-01', '2017-02-01', '192.168.30.10', 'Y'),
('hrd-mot', 'HRD-MOT', 'Win 7', 'avast Free', '2017-01-01', 'Nitta', 'Asus Lga 775', 'Dual core', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'MOT', 'CPU HRD MOT', '2017-02-16', NULL, '192.168.1.5', 'Y'),
('hrd-vip', 'HRD-Vortex', 'Win 7', 'avast Free', '2017-01-01', 'Entin', 'Asus Lga 775', 'Dual core', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU HRD VIP', '2017-02-16', NULL, '192.168.1.5', 'Y'),
('inj-adm1', 'AdminProd 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Papah', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Admin Produksi 1 SAS', '2016-07-18', NULL, '192.168.20.25', 'Y'),
('inj-adm2', 'AdminWrhs 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Heppy', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L310', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Admin Gudang 1 SAS', '2016-07-18', NULL, '192.168.20.27', 'Y'),
('inj-hrd', 'HRD - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Anita', 'Asus h61m-e', 'Intel Core i3 2.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu HRD IPAK', '2016-07-18', NULL, '192.168.20.31', 'Y'),
('inj-it', 'IT - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Gofur', 'Mobo LGA775', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'epson lx300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu IT IPAK', '2016-07-18', NULL, '192.168.20.32', 'Y'),
('inj-kas', 'Kas - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Kiki', 'Gigabyte G4SE', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kas SAS', '2016-07-18', NULL, '192.168.20.21', 'Y'),
('inj-lgt1', 'Logistic 1 - INJ', 'Windows XP', 'Avast', '2017-06-06', 'Thomas', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 512Mb', 'HDD 80 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Alat Timbangan', 'SAS', 'CPU Logistik & Timbangan SAS', '2016-07-18', NULL, '192.168.20.11', 'Y'),
('inj-lgt2', 'Logistic 2 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Thomas', 'Asus P5G41TM_LX', 'Intel Dual Core 2.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Logistic 2 SAS', '2016-07-18', NULL, '192.168.20.12', 'Y'),
('inj-ped', 'PED 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Pri', 'Asus P5G41TM_LX', 'Intel Dual Core 2.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', '512 Mb', 'Power Logic 450W', 'LCD 15"', 'Epson L310', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PED 1 SAS', '2016-07-18', NULL, '192.168.20.26', 'Y'),
('inj-ppic1', 'PPIC 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Laras', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PPIC 1 SAS', '2016-07-18', NULL, '192.168.20.23', 'Y'),
('inj-prod1', 'Produksi - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Drajat', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kepala Produksi SAS', '2016-07-18', NULL, '192.168.20.22', 'Y'),
('inj-qa', 'QA - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Dani', 'Mobo LGA775', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson l110', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu QA IPAK', '2016-07-18', NULL, '192.168.20.33', 'Y'),
('inj-qc1', 'QC 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Indri', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu QC 1 SAS', '2016-07-18', NULL, '192.168.20.24', 'Y'),
('inj-whs1', 'Warehouse 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Lasta', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'HP Deskjet', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kepala Gudang SAS', '2016-07-18', NULL, '192.168.20.13', 'Y'),
('inj-whs2', 'Warehouse 2 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Nomi', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang SAS', '2016-07-18', NULL, '192.168.20.41', 'Y'),
('inj-whs3', 'Warehouse 3 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Soleh', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang Laci 1 SAS', '2016-07-18', NULL, '192.168.20.42', 'Y'),
('inj-whs4', 'Warehouse 4 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Arianto', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang Laci 2 SAS', '2016-07-18', NULL, '192.168.20.43', 'Y'),
('inj2-adm1', 'AdminWrhs - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Wastari', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.21', 'Y'),
('inj2-adm2', 'AdminProd - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Sukma', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Admin produksi TOP', '2016-07-18', NULL, '192.168.21.32', 'Y'),
('inj2-hrd', 'HRD - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Endang', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu HRD TOP', '2016-07-18', NULL, '192.168.21.33', 'Y'),
('inj2-modem', 'Modem - INJ2', 'no', 'no', '2017-06-06', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Modem Internet TOP', '2016-07-18', NULL, '192.168.1.1', 'Y'),
('inj2-ppic', 'PPIC - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Hegar', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu PPIC TOP', '2016-07-18', NULL, '192.168.21.31', 'Y'),
('inj2-prod', 'Produksi - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Yance', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.11', 'Y'),
('inj2-qc', 'QC - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Yasir', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu QC TOP', '2016-07-18', NULL, '192.168.21.34', 'Y'),
('inj2-rtr1', 'RouterWifi 1 - INJ2', 'no', 'no', '2017-06-06', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Router Wifi 1 TOP', '2016-07-18', NULL, '192.168.21.1', 'Y'),
('ipak-modem', 'Modem - IPAK', 'no', 'no', '2017-06-06', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Modem Internet IPAK', '2016-07-18', NULL, '192.168.1.1', 'Y'),
('ipak-net', 'Internet - IPAK', 'Windows 7', 'Avast', '2017-06-06', 'Umum', 'Varrio', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L120', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Internet & printing Center untuk Umum', '2016-07-18', NULL, '192.168.20.5', 'Y'),
('ipak-rtr1', 'RouterWifi 1 - IPAK', 'no', 'no', '2017-06-06', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Router Wifi 1 IPAK', '2016-07-18', NULL, '192.168.20.3', 'Y'),
('ipak-srv1', 'Server 1 - IPAK', 'Windows Server 2003', 'no', '2020-01-01', 'IT', 'Asus P5G43T-M', 'Intel Core2Duo 3.0 Ghz', 'DDR3 1Gb', 'HDD 80 Gb', 'No', 'Power Logic 450W', 'CRT', 'share', 'logitech ps2', 'logitech usb', 'Lan Card D-Link', 'SAS', 'CPU Server Internet 1 IPAK', '2016-07-18', NULL, '192.168.20.1', 'N'),
('ipak-srv2', 'Server 2 - IPAK', 'Windows 7', 'Avast', '2017-06-06', 'IT', 'Asus P5G43T-M', 'Intel Core2Duo 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'share CRT', 'share', 'Share logitech ps2', 'Share logitech usb', 'Lan Card D-Link', 'SAS', 'CPU Server Internet 2 - IPAK', '2016-07-18', NULL, '192.168.20.2', 'Y'),
('lgt-vip', 'Logistic Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Eka', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx 300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Surat Jalan', '2017-02-01', '2017-02-01', '192.168.30.2', 'Y'),
('ped-vip', 'PED Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Restu', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'no', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU PED VIP', '2017-02-01', '2017-02-01', '192.168.30.6', 'Y'),
('ppichl-vip', 'PPIC Helm Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Nela', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', '', 'Logitec', 'no', 'Helm', 'CPU PPIC Helm VIP', '2017-02-01', '2017-02-01', '192.168.30.12', 'Y'),
('ppicinj-vip', 'PPIC Inj Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Ani', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU PPIC Injection VIP', '2017-02-01', '2017-02-01', '192.168.30.5', 'Y'),
('qa-vip', 'QA Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Sodikin', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU QA VIP', '2017-02-01', '2017-02-01', '192.168.30.8', 'Y'),
('qc-vip', 'QC Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Ria', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU QC VIP', '2017-02-01', '2017-02-01', '192.168.30.7', 'Y'),
('rub-adm1', 'AdminProd 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Fitri', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 1 AGP', '2016-07-18', NULL, '192.168.20.62', 'Y'),
('rub-adm2', 'AdminProd 2 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Ema', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 2 AGP', '2016-07-18', NULL, '192.168.20.63', 'Y'),
('rub-adm3', 'AdminWrhs - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Sutris', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Gudang 2 AGP', '2016-07-18', NULL, '192.168.20.64', 'Y'),
('rub-lab1', 'Lab 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Lala', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 1 AGP', '2016-07-18', NULL, '192.168.20.51', 'Y'),
('rub-lab2', 'Lab 2 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Lala', 'Mobo LGA 1155', 'Intel Core i3 2.0 Ghz', 'DDR3 2Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 2 AGP', '2016-07-18', NULL, '192.168.20.52', 'Y'),
('rub-lab3', 'Lab 3 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Vini', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 3 AGP', '2016-07-18', NULL, '192.168.20.53', 'Y'),
('rub-mix', 'Mixing - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Mulyono', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Mixing AGP', '2016-07-18', NULL, '192.168.20.66', 'Y'),
('rub-ppic1', 'PPIC 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Ayu', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu PPIC 1 AGP', '2016-07-18', NULL, '192.168.20.61', 'Y'),
('rub-prod', 'Produksi - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Mulyono', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Kepala Produksi AGP', '2016-07-18', NULL, '192.168.20.65', 'Y'),
('svrvip', 'Server Vortex', 'Windows 7', 'avast Free', '2017-01-01', 'all', 'G41MT-S2PT', 'Core 2 Duo', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU server data', '2017-02-16', NULL, '192.168.30.1', 'Y'),
('wh1-vip', 'Warehouse1 Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Iqbal', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx 300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Gudang 1', '2017-02-01', '2017-02-01', '192.168.30.3', 'Y'),
('wh2-vip', 'Warehouse2 Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Isro', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson l100', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Gudang 2', '2017-02-01', '2017-02-01', '192.168.30.4', 'Y');

-- --------------------------------------------------------

--
-- Dumping data for table `mscompany`
--

INSERT INTO `mscompany` (`idcompany`, `company`, `address`, `phone`, `alias`, `logo`, `qa`, `active`) VALUES
('ipak', 'PT. Inti Plastik Aneka Karet', 'Jl. Manis V No. 18', '021-5918118', 'IPAK', 'ipak.jpg', 'Hendra', 'Y'),
('vip', 'PT. Vortex Interplasindo', 'Jl. Manis Raya No. 7-9', '021-5916388', 'VIP', 'vip.jpg', 'Basuki', 'Y');

-- --------------------------------------------------------

--
-- Dumping data for table `mscomputer`
--

INSERT INTO `mscomputer` (`idcomputer`, `computer`, `os`, `antivirus`, `expired`, `user`, `motherboard`, `processor`, `ram`, `hdd`, `vga`, `casing`, `monitor`, `printer`, `keyboard`, `mouse`, `other`, `iddivisi`, `remark`, `date`, `updatedate`, `ipaddress`, `aktif`) VALUES
('admhl-vip', 'Admin Helm Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Nomi', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Admin Helm', '2017-02-01', '2017-02-01', '192.168.30.11', 'Y'),
('assm1-vip', 'Assembling 1 Helm VIP', 'Windows 7', 'Avast Free', '2017-07-01', 'Kiki', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'Zebra Barcode', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 1 VIP', '2017-02-01', '2017-02-01', '192.168.30.13', 'Y'),
('assm2-vip', 'Assembling 2 Helm VIP', 'Windows 7', 'Avast Free', '2017-07-01', 'Nia', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'LX300', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 2 VIP', '2017-02-01', '2017-02-01', '192.168.30.14', 'Y'),
('assm3-vip', 'Assembling 3 Helm VIP', 'Windows 7', 'Avast Free', '2017-07-01', 'Mutia', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Assembling 3 VIP', '2017-02-01', '2017-02-01', '192.168.30.15', 'Y'),
('decl-vip', 'Decal n Paint Helm VIP', 'Windows 7', 'Avast Free', '2017-07-01', 'dian', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'share', 'Logitec', 'Logitec', 'no', 'Helm', 'CPU Decal n painting VIP', '2017-02-01', '2017-02-01', '192.168.30.16', 'Y'),
('dsn1-vip', 'Desain1 Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Yuli', 'Asus LGA 1155', 'Intel Core i5', 'DDR3 8 Gb', '1 Tb', 'DDR3 2Gb', 'Sim Cool', 'lcd 17 inc', 'epson l210', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Desain1 VIP', '2017-02-01', '2017-02-01', '192.168.30.9', 'Y'),
('dsn2-vip', 'Desain1 Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Yuli', 'Asus LGA 1155', 'Intel Core i3', 'DDR3 4 Gb', '500Gb', 'DDR3 1Gb', 'Power Logic', 'lcd 15 inc', 'share', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Desain2 VIP', '2017-02-01', '2017-02-01', '192.168.30.10', 'Y'),
('hrd-mot', 'HRD-MOT', 'Win 7', 'avast Free', '2017-01-01', 'Nitta', 'Asus Lga 775', 'Dual core', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'MOT', 'CPU HRD MOT', '2017-02-16', NULL, '192.168.1.5', 'Y'),
('hrd-vip', 'HRD-Vortex', 'Win 7', 'avast Free', '2017-01-01', 'Entin', 'Asus Lga 775', 'Dual core', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU HRD VIP', '2017-02-16', NULL, '192.168.1.5', 'Y'),
('inj-adm1', 'AdminProd 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Papah', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Admin Produksi 1 SAS', '2016-07-18', NULL, '192.168.20.25', 'Y'),
('inj-adm2', 'AdminWrhs 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Heppy', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L310', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Admin Gudang 1 SAS', '2016-07-18', NULL, '192.168.20.27', 'Y'),
('inj-hrd', 'HRD - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Anita', 'Asus h61m-e', 'Intel Core i3 2.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu HRD IPAK', '2016-07-18', NULL, '192.168.20.31', 'Y'),
('inj-it', 'IT - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Gofur', 'Mobo LGA775', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'epson lx300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu IT IPAK', '2016-07-18', NULL, '192.168.20.32', 'Y'),
('inj-kas', 'Kas - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Kiki', 'Gigabyte G4SE', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kas SAS', '2016-07-18', NULL, '192.168.20.21', 'Y'),
('inj-lgt1', 'Logistic 1 - INJ', 'Windows XP', 'Avast', '2017-06-06', 'Thomas', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 512Mb', 'HDD 80 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Alat Timbangan', 'SAS', 'CPU Logistik & Timbangan SAS', '2016-07-18', NULL, '192.168.20.11', 'Y'),
('inj-lgt2', 'Logistic 2 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Thomas', 'Asus P5G41TM_LX', 'Intel Dual Core 2.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Logistic 2 SAS', '2016-07-18', NULL, '192.168.20.12', 'Y'),
('inj-ped', 'PED 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Pri', 'Asus P5G41TM_LX', 'Intel Dual Core 2.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', '512 Mb', 'Power Logic 450W', 'LCD 15"', 'Epson L310', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PED 1 SAS', '2016-07-18', NULL, '192.168.20.26', 'Y'),
('inj-ppic1', 'PPIC 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Laras', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PPIC 1 SAS', '2016-07-18', NULL, '192.168.20.23', 'Y'),
('inj-prod1', 'Produksi - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Drajat', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kepala Produksi SAS', '2016-07-18', NULL, '192.168.20.22', 'Y'),
('inj-qa', 'QA - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Dani', 'Mobo LGA775', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson l110', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu QA IPAK', '2016-07-18', NULL, '192.168.20.33', 'Y'),
('inj-qc1', 'QC 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Indri', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu QC 1 SAS', '2016-07-18', NULL, '192.168.20.24', 'Y'),
('inj-whs1', 'Warehouse 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Lasta', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'HP Deskjet', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kepala Gudang SAS', '2016-07-18', NULL, '192.168.20.13', 'Y'),
('inj-whs2', 'Warehouse 2 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Nomi', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang SAS', '2016-07-18', NULL, '192.168.20.41', 'Y'),
('inj-whs3', 'Warehouse 3 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Soleh', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang Laci 1 SAS', '2016-07-18', NULL, '192.168.20.42', 'Y'),
('inj-whs4', 'Warehouse 4 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Arianto', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang Laci 2 SAS', '2016-07-18', NULL, '192.168.20.43', 'Y'),
('inj2-adm1', 'AdminWrhs - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Wastari', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.21', 'Y'),
('inj2-adm2', 'AdminProd - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Sukma', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Admin produksi TOP', '2016-07-18', NULL, '192.168.21.32', 'Y'),
('inj2-hrd', 'HRD - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Endang', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu HRD TOP', '2016-07-18', NULL, '192.168.21.33', 'Y'),
('inj2-modem', 'Modem - INJ2', 'no', 'no', '2017-06-06', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Modem Internet TOP', '2016-07-18', NULL, '192.168.1.1', 'Y'),
('inj2-ppic', 'PPIC - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Hegar', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu PPIC TOP', '2016-07-18', NULL, '192.168.21.31', 'Y'),
('inj2-prod', 'Produksi - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Yance', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.11', 'Y'),
('inj2-qc', 'QC - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Yasir', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu QC TOP', '2016-07-18', NULL, '192.168.21.34', 'Y'),
('inj2-rtr1', 'RouterWifi 1 - INJ2', 'no', 'no', '2017-06-06', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Router Wifi 1 TOP', '2016-07-18', NULL, '192.168.21.1', 'Y'),
('ipak-modem', 'Modem - IPAK', 'no', 'no', '2017-06-06', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Modem Internet IPAK', '2016-07-18', NULL, '192.168.1.1', 'Y'),
('ipak-net', 'Internet - IPAK', 'Windows 7', 'Avast', '2017-06-06', 'Umum', 'Varrio', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L120', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Internet & printing Center untuk Umum', '2016-07-18', NULL, '192.168.20.5', 'Y'),
('ipak-rtr1', 'RouterWifi 1 - IPAK', 'no', 'no', '2017-06-06', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Router Wifi 1 IPAK', '2016-07-18', NULL, '192.168.20.3', 'Y'),
('ipak-srv1', 'Server 1 - IPAK', 'Windows Server 2003', 'no', '2020-01-01', 'IT', 'Asus P5G43T-M', 'Intel Core2Duo 3.0 Ghz', 'DDR3 1Gb', 'HDD 80 Gb', 'No', 'Power Logic 450W', 'CRT', 'share', 'logitech ps2', 'logitech usb', 'Lan Card D-Link', 'SAS', 'CPU Server Internet 1 IPAK', '2016-07-18', NULL, '192.168.20.1', 'N'),
('ipak-srv2', 'Server 2 - IPAK', 'Windows 7', 'Avast', '2017-06-06', 'IT', 'Asus P5G43T-M', 'Intel Core2Duo 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'share CRT', 'share', 'Share logitech ps2', 'Share logitech usb', 'Lan Card D-Link', 'SAS', 'CPU Server Internet 2 - IPAK', '2016-07-18', NULL, '192.168.20.2', 'Y'),
('lgt-vip', 'Logistic Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Eka', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx 300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Surat Jalan', '2017-02-01', '2017-02-01', '192.168.30.2', 'Y'),
('ped-vip', 'PED Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Restu', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'no', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU PED VIP', '2017-02-01', '2017-02-01', '192.168.30.6', 'Y'),
('ppichl-vip', 'PPIC Helm Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Nela', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', '', 'Logitec', 'no', 'Helm', 'CPU PPIC Helm VIP', '2017-02-01', '2017-02-01', '192.168.30.12', 'Y'),
('ppicinj-vip', 'PPIC Inj Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Ani', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU PPIC Injection VIP', '2017-02-01', '2017-02-01', '192.168.30.5', 'Y'),
('qa-vip', 'QA Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Sodikin', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU QA VIP', '2017-02-01', '2017-02-01', '192.168.30.8', 'Y'),
('qc-vip', 'QC Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Ria', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU QC VIP', '2017-02-01', '2017-02-01', '192.168.30.7', 'Y'),
('rub-adm1', 'AdminProd 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Fitri', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 1 AGP', '2016-07-18', NULL, '192.168.20.62', 'Y'),
('rub-adm2', 'AdminProd 2 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Ema', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 2 AGP', '2016-07-18', NULL, '192.168.20.63', 'Y'),
('rub-adm3', 'AdminWrhs - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Sutris', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Gudang 2 AGP', '2016-07-18', NULL, '192.168.20.64', 'Y'),
('rub-lab1', 'Lab 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Lala', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 1 AGP', '2016-07-18', NULL, '192.168.20.51', 'Y'),
('rub-lab2', 'Lab 2 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Lala', 'Mobo LGA 1155', 'Intel Core i3 2.0 Ghz', 'DDR3 2Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 2 AGP', '2016-07-18', NULL, '192.168.20.52', 'Y'),
('rub-lab3', 'Lab 3 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Vini', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 3 AGP', '2016-07-18', NULL, '192.168.20.53', 'Y'),
('rub-mix', 'Mixing - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Mulyono', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Mixing AGP', '2016-07-18', NULL, '192.168.20.66', 'Y'),
('rub-ppic1', 'PPIC 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Ayu', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu PPIC 1 AGP', '2016-07-18', NULL, '192.168.20.61', 'Y'),
('rub-prod', 'Produksi - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Mulyono', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Kepala Produksi AGP', '2016-07-18', NULL, '192.168.20.65', 'Y'),
('svrvip', 'Server Vortex', 'Windows 7', 'avast Free', '2017-01-01', 'all', 'G41MT-S2PT', 'Core 2 Duo', 'DDR2 1Gb', '160Gb', 'no', 'power logic', 'LCD 15"', 'Epson L110', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU server data', '2017-02-16', NULL, '192.168.30.1', 'Y'),
('wh1-vip', 'Warehouse1 Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Iqbal', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson lx 300', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Gudang 1', '2017-02-01', '2017-02-01', '192.168.30.3', 'Y'),
('wh2-vip', 'Warehouse2 Vortex', 'Windows 7', 'Avast Free', '2017-07-01', 'Isro', 'Asus P5GC-MX', 'Intel Dual Core', 'DDR2 1 Gb', '80 Gb', 'no', 'power logic', 'lcd 14 inc', 'epson l100', 'Logitec', 'Logitec', 'no', 'VIP', 'CPU Gudang 2', '2017-02-01', '2017-02-01', '192.168.30.4', 'Y');

-- --------------------------------------------------------

--
-- Dumping data for table `msdivisi`
--

INSERT INTO `msdivisi` (`iddivisi`, `divisi`, `idcompany`, `utama`, `leader`, `location`, `pin`, `email`, `ip`) VALUES
('SAS', 'Injection 1', 'ipak', 'Y', 'Drajat', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'opunk.janie@gmail.com', '::1'),
('AGP', 'Rubber', 'ipak', 'Y', 'Mulyono', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'mul.rubber@gmail.com', ''),
('TOP', 'Injection 2', 'ipak', 'N', 'Yance', 'Pasar Kemis - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'yance.prodfac@gmail.com', ''),
('VIP', 'Injection', 'vip', 'Y', 'Ika', 'Jl Manis Raya - Tangerang', '14e1b600b1fd579f47433b88e8d85291', 'iis.sholicha@gmail.com', ''),
('HELM', 'Helm', 'vip', 'Y', 'Triyono', 'Jl Manis Raya', 'e10adc3949ba59abbe56e057f20f883e', 'opunk.janie@gmail.com', ''),
('MOT', 'Injection 2', 'vip', 'N', 'Timbul', 'Cikupa', 'e10adc3949ba59abbe56e057f20f883e', 'timbul@gmail.com', ''),
('HO1', 'Kantor', 'ipak', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id', '192.168.10.68'),
('HO2', 'Kantor', 'vip', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id', '');

-- --------------------------------------------------------

--
-- Dumping data for table `mslocation`
--

INSERT INTO `mslocation` (`idlocation`, `idcompany`, `location`, `address`) VALUES
('lcipak1', 'ipak', 'Kawasan Manis - Jatake', 'Jl. Manis V No. 18, Jatiuwung Banten'),
('lcipak2', 'ipak', 'TOP-Pasar Kemis', 'Jl. Pasar Kemis Raya, Banten'),
('lcipak3', 'ipak', 'HO-I', 'Ruko Pinangsia Blok I'),
('lcipak4', 'ipak', 'HO-L', 'Ruko Pinangsia Blok L'),
('lcipak5', 'ipak', 'Graha Kencana', 'Komplek Graha Kencana, Kebon Jeruk Jakarta Barat');

-- --------------------------------------------------------


--
-- Dumping data for table `mslogin`
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
-- Dumping data for table `mspart`
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
('WINXP', 'Windows XP', 'Original Windows XP', 'IT2', 'cd', 'Y');

-- --------------------------------------------------------

--
-- Dumping data for table `mspartstock`
--

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
('LED15', '2017-04-27 00:00:00', 0, 'vip', 'unit');

-- --------------------------------------------------------

--
-- Dumping data for table `mstech`
--

INSERT INTO `mstech` (`idtech`, `tech`, `remark`, `email`, `active`, `leader`) VALUES
('IT1', 'IT support', 'IT & Support', 'it.vip001@gmail.com', 'Y', 'Achmad Gofur'),
('IT2', 'IT Software & System', 'Software Development', 'opunk.janie@gmail.com', 'N', 'Hasanah'),
('MN1', 'Maintenance Mesin', 'Maintenance Tehnik Mesin', 'maintenance@ipak.go.id', 'N', NULL);

-- --------------------------------------------------------

--
-- Dumping data for table `msunit`
--

INSERT INTO `msunit` (`idunit`, `unit`, `remark`) VALUES
('pcs', 'Pieces', NULL),
('set', 'Set', NULL),
('unt', 'Unit', NULL);

-- --------------------------------------------------------

--
-- Dumping data for table `opnamedt`
--

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
('OP/2017-04/0002', 'WINXP', 20, 'cd');

-- --------------------------------------------------------

--
-- Dumping data for table `opnamehd`
--

INSERT INTO `opnamehd` (`noop`, `tanggal`, `keterangan`) VALUES
('OP/2017-04/0001', '2017-04-26', ''),
('OP/2017-04/0002', '2017-04-27', 'SO April 2017'),
('OPIPAK/2016-07/0001', '2016-07-31', ''),
('OPIPAK/2016-08/0001', '2016-08-03', ''),
('OPIPAK/2016-08/0002', '2016-08-04', ''),
('OPVIP/2016-08/0001', '2016-08-01', '');

-- --------------------------------------------------------

--
-- Dumping data for table `trgetpartdt`
--

INSERT INTO `trgetpartdt` (`nogp`, `idpart`, `qty`, `idunit`, `remark`) VALUES
('GPSAS/2016-06/0001', 'MB775', 1, 'pcs', ''),
('GPSAS/2016-06/0001', 'DDR31', 1, 'pcs', ''),
('GPSAS/2016-06/0002', 'PSU45', 1, 'pcs', ''),
('GPVIP/2017-03/0001', 'MOS', 1, 'pcs', 'Ganti Mouse'),
('GPHELM/2017-04/0001', 'HDD500', 1, 'pcs', 'Untuk ganti Hdd'),
('GPVIP/2017-04/0001', 'PRC1', 1, 'pcs', ''),
('GPVIP/2017-04/0002', 'PRC3', 1, 'pcs', '');

-- --------------------------------------------------------

--
-- Dumping data for table `trgetparthd`
--

INSERT INTO `trgetparthd` (`nogp`, `nowr`, `date`, `remark`) VALUES
('GPHELM/2017-04/0001', 'WRVIP/2017-04/0005', '2017-04-24', NULL),
('GPSAS/2016-06/0001', 'WRIPAK/2016-06/0001', '2016-06-07', NULL),
('GPSAS/2016-06/0002', 'WRIPAK/2016-06/0002', '2016-06-08', NULL),
('GPVIP/2017-03/0001', 'WRVIP/2017-03/0002', '2017-03-21', NULL),
('GPVIP/2017-04/0001', 'WRVIP/2017-04/0002', '2017-04-27', NULL),
('GPVIP/2017-04/0002', 'WRVIP/2017-04/0002', '2017-04-27', NULL);

-- --------------------------------------------------------

--
-- Dumping data for table `trprdt`
--

INSERT INTO `trprdt` (`nopr`, `idpart`, `qty`, `idunit`, `remark`) VALUES
('PRSAS/2016-06/0001', 'MB775', 1, 'pcs', ''),
('PRSAS/2016-06/0001', 'DDR31', 1, 'pcs', ''),
('PRSAS/2016-06/0002', 'PSU45', 1, 'pcs', ''),
('PRVIP/2017-03/0001', 'MOS', 1, 'pcs', ''),
('PRVIP/2017-04/0001', 'PSU50', 1, 'pcs', ''),
('PRVIP/2017-04/0002', 'PRC3', 2, 'pcs', '');

-- --------------------------------------------------------

--
-- Dumping data for table `trprhd`
--

INSERT INTO `trprhd` (`nopr`, `nowr`, `tanggal`, `remark`, `status`) VALUES
('PRSAS/2016-06/0001', 'WRIPAK/2016-06/0001', '2016-06-03', '', 'C'),
('PRSAS/2016-06/0002', 'WRIPAK/2016-06/0002', '2016-06-03', '', 'C'),
('PRVIP/2017-03/0001', 'WRVIP/2017-03/0002', '2017-03-21', '', 'C'),
('PRVIP/2017-04/0001', 'WRVIP/2017-04/0003', '2017-04-19', 'apa aja', 'C'),
('PRVIP/2017-04/0002', 'WRVIP/2017-04/0002', '2017-04-26', '', 'C');

-- --------------------------------------------------------

--
-- Dumping data for table `trrrdt`
--

INSERT INTO `trrrdt` (`norr`, `idpart`, `qty`, `idunit`) VALUES
('RRSAS/2016-06/0001', 'DDR31', 1, 'pcs'),
('RRSAS/2016-06/0001', 'MB775', 1, 'pcs'),
('RRSAS/2016-08/0001', 'PSU45', 1, 'pcs'),
('RRVIP/2017-03/0001', 'MOS', 1, 'pcs'),
('RRVIP/2017-04/0001', 'PSU50', 1, 'pcs'),
('RRVIP/2017-04/0002', 'PRC3', 2, 'pcs');

-- --------------------------------------------------------

--
-- Dumping data for table `trrrhd`
--

INSERT INTO `trrrhd` (`norr`, `nopr`, `tanggal`, `remark`) VALUES
('RRSAS/2016-06/0001', 'PRSAS/2016-06/0001', '2016-06-06', ''),
('RRSAS/2016-08/0001', 'PRSAS/2016-06/0002', '2016-06-07', ''),
('RRVIP/2017-03/0001', 'PRVIP/2017-03/0001', '2017-03-21', ''),
('RRVIP/2017-04/0001', 'PRVIP/2017-04/0001', '2017-04-19', ''),
('RRVIP/2017-04/0002', 'PRVIP/2017-04/0002', '2017-04-27', '');

-- --------------------------------------------------------

--
-- Dumping data for table `trwr`
--

INSERT INTO `trwr` (`nowr`, `date`, `idcomputer`, `idtech`, `user`, `idcompany`, `iddivisi`, `signature`, `assign`, `issue`, `alasan`, `status`, `closedate`, `getpart`, `request`, `vendor`) VALUES
('WRIPAK/2016-06/0001', '2016-06-01 00:00:00', 'inj-whs2', 'IT1', 'Nomi', 'ipak', 'SAS', 'Drajat', 'gofur', 'CPU Mati Total', 'Matherboard Rusak', 'CO', '2016-06-07 00:00:00', 'GPSAS/2016-06/0001', 'PRSAS/2016-06/0001', NULL),
('WRIPAK/2016-06/0002', '2016-06-01 00:00:00', 'inj-prod1', 'IT1', 'Drajat', 'ipak', 'SAS', 'Drajat', 'gofur', 'Power OFF', 'Power Supply Rusak.', 'CO', '2016-06-08 00:00:00', 'GPSAS/2016-06/0002', 'PRSAS/2016-06/0002', NULL),
('WRIPAK/2016-06/0003', '2016-06-02 00:00:00', 'inj-ppic1', 'IT1', 'Laras', 'ipak', 'SAS', 'Drajat', 'gofur', 'Share Data Gagal.', 'Wifi Router Overheat.', 'CO', '2016-06-06 00:00:00', NULL, NULL, NULL),
('WRIPAK/2016-06/0004', '2016-06-02 00:00:00', 'rub-ppic1', 'IT1', 'Fitri', 'ipak', 'AGP', 'Mulyono', 'gofur', 'Email di Outlook Ga bisa.', 'Wifi Router Overheat.', 'CO', '2016-06-06 00:00:00', NULL, NULL, NULL),
('WRIPAK/2016-06/0005', '2016-06-02 00:00:00', 'rub-adm2', 'IT1', 'Ema', 'ipak', 'AGP', 'Mulyono', 'gofur', 'Print Laporan ga bisa.', 'Wifi USB Cpu Lepas', 'CO', '2016-08-09 00:00:00', NULL, NULL, NULL),
('WRIPAK/2017-04/0001', '2017-04-23 00:00:00', 'rub-ppic1', 'IT1', 'Ayu', 'ipak', 'AGP', 'Mulyono', 'ika', 'CPU Lemot', 'Memory Kurang Besar', 'CO', '2017-04-23 00:00:00', NULL, NULL, NULL),
('WRVIP/2017-02/0001', '2017-02-23 00:00:00', 'hrd-vip', 'IT1', 'Entin', 'vip', 'VIP', 'Basuki', 'gofur', 'Internet Error', 'Wifi Terlalu Panas', 'CO', '2017-02-23 00:00:00', NULL, NULL, NULL),
('WRVIP/2017-03/0001', '2017-03-13 00:00:00', 'hrd-vip', 'IT1', 'entin', 'vip', 'VIP', 'Basuki', NULL, 'komputer minta ganti', NULL, 'O', NULL, NULL, NULL, NULL),
('WRVIP/2017-03/0002', '2017-03-13 00:00:00', 'hrd-vip', 'IT1', 'Entin', 'vip', 'VIP', 'Basuki', 'ika', 'error cpu', 'Power Supply Terbakar', 'CO', '2017-04-25 03:58:54', 'GPVIP/2017-03/0001', 'PRVIP/2017-03/0001', NULL),
('WRVIP/2017-03/0003', '2017-03-13 00:00:00', 'hrd-vip', 'IT1', 'Entin', 'vip', 'VIP', 'Basuki', NULL, 'Error', NULL, 'O', NULL, NULL, NULL, NULL),
('WRVIP/2017-03/0004', '2017-03-27 00:00:00', 'hrd-vip', 'IT1', 'Entin', 'vip', 'VIP', 'Ika', NULL, 'CPU Error Layar Biru', NULL, 'O', NULL, NULL, NULL, NULL),
('WRVIP/2017-04/0001', '2017-04-02 00:00:00', 'dsn2-vip', 'IT1', 'Aplikasi Tidak bisa dibuka', 'vip', 'VIP', 'Ika', NULL, 'Windows Error', NULL, 'O', NULL, NULL, NULL, NULL),
('WRVIP/2017-04/0002', '2017-04-16 00:00:00', 'svrvip', 'IT1', 'Ika', 'vip', 'VIP', 'Ika', 'gofur', 'CPU Ga bisa Internet', NULL, 'O', NULL, 'GPVIP/2017-04/0002', 'PRVIP/2017-04/0002', NULL),
('WRVIP/2017-04/0003', '2017-04-17 00:00:00', 'wh1-vip', 'IT1', 'Narko', 'vip', 'VIP', 'Ika', 'ika', 'CPU ga bisa share Print', 'keren', 'CO', '2017-04-25 03:42:53', '', 'PRVIP/2017-04/0001', NULL),
('WRVIP/2017-04/0004', '2017-04-20 00:00:00', 'dsn1-vip', 'IT1', 'keren', 'vip', 'VIP', 'Ika', NULL, 'komputer mati ', 'power supply kebkr', 'CO', '2017-04-20 00:00:00', NULL, NULL, NULL),
('WRVIP/2017-04/0005', '2017-04-23 11:03:49', 'ppichl-vip', 'IT1', 'Nella', 'vip', 'HELM', 'Triyono', 'gofur', 'CPU Off', 'Hdd Rusak', 'CO', '2017-04-25 03:54:23', 'GPHELM/2017-04/0001', NULL, NULL),
('WRVIP/2017-04/0006', '2017-04-23 16:08:15', 'assm1-vip', 'IT1', 'Kiki', 'vip', 'HELM', 'Triyono', 'gofur', 'Cpu Lemot', 'Processor Lemah', 'CO', '2017-04-23 18:32:40', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Dumping data for table `actionwr`
--

INSERT INTO `actionwr` (`nowr`, `schedule`, `action`, `actiondate`, `close`) VALUES
('WRVIP/2017-02/0001', 1, 'Cabut Wifi Sementara', '2017-02-23', 'Y'),
('WRVIP/2017-04/0004', 1, 'ganti power supply', '2017-04-20', 'Y'),
('WRIPAK/2017-04/0001', 1, 'Upgrade Memory', '2017-04-23', 'Y'),
('WRVIP/2017-04/0006', 1, 'Ganti / Upgrade Processor ke Core2Duo', '2017-04-23', 'Y'),
('WRVIP/2017-04/0003', 1, 'CPU Off', '2017-04-25', 'N'),
('WRVIP/2017-04/0003', 2, 'CPU ON', '2017-04-25', 'Y'),
('WRVIP/2017-04/0005', 1, 'Ganti Harddisk', '2017-04-25', 'Y'),
('WRVIP/2017-03/0002', 1, 'Ganti Power Supply', '2017-04-25', 'Y');

-- --------------------------------------------------------

--
-- Dumping data for table `wrschedule`
--

INSERT INTO `wrschedule` (`nowr`, `date`, `idcompany`, `iddivisi`, `schedule`) VALUES
('WRIPAK/2016-06/0001', '2016-06-03', 'ipak', NULL, 1),
('WRIPAK/2016-06/0002', '2016-06-03', 'ipak', NULL, 1),
('WRIPAK/2016-06/0003', '2016-06-06', 'ipak', NULL, 1),
('WRIPAK/2016-06/0004', '2016-06-07', 'ipak', NULL, 1),
('WRIPAK/2016-06/0005', '2016-06-07', 'ipak', NULL, 1),
('WRIPAK/2016-06/0001', '2016-06-07', 'ipak', NULL, 2),
('WRIPAK/2016-06/0002', '2016-06-08', 'ipak', NULL, 2),
('WRVIP/2017-02/0001', '2017-02-23', 'vip', NULL, 1),
('WRVIP/2017-04/0004', '2017-04-20', 'vip', 'VIP', 1),
('WRIPAK/2017-04/0001', '2017-04-23', 'ipak', 'AGP', 1),
('WRVIP/2017-04/0006', '2017-04-23', 'vip', 'HELM', 1),
('WRVIP/2017-04/0005', '2017-04-23', 'vip', 'HELM', 1),
('WRVIP/2017-04/0003', '2017-04-24', 'vip', 'VIP', 1),
('WRVIP/2017-04/0003', '2017-04-24', 'vip', 'VIP', 2),
('WRVIP/2017-03/0002', '2017-04-24', 'vip', 'VIP', 1),
('WRVIP/2017-04/0002', '2017-04-27', 'vip', 'VIP', 1);