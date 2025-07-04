
CREATE TABLE IF NOT EXISTS `actionwr` (
  `nowr` varchar(20) NOT NULL,
  `schedule` int(11) NOT NULL,
  `action` text NOT NULL,
  `actiondate` date NOT NULL,
  `close` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mscompany` (
  `idcompany` varchar(10) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` text,
  `phone` varchar(40) DEFAULT NULL,
  `alias` varchar(15) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `msdivisi` (
  `iddivisi` varchar(10) DEFAULT NULL,
  `divisi` varchar(50) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `utama` varchar(10) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  `location` text,
  `pin` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `ipaddress` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mslocation` (
  `idlocation` varchar(10) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mslogin` (
  `idlogin` varchar(10) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mspart` (
  `idpart` varchar(10) NOT NULL,
  `part` varchar(45) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `active` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mspartstock` (
  `idpart` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mstech` (
  `idtech` varchar(5) NOT NULL,
  `tech` varchar(45) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `msunit` (
  `idunit` varchar(10) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `opnamedt` (
  `noop` varchar(30) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `opnamehd` (
  `noop` varchar(30) NOT NULL,
  `idcompany` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `trgetpartdt` (
  `nogp` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `trgetpartdt2` (
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `trgetparthd` (
  `nogp` varchar(20) NOT NULL,
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `trprdt` (
  `nopr` varchar(20) NOT NULL,
  `idpart` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `idunit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `wrschedule` (
  `nowr` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `iddivisi` varchar(10) DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `trwr` (
  `nowr` varchar(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `idcomputer` varchar(15) DEFAULT NULL,
  `idtech` varchar(5) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `idcompany` varchar(10) DEFAULT NULL,
  `iddivisi` varchar(10) DEFAULT NULL,
  `signature` varchar(45) DEFAULT NULL,
  `datesignature` date DEFAULT NULL,
  `assign` varchar(45) DEFAULT NULL,
  `issue` text,
  `alasan` text,
  `status` varchar(45) DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `getpart` varchar(30) DEFAULT NULL,
  `request` varchar(30) DEFAULT NULL,
  `vendor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `trrrhd` (
  `norr` varchar(20) NOT NULL,
  `nopr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `trrrdt` (
  `norr` varchar(20) DEFAULT NULL,
  `idpart` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `idunit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `trprhd` (
  `nopr` varchar(20) NOT NULL,
  `nowr` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `mscompany`
  ADD PRIMARY KEY (`idcompany`);

ALTER TABLE `mscomputer`
  ADD PRIMARY KEY (`idcomputer`);

ALTER TABLE `mslogin`
  ADD PRIMARY KEY (`idlogin`);

ALTER TABLE `mspart`
  ADD PRIMARY KEY (`idpart`);

ALTER TABLE `mstech`
  ADD PRIMARY KEY (`idtech`);

ALTER TABLE `msunit`
  ADD PRIMARY KEY (`idunit`);

ALTER TABLE `opnamehd`
  ADD PRIMARY KEY (`noop`);

ALTER TABLE `trgetparthd`
  ADD PRIMARY KEY (`nogp`);

ALTER TABLE `trprhd`
  ADD PRIMARY KEY (`nopr`);

ALTER TABLE `trrrhd`
  ADD PRIMARY KEY (`norr`);

ALTER TABLE `trwr`
  ADD PRIMARY KEY (`nowr`);


INSERT INTO `mscompany` (`idcompany`, `company`, `address`, `phone`, `alias`, `logo`, `active`, `ip`) VALUES
('ipak', 'PT. Inti Plastik Aneka Karet', 'Jl. Manis V No. 18', '021-5918118', 'IPAK', 'ipak.jpg', 'Y', NULL),
('vip', 'PT. Vortex Interplasindo', 'Jl. Manis Raya No. 7-9', '021-5916388', 'VIP', 'vip.jpg', 'Y', NULL);


INSERT INTO `msdivisi` (`iddivisi`, `divisi`, `idcompany`, `utama`, `leader`, `location`, `pin`, `email`) VALUES
('SAS', 'Injection Plastik', 'ipak', 'Y', 'Drajat', 'Jl Manis V - Tangerang', '9a78f2779fa53128aa0eccefffb5761c', 'opunk.janie@gmail.com'),
('AGP', 'Rubber', 'ipak', 'Y', 'Mulyono', 'Jl Manis V - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'mul.rubber@gmail.com'),
('TOP', 'Injection 2', 'ipak', 'N', 'Yance', 'Pasar Kemis - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'yance.prodfac@gmail.com'),
('VIP', 'Injection', 'vip', 'Y', 'Basuki', 'Jl Manis Raya - Tangerang', 'e10adc3949ba59abbe56e057f20f883e', 'basuki@gmail.com'),
('HELM', 'Helm', 'vip', 'Y', 'Triyono', 'Jl Manis Raya', 'e10adc3949ba59abbe56e057f20f883e', 'tri.helm@gmail.com'),
('MOT', 'Injection 2', 'vip', 'N', 'Timbul', 'Cikupa', 'e10adc3949ba59abbe56e057f20f883e', 'timbul@gmail.com'),
('HO1', 'Kantor', 'ipak', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id'),
('HO2', 'Kantor', 'vip', 'N', 'Wina', 'Graha Kencana Kebon Jeruk', 'e10adc3949ba59abbe56e057f20f883e', 'wina_accho@yahoo.co.id');


INSERT INTO `mscomputer` (`idcomputer`, `computer`, `os`, `antivirus`, `expired`, `user`, `motherboard`, `processor`, `ram`, `hdd`, `vga`, `casing`, `monitor`, `printer`, `keyboard`, `mouse`, `other`, `iddivisi`, `remark`, `date`, `updatedate`, `ipaddress`) VALUES
('inj-adm1', 'AdminProd 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Papah', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Admin Produksi 1 SAS', '2016-07-18', NULL, '192.168.20.25'),
('inj-adm2', 'AdminWrhs 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Heppy', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L310', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Admin Gudang 1 SAS', '2016-07-18', NULL, '192.168.20.27'),
('inj-hrd', 'HRD - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Anita', 'Asus h61m-e', 'Intel Core i3 2.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu HRD IPAK', '2016-07-18', NULL, '192.168.20.31'),
('inj-it', 'IT - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Gofur', 'Mobo LGA775', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'epson lx300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu IT IPAK', '2016-07-18', NULL, '192.168.20.32'),
('inj-kas', 'Kas - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Kiki', 'Gigabyte G4SE', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kas SAS', '2016-07-18', NULL, '192.168.20.21'),
('inj-lgt1', 'Logistic 1 - INJ', 'Windows XP', 'Avast', '2017-06-06', 'Thomas', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 512Mb', 'HDD 80 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Alat Timbangan', 'SAS', 'CPU Logistik & Timbangan SAS', '2016-07-18', NULL, '192.168.20.11'),
('inj-lgt2', 'Logistic 2 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Thomas', 'Asus P5G41TM_LX', 'Intel Dual Core 2.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Logistic 2 SAS', '2016-07-18', NULL, '192.168.20.12'),
('inj-ped', 'PED 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Pri', 'Asus P5G41TM_LX', 'Intel Dual Core 2.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', '512 Mb', 'Power Logic 450W', 'LCD 15"', 'Epson L310', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PED 1 SAS', '2016-07-18', NULL, '192.168.20.26'),
('inj-ppic1', 'PPIC 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Laras', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu PPIC 1 SAS', '2016-07-18', NULL, '192.168.20.23'),
('inj-prod1', 'Produksi - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Drajat', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kepala Produksi SAS', '2016-07-18', NULL, '192.168.20.22'),
('inj-qa', 'QA - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Dani', 'Mobo LGA775', 'Intel Dual Core 3.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson l110', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu QA IPAK', '2016-07-18', NULL, '192.168.20.33'),
('inj-qc1', 'QC 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Indri', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu QC 1 SAS', '2016-07-18', NULL, '192.168.20.24'),
('inj-whs1', 'Warehouse 1 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Lasta', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'HP Deskjet', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Kepala Gudang SAS', '2016-07-18', NULL, '192.168.20.13'),
('inj-whs2', 'Warehouse 2 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Nomi', 'Asus P5G41TM_LX', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang SAS', '2016-07-18', NULL, '192.168.20.41'),
('inj-whs3', 'Warehouse 3 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Soleh', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang Laci 1 SAS', '2016-07-18', NULL, '192.168.20.42'),
('inj-whs4', 'Warehouse 4 - INJ', 'Windows 7', 'Avast', '2017-06-06', 'Arianto', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Gudang Laci 2 SAS', '2016-07-18', NULL, '192.168.20.43'),
('inj2-adm1', 'AdminWrhs - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Wastari', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.21'),
('inj2-adm2', 'AdminProd - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Sukma', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Admin produksi TOP', '2016-07-18', NULL, '192.168.21.32'),
('inj2-hrd', 'HRD - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Endang', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu HRD TOP', '2016-07-18', NULL, '192.168.21.33'),
('inj2-modem', 'Modem - INJ2', 'no', 'no', '2017-06-06', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Modem Internet TOP', '2016-07-18', NULL, '192.168.1.1'),
('inj2-ppic', 'PPIC - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Hegar', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu PPIC TOP', '2016-07-18', NULL, '192.168.21.31'),
('inj2-prod', 'Produksi - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Yance', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu Kepala Produksi TOP', '2016-07-18', NULL, '192.168.21.11'),
('inj2-qc', 'QC - INJ2', 'Windows 7', 'Avast', '2017-06-06', 'Yasir', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'TOP', 'Cpu QC TOP', '2016-07-18', NULL, '192.168.21.34'),
('inj2-rtr1', 'RouterWifi 1 - INJ2', 'no', 'no', '2017-06-06', 'no', 'tplink', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TOP', 'Router Wifi 1 TOP', '2016-07-18', NULL, '192.168.21.1'),
('ipak-modem', 'Modem - IPAK', 'no', 'no', '2017-06-06', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Modem Internet IPAK', '2016-07-18', NULL, '192.168.1.1'),
('ipak-net', 'Internet - IPAK', 'Windows 7', 'Avast', '2017-06-06', 'Umum', 'Varrio', 'Intel Dual Core 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L120', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'SAS', 'Cpu Internet & printing Center untuk Umum', '2016-07-18', NULL, '192.168.20.5'),
('ipak-rtr1', 'RouterWifi 1 - IPAK', 'no', 'no', '2017-06-06', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'SAS', 'Router Wifi 1 IPAK', '2016-07-18', NULL, '192.168.20.3'),
('ipak-srv1', 'Server 1 - IPAK', 'Windows Server 2003', 'no', '2020-01-01', 'IT', 'Asus P5G43T-M', 'Intel Core2Duo 3.0 Ghz', 'DDR3 1Gb', 'HDD 80 Gb', 'No', 'Power Logic 450W', 'CRT', 'share', 'logitech ps2', 'logitech usb', 'Lan Card D-Link', 'SAS', 'CPU Server Internet 1 IPAK', '2016-07-18', NULL, '192.168.20.1'),
('ipak-srv2', 'Server 2 - IPAK', 'Windows 7', 'Avast', '2017-06-06', 'IT', 'Asus P5G43T-M', 'Intel Core2Duo 3.0 Ghz', 'DDR3 1Gb', 'HDD 250 Gb', 'No', 'Power Logic 450W', 'share CRT', 'share', 'Share logitech ps2', 'Share logitech usb', 'Lan Card D-Link', 'SAS', 'CPU Server Internet 2 - IPAK', '2016-07-18', NULL, '192.168.20.2'),
('rub-adm1', 'AdminProd 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Fitri', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 1 AGP', '2016-07-18', NULL, '192.168.20.62'),
('rub-adm2', 'AdminProd 2 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Ema', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Produksi 2 AGP', '2016-07-18', NULL, '192.168.20.63'),
('rub-adm3', 'AdminWrhs - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Sutris', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Admin Gudang 2 AGP', '2016-07-18', NULL, '192.168.20.64'),
('rub-lab1', 'Lab 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Lala', 'Asus p5gc-mx', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 1 AGP', '2016-07-18', NULL, '192.168.20.51'),
('rub-lab2', 'Lab 2 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Lala', 'Mobo LGA 1155', 'Intel Core i3 2.0 Ghz', 'DDR3 2Gb', 'HDD 500 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 2 AGP', '2016-07-18', NULL, '192.168.20.52'),
('rub-lab3', 'Lab 3 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Vini', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Laboratorium Karet 3 AGP', '2016-07-18', NULL, '192.168.20.53'),
('rub-mix', 'Mixing - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Mulyono', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson LX300', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Mixing AGP', '2016-07-18', NULL, '192.168.20.66'),
('rub-ppic1', 'PPIC 1 - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Ayu', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'Epson L100', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu PPIC 1 AGP', '2016-07-18', NULL, '192.168.20.61'),
('rub-prod', 'Produksi - RUB', 'Windows 7', 'Avast', '2017-06-06', 'Mulyono', 'gigabyte', 'Intel Dual Core 2.0 Ghz', 'DDR2 1Gb', 'HDD 160 Gb', 'No', 'Power Logic 450W', 'LCD 15"', 'share', 'logitech ps2', 'logitech usb', 'Wifi usb Lan', 'AGP', 'Cpu Kepala Produksi AGP', '2016-07-18', NULL, '192.168.20.65');


INSERT INTO `mslocation` (`idlocation`, `idcompany`, `location`, `address`) VALUES
('lcipak1', 'ipak', 'Kawasan Manis - Jatake', 'Jl. Manis V No. 18, Jatiuwung Banten'),
('lcipak2', 'ipak', 'TOP-Pasar Kemis', 'Jl. Pasar Kemis Raya, Banten'),
('lcipak3', 'ipak', 'HO-I', 'Ruko Pinangsia Blok I'),
('lcipak4', 'ipak', 'HO-L', 'Ruko Pinangsia Blok L'),
('lcipak5', 'ipak', 'Graha Kencana', 'Komplek Graha Kencana, Kebon Jeruk Jakarta Barat');



INSERT INTO `mslogin` (`idlogin`, `password`, `active`, `idcompany`, `idtech`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Y', 'ALL', 'ALL'),
('gofur', 'e28c4514a9fdf386f8a01e0b46cbceda', 'Y', 'ALL', 'IT1'),
('ipak', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ipak', NULL),
('vip', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'vip', NULL);



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


INSERT INTO `mspartstock` (`idpart`, `date`, `stock`, `idcompany`, `idunit`) VALUES
('DDR21', '2016-07-24', 0, 'ipak', 'pcs'),
('DDR22', '2016-07-24', 0, 'ipak', 'pcs'),
('DDR32', '2016-07-24', 0, 'ipak', 'pcs'),
('DDR34', '2016-07-24', 0, 'ipak', 'pcs'),
('HDD1000', '2016-07-24', 0, 'ipak', 'pcs'),
('HDD160', '2016-07-24', 0, 'ipak', 'pcs'),
('HDD2000', '2016-07-24', 0, 'ipak', 'pcs'),
('HDD250', '2016-07-24', 0, 'ipak', 'pcs'),
('HDD500', '2016-07-24', 0, 'ipak', 'pcs'),
('HDD80', '2016-07-24', 0, 'ipak', 'pcs'),
('PRC1', '2016-07-24', 0, 'ipak', 'pcs'),
('PRC2', '2016-07-24', 0, 'ipak', 'pcs'),
('PRC3', '2016-07-24', 0, 'ipak', 'pcs'),
('WINXP', '2016-07-24', 0, 'ipak', 'pcs'),
('DDR21', '2016-07-29', 0, 'ipak', 'pcs'),
('DDR22', '2016-07-29', 0, 'ipak', 'pcs'),
('DDR32', '2016-07-29', 0, 'ipak', 'pcs'),
('DDR34', '2016-07-29', 0, 'ipak', 'pcs'),
('HDD1000', '2016-07-29', 0, 'ipak', 'pcs'),
('HDD160', '2016-07-29', 0, 'ipak', 'pcs'),
('HDD2000', '2016-07-29', 0, 'ipak', 'pcs'),
('HDD250', '2016-07-29', 0, 'ipak', 'pcs'),
('HDD500', '2016-07-29', 0, 'ipak', 'pcs'),
('HDD80', '2016-07-29', 0, 'ipak', 'pcs'),
('PRC1', '2016-07-29', 0, 'ipak', 'pcs'),
('PRC2', '2016-07-29', 0, 'ipak', 'pcs'),
('PRC3', '2016-07-29', 0, 'ipak', 'pcs'),
('WINXP', '2016-07-29', 0, 'ipak', 'pcs'),
('DDR21', '2016-07-29', 0, 'vip', 'pcs'),
('DDR22', '2016-07-29', 0, 'vip', 'pcs'),
('DDR31', '2016-07-29', 0, 'vip', 'pcs'),
('DDR32', '2016-07-29', 0, 'vip', 'pcs'),
('DDR34', '2016-07-29', 0, 'vip', 'pcs'),
('HDD1000', '2016-07-29', 0, 'vip', 'pcs'),
('HDD160', '2016-07-29', 0, 'vip', 'pcs'),
('HDD2000', '2016-07-29', 0, 'vip', 'pcs'),
('HDD250', '2016-07-29', 0, 'vip', 'pcs'),
('HDD500', '2016-07-29', 0, 'vip', 'pcs'),
('HDD80', '2016-07-29', 0, 'vip', 'pcs'),
('PRC1', '2016-07-29', 0, 'vip', 'pcs'),
('PRC2', '2016-07-29', 0, 'vip', 'pcs'),
('PRC3', '2016-07-29', 0, 'vip', 'pcs'),
('WINXP', '2016-07-29', 0, 'vip', 'pcs'),
('PSU45', '2016-07-30', 0, 'vip', 'pcs'),
('PSU50', '2016-07-30', 0, 'ipak', 'pcs'),
('PSU50', '2016-07-30', 0, 'vip', 'pcs'),
('DDR21', '2016-07-31', 1, 'ipak', 'pcs'),
('HDD2000', '2016-07-31', 5, 'ipak', 'pcs'),
('HDD250', '2016-07-31', 1, 'ipak', 'pcs'),
('HDD500', '2016-07-31', 4, 'ipak', 'pcs'),
('PRC1', '2016-07-31', 1, 'ipak', 'pcs'),
('PRC2', '2016-07-31', 1, 'ipak', 'pcs'),
('WINXP', '2016-07-31', 20, 'ipak', 'cd'),
('HDD500', '2016-08-01', 2, 'ipak', 'pcs'),
('HDD2000', '2016-08-02', 2, 'ipak', 'pcs'),
('HDD500', '2016-08-01', 1, 'vip', 'pcs'),
('WINXP', '2016-08-01', 10, 'vip', 'cd'),
('DDR21', '2016-08-02', 2, 'ipak', 'pcs'),
('KYB', '2016-08-03', 0, 'ipak', 'pcs'),
('KYB', '2016-08-03', 0, 'vip', 'pcs'),
('MOS', '2016-08-03', 0, 'ipak', 'pcs'),
('MOS', '2016-08-03', 0, 'vip', 'pcs'),
('CSG', '2016-08-03', 0, 'ipak', 'pcs'),
('CSG', '2016-08-03', 0, 'vip', 'pcs'),
('CSG', '2016-08-03', 3, 'ipak', 'pcs'),
('DDR21', '2016-08-03', 2, 'ipak', 'pcs'),
('HDD2000', '2016-08-03', 2, 'ipak', 'pcs'),
('HDD250', '2016-08-03', 1, 'ipak', 'pcs'),
('HDD500', '2016-08-03', 2, 'ipak', 'pcs'),
('PRC1', '2016-08-03', 1, 'ipak', 'pcs'),
('PRC2', '2016-08-03', 1, 'ipak', 'pcs'),
('WINXP', '2016-08-03', 20, 'ipak', 'cd'),
('CSG', '2016-08-04', 3, 'ipak', 'pcs'),
('DDR21', '2016-08-04', 1, 'ipak', 'pcs'),
('HDD2000', '2016-08-04', 1, 'ipak', 'pcs'),
('HDD500', '2016-08-04', 4, 'ipak', 'pcs'),
('PRC1', '2016-08-04', 3, 'ipak', 'pcs'),
('WINXP', '2016-08-04', 20, 'ipak', 'cd'),
('MB775', '2016-08-08', 0, 'vip', 'pcs'),
('MB1150', '2016-08-08', 0, 'ipak', 'pcs'),
('MB1150', '2016-08-08', 0, 'vip', 'pcs'),
('MB1155', '2016-08-08', 0, 'ipak', 'pcs'),
('MB1155', '2016-08-08', 0, 'vip', 'pcs'),
('DDR31', '2016-06-06', 1, 'ipak', 'pcs'),
('MB775', '2016-06-06', 1, 'ipak', 'pcs'),
('MB775', '2016-06-07', 0, 'ipak', 'pcs'),
('DDR31', '2016-06-07', 0, 'ipak', 'pcs'),
('PSU45', '2016-06-07', 1, 'ipak', 'pcs'),
('PSU45', '2016-06-08', 0, 'ipak', 'pcs');


INSERT INTO `mstech` (`idtech`, `tech`, `remark`, `email`, `active`, `leader`) VALUES
('IT1', 'IT support', 'IT & Support', 'it.vip001@gmail.com', 'Y', 'Achmad Gofur'),
('IT2', 'IT Software & System', 'Software Development', 'opunk.janie@gmail.com', 'N', 'Hasanah'),
('MN1', 'Maintenance Mesin', 'Maintenance Tehnik Mesin', 'maintenance@ipak.go.id', 'N', NULL);


INSERT INTO `msunit` (`idunit`, `unit`, `remark`) VALUES
('pcs', 'Pieces', NULL),
('set', 'Set', NULL),
('unt', 'Unit', NULL);


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
('OPIPAK/2016-08/0002', 'WINXP', 20, 'cd');



INSERT INTO `opnamehd` (`noop`, `idcompany`, `tanggal`, `keterangan`) VALUES
('OPIPAK/2016-07/0001', 'ipak', '2016-07-31', ''),
('OPIPAK/2016-08/0001', 'ipak', '2016-08-03', ''),
('OPIPAK/2016-08/0002', 'ipak', '2016-08-04', ''),
('OPVIP/2016-08/0001', 'vip', '2016-08-01', '');



INSERT INTO `trgetpartdt` (`nogp`, `idpart`, `qty`, `idunit`, `remark`) VALUES
('GPSAS/2016-06/0001', 'MB775', 1, 'pcs', ''),
('GPSAS/2016-06/0001', 'DDR31', 1, 'pcs', ''),
('GPSAS/2016-06/0002', 'PSU45', 1, 'pcs', '');


INSERT INTO `trgetparthd` (`nogp`, `nowr`, `date`, `remark`) VALUES
('GPSAS/2016-06/0001', 'WRIPAK/2016-06/0001', '2016-06-07', NULL),
('GPSAS/2016-06/0002', 'WRIPAK/2016-06/0002', '2016-06-08', NULL);



INSERT INTO `trprdt` (`nopr`, `idpart`, `qty`, `idunit`) VALUES
('PRSAS/2016-06/0001', 'MB775', 1, 'pcs'),
('PRSAS/2016-06/0001', 'DDR31', 1, 'pcs'),
('PRSAS/2016-06/0002', 'PSU45', 1, 'pcs');


INSERT INTO `trprhd` (`nopr`, `nowr`, `tanggal`, `remark`, `status`) VALUES
('PRSAS/2016-06/0001', 'WRIPAK/2016-06/0001', '2016-06-03', '', 'C'),
('PRSAS/2016-06/0002', 'WRIPAK/2016-06/0002', '2016-06-03', '', 'C');



INSERT INTO `trrrdt` (`norr`, `idpart`, `qty`, `idunit`) VALUES
('RRSAS/2016-06/0001', 'DDR31', 1, 'pcs'),
('RRSAS/2016-06/0001', 'MB775', 1, 'pcs'),
('RRSAS/2016-08/0001', 'PSU45', 1, 'pcs');


INSERT INTO `trrrhd` (`norr`, `nopr`, `tanggal`, `remark`) VALUES
('RRSAS/2016-06/0001', 'PRSAS/2016-06/0001', '2016-06-06', ''),
('RRSAS/2016-08/0001', 'PRSAS/2016-06/0002', '2016-06-07', '');


INSERT INTO `trwr` (`nowr`, `date`, `idcomputer`, `idtech`, `user`, `idcompany`, `iddivisi`, `signature`, `datesignature`, `assign`, `issue`, `alasan`, `status`, `closedate`, `getpart`, `request`, `vendor`) VALUES
('WRIPAK/2016-06/0001', '2016-06-01 00:00:00', 'inj-whs2', 'IT1', 'Nomi', 'ipak', 'SAS', 'Drajat', '2016-06-01', 'gofur', 'CPU Mati Total', 'Matherboard Rusak', 'CO', '2016-06-07 00:00:00', 'GPSAS/2016-06/0001', 'PRSAS/2016-06/0001', NULL),
('WRIPAK/2016-06/0002', '2016-06-01 00:00:00', 'inj-prod1', 'IT1', 'Drajat', 'ipak', 'SAS', 'Drajat', '2016-06-01', 'gofur', 'Power OFF', 'Power Supply Rusak.', 'CO', '2016-06-08 00:00:00', 'GPSAS/2016-06/0002', 'PRSAS/2016-06/0002', NULL),
('WRIPAK/2016-06/0003', '2016-06-02 00:00:00', 'inj-ppic1', 'IT1', 'Laras', 'ipak', 'SAS', 'Drajat', '2016-06-02', 'gofur', 'Share Data Gagal.', 'Wifi Router Overheat.', 'CO', '2016-06-06 00:00:00', NULL, NULL, NULL),
('WRIPAK/2016-06/0004', '2016-06-02 00:00:00', 'rub-ppic1', 'IT1', 'Fitri', 'ipak', 'AGP', 'Mulyono', '2016-06-02', 'gofur', 'Email di Outlook Ga bisa.', 'Wifi Router Overheat.', 'CO', '2016-06-06 00:00:00', NULL, NULL, NULL),
('WRIPAK/2016-06/0005', '2016-06-02 00:00:00', 'rub-adm2', 'IT1', 'Ema', 'ipak', 'AGP', 'Mulyono', '2016-06-02', 'gofur', 'Print Laporan ga bisa.', 'Wifi USB Cpu Lepas', 'CO', '2016-08-09 00:00:00', NULL, NULL, NULL);



INSERT INTO `wrschedule` (`nowr`, `date`, `idcompany`, `iddivisi`, `schedule`) VALUES
('WRIPAK/2016-06/0001', '2016-06-03', 'ipak', NULL, 1),
('WRIPAK/2016-06/0002', '2016-06-03', 'ipak', NULL, 1),
('WRIPAK/2016-06/0003', '2016-06-06', 'ipak', NULL, 1),
('WRIPAK/2016-06/0004', '2016-06-07', 'ipak', NULL, 1),
('WRIPAK/2016-06/0005', '2016-06-07', 'ipak', NULL, 1),
('WRIPAK/2016-06/0001', '2016-06-07', 'ipak', NULL, 2),
('WRIPAK/2016-06/0002', '2016-06-08', 'ipak', NULL, 2);


