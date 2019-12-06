-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for crud_ignited
CREATE DATABASE IF NOT EXISTS `crud_ignited` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `crud_ignited`;

-- Dumping structure for table crud_ignited.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `barang_kode` varchar(10) NOT NULL,
  `barang_nama` varchar(100) DEFAULT NULL,
  `barang_harga` double DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`barang_kode`),
  KEY `barang_kategori_id` (`barang_kategori_id`),
  CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`barang_kategori_id`) REFERENCES `kategori` (`kategori_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table crud_ignited.barang: ~2 rows (approximately)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
REPLACE INTO `barang` (`barang_kode`, `barang_nama`, `barang_harga`, `barang_kategori_id`) VALUES
	('33', '33', 5000, 1),
	('D0009', 'Apa Aja', 650000, 1);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- Dumping structure for table crud_ignited.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table crud_ignited.kategori: ~1 rows (approximately)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
REPLACE INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
	(1, 'rer');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
