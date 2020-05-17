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


-- Dumping database structure for ppdb_sman1banyusari
CREATE DATABASE IF NOT EXISTS `ppdb_sman1banyusari` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ppdb_sman1banyusari`;

-- Dumping structure for table ppdb_sman1banyusari.adm
CREATE TABLE IF NOT EXISTS `adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table ppdb_sman1banyusari.adm: 1 rows
/*!40000 ALTER TABLE `adm` DISABLE KEYS */;
INSERT INTO `adm` (`id`, `username`, `password`) VALUES
	(1, 'admin', '202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `adm` ENABLE KEYS */;

-- Dumping structure for table ppdb_sman1banyusari.ayah_siswa
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table ppdb_sman1banyusari.ayah_siswa: 3 rows
/*!40000 ALTER TABLE `ayah_siswa` DISABLE KEYS */;
INSERT INTO `ayah_siswa` (`id_ayah`, `id_siswa`, `nl_ayah`, `ttl_ayah`, `agama_ayah`, `warga_ayah`, `pend_ayah`, `kerja_ayah`, `gaji_ayah`, `rumah_ayah`, `kantor_ayah`, `organisasi_ayah`) VALUES
	(1, 2, 'as', 'Jakarta, 19 Agustus 1992', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Petani/Beternak', 'Kurang dari Rp. 500.000', 'jakarrta', 'jakarta', 'baru'),
	(2, 3, 'kari', 'jakarta', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Petani/Beternak', 'Kurang dari Rp. 500.000', 'jakara', '', ''),
	(3, NULL, '', '', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Petani/Beternak', '-', 's', '', '');
/*!40000 ALTER TABLE `ayah_siswa` ENABLE KEYS */;

-- Dumping structure for table ppdb_sman1banyusari.calon_siswa
CREATE TABLE IF NOT EXISTS `calon_siswa` (
  `id_siswa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun` varchar(10) NOT NULL,
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
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table ppdb_sman1banyusari.calon_siswa: 4 rows
/*!40000 ALTER TABLE `calon_siswa` DISABLE KEYS */;
INSERT INTO `calon_siswa` (`id_siswa`, `tahun`, `nl_siswa`, `np_siswa`, `jk_siswa`, `ttl`, `agama_siswa`, `asal_sekolah`, `ijazah`, `nisn`, `nik`, `skhun`, `warga_siswa`, `anak_ke`, `sdr_knd`, `sdr_tir`, `sdr_ang`, `bahasa`, `berat`, `tinggi`, `gol_dar`, `penyakit`, `alamat`, `kode_pos`, `hp_siswa`, `tinggal`, `photo`, `tanggal_lahir`) VALUES
	(1, '2020/2021', 'Siti Komariah', 'Ria', 'P', 'Karawang, 19 Desember 2004', 'Islam', 'SMPN 1 banyusari', NULL, '12437547354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl Cilamaya No 1', NULL, NULL, NULL, 'sample.png', NULL),
	(2, '2020/2021', 'asep setiawan', 'asep', 'Laki-laki', 'Subang 19 Agustus 1991', 'Islam', 'SMPN 1 Banyusari', '33 - 33 - 333333 - 33 - 3333', '22 - 22 - 2222', '22 - 22 - 222222 - 22 - 2222', '22 - 22 - 222222 - 22 - 2222', 'Warga Negara Indonesia(WNI)', '1', '1', '0', '0', 'Sunda', 50, 170, 'A', '', 'Subang', '', '', 'Orang Tua', 'sample.png', NULL),
	(3, '2020/2021', 'asep baru', 'baru', 'Laki-laki', 'subang', 'Islam', 'sman 1 banyusari', '8685648dfjgfjdg', '1244343434', '1212347535465364', 'i44tufjvcsvcs', 'Warga Negara Indonesia(WNI)', '', '', '', '', 'sunda', 0, 0, '-', '', 'jl kakdbjfdvdfv', '', '', NULL, 'sample.png', '2020202020202020-MayMay-WedWed'),
	(4, '2020/2021', 'Abdul munim', 'abdul', 'Laki-laki', 'subang', 'Islam', 'smpn 1 subang', '46836864r8gfgu', '1233434636', '7554343463463466', 'kcjdsgcsducs', 'Warga Negara Indonesia(WNI)', '1', '1', '0', '0', 'sunda', 59, 170, '-', '', 'karawang', '41352', '847354537453', 'Orang Tua', 'file_1589694778.png', '2020-05-05');
/*!40000 ALTER TABLE `calon_siswa` ENABLE KEYS */;

-- Dumping structure for table ppdb_sman1banyusari.config
CREATE TABLE IF NOT EXISTS `config` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ppdb_sman1banyusari.config: ~0 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`key`, `value`) VALUES
	('nama_sekolah', 'SMAN 1 Banyusari'),
	('salt', 'SMAN 1 Banyusari'),
	('tahun_ajaran', '2020/2021');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table ppdb_sman1banyusari.ibu_siswa
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table ppdb_sman1banyusari.ibu_siswa: 3 rows
/*!40000 ALTER TABLE `ibu_siswa` DISABLE KEYS */;
INSERT INTO `ibu_siswa` (`id_ibu`, `id_siswa`, `nl_ibu`, `ttl_ibu`, `agama_ibu`, `warga_ibu`, `pend_ibu`, `kerja_ibu`, `gaji_ibu`, `rumah_ibu`, `kantor_ibu`, `organisasi_ibu`) VALUES
	(1, 2, 'siti', 'ajcvjavcac', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Ibu Rumah Tangga', 'Kurang dari Rp. 500.000', '', '', ''),
	(2, 3, 'dini', 'jakarta', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Ibu Rumah Tangga', 'Kurang dari Rp. 500.000', '', '', ''),
	(3, NULL, 's', 's', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Ibu Rumah Tangga', '-', '', '', '');
/*!40000 ALTER TABLE `ibu_siswa` ENABLE KEYS */;

-- Dumping structure for table ppdb_sman1banyusari.kemampuan_siswa
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ppdb_sman1banyusari.kemampuan_siswa: 2 rows
/*!40000 ALTER TABLE `kemampuan_siswa` DISABLE KEYS */;
INSERT INTO `kemampuan_siswa` (`id`, `id_siswa`, `sholat`, `hafalan`, `bacaan`, `hobi`, `prestasi`, `sifat`, `penyakit_keras`) VALUES
	(1, 2, NULL, NULL, NULL, '', '', '', ''),
	(2, 3, NULL, NULL, NULL, '', '', '', '');
/*!40000 ALTER TABLE `kemampuan_siswa` ENABLE KEYS */;

-- Dumping structure for table ppdb_sman1banyusari.kode
CREATE TABLE IF NOT EXISTS `kode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ppdb_sman1banyusari.kode: 0 rows
/*!40000 ALTER TABLE `kode` DISABLE KEYS */;
/*!40000 ALTER TABLE `kode` ENABLE KEYS */;

-- Dumping structure for table ppdb_sman1banyusari.surat
CREATE TABLE IF NOT EXISTS `surat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `nama_ortu` varchar(50) DEFAULT NULL,
  `alamat` text,
  `handphone` varchar(20) DEFAULT NULL,
  `ortu_dari` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ppdb_sman1banyusari.surat: 2 rows
/*!40000 ALTER TABLE `surat` DISABLE KEYS */;
INSERT INTO `surat` (`id`, `id_siswa`, `nama_ortu`, `alamat`, `handphone`, `ortu_dari`) VALUES
	(1, 2, '', '', '', ''),
	(2, 3, '', '', '', '');
/*!40000 ALTER TABLE `surat` ENABLE KEYS */;

-- Dumping structure for table ppdb_sman1banyusari.wali_siswa
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table ppdb_sman1banyusari.wali_siswa: 3 rows
/*!40000 ALTER TABLE `wali_siswa` DISABLE KEYS */;
INSERT INTO `wali_siswa` (`id_wali`, `id_siswa`, `nl_wali`, `ttl_wali`, `agama_wali`, `warga_wali`, `pend_wali`, `kerja_wali`, `gaji_wali`, `rumah_wali`, `kantor_wali`, `organisasi_wali`) VALUES
	(1, 2, 'gdgsugcg', 'uguscducgsd', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Petani/Beternak', 'Kurang dari Rp. 500.000', '', '', ''),
	(2, 3, 'jakarta', 'jakarta', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Petani/Beternak', 'Kurang dari Rp. 500.000', '', '', ''),
	(3, NULL, 's', 's', 'Islam', 'Warga Negara Indonesia(WNI)', 'SD', 'Petani/Beternak', 'Tidak Tahu', '', '', '');
/*!40000 ALTER TABLE `wali_siswa` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
