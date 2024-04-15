-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2024 at 02:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gelamangweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `tanggal_daftar` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `fullname`, `email`, `password`, `role`, `tanggal_daftar`) VALUES
(1, 'sabardi', 'sabardibahari@gmail.com', '12345', 'admin', '2024-04-14 15:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `categori`
--

CREATE TABLE `categori` (
  `idkategori` int(11) NOT NULL,
  `kategori` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categori`
--

INSERT INTO `categori` (`idkategori`, `kategori`) VALUES
(1, 'sosial'),
(2, 'budaya'),
(3, 'kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idartikel` int(11) NOT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `judul` varchar(30) DEFAULT NULL,
  `opening` varchar(250) DEFAULT NULL,
  `artikel` varchar(1000) DEFAULT NULL,
  `foto1` varchar(250) DEFAULT NULL,
  `foto2` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idartikel`, `idkategori`, `judul`, `opening`, `artikel`, `foto1`, `foto2`) VALUES
(1, 1, 'pebagian jumat berkah', 'Setiap Jumat adalah', 'Setiap Jumat adalah kesempatan untuk membuat perbedaan. Sumbangkan sebagian dari apa yang Anda miliki dalam kegiatan donasi \'Jumat Berkah\' kami dan jadilah alasan tersenyum bagi mereka yang membutuhkan.', 'GelamangBerbagi.jpg', 'gelamang2.jpg'),
(3, 1, 'pebagian jumat berkah', 'Setiap Jumat adalah', 'Setiap Jumat adalah kesempatan untuk membuat perbedaan. Sumbangkan sebagian dari apa yang Anda miliki dalam kegiatan donasi \'Jumat Berkah\' kami dan jadilah alasan tersenyum bagi mereka yang membutuhkan.', 'gelamang.jpg', 'gelamang2.jpg'),
(4, 1, 'pebagian jumat berkah', 'Setiap Jumat adalah', 'Setiap Jumat adalah kesempatan untuk membuat perbedaan. Sumbangkan sebagian dari apa yang Anda miliki dalam kegiatan donasi \'Jumat Berkah\' kami dan jadilah alasan tersenyum bagi mereka yang membutuhkan.', 'gelamang.jpg', 'gelamang2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `categori`
--
ALTER TABLE `categori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idartikel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categori`
--
ALTER TABLE `categori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idartikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
