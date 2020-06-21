-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: ppdb_sman1banyusari
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ppdb_sman1banyusari`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ppdb_sman1banyusari` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ppdb_sman1banyusari`;

--
-- Table structure for table `adm`
--

DROP TABLE IF EXISTS `adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm`
--

LOCK TABLES `adm` WRITE;
/*!40000 ALTER TABLE `adm` DISABLE KEYS */;
INSERT INTO `adm` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `adm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayah_siswa`
--

DROP TABLE IF EXISTS `ayah_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ayah_siswa` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayah_siswa`
--

LOCK TABLES `ayah_siswa` WRITE;
/*!40000 ALTER TABLE `ayah_siswa` DISABLE KEYS */;
INSERT INTO `ayah_siswa` VALUES (1,2,'as','Jakarta, 19 Agustus 1992','Islam','Warga Negara Indonesia(WNI)','SD','Petani/Beternak','Kurang dari Rp. 500.000','jakarrta','jakarta','baru'),(2,3,'kari','jakarta','Islam','Warga Negara Indonesia(WNI)','SD','Petani/Beternak','Kurang dari Rp. 500.000','jakara','',''),(3,NULL,'','','Islam','Warga Negara Indonesia(WNI)','SD','Petani/Beternak','-','s','','');
/*!40000 ALTER TABLE `ayah_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calon_siswa`
--

DROP TABLE IF EXISTS `calon_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calon_siswa` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calon_siswa`
--

LOCK TABLES `calon_siswa` WRITE;
/*!40000 ALTER TABLE `calon_siswa` DISABLE KEYS */;
INSERT INTO `calon_siswa` VALUES (1,'2020/2021','Siti Komariah','Ria','P','Karawang, 19 Desember 2004','Islam','SMPN 1 banyusari',NULL,'12437547354',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Jl Cilamaya No 1',NULL,NULL,NULL,'sample.png',NULL),(2,'2020/2021','asep setiawan','asep','Laki-laki','Subang 19 Agustus 1991','Islam','SMPN 1 Banyusari','33 - 33 - 333333 - 33 - 3333','22 - 22 - 2222','22 - 22 - 222222 - 22 - 2222','22 - 22 - 222222 - 22 - 2222','Warga Negara Indonesia(WNI)','1','1','0','0','Sunda',50,170,'A','','Subang','','','Orang Tua','sample.png',NULL),(3,'2020/2021','asep baru','baru','Laki-laki','subang','Islam','sman 1 banyusari','8685648dfjgfjdg','1244343434','1212347535465364','i44tufjvcsvcs','Warga Negara Indonesia(WNI)','','','','','sunda',0,0,'-','','jl kakdbjfdvdfv','','',NULL,'sample.png','2020202020202020-MayMay-WedWed'),(4,'2020/2021','Abdul munim','abdul','Laki-laki','subang','Islam','smpn 1 subang','46836864r8gfgu','1233434636','7554343463463466','kcjdsgcsducs','Warga Negara Indonesia(WNI)','1','1','0','0','sunda',59,170,'-','','karawang','41352','847354537453','Orang Tua','file_1589694778.png','2020-05-05');
/*!40000 ALTER TABLE `calon_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('nama_sekolah','SMAN 1 Banyusari'),('salt','SMAN 1 Banyusari'),('tahun_ajaran','2020/2021');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ibu_siswa`
--

DROP TABLE IF EXISTS `ibu_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ibu_siswa` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ibu_siswa`
--

LOCK TABLES `ibu_siswa` WRITE;
/*!40000 ALTER TABLE `ibu_siswa` DISABLE KEYS */;
INSERT INTO `ibu_siswa` VALUES (1,2,'siti','ajcvjavcac','Islam','Warga Negara Indonesia(WNI)','SD','Ibu Rumah Tangga','Kurang dari Rp. 500.000','','',''),(2,3,'dini','jakarta','Islam','Warga Negara Indonesia(WNI)','SD','Ibu Rumah Tangga','Kurang dari Rp. 500.000','','',''),(3,NULL,'s','s','Islam','Warga Negara Indonesia(WNI)','SD','Ibu Rumah Tangga','-','','','');
/*!40000 ALTER TABLE `ibu_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kemampuan_siswa`
--

DROP TABLE IF EXISTS `kemampuan_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kemampuan_siswa` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kemampuan_siswa`
--

LOCK TABLES `kemampuan_siswa` WRITE;
/*!40000 ALTER TABLE `kemampuan_siswa` DISABLE KEYS */;
INSERT INTO `kemampuan_siswa` VALUES (1,2,NULL,NULL,NULL,'','','',''),(2,3,NULL,NULL,NULL,'','','','');
/*!40000 ALTER TABLE `kemampuan_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kode`
--

DROP TABLE IF EXISTS `kode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kode`
--

LOCK TABLES `kode` WRITE;
/*!40000 ALTER TABLE `kode` DISABLE KEYS */;
/*!40000 ALTER TABLE `kode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat`
--

DROP TABLE IF EXISTS `surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `nama_ortu` varchar(50) DEFAULT NULL,
  `alamat` text,
  `handphone` varchar(20) DEFAULT NULL,
  `ortu_dari` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat`
--

LOCK TABLES `surat` WRITE;
/*!40000 ALTER TABLE `surat` DISABLE KEYS */;
INSERT INTO `surat` VALUES (1,2,'','','',''),(2,3,'','','','');
/*!40000 ALTER TABLE `surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wali_siswa`
--

DROP TABLE IF EXISTS `wali_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wali_siswa` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wali_siswa`
--

LOCK TABLES `wali_siswa` WRITE;
/*!40000 ALTER TABLE `wali_siswa` DISABLE KEYS */;
INSERT INTO `wali_siswa` VALUES (1,2,'gdgsugcg','uguscducgsd','Islam','Warga Negara Indonesia(WNI)','SD','Petani/Beternak','Kurang dari Rp. 500.000','','',''),(2,3,'jakarta','jakarta','Islam','Warga Negara Indonesia(WNI)','SD','Petani/Beternak','Kurang dari Rp. 500.000','','',''),(3,NULL,'s','s','Islam','Warga Negara Indonesia(WNI)','SD','Petani/Beternak','Tidak Tahu','','','');
/*!40000 ALTER TABLE `wali_siswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-21 22:59:49
