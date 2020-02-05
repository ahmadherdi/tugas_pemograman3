-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2020 pada 10.53
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_prog3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang`
--

CREATE TABLE `t_barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_kategory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama`, `id_kategory`) VALUES
('ac1', 'acer one', 'lap02'),
('ap1', 'apple macbook', 'lap02'),
('azl', 'asus zenfone', 'hp01'),
('ca1', 'cannon eos 5d', 'cam04'),
('ca2', 'cannon eos 4000d', 'cam04'),
('ca4', 'cannon power shot', 'cam04'),
('ca5', 'cannon power shot g3', 'cam04'),
('da', 'da quake core', 'pc01'),
('delo', 'dell optiplek', 'lap02'),
('hp1000', 'hp 1000', 'lap02'),
('hpc', 'hp compaq', 'lap02'),
('ip6', 'iphone 6', 'hp01'),
('ip6s', 'iphone 6s', 'hp01'),
('lei', 'lenovo ideapad', 'lap02'),
('lel', 'lenovo legion', 'lap02'),
('let', 'lenovo thinkpad', 'lap02'),
('ley', 'lenovo yoga 730', 'lap02'),
('lg1', 'lg led smart', 'tv03'),
('mu', 'mugen amd', 'pc01'),
('nik', 'nikon d850', 'cam04'),
('nik2', 'nikon d750', 'cam04'),
('nik3', 'nikon d3500', 'cam04'),
('pan1', 'panasonic led', 'tv03'),
('pav', 'acer verition', 'pc01'),
('php', 'hp pro one', 'pc01'),
('pol1', 'polytron led ', 'tv03'),
('sa1', 'sony alpha a6000', 'cam04'),
('sam1', 'samsung led curved', 'tv03'),
('sj2', 'samsung j2', 'hp01'),
('so1', 'sony led', 'tv03'),
('so2', 'sony led 32', 'tv03'),
('ss1', 'samsung s1', 'hp01'),
('tal', 'talitakum 1200', 'pc01'),
('tosc', 'toshiba satelite c5', 'lap02'),
('tosl', 'toshiba satelite l5', 'lap02'),
('xis1', 'xiaomi s1', 'hp01'),
('zy1', 'zyrex navigator', 'pc01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategory`
--

CREATE TABLE `t_kategory` (
  `id_kategory` varchar(10) NOT NULL,
  `nama_kat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_kategory`
--

INSERT INTO `t_kategory` (`id_kategory`, `nama_kat`) VALUES
('cam04', 'camera'),
('hp01', 'handphone'),
('lap02', 'laptop'),
('pc01', 'PC'),
('tv03', 'televisi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_transfer`
--

CREATE TABLE `t_transfer` (
  `id_transfer` varchar(10) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `no_transfer` int(10) NOT NULL,
  `Tgl` date NOT NULL,
  `Qty` int(10) NOT NULL,
  `Harga` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_transfer`
--

INSERT INTO `t_transfer` (`id_transfer`, `id_barang`, `id_user`, `no_transfer`, `Tgl`, `Qty`, `Harga`) VALUES
('t0001', 'ac1', 'ab1', 1, '2020-01-02', 2, '100000'),
('t0002', 'ss1', 'ah1', 2, '2020-02-02', 1, '50000'),
('t0003', 'ap1', 'and1', 3, '2020-02-04', 1, '200000'),
('t0004', 'ca1', 'ar1', 4, '2020-02-04', 2, '100000'),
('t0005', 'ca1', 'bel1', 5, '2020-02-05', 2, '150000'),
('t0006', 'ca2', 'bu1', 6, '2020-02-05', 1, '150000'),
('t0007', 'ca5', 'bu2', 7, '2020-02-05', 2, '100000'),
('t0008', 'da', 'ca1', 8, '2020-02-06', 1, '200000'),
('t0009', 'delo', 'ca2', 9, '2020-02-06', 3, '150000'),
('t0010', 'hp1000', 'ca2', 10, '2020-02-06', 1, '150000'),
('t0011', 'hpc', 'de1', 11, '2020-02-07', 2, '150000'),
('t0012', 'ip6', 'dev2', 12, '2020-02-02', 1, '100000'),
('t0013', '1p6s', 'ed1', 13, '2020-02-03', 2, '100000'),
('t0014', 'lei', 'er1', 14, '2020-02-02', 1, '200000'),
('t0015', 'lel', 'ki1', 15, '2020-02-02', 2, '200000'),
('t0016', 'let', 'lu1', 16, '2020-02-03', 1, '200000'),
('t0017', 'ley', 'lu1', 17, '2020-02-03', 2, '200000'),
('t0018', 'lg1', 'ra1', 18, '2020-02-04', 1, '200000'),
('t0019', 'mu', 'ra1', 19, '2020-02-05', 1, '200000'),
('t0020', 'nik', 'ro1', 20, '2020-02-04', 1, '150000'),
('t0021', 'nik2', 'ron1', 21, '2020-02-02', 2, '150000'),
('t0022', 'nik3', 'sit1', 22, '2020-02-03', 1, '150000'),
('t0023', 'ss1', 'ab1', 21, '2020-02-03', 2, '100000'),
('t0024', 'ip6', 'bu1', 24, '2020-02-03', 1, '200000'),
('t0025', 'ss1', 'ro1', 25, '2020-02-04', 1, '100000'),
('t0026', 'ss1', 'ca1', 26, '2020-02-03', 1, '100000'),
('t0027', 'ss1', 'ab1', 27, '2020-02-02', 2, '100000'),
('t0028', 'ss1', 'ab1', 28, '2020-02-03', 1, '100000'),
('t0029', 'ss1', 'ah1', 29, '2020-02-02', 1, '100000'),
('t0030', 'ip6', 'ah1', 30, '2020-02-02', 1, '100000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id_user` char(10) NOT NULL,
  `nama_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`) VALUES
('aa1', 'ahmad aherdi'),
('ab1', 'abdul muksin'),
('ah1', 'ahmad noval'),
('and1', 'andika maharani'),
('ar1', 'arizal'),
('ba1', 'bani'),
('bel1', 'bella labirin'),
('bu1', 'budi darma'),
('bu2', 'budi setiawan'),
('bun1', 'bunga citra'),
('ca1', 'cahyadi'),
('ca2', 'camelia'),
('de1', 'desi santika'),
('dev2', 'devi luri'),
('ed1', 'edward'),
('er1', 'ery suadi'),
('ki1', 'kiky nur'),
('lu1', 'luffy falsafah'),
('ra1', 'rayleight'),
('ro1', 'roger d gol'),
('ron1', 'rony'),
('sit1', 'siti nurfaizah'),
('yu1', 'yudi'),
('yu2', 'yuda');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_kategory` (`id_kategory`);

--
-- Indeks untuk tabel `t_kategory`
--
ALTER TABLE `t_kategory`
  ADD PRIMARY KEY (`id_kategory`);

--
-- Indeks untuk tabel `t_transfer`
--
ALTER TABLE `t_transfer`
  ADD PRIMARY KEY (`id_transfer`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
