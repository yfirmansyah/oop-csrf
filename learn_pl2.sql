-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 01:41 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `learn_pl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `npm` int(6) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`) VALUES
(12, 'asas'),
(110602, 'Saepudin'),
(110608, 'Deni Pangale');

-- --------------------------------------------------------

--
-- Table structure for table `pbo_pegawai`
--

CREATE TABLE IF NOT EXISTS `pbo_pegawai` (
  `nip` int(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jns_kel` char(1) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status` char(1) NOT NULL,
  `mulai_kerja` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pbo_pegawai`
--

INSERT INTO `pbo_pegawai` (`nip`, `nama`, `jns_kel`, `tgl_lahir`, `status`, `mulai_kerja`) VALUES
(132442, 'Dani Anggoro', 'L', '2021-09-08', 'M', '2021-09-15'),
(132443, 'Dani Anggara', 'L', '2000-09-08', 'M', '2021-09-06'),
(12345678, 'Ranndi', 'L', '2012-01-02', 'B', '2021-09-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
 ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `pbo_pegawai`
--
ALTER TABLE `pbo_pegawai`
 ADD PRIMARY KEY (`nip`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
