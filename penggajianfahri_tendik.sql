-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2025 at 02:40 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajianfahri_tendik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `nama_admin` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`, `foto`) VALUES
(1, 'Admin 1', 'admin1', 'pass1', 'foto_admin1.jpg'),
(2, 'Admin 2', 'admin2', 'pass2', 'foto_admin2.jpg'),
(3, 'Admin 3', 'admin3', 'pass3', 'foto_admin3.jpg'),
(4, 'Admin 4', 'admin4', 'pass4', 'foto_admin4.jpg'),
(5, 'Admin 5', 'admin5', 'pass5', 'foto_admin5.jpg'),
(6, 'Admin 6', 'admin6', 'pass6', 'foto_admin6.jpg'),
(7, 'Admin 7', 'admin7', 'pass7', 'foto_admin7.jpg'),
(8, 'Admin 8', 'admin8', 'pass8', 'foto_admin8.jpg'),
(9, 'Admin 9', 'admin9', 'pass9', 'foto_admin9.jpg'),
(10, 'Admin 10', 'admin10', 'pass10', 'foto_admin10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `asal`
--

CREATE TABLE `asal` (
  `id_asal` int NOT NULL,
  `nama_asal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `asal`
--

INSERT INTO `asal` (`id_asal`, `nama_asal`) VALUES
(1, 'Fakultas Teknik'),
(2, 'Fakultas Ekonomi'),
(3, 'Fakultas Hukum'),
(4, 'Fakultas Kedokteran'),
(5, 'Fakultas Ilmu Komputer'),
(6, 'Fakultas Pertanian'),
(7, 'Fakultas Keguruan'),
(8, 'Fakultas Psikologi'),
(9, 'Fakultas Sastra'),
(10, 'Fakultas Keperawatan');

-- --------------------------------------------------------

--
-- Table structure for table `detailpenggajian`
--

CREATE TABLE `detailpenggajian` (
  `id_detil` int NOT NULL,
  `id_penggajian` int DEFAULT NULL,
  `id_gaji` int DEFAULT NULL,
  `jumlah` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detailpenggajian`
--

INSERT INTO `detailpenggajian` (`id_detil`, `id_penggajian`, `id_gaji`, `jumlah`) VALUES
(1, 1, 1, '5000000.00'),
(2, 1, 2, '1500000.00'),
(3, 1, 4, '200000.00'),
(4, 2, 1, '5000000.00'),
(5, 2, 7, '-300000.00'),
(6, 2, 3, '700000.00'),
(7, 3, 1, '5000000.00'),
(8, 3, 2, '900000.00'),
(9, 3, 8, '400000.00'),
(10, 4, 1, '5000000.00'),
(11, 4, 5, '1000000.00'),
(12, 4, 3, '100000.00'),
(13, 5, 1, '5000000.00'),
(14, 5, 9, '800000.00'),
(15, 5, 10, '1200000.00'),
(16, 6, 1, '5000000.00'),
(17, 6, 2, '1000000.00'),
(18, 6, 4, '800000.00'),
(19, 7, 1, '5000000.00'),
(20, 7, 5, '1000000.00'),
(21, 7, 6, '1200000.00'),
(22, 8, 1, '5000000.00'),
(23, 8, 10, '1200000.00'),
(24, 8, 8, '1300000.00'),
(25, 9, 1, '5000000.00'),
(26, 9, 7, '-300000.00'),
(27, 9, 2, '1700000.00'),
(28, 10, 1, '5000000.00'),
(29, 10, 9, '800000.00'),
(30, 10, 10, '1200000.00');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` int NOT NULL,
  `nama_gaji` varchar(100) DEFAULT NULL,
  `nominal` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id_gaji`, `nama_gaji`, `nominal`) VALUES
(1, 'Gaji Pokok', '5000000.00'),
(2, 'Tunjangan Kinerja', '1500000.00'),
(3, 'Tunjangan Transport', '500000.00'),
(4, 'Tunjangan Makan', '400000.00'),
(5, 'Bonus Kinerja', '1000000.00'),
(6, 'Lembur', '600000.00'),
(7, 'Potongan Absen', '-300000.00'),
(8, 'Tunjangan Kesehatan', '700000.00'),
(9, 'Tunjangan Keluarga', '800000.00'),
(10, 'Tunjangan Jabatan', '1200000.00');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int NOT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Dosen'),
(2, 'Staff TU'),
(3, 'Laboran'),
(4, 'Teknisi'),
(5, 'Keamanan'),
(6, 'Kebersihan'),
(7, 'Keuangan'),
(8, 'Sekretaris'),
(9, 'Pustakawan'),
(10, 'Wakil Dekan');

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `id_merk` int NOT NULL,
  `nama_merk` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`id_merk`, `nama_merk`) VALUES
(1, 'Asus'),
(2, 'Lenovo'),
(3, 'HP'),
(4, 'Acer'),
(5, 'Dell'),
(6, 'Samsung'),
(7, 'Apple'),
(8, 'Xiaomi'),
(9, 'Canon'),
(10, 'Epson');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int NOT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `id_asal` int DEFAULT NULL,
  `id_jabatan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nip`, `id_asal`, `id_jabatan`) VALUES
(1, 'Fahri Ahmad', '19890101', 1, 1),
(2, 'Rina Lestari', '19890102', 2, 2),
(3, 'Dewi Anggraini', '19890103', 3, 3),
(4, 'Budi Santoso', '19890104', 4, 4),
(5, 'Andi Saputra', '19890105', 5, 5),
(6, 'Tina Rahma', '19890106', 6, 6),
(7, 'Rizki Hidayat', '19890107', 7, 7),
(8, 'Sinta Aulia', '19890108', 8, 8),
(9, 'Dian Wulandari', '19890109', 9, 9),
(10, 'Rafi Pratama', '19890110', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `id_penggajian` int NOT NULL,
  `tanggal` date DEFAULT NULL,
  `id_admin` int DEFAULT NULL,
  `id_pegawai` int DEFAULT NULL,
  `total_gaji` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penggajian`
--

INSERT INTO `penggajian` (`id_penggajian`, `tanggal`, `id_admin`, `id_pegawai`, `total_gaji`) VALUES
(1, '2025-10-01', 1, 1, '6700000.00'),
(2, '2025-10-02', 2, 2, '5400000.00'),
(3, '2025-10-03', 3, 3, '5900000.00'),
(4, '2025-10-04', 4, 4, '6100000.00'),
(5, '2025-10-05', 5, 5, '7000000.00'),
(6, '2025-10-06', 6, 6, '6800000.00'),
(7, '2025-10-07', 7, 7, '7200000.00'),
(8, '2025-10-08', 8, 8, '7500000.00'),
(9, '2025-10-09', 9, 9, '6400000.00'),
(10, '2025-10-10', 10, 10, '8000000.00');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `harga` decimal(15,2) DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_merk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`, `foto`, `id_merk`) VALUES
(1, 'Laptop Asus VivoBook', '8500000.00', 10, 'asus_vivobook.jpg', 1),
(2, 'Laptop Lenovo ThinkPad', '9500000.00', 8, 'lenovo_thinkpad.jpg', 2),
(3, 'Printer HP Deskjet', '1200000.00', 15, 'hp_deskjet.jpg', 3),
(4, 'Monitor Acer 24 Inch', '1800000.00', 12, 'acer_24inch.jpg', 4),
(5, 'Laptop Dell Inspiron', '10000000.00', 7, 'dell_inspiron.jpg', 5),
(6, 'Smartphone Samsung A55', '6500000.00', 20, 'samsung_a55.jpg', 6),
(7, 'MacBook Air M2', '18500000.00', 5, 'macbook_air_m2.jpg', 7),
(8, 'Smartphone Xiaomi 13T', '7500000.00', 18, 'xiaomi_13t.jpg', 8),
(9, 'Printer Canon Pixma', '1500000.00', 10, 'canon_pixma.jpg', 9),
(10, 'Printer Epson L3210', '2000000.00', 9, 'epson_l3210.jpg', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `asal`
--
ALTER TABLE `asal`
  ADD PRIMARY KEY (`id_asal`);

--
-- Indexes for table `detailpenggajian`
--
ALTER TABLE `detailpenggajian`
  ADD PRIMARY KEY (`id_detil`),
  ADD KEY `id_penggajian` (`id_penggajian`),
  ADD KEY `id_gaji` (`id_gaji`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_asal` (`id_asal`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`id_penggajian`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_merk` (`id_merk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `asal`
--
ALTER TABLE `asal`
  MODIFY `id_asal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detailpenggajian`
--
ALTER TABLE `detailpenggajian`
  MODIFY `id_detil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id_gaji` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `id_merk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `id_penggajian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailpenggajian`
--
ALTER TABLE `detailpenggajian`
  ADD CONSTRAINT `detailpenggajian_ibfk_1` FOREIGN KEY (`id_penggajian`) REFERENCES `penggajian` (`id_penggajian`),
  ADD CONSTRAINT `detailpenggajian_ibfk_2` FOREIGN KEY (`id_gaji`) REFERENCES `gaji` (`id_gaji`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_asal`) REFERENCES `asal` (`id_asal`),
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`);

--
-- Constraints for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD CONSTRAINT `penggajian_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `penggajian_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_merk`) REFERENCES `merk` (`id_merk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
