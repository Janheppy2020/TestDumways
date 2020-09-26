-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Sep 2020 pada 16.35
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `produsen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `importir_tb`
--

CREATE TABLE IF NOT EXISTS `importir_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `importir_tb`
--

INSERT INTO `importir_tb` (`id`, `name`, `address`, `phone`) VALUES
(1, 'sepeda1', 'Jl.Ahmad Yani', '082378986654');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id` int(11) NOT NULL,
  `name_produk` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `importir` varchar(20) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `name_produk`, `price`, `stock`, `importir`, `gambar`) VALUES
(1, 'sepeda 1', 2000000, 1, 'PT.Dumbways', ''),
(2, 'sepeda 2', 3000000, 3, 'PT.Dumways', ''),
(3, 'sepeda 3', 4000000, 3, 'PT.Dumbways', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_tb`
--

CREATE TABLE IF NOT EXISTS `produk_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `importir` varchar(20) NOT NULL,
  `photo` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_tb`
--

INSERT INTO `produk_tb` (`id`, `name`, `importir`, `photo`, `qty`, `price`) VALUES
(1, 'sepeda1', 'PT.Dumways', 1, 1, 2000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `importir_tb`
--
ALTER TABLE `importir_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_tb`
--
ALTER TABLE `produk_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `importir_tb`
--
ALTER TABLE `importir_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `produk_tb`
--
ALTER TABLE `produk_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
