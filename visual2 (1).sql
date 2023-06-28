-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 28 Jun 2023 pada 15.53
-- Versi server: 8.0.31
-- Versi PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hubungan`
--

DROP TABLE IF EXISTS `tabel_hubungan`;
CREATE TABLE IF NOT EXISTS `tabel_hubungan` (
  `id_hub` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int DEFAULT NULL,
  `id_ortu` int DEFAULT NULL,
  `status_hubungan` varchar(30) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL,
  `status_ortu` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_hub`),
  KEY `fk_hubungan_ortu` (`id_ortu`),
  KEY `fk_hubungan_siswa` (`id_siswa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tabel_hubungan`
--

INSERT INTO `tabel_hubungan` (`id_hub`, `id_siswa`, `id_ortu`, `status_hubungan`, `keterangan`, `status_ortu`) VALUES
(1, 1, 1, 'Kandung', 'Ayah', 'Hidup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kelas`
--

DROP TABLE IF EXISTS `tabel_kelas`;
CREATE TABLE IF NOT EXISTS `tabel_kelas` (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `jurusan` enum('IPA','IPS') COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_kelas`
--

INSERT INTO `tabel_kelas` (`id_kelas`, `nama`, `jenis`, `jurusan`) VALUES
(1, '12', 'C', 'IPA'),
(3, '12', 'A', 'IPA'),
(4, '12', 'B', 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ortu`
--

DROP TABLE IF EXISTS `tabel_ortu`;
CREATE TABLE IF NOT EXISTS `tabel_ortu` (
  `id_ortu` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `pendidikan` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `pekerjaan` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `telp` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci NOT NULL,
  `agama` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('Hidup','Alm') COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_ortu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_ortu`
--

INSERT INTO `tabel_ortu` (`id_ortu`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`, `status`) VALUES
(1, '69', 'Julak Jabaw', 'S1', 'CEO Magang', '0869', 'Jl. Naik Haji', 'L', 'Islam', 'Hidup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_poin`
--

DROP TABLE IF EXISTS `tabel_poin`;
CREATE TABLE IF NOT EXISTS `tabel_poin` (
  `id_poin` int NOT NULL AUTO_INCREMENT,
  `nama_poin` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `bobot` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` enum('Prestasi','Pelanggaran') COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('True','False') COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_poin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_poin`
--

INSERT INTO `tabel_poin` (`id_poin`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(1, 'Tawuran', '100', 'Pelanggaran', 'True'),
(2, 'Juara 1 Nasiona', '100', 'Prestasi', 'True');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_semester`
--

DROP TABLE IF EXISTS `tabel_semester`;
CREATE TABLE IF NOT EXISTS `tabel_semester` (
  `id_semester` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int DEFAULT NULL,
  `id_poin` int DEFAULT NULL,
  `id_wali` int DEFAULT NULL,
  `id_ortu` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tingkat_kelas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_semester`),
  KEY `fk_semester_siswa` (`id_siswa`),
  KEY `fk_semester_poin` (`id_poin`),
  KEY `fk_semester_wali` (`id_wali`),
  KEY `fk_semester_ortu` (`id_ortu`),
  KEY `fk_semester_kelas` (`id_kelas`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tabel_semester`
--

INSERT INTO `tabel_semester` (`id_semester`, `id_siswa`, `id_poin`, `id_wali`, `id_ortu`, `id_kelas`, `tanggal`, `semester`, `status`, `tingkat_kelas`) VALUES
(1, 1, 1, 2, 1, 1, '2023-06-28', 'Semester 1', 'Aktif', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

DROP TABLE IF EXISTS `tabel_user`;
CREATE TABLE IF NOT EXISTS `tabel_user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `level` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('Ortu','Siswa','Wali') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `username`, `password`, `level`, `status`) VALUES
(1, 'Haruan', '12345', 'Pelajar', 'Siswa'),
(2, 'Sapat', '12345', 'Pelajar', 'Ortu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_wali_kelas`
--

DROP TABLE IF EXISTS `tabel_wali_kelas`;
CREATE TABLE IF NOT EXISTS `tabel_wali_kelas` (
  `id_wali` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `pendidikan` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `mata_pelajaran` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `status` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_wali`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_wali_kelas`
--

INSERT INTO `tabel_wali_kelas` (`id_wali`, `nik`, `nama`, `pendidikan`, `telp`, `jenis_kelamin`, `alamat`, `mata_pelajaran`, `status`) VALUES
(2, '69', 'Julak', 'S.Kom', '0808', 'L', 'Jl Berlian', 'Konseling', 'Aktif'),
(3, '96', 'Jabaw', 'Spd', '0898', 'L', 'Jl Diamond', 'Konseling', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_siswa`
--

DROP TABLE IF EXISTS `table_siswa`;
CREATE TABLE IF NOT EXISTS `table_siswa` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `nisn` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `nik` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `tempat_lahir` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_lahir` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `telpon` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `hp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('aktif','tidak') COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `table_siswa`
--

INSERT INTO `table_siswa` (`id_siswa`, `nis`, `nisn`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `telpon`, `hp`, `status`) VALUES
(1, '69', '69', 'Julak', '69', 'Banjarmasin', '26 Juni 2000', 'L', 'Jl Permata 1', '0808', 'Samsung s23', 'aktif');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
