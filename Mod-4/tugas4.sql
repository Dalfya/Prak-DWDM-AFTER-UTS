-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2022 at 05:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas4`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_asal`
--

CREATE TABLE `data_asal` (
  `waktu` date NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga` int(45) NOT NULL,
  `jumlah` int(45) NOT NULL,
  `pembeli` varchar(255) NOT NULL,
  `nama_wilayah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_asal`
--

INSERT INTO `data_asal` (`waktu`, `nama_barang`, `harga`, `jumlah`, `pembeli`, `nama_wilayah`) VALUES
('2010-03-26', 'Celana Standar Print Lasem', 55000, 17, 'Ibu Hadi Sukarni', 'Jawa Barat'),
('2010-06-14', 'Bahan Beludru Cap Mahkota', 500000, 1, 'Ibu Tyas', 'Jawa Tengah'),
('2010-11-21', 'Hem Sutra Print Rama', 100000, 5, 'Ibu Tyas', 'Jawa Tengah'),
('2011-01-05', 'Kaos Katun Print Bola', 60000, 1, 'Bapak Imron', 'Jawa Barat'),
('2011-03-27', 'Bahan Standar Cap Lasem', 120000, 8, 'Ibu Siti Arya', 'Jawa Barat'),
('2011-04-09', 'Hem Katun Print Kawung', 70000, 3, 'Ibu Harini', 'Jawa Timur'),
('2011-08-19', 'Hem Standar Tulis Madura', 550000, 5, 'Ibu Atik', 'Jawa Tengah'),
('2011-10-13', 'Sarimbit Stadar Print Lukis', 150000, 1, 'Ibu Hatamah', 'Jawa Timur'),
('2011-12-28', 'Jarik Standar Print Sogan', 225000, 2, 'Bapak Ketut', 'Bali'),
('2011-12-30', 'Bolero Standar Cap Sidomukti', 225000, 1, 'Ibu Hatamah', 'Jawa Timur'),
('2012-01-04', 'Kaos Batik Cap Lukis', 30000, 14, 'Ibu Harini', 'Jawa Timur'),
('2012-01-09', 'Jam Standar Print Lukis', 80000, 44, 'Ibu Siti Arya', 'Jawa Barat'),
('2012-02-14', 'Celana Standar Cap Warna', 55000, 17, 'Ibu Hadi Sukarni', 'Jawa Barat'),
('2012-04-05', 'Bahan Standar Cap Garis', 135000, 7, 'Ibu Tyas', 'Jawa Tengah'),
('2012-04-06', 'Jarik Standar Tulis Sarimbit', 40000, 4, 'Ibu Harini', 'Jawa Timur'),
('2012-05-21', 'Hem Katun Print Kelengan', 299000, 3, 'Bapak Totok', 'Jawa Timur'),
('2012-06-22', 'Bahan Lawasan Tulis Tolet', 130000, 1, 'Ibu Niken', 'Jawa Tengah'),
('2012-09-18', 'Batik Standar Cap Tumpal', 150000, 1, 'Bapak Heru', 'Jawa Timur'),
('2012-09-28', 'Hem Standar Cap Tumpal', 100000, 1, 'Ibu Aini Kasmaji', 'Jawa Tengah'),
('2012-12-15', 'Rok Batik Print Kombinasi', 225000, 1, 'Ibu Siti Arya', 'Jawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `data_fakta`
--

CREATE TABLE `data_fakta` (
  `bulan` int(45) NOT NULL,
  `kuartal` int(45) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `nama_subkategori` varchar(255) NOT NULL,
  `kode_pola` varchar(255) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `kode_gender` varchar(255) NOT NULL,
  `nama_wilayah` varchar(255) NOT NULL,
  `jumlah` int(45) NOT NULL,
  `harga` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_fakta`
--

INSERT INTO `data_fakta` (`bulan`, `kuartal`, `tahun`, `nama_produk`, `nama_kategori`, `nama_subkategori`, `kode_pola`, `nama_pelanggan`, `kode_gender`, `nama_wilayah`, `jumlah`, `harga`) VALUES
(12, 4, 2011, 'Jarik Standar Print Sogan', 'Standar', 'Jarik', 'Print', 'Bapak Ketut', 'PRIA', 'Bali', 2, 225000),
(1, 1, 2012, 'Kaos Batik Cap Lukis', 'Batik', 'Kaos', 'Cap', 'Ibu Harini', 'WANITA', 'Jawa Timur', 14, 30000),
(4, 2, 2012, 'Jarik Standar Tulis Sarimbit', 'Standar', 'Jarik', 'Tulis', 'Ibu Harini', 'WANITA', 'Jawa Timur', 4, 40000),
(4, 2, 2011, 'Hem Katun Print Kawung', 'Katun', 'Hem', 'Print', 'Ibu Harini', 'WANITA', 'Jawa Timur', 3, 70000),
(9, 3, 2012, 'Batik Standar Cap Tumpal', 'Standar', 'Batik', 'Cap', 'Bapak Heru', 'PRIA', 'Jawa Timur', 1, 150000),
(5, 2, 2012, 'Hem Katun Print Kawung', 'Katun', 'Hem', 'Print', 'Bapak Totok', 'PRIA', 'Jawa Timur', 3, 299000),
(12, 4, 2011, 'Bolero Standar Cap Sidomukti', 'Standar', 'Bolero', 'Cap', 'Ibu Hatamah', 'WANITA', 'Jawa Timur', 1, 225000),
(10, 4, 2011, 'Sarimbit Stadar Print Lukis', 'Standar', 'Sarimbit', 'Print', 'Ibu Hatamah', 'WANITA', 'Jawa Timur', 1, 150000),
(1, 1, 2011, 'Kaos Katun Print Bola', 'Katun', 'Kaos', 'Print', 'Bapak Imron', 'PRIA', 'Jawa Barat', 1, 60000),
(2, 1, 2012, 'Celana Standar Cap Warna', 'Standar', 'Celana', 'Cap', 'Ibu Hadi Sukarni', 'WANITA', 'Jawa Barat', 17, 55000),
(3, 1, 2010, 'Celana Standar Print Lasem', 'Standar', 'Celana', 'Print', 'Ibu Hadi Sukarni', 'WANITA', 'Jawa Barat', 17, 55000),
(3, 1, 2011, 'Bahan Standar Cap Lasem', 'Standar', 'Bahan', 'Cap', 'Ibu Siti Arya', 'WANITA', 'Jawa Barat', 8, 120000),
(12, 4, 2012, 'Rok Batik Print Kombinasi', 'Batik', 'Rok', 'Print', 'Ibu Siti Arya', 'WANITA', 'Jawa Barat', 1, 225000),
(1, 1, 2012, 'Jam Standar Print Lukis', 'Standar', 'Jam', 'Print', 'Ibu Siti Arya', 'WANITA', 'Jawa Barat', 44, 80000),
(9, 3, 2012, 'Hem Standar Cap Tumpal', 'Standar', 'Hem', 'Cap', 'Ibu Aini Kasmaji', 'WANITA', 'Jawa Tengah', 1, 100000),
(6, 2, 2012, 'Bahan Lawasan Tulis Tolet', 'Lawasan', 'Bahan', 'Tulis', 'Ibu Niken', 'WANITA', 'Jawa Tengah', 1, 130000),
(8, 3, 2011, 'Hem Standar Tulis Madura', 'Standar', 'Hem', 'Tulis', 'Ibu Atik', 'WANITA', 'Jawa Tengah', 5, 550000),
(4, 2, 2012, 'Bahan Standar Cap Lasem', 'Standar', 'Bahan', 'Cap', 'Ibu Tyas', 'WANITA', 'Jawa Tengah', 7, 135000),
(6, 2, 2010, 'Bahan Beludru Cap Mahkota', 'Beludru', 'Bahan', 'Cap', 'Ibu Tyas', 'WANITA', 'Jawa Tengah', 1, 500000),
(11, 4, 2010, 'Hem Sutra Print Rama', 'Sutra', 'Hem', 'Print', 'Ibu Tyas', 'WANITA', 'Jawa Tengah', 5, 100000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
