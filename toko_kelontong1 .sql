-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 04:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_kelontong1`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `nama_pengguna` varchar(30) NOT NULL,
  `kata_sandi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `nama_pengguna` varchar(30) NOT NULL,
  `kata_sandi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `idBarang` char(5) NOT NULL,
  `idetalase` int(3) NOT NULL,
  `NamaBarang` varchar(30) DEFAULT NULL,
  `HargaBeli` int(10) DEFAULT NULL,
  `HargaJual` int(10) DEFAULT NULL,
  `stock` int(20) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `IndexNo` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`idBarang`, `idetalase`, `NamaBarang`, `HargaBeli`, `HargaJual`, `stock`, `tanggal`, `IndexNo`) VALUES
('TB1', 0, 'minyak', 5000, 6000, 10, '2021-12-15 19:21:08', 1),
('TB11', 4, 'mobil mobilan', 12000, 15000, 5, '2021-12-23 21:47:43', 11),
('TB12', 4, 'bola', 4000, 5000, 5, '2021-12-23 21:48:38', 12),
('TB13', 4, 'boneka', 15000, 20000, 3, '2021-12-23 21:49:11', 13),
('TB16', 5, 'sapu', 5000, 6000, 13, '2021-12-23 21:52:40', 16),
('TB17', 5, 'penggorengan', 25000, 30000, 7, '2021-12-23 21:53:05', 17),
('TB18', 5, 'ember', 6000, 7000, 8, '2021-12-23 21:53:23', 18),
('TB19', 6, 'pensil', 2000, 3000, 20, '2021-12-23 21:54:06', 19),
('TB2', 0, 'kecap', 2000, 2500, 12, '2021-12-23 21:40:54', 2),
('TB20', 6, 'bolpoin', 2000, 3000, 30, '2021-12-23 21:57:08', 20),
('TB21', 6, 'penggaris', 3000, 4000, 12, '2021-12-23 21:57:57', 21),
('TB22', 7, 'pampers', 6000, 7000, 8, '2021-12-23 21:58:46', 22),
('TB23', 7, 'bedak bayi', 12000, 13000, 6, '2021-12-23 21:59:30', 23),
('TB24', 7, 'kaos kaki bayi', 7000, 8000, 12, '2021-12-23 22:01:14', 24),
('TB25', 8, 'gayung', 4500, 5000, 12, '2021-12-23 22:01:37', 25),
('TB26', 8, 'sabun', 1500, 2500, 12, '2021-12-23 22:02:49', 26),
('TB27', 8, 'shampo', 13000, 14000, 10, '2021-12-23 22:05:14', 27),
('TB3', 0, 'garam', 2000, 2500, 10, '2021-12-23 21:41:14', 3),
('TB4', 1, 'tango', 1500, 2000, 10, '2021-12-23 21:42:52', 4),
('TB5', 1, 'nabati', 1500, 2000, 10, '2021-12-23 21:43:12', 5),
('TB6', 1, 'better ', 500, 1000, 20, '2021-12-23 21:43:39', 6),
('TB7', 2, 'fanta', 3000, 4000, 12, '2021-12-23 21:44:36', 7),
('TB8', 2, 'sprite', 3000, 4000, 15, '2021-12-23 21:44:53', 8),
('TB9', 2, 'pocari sweat', 5000, 6000, 21, '2021-12-23 21:46:15', 9);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_etalase`
--

CREATE TABLE `jenis_etalase` (
  `id_etalase` int(3) NOT NULL,
  `jenis_etalase` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_etalase`
--

INSERT INTO `jenis_etalase` (`id_etalase`, `jenis_etalase`) VALUES
(0, 'Sembako'),
(1, 'Makanan Ringan'),
(2, 'Minuman'),
(3, 'Obat-obatan'),
(4, 'Mainan'),
(5, 'Kebutuhan Rumah Tangga'),
(6, 'Alat Tulis'),
(7, 'Perlengkapan Bayi'),
(8, 'Perlengkapan Mandi');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `idpenjualan` int(5) NOT NULL,
  `idbarang` char(5) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`idpenjualan`, `idbarang`, `harga`, `jumlah`, `tanggal_transaksi`) VALUES
(29, 'TB2', '2500', '2', '2021-12-23 22:12:19'),
(30, 'TB19', '3000', '5', '2021-12-23 22:12:43'),
(31, 'TB26', '2500', '2', '2021-12-23 22:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_beli`
--

CREATE TABLE `transaksi_beli` (
  `id_transaksibeli` char(5) NOT NULL,
  `idBarang` char(5) NOT NULL,
  `indexNo` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_beli`
--

INSERT INTO `transaksi_beli` (`id_transaksibeli`, `idBarang`, `indexNo`) VALUES
('TF1', 'TB1', 1),
('TF11', 'TB11', 11),
('TF12', 'TB12', 12),
('TF13', 'TB13', 13),
('TF16', 'TB16', 16),
('TF17', 'TB17', 17),
('TF18', 'TB18', 18),
('TF19', 'TB19', 19),
('TF2', 'TB2', 2),
('TF20', 'TB20', 20),
('TF21', 'TB21', 21),
('TF22', 'TB22', 22),
('TF23', 'TB23', 23),
('TF24', 'TB24', 24),
('TF25', 'TB25', 25),
('TF26', 'TB26', 26),
('TF27', 'TB27', 27),
('TF3', 'TB3', 3),
('TF4', 'TB4', 4),
('TF5', 'TB5', 5),
('TF6', 'TB6', 6),
('TF7', 'TB7', 7),
('TF8', 'TB8', 8),
('TF9', 'TB9', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`nama_pengguna`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD KEY `nama_pengguna` (`nama_pengguna`);

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`idBarang`),
  ADD KEY `idetalase` (`idetalase`);

--
-- Indexes for table `jenis_etalase`
--
ALTER TABLE `jenis_etalase`
  ADD PRIMARY KEY (`id_etalase`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idpenjualan`),
  ADD KEY `idbarang` (`idbarang`);

--
-- Indexes for table `transaksi_beli`
--
ALTER TABLE `transaksi_beli`
  ADD PRIMARY KEY (`id_transaksibeli`),
  ADD KEY `idBarang` (`idBarang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_etalase`
--
ALTER TABLE `jenis_etalase`
  MODIFY `id_etalase` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `idpenjualan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar`
--
ALTER TABLE `daftar`
  ADD CONSTRAINT `daftar_ibfk_1` FOREIGN KEY (`nama_pengguna`) REFERENCES `akun` (`nama_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD CONSTRAINT `data_barang_ibfk_1` FOREIGN KEY (`idetalase`) REFERENCES `jenis_etalase` (`id_etalase`),
  ADD CONSTRAINT `data_barang_ibfk_2` FOREIGN KEY (`idetalase`) REFERENCES `jenis_etalase` (`id_etalase`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`idbarang`) REFERENCES `data_barang` (`idBarang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_beli`
--
ALTER TABLE `transaksi_beli`
  ADD CONSTRAINT `transaksi_beli_ibfk_1` FOREIGN KEY (`idBarang`) REFERENCES `data_barang` (`idBarang`),
  ADD CONSTRAINT `transaksi_beli_ibfk_2` FOREIGN KEY (`idBarang`) REFERENCES `data_barang` (`idBarang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
