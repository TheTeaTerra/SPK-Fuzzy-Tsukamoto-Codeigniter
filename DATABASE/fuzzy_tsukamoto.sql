-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 11:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuzzy_tsukamoto`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id_dataset` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `permintaan` int(11) NOT NULL,
  `produksi` int(11) NOT NULL,
  `penjualan` int(11) NOT NULL,
  `persediaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id_dataset`, `id_user`, `tanggal`, `permintaan`, `produksi`, `penjualan`, `persediaan`) VALUES
(1, 1, '2021-01-01', 1735, 850, 1850, 2585),
(2, 1, '2021-02-01', 2119, 900, 2200, 3019),
(3, 1, '2021-03-01', 2100, 1050, 2350, 3150),
(4, 1, '2021-04-01', 2000, 750, 2200, 2750),
(5, 1, '2021-05-01', 2400, 1200, 2556, 3600),
(6, 1, '2021-06-01', 1990, 650, 2180, 2640),
(7, 1, '2021-07-01', 1842, 1300, 2080, 3142),
(8, 1, '2021-08-01', 1290, 950, 1800, 2240),
(9, 1, '2021-09-01', 2400, 700, 2500, 3100),
(10, 1, '2021-10-01', 2300, 1000, 2400, 3300),
(11, 1, '2021-11-01', 2100, 1050, 2240, 3150),
(12, 1, '2021-12-01', 2300, 1000, 2500, 3300);

-- --------------------------------------------------------

--
-- Table structure for table `data_hitung_rules_fuzzy`
--

CREATE TABLE `data_hitung_rules_fuzzy` (
  `id_hitung` int(11) NOT NULL,
  `id_uji` int(11) NOT NULL,
  `id_rules` int(11) NOT NULL,
  `hitung_permintaan` float NOT NULL,
  `hitung_produk` float NOT NULL,
  `hitung_penjualan` float NOT NULL,
  `minn` float NOT NULL,
  `hitung_persediaan` float NOT NULL,
  `prediksi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_hitung_rules_fuzzy`
--

INSERT INTO `data_hitung_rules_fuzzy` (`id_hitung`, `id_uji`, `id_rules`, `hitung_permintaan`, `hitung_produk`, `hitung_penjualan`, `minn`, `hitung_persediaan`, `prediksi`) VALUES
(17, 2, 1, 0.36036, 0.846154, 0.73545, 0.36036, 3109.91, 1120.69),
(18, 2, 2, 0.36036, 0.846154, 0.73545, 0.36036, 2730.09, 983.815),
(19, 2, 3, 0.36036, 0.846154, 0.26455, 0.26455, 3240.21, 857.198),
(20, 2, 4, 0.36036, 0.846154, 0.26455, 0.26455, 2599.79, 687.774),
(21, 2, 5, 0.36036, 0.153846, 0.73545, 0.153846, 3390.77, 521.656),
(22, 2, 6, 0.36036, 0.153846, 0.73545, 0.153846, 2449.23, 376.804),
(23, 2, 7, 0.36036, 0.153846, 0.26455, 0.153846, 3390.77, 521.656),
(24, 2, 8, 0.36036, 0.153846, 0.26455, 0.153846, 2449.23, 376.804),
(25, 2, 9, 0.63964, 0.846154, 0.73545, 0.63964, 2730.09, 1746.27),
(26, 2, 10, 0.63964, 0.846154, 0.73545, 0.63964, 3109.91, 1989.22),
(27, 2, 11, 0.63964, 0.846154, 0.26455, 0.26455, 3240.21, 857.198),
(28, 2, 12, 0.63964, 0.846154, 0.26455, 0.26455, 2599.79, 687.774),
(29, 2, 13, 0.63964, 0.153846, 0.73545, 0.153846, 3390.77, 521.656),
(30, 2, 14, 0.63964, 0.153846, 0.73545, 0.153846, 2449.23, 376.804),
(31, 2, 15, 0.63964, 0.153846, 0.26455, 0.153846, 3390.77, 521.656),
(32, 2, 16, 0.63964, 0.153846, 0.26455, 0.153846, 2449.23, 376.804),
(34, 5, 1, 0.990991, 1.23077, 0.73545, 0.73545, 2599.79, 1912.01),
(35, 5, 2, 0.990991, 1.23077, 0.73545, 0.73545, 3240.21, 2383.01),
(36, 5, 3, 0.990991, 1.23077, 0.26455, 0.26455, 3240.21, 857.198),
(37, 5, 4, 0.990991, 1.23077, 0.26455, 0.26455, 2599.79, 687.774),
(38, 5, 5, 0.990991, -0.230769, 0.73545, -0.230769, 3913.85, -903.194),
(39, 5, 6, 0.990991, -0.230769, 0.73545, -0.230769, 1926.15, -444.497),
(40, 5, 7, 0.990991, -0.230769, 0.26455, -0.230769, 3913.85, -903.194),
(41, 5, 8, 0.990991, -0.230769, 0.26455, -0.230769, 1926.15, -444.497),
(42, 5, 9, 0.00900901, 1.23077, 0.73545, 0.00900901, 3587.75, 32.3221),
(43, 5, 10, 0.00900901, 1.23077, 0.73545, 0.00900901, 2252.25, 20.2906),
(44, 5, 11, 0.00900901, 1.23077, 0.26455, 0.00900901, 3587.75, 32.3221),
(45, 5, 12, 0.00900901, 1.23077, 0.26455, 0.00900901, 2252.25, 20.2906),
(46, 5, 13, 0.00900901, -0.230769, 0.73545, -0.230769, 3913.85, -903.194),
(47, 5, 14, 0.00900901, -0.230769, 0.73545, -0.230769, 1926.15, -444.497),
(48, 5, 15, 0.00900901, -0.230769, 0.26455, -0.230769, 3913.85, -903.194),
(49, 5, 16, 0.00900901, -0.230769, 0.26455, -0.230769, 1926.15, -444.497),
(50, 6, 1, -9.95496, -17.1477, -29.0714, -29.0714, 43137.1, -1254060),
(51, 6, 2, -9.95496, -17.1477, -29.0714, -29.0714, -37297.1, 1084280),
(52, 6, 3, -9.95496, -17.1477, 30.0714, -17.1477, 26920.9, -461631),
(53, 6, 4, -9.95496, -17.1477, 30.0714, -17.1477, -21080.9, 361488),
(54, 6, 5, -9.95496, 18.1477, -29.0714, -29.0714, 43137.1, -1254060),
(55, 6, 6, -9.95496, 18.1477, -29.0714, -29.0714, -37297.1, 1084280),
(56, 6, 7, -9.95496, 18.1477, 30.0714, -9.95496, 17138.7, -170616),
(57, 6, 8, -9.95496, 18.1477, 30.0714, -9.95496, -11298.7, 112479),
(58, 6, 9, 10.955, -17.1477, -29.0714, -29.0714, 43137.1, -1254060),
(59, 6, 10, 10.955, -17.1477, -29.0714, -29.0714, -37297.1, 1084280),
(60, 6, 11, 10.955, -17.1477, 30.0714, -17.1477, 26920.9, -461631),
(61, 6, 12, 10.955, -17.1477, 30.0714, -17.1477, -21080.9, 361488),
(62, 6, 13, 10.955, 18.1477, -29.0714, -29.0714, 43137.1, -1254060),
(63, 6, 14, 10.955, 18.1477, -29.0714, -29.0714, -37297.1, 1084280),
(64, 6, 15, 10.955, 18.1477, 30.0714, 10.955, -11298.8, -123778),
(65, 6, 16, 10.955, 18.1477, 30.0714, 10.955, 17138.8, 187756);

-- --------------------------------------------------------

--
-- Table structure for table `data_nilai_keanggotaan`
--

CREATE TABLE `data_nilai_keanggotaan` (
  `id_nilai` int(11) NOT NULL,
  `id_uji` int(11) NOT NULL,
  `keanggotaan` varchar(50) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_nilai_keanggotaan`
--

INSERT INTO `data_nilai_keanggotaan` (`id_nilai`, `id_uji`, `keanggotaan`, `nilai`) VALUES
(1, 2, 'permintaan_min', 0.36036),
(2, 2, 'permintaan_max', 0.63964),
(4, 2, 'produksi_max', 0.153846),
(5, 2, 'penjualan_min', 0.73545),
(6, 2, 'penjualan_max', 0.26455),
(13, 5, 'permintaan_min', 0.990991),
(14, 5, 'permintaan_max', 0.00900901),
(15, 5, 'produksi_min', 1.23077),
(16, 5, 'produksi_max', -0.230769),
(17, 5, 'penjualan_min', 0.73545),
(18, 5, 'penjualan_max', 0.26455),
(19, 2, 'produksi_min', 0.846154),
(20, 6, 'permintaan_min', -9.95496),
(21, 6, 'permintaan_max', 10.955),
(22, 6, 'produksi_min', -17.1477),
(23, 6, 'produksi_max', 18.1477),
(24, 6, 'penjualan_min', -29.0714),
(25, 6, 'penjualan_max', 30.0714);

-- --------------------------------------------------------

--
-- Table structure for table `data_uji`
--

CREATE TABLE `data_uji` (
  `id_uji` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `permintaan_uji` int(11) NOT NULL,
  `produksi_uji` int(11) NOT NULL,
  `penjualan_uji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_uji`
--

INSERT INTO `data_uji` (`id_uji`, `id_user`, `permintaan_uji`, `produksi_uji`, `penjualan_uji`) VALUES
(2, 1, 2000, 750, 2000),
(5, 1, 1300, 500, 2000),
(6, 1, 13450, 12446, 24534);

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usernname` varchar(50) NOT NULL,
  `passsword` varchar(50) NOT NULL,
  `status` enum('ADMIN','USER') NOT NULL DEFAULT 'ADMIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `nama_user`, `email`, `usernname`, `passsword`, `status`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'admin', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_fuzzy_tsukamoto`
--

CREATE TABLE `hasil_fuzzy_tsukamoto` (
  `id_fuzzy` int(11) NOT NULL,
  `id_uji` int(11) NOT NULL,
  `hasil_fuzzy` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil_fuzzy_tsukamoto`
--

INSERT INTO `hasil_fuzzy_tsukamoto` (`id_fuzzy`, `id_uji`, `hasil_fuzzy`) VALUES
(1, 2, 2920),
(3, 5, 2919.96),
(4, 6, 2920.04);

-- --------------------------------------------------------

--
-- Table structure for table `rule_fuzzy`
--

CREATE TABLE `rule_fuzzy` (
  `id_rule` int(11) NOT NULL,
  `rules` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rule_fuzzy`
--

INSERT INTO `rule_fuzzy` (`id_rule`, `rules`) VALUES
(1, 'IF Permintaan TURUN And Produksi SEDIKIT And Penjualan RENDAH THEN Persediaan BERKURANG'),
(2, 'IF Permintaan TURUN And Produksi SEDIKIT And Penjualan RENDAH THEN Persediaan BERTAMBAH'),
(3, 'IF Permintaan TURUN And Produksi SEDIKIT And Penjualan TINGGI THEN Persediaan BERKURANG'),
(4, 'IF Permintaan TURUN And Produksi SEDIKIT And Penjualan TINGGI THEN Persediaan BERTAMBAH '),
(5, 'IF Permintaan TURUN And Produksi BANYAK And Penjualan RENDAH THEN Persediaan BERKURANG'),
(6, 'IF Permintaan TURUN And Produksi BANYAK And Penjualan RENDAH THEN Persediaan BERTAMBAH'),
(7, 'IF Permintaan TURUN And Persediaan BANYAK And Penjualan TINGGI THEN Produksi BERKURANG'),
(8, 'IF Permintaan TURUN And Produksi BANYAK And Penjualan TINGGI THEN Persediaan BERTAMBAH '),
(9, 'IF Permintaan NAIK And Persediaan SEDIKIT And Penjualan RENDAH THEN Produksi BERKURANG'),
(10, 'IF Permintaan NAIK And Produksi SEDIKIT And Penjualan RENDAH THEN Persediaan BERTAMBAH'),
(11, 'IF Permintaan NAIK And Produksi SEDIKIT And Penjualan TINGGI THEN Persediaan BERKURANG'),
(12, 'IF Permintaan NAIK And Produksi SEDIKIT And Penjualan TINGGI THEN Persediaan BERTAMBAH'),
(13, 'IF Permintaan NAIK And Persediaan BANYAK And Penjualan RENDAH THEN Produksi BERKURANG'),
(14, 'IF Permintaan NAIK And Produksi BANYAK And Penjualan RENDAH THEN Persediaan BERTAMBAH'),
(15, 'IF Permintaan NAIK And Produksi BANYAK And Penjualan TINGGI THEN Persediaan BERKURANG'),
(16, 'IF Permintaan NAIK And Produksi BANYAK And Penjualan TINGGI THEN Persediaan BERTAMBAH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id_dataset`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `data_hitung_rules_fuzzy`
--
ALTER TABLE `data_hitung_rules_fuzzy`
  ADD PRIMARY KEY (`id_hitung`) USING BTREE,
  ADD KEY `id_uji` (`id_uji`),
  ADD KEY `id_rules` (`id_rules`);

--
-- Indexes for table `data_nilai_keanggotaan`
--
ALTER TABLE `data_nilai_keanggotaan`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_uji` (`id_uji`);

--
-- Indexes for table `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id_uji`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `hasil_fuzzy_tsukamoto`
--
ALTER TABLE `hasil_fuzzy_tsukamoto`
  ADD PRIMARY KEY (`id_fuzzy`),
  ADD KEY `id_uji` (`id_uji`);

--
-- Indexes for table `rule_fuzzy`
--
ALTER TABLE `rule_fuzzy`
  ADD PRIMARY KEY (`id_rule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id_dataset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_hitung_rules_fuzzy`
--
ALTER TABLE `data_hitung_rules_fuzzy`
  MODIFY `id_hitung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `data_nilai_keanggotaan`
--
ALTER TABLE `data_nilai_keanggotaan`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id_uji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hasil_fuzzy_tsukamoto`
--
ALTER TABLE `hasil_fuzzy_tsukamoto`
  MODIFY `id_fuzzy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dataset`
--
ALTER TABLE `dataset`
  ADD CONSTRAINT `FK_dataset_data_user` FOREIGN KEY (`id_user`) REFERENCES `data_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `data_hitung_rules_fuzzy`
--
ALTER TABLE `data_hitung_rules_fuzzy`
  ADD CONSTRAINT `FK_data_hitung_rules_fuzzy_data_uji` FOREIGN KEY (`id_uji`) REFERENCES `data_uji` (`id_uji`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_data_hitung_rules_fuzzy_rule_fuzzy` FOREIGN KEY (`id_rules`) REFERENCES `rule_fuzzy` (`id_rule`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `data_nilai_keanggotaan`
--
ALTER TABLE `data_nilai_keanggotaan`
  ADD CONSTRAINT `FK_data_nilai_keanggotaan_data_uji` FOREIGN KEY (`id_uji`) REFERENCES `data_uji` (`id_uji`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `data_uji`
--
ALTER TABLE `data_uji`
  ADD CONSTRAINT `FK_data_uji_data_user` FOREIGN KEY (`id_user`) REFERENCES `data_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hasil_fuzzy_tsukamoto`
--
ALTER TABLE `hasil_fuzzy_tsukamoto`
  ADD CONSTRAINT `FK_hasil_fuzzy_tsukamoto_data_uji` FOREIGN KEY (`id_uji`) REFERENCES `data_uji` (`id_uji`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
