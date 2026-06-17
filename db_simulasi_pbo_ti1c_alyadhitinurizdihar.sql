-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2026 at 02:44 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_ti1c_alyadhitinurizdihar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(50) DEFAULT NULL,
  `lokasi_kampus` varchar(50) DEFAULT NULL,
  `jenis_prestasi` varchar(50) DEFAULT NULL,
  `tingkat_prestasi` varchar(30) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(50) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Ahmad Fauzi', 'SMAN 1 Jakarta', '85.50', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMAN 3 Bandung', '78.25', '250000.00', 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(3, 'Citra Lestari', 'SMAN 2 Surabaya', '90.00', '250000.00', 'Reguler', 'Kedokteran', 'Kampus Barat', NULL, NULL, NULL, NULL),
(4, 'Dedi Wijaya', 'SMKN 1 Yogyakarta', '82.10', '250000.00', 'Reguler', 'Teknik Elektro', 'Kampus Utama', NULL, NULL, NULL, NULL),
(5, 'Eka Putri', 'SMAN 5 Semarang', '88.40', '250000.00', 'Reguler', 'Akuntansi', 'Kampus Selatan', NULL, NULL, NULL, NULL),
(6, 'Fajar Ramadhan', 'SMAN 1 Medan', '79.80', '250000.00', 'Reguler', 'Manajemen', 'Kampus Selatan', NULL, NULL, NULL, NULL),
(7, 'Gita Permata', 'SMAN 8 Makassar', '84.60', '250000.00', 'Reguler', 'Ilmu Komunikasi', 'Kampus Barat', NULL, NULL, NULL, NULL),
(8, 'Hendra Kusuma', 'SMAN 1 Solo', '92.00', '150000.00', 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Indah Permadi', 'SMAN 3 Malang', '95.10', '150000.00', 'Prestasi', NULL, NULL, 'Karya Ilmiah Remaja', 'Internasional', NULL, NULL),
(10, 'Joko Susilo', 'SMAN 1 Denpasar', '89.75', '150000.00', 'Prestasi', NULL, NULL, 'Pebulutangkis', 'Provinsi', NULL, NULL),
(11, 'Kartika Sari', 'SMAN 2 Padang', '91.30', '150000.00', 'Prestasi', NULL, NULL, 'Debat Bahasa Inggris', 'Nasional', NULL, NULL),
(12, 'Laksana Tri', 'SMKN 26 Jakarta', '87.50', '150000.00', 'Prestasi', NULL, NULL, 'Lomba Kompetensi Siswa', 'Nasional', NULL, NULL),
(13, 'Mega Utami', 'SMAN 1 Palembang', '93.40', '150000.00', 'Prestasi', NULL, NULL, 'Tahfidz Al-Quran 20 Juz', 'Nasional', NULL, NULL),
(14, 'Naufal Hadi', 'SMAN 4 Balikpapan', '86.00', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-990/KEDINASAN/2026', 'Kementerian Perhubungan'),
(15, 'Oki Setiawan', 'SMAN 1 Pontianak', '83.20', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-112/BKN-IK/2026', 'Badan Kepegawaian Negara'),
(16, 'Putri Rahayu', 'SMAN 7 Bogor', '88.90', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-404/MENKEU/2026', 'Kementerian Keuangan'),
(17, 'Rian Hidayat', 'SMAN 1 Manado', '81.50', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-756/KEMENDAGRI/2026', 'Kementerian Dalam Negeri'),
(18, 'Siti Aminah', 'SMAN 2 ulu', '87.15', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-202/BMKG-STMKG/2026', 'BMKG'),
(19, 'Taufik Ismail', 'SMAN 3 Banda Aceh', '85.00', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-881/BPS-STIS/2026', 'Badan Pusat Statistik'),
(20, 'Vina Panduwinata', 'SMAN 1 Jayapura', '89.00', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-309/KEMENHAN/2026', 'Kementerian Pertahanan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
