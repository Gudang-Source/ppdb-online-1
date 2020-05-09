-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.48 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for binainsani
CREATE DATABASE IF NOT EXISTS `binainsani` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `binainsani`;

-- Dumping structure for table binainsani.adm
CREATE TABLE IF NOT EXISTS `adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table binainsani.adm: 1 rows
/*!40000 ALTER TABLE `adm` DISABLE KEYS */;
INSERT INTO `adm` (`id`, `username`, `password`) VALUES
	(1, 'admin', '202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `adm` ENABLE KEYS */;

-- Dumping structure for table binainsani.ayah_siswa
CREATE TABLE IF NOT EXISTS `ayah_siswa` (
  `id_ayah` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `nl_ayah` varchar(50) DEFAULT NULL,
  `ttl_ayah` varchar(50) DEFAULT NULL,
  `agama_ayah` varchar(20) DEFAULT NULL,
  `warga_ayah` varchar(30) DEFAULT NULL,
  `pend_ayah` varchar(30) DEFAULT NULL,
  `kerja_ayah` varchar(30) DEFAULT NULL,
  `gaji_ayah` varchar(30) DEFAULT NULL,
  `rumah_ayah` text,
  `kantor_ayah` text,
  `organisasi_ayah` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ayah`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table binainsani.ayah_siswa: 0 rows
/*!40000 ALTER TABLE `ayah_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayah_siswa` ENABLE KEYS */;

-- Dumping structure for table binainsani.calon_siswa
CREATE TABLE IF NOT EXISTS `calon_siswa` (
  `id_siswa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun` varchar(5) NOT NULL,
  `nl_siswa` varchar(255) DEFAULT NULL,
  `np_siswa` varchar(20) DEFAULT NULL,
  `jk_siswa` varchar(10) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `agama_siswa` varchar(10) DEFAULT NULL,
  `asal_sekolah` varchar(40) DEFAULT NULL,
  `ijazah` varchar(30) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `skhun` varchar(30) DEFAULT NULL,
  `warga_siswa` varchar(70) DEFAULT NULL,
  `anak_ke` varchar(5) DEFAULT NULL,
  `sdr_knd` varchar(5) DEFAULT NULL,
  `sdr_tir` varchar(5) DEFAULT NULL,
  `sdr_ang` varchar(5) DEFAULT NULL,
  `bahasa` varchar(30) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `tinggi` int(11) DEFAULT NULL,
  `gol_dar` varchar(5) DEFAULT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `alamat` text,
  `kode_pos` varchar(10) DEFAULT NULL,
  `hp_siswa` varchar(20) DEFAULT NULL,
  `tinggal` varchar(20) DEFAULT NULL,
  `photo` char(50) NOT NULL DEFAULT 'sample.png',
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table binainsani.calon_siswa: 0 rows
/*!40000 ALTER TABLE `calon_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `calon_siswa` ENABLE KEYS */;

-- Dumping structure for table binainsani.config
CREATE TABLE IF NOT EXISTS `config` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table binainsani.config: ~0 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`key`, `value`) VALUES
	('nama_sekolah', 'SMAN 1 Banyusari'),
	('tahun_ajaran', '2020/2021');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table binainsani.ibu_siswa
CREATE TABLE IF NOT EXISTS `ibu_siswa` (
  `id_ibu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `nl_ibu` varchar(50) DEFAULT NULL,
  `ttl_ibu` varchar(50) DEFAULT NULL,
  `agama_ibu` varchar(20) DEFAULT NULL,
  `warga_ibu` varchar(30) DEFAULT NULL,
  `pend_ibu` varchar(30) DEFAULT NULL,
  `kerja_ibu` varchar(30) DEFAULT NULL,
  `gaji_ibu` varchar(30) DEFAULT NULL,
  `rumah_ibu` char(30) DEFAULT NULL,
  `kantor_ibu` text,
  `organisasi_ibu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ibu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table binainsani.ibu_siswa: 0 rows
/*!40000 ALTER TABLE `ibu_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ibu_siswa` ENABLE KEYS */;

-- Dumping structure for table binainsani.kemampuan_siswa
CREATE TABLE IF NOT EXISTS `kemampuan_siswa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `sholat` text,
  `hafalan` text,
  `bacaan` text,
  `hobi` text,
  `prestasi` text,
  `sifat` text,
  `penyakit_keras` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table binainsani.kemampuan_siswa: 0 rows
/*!40000 ALTER TABLE `kemampuan_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `kemampuan_siswa` ENABLE KEYS */;

-- Dumping structure for table binainsani.kode
CREATE TABLE IF NOT EXISTS `kode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table binainsani.kode: 0 rows
/*!40000 ALTER TABLE `kode` DISABLE KEYS */;
/*!40000 ALTER TABLE `kode` ENABLE KEYS */;

-- Dumping structure for table binainsani.surat
CREATE TABLE IF NOT EXISTS `surat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `nama_ortu` varchar(50) DEFAULT NULL,
  `alamat` text,
  `handphone` varchar(20) DEFAULT NULL,
  `ortu_dari` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table binainsani.surat: 0 rows
/*!40000 ALTER TABLE `surat` DISABLE KEYS */;
/*!40000 ALTER TABLE `surat` ENABLE KEYS */;

-- Dumping structure for table binainsani.wali_siswa
CREATE TABLE IF NOT EXISTS `wali_siswa` (
  `id_wali` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `nl_wali` varchar(50) DEFAULT NULL,
  `ttl_wali` varchar(50) DEFAULT NULL,
  `agama_wali` varchar(20) DEFAULT NULL,
  `warga_wali` varchar(30) DEFAULT NULL,
  `pend_wali` varchar(30) DEFAULT NULL,
  `kerja_wali` varchar(30) DEFAULT NULL,
  `gaji_wali` varchar(30) DEFAULT NULL,
  `rumah_wali` char(40) DEFAULT NULL,
  `kantor_wali` text,
  `organisasi_wali` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_wali`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table binainsani.wali_siswa: 0 rows
/*!40000 ALTER TABLE `wali_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `wali_siswa` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
