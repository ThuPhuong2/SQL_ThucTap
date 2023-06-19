-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 11:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuctap`
--

-- --------------------------------------------------------

--
-- Table structure for table `detai`
--

CREATE TABLE `detai` (
  `madt` char(10) NOT NULL,
  `tendt` char(30) NOT NULL,
  `kinhphi` int(11) NOT NULL,
  `noithuctap` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detai`
--

INSERT INTO `detai` (`madt`, `tendt`, `kinhphi`, `noithuctap`) VALUES
('Dt01', 'GIS', 100, 'Nghe An'),
('Dt02', 'ARC GIS', 500, 'Nam Dinh'),
('Dt03', 'Spatial DB', 100, 'Ha Tinh'),
('Dt04', 'MAP', 300, 'Quang Binh');

-- --------------------------------------------------------

--
-- Table structure for table `giangvien`
--

CREATE TABLE `giangvien` (
  `magv` int(30) DEFAULT NULL,
  `hotengv` char(30) NOT NULL,
  `luong decimal` int(10) NOT NULL,
  `makhoa char` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giangvien`
--

INSERT INTO `giangvien` (`magv`, `hotengv`, `luong decimal`, `makhoa char`) VALUES
(11, '0', 700, 0),
(12, '0', 500, 0),
(13, '0', 650, 0),
(14, '0', 500, 0),
(15, '0', 900, 0);

-- --------------------------------------------------------

--
-- Table structure for table `huongdan`
--

CREATE TABLE `huongdan` (
  `masv` int(11) NOT NULL,
  `madt` char(10) NOT NULL,
  `magv` int(11) NOT NULL,
  `ketqua decimal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `huongdan`
--

INSERT INTO `huongdan` (`masv`, `madt`, `magv`, `ketqua decimal`) VALUES
(1, 'Dt01', 13, 8),
(2, 'Dt03', 14, 0),
(3, 'Dt03', 12, 10),
(5, 'Dt04', 14, 7),
(6, 'Dt01', 13, 0),
(7, 'Dt04', 11, 10),
(8, 'Dt03', 15, 6);

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `makhoa` char(10) NOT NULL,
  `tenkhoa` char(30) NOT NULL,
  `dienthoai` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`makhoa`, `tenkhoa`, `dienthoai`) VALUES
('Geo', 'Dia ly va QLTN', '3855413'),
('Math', 'Toan', '3855411'),
('Bio', 'Cong nghe Sinh hoc', '3855412');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masv` int(11) NOT NULL,
  `hotensv` char(30) NOT NULL,
  `makhoa` char(10) NOT NULL,
  `namsinh` int(11) NOT NULL,
  `quequan` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`masv`, `hotensv`, `makhoa`, `namsinh`, `quequan`) VALUES
(1, 'Le Van Sao', 'Bio', 1990, 'Nghe An'),
(2, 'Nguyen Thi My', 'Geo', 1990, 'Thanh Hoa'),
(3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'),
(4, 'Nguyen Van Tung', 'Bio', 0, 'Ha Tinh'),
(5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'),
(6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'),
(7, 'Le Thi Van', 'Math', 0, 'null'),
(8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
