-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jan 22, 2019 at 05:02 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cabang`
--

-- --------------------------------------------------------

--
-- Table structure for table `t0101_cabang`
--

CREATE TABLE `t0101_cabang` (
  `id` int(11) NOT NULL,
  `Cabang` varchar(100) NOT NULL,
  `NamaDB` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t9901_employees`
--

CREATE TABLE `t9901_employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `TitleOfCourtesy` varchar(25) DEFAULT NULL,
  `BirthDate` datetime DEFAULT NULL,
  `HireDate` datetime DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `HomePhone` varchar(24) DEFAULT NULL,
  `Extension` varchar(4) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Notes` longtext,
  `ReportsTo` int(11) DEFAULT NULL,
  `Password` varchar(50) NOT NULL DEFAULT '',
  `UserLevel` int(11) DEFAULT NULL,
  `Username` varchar(20) NOT NULL DEFAULT '',
  `Activated` enum('Y','N') NOT NULL DEFAULT 'N',
  `Profile` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t9901_employees`
--

INSERT INTO `t9901_employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Email`, `Photo`, `Notes`, `ReportsTo`, `Password`, `UserLevel`, `Username`, `Activated`, `Profile`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', -1, 'admin', 'N', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t9902_userlevels`
--

CREATE TABLE `t9902_userlevels` (
  `userlevelid` int(11) NOT NULL,
  `userlevelname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t9902_userlevels`
--

INSERT INTO `t9902_userlevels` (`userlevelid`, `userlevelname`) VALUES
(-2, 'Anonymous'),
(-1, 'Administrator'),
(0, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `t9903_userlevelpermissions`
--

CREATE TABLE `t9903_userlevelpermissions` (
  `userlevelid` int(11) NOT NULL,
  `tablename` varchar(255) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t9903_userlevelpermissions`
--

INSERT INTO `t9903_userlevelpermissions` (`userlevelid`, `tablename`, `permission`) VALUES
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}cf01_home.php', 8),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t01_nasabah', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t02_jaminan', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t03_pinjaman', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t04_pinjamanangsuran', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t05_pinjamanjaminan', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t06_pinjamantitipan', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t94_log', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t95_logdesc', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t96_employees', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t97_userlevels', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t98_userlevelpermissions', 0),
(-2, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t99_audittrail', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}cf01_home.php', 8),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0101_koperasi', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0102_marketing', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0201_nasabah', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0202_jaminan', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0301_pinjaman', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0302_angsuran', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0303_titipan', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0304_potongan', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0401_periode', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0402_rekening', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0403_rektran', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0404_jurnal', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0405_neraca', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0406_labarugi', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t9901_employees', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t9902_userlevels', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t9903_userlevelpermissions', 0),
(-2, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t9904_audittrail', 0),
(-2, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t0101_cabang', 8),
(-2, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9901_employees', 0),
(-2, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9902_userlevels', 0),
(-2, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9903_userlevelpermissions', 0),
(-2, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9904_audittrail', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}cf01_home.php', 8),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}cf02_tutupbuku.php', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t01_nasabah', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t02_jaminan', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t03_pinjaman', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t04_pinjamanangsuran', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t04_pinjamanangsurantemp', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t05_pinjamanjaminan', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t06_pinjamantitipan', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t07_marketing', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t08_pinjamanpotongan', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t92_periodeold', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t93_periode', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t94_log', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t95_logdesc', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t96_employees', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t97_userlevels', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t98_userlevelpermissions', 0),
(-2, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t99_audittrail', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0101_koperasi', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0102_marketing', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0201_nasabah', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0202_jaminan', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0301_pinjaman', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0302_angsuran', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0303_titipan', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0304_potongan', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0401_periode', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0402_rekening', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0403_rektran', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0404_jurnal', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0405_neraca', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t0406_labarugi', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t9901_employees', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t9902_userlevels', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t9903_userlevelpermissions', 0),
(-2, '{eaf50425-cc33-46cf-b663-218852e2416e}t9904_audittrail', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}cf01_home.php', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t01_nasabah', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t02_jaminan', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t03_pinjaman', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t04_pinjamanangsuran', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t05_pinjamanjaminan', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t06_pinjamantitipan', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t94_log', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t95_logdesc', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t96_employees', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t97_userlevels', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t98_userlevelpermissions', 0),
(0, '{1F4EE816-E057-4A7E-9024-5EA4446B7598}t99_audittrail', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}cf01_home.php', 8),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0101_koperasi', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0102_marketing', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0201_nasabah', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0202_jaminan', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0301_pinjaman', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0302_angsuran', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0303_titipan', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0304_potongan', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0401_periode', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0402_rekening', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0403_rektran', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0404_jurnal', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0405_neraca', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t0406_labarugi', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t9901_employees', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t9902_userlevels', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t9903_userlevelpermissions', 0),
(0, '{723112A7-6795-416E-B2AF-D90AA7A8CCFB}t9904_audittrail', 0),
(0, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t0101_cabang', 8),
(0, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9901_employees', 0),
(0, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9902_userlevels', 0),
(0, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9903_userlevelpermissions', 0),
(0, '{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9904_audittrail', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}cf01_home.php', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}cf02_tutupbuku.php', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t01_nasabah', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t02_jaminan', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t03_pinjaman', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t04_pinjamanangsuran', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t04_pinjamanangsurantemp', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t05_pinjamanjaminan', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t06_pinjamantitipan', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t07_marketing', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t08_pinjamanpotongan', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t92_periodeold', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t93_periode', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t94_log', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t95_logdesc', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t96_employees', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t97_userlevels', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t98_userlevelpermissions', 0),
(0, '{C5FF1E3B-3DAB-4591-8A48-EB66171DE031}t99_audittrail', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0101_koperasi', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0102_marketing', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0201_nasabah', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0202_jaminan', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0301_pinjaman', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0302_angsuran', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0303_titipan', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0304_potongan', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0401_periode', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0402_rekening', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0403_rektran', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0404_jurnal', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0405_neraca', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t0406_labarugi', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t9901_employees', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t9902_userlevels', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t9903_userlevelpermissions', 0),
(0, '{eaf50425-cc33-46cf-b663-218852e2416e}t9904_audittrail', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t9904_audittrail`
--

CREATE TABLE `t9904_audittrail` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `script` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `keyvalue` longtext,
  `oldvalue` longtext,
  `newvalue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t9904_audittrail`
--

INSERT INTO `t9904_audittrail` (`id`, `datetime`, `script`, `user`, `action`, `table`, `field`, `keyvalue`, `oldvalue`, `newvalue`) VALUES
(1, '2019-01-22 23:00:46', '/cabang/login.php', 'admin', 'login', '::1', '', '', '', ''),
(2, '2019-01-22 23:01:36', '/cabang/logout.php', 'admin', 'logout', '::1', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t0101_cabang`
--
ALTER TABLE `t0101_cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t9901_employees`
--
ALTER TABLE `t9901_employees`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `t9902_userlevels`
--
ALTER TABLE `t9902_userlevels`
  ADD PRIMARY KEY (`userlevelid`);

--
-- Indexes for table `t9903_userlevelpermissions`
--
ALTER TABLE `t9903_userlevelpermissions`
  ADD PRIMARY KEY (`userlevelid`,`tablename`);

--
-- Indexes for table `t9904_audittrail`
--
ALTER TABLE `t9904_audittrail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t0101_cabang`
--
ALTER TABLE `t0101_cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t9901_employees`
--
ALTER TABLE `t9901_employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t9904_audittrail`
--
ALTER TABLE `t9904_audittrail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
