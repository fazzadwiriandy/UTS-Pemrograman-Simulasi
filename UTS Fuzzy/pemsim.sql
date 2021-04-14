-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pemsim
CREATE DATABASE IF NOT EXISTS `pemsim` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pemsim`;

-- Dumping structure for table pemsim.defuzifikasi
CREATE TABLE IF NOT EXISTS `defuzifikasi` (
  `berkurang` int(7) DEFAULT NULL,
  `bertambah` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pemsim.defuzifikasi: ~0 rows (approximately)
DELETE FROM `defuzifikasi`;
/*!40000 ALTER TABLE `defuzifikasi` DISABLE KEYS */;
INSERT INTO `defuzifikasi` (`berkurang`, `bertambah`) VALUES
	(2000, 3910),
	(2219, 6701),
	(8027, 4230),
	(3418, 3132),
	(4605, 2493),
	(4979, 7885),
	(2574, 2418),
	(5323, 4053);
/*!40000 ALTER TABLE `defuzifikasi` ENABLE KEYS */;

-- Dumping structure for table pemsim.diskrit
CREATE TABLE IF NOT EXISTS `diskrit` (
  `nilai_perhari` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pemsim.diskrit: ~0 rows (approximately)
DELETE FROM `diskrit`;
/*!40000 ALTER TABLE `diskrit` DISABLE KEYS */;
/*!40000 ALTER TABLE `diskrit` ENABLE KEYS */;

-- Dumping structure for table pemsim.implikasi
CREATE TABLE IF NOT EXISTS `implikasi` (
  `rules` varchar(2) DEFAULT NULL,
  `nilai` varchar(7) DEFAULT NULL,
  `ketentuan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pemsim.implikasi: ~0 rows (approximately)
DELETE FROM `implikasi`;
/*!40000 ALTER TABLE `implikasi` DISABLE KEYS */;
INSERT INTO `implikasi` (`rules`, `nilai`, `ketentuan`) VALUES
	('R1', '0.22222', 'berkurang'),
	('R2', '0.22727', 'berkurang'),
	('R3', '0.22222', 'bertambah'),
	('R4', '0.77777', 'bertambah'),
	('R1', '0.22222', 'berkurang'),
	('R2', '0.22727', 'berkurang'),
	('R3', '0.22222', 'bertambah'),
	('R4', '0.77777', 'bertambah');
/*!40000 ALTER TABLE `implikasi` ENABLE KEYS */;

-- Dumping structure for table pemsim.implikasi_2
CREATE TABLE IF NOT EXISTS `implikasi_2` (
  `berkurang` varchar(5) DEFAULT NULL,
  `bertambah` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pemsim.implikasi_2: ~0 rows (approximately)
DELETE FROM `implikasi_2`;
/*!40000 ALTER TABLE `implikasi_2` DISABLE KEYS */;
INSERT INTO `implikasi_2` (`berkurang`, `bertambah`) VALUES
	('0.227', '0.777'),
	('0.227', '0.777');
/*!40000 ALTER TABLE `implikasi_2` ENABLE KEYS */;

-- Dumping structure for table pemsim.myfuzzy
CREATE TABLE IF NOT EXISTS `myfuzzy` (
  `index` varchar(50) NOT NULL,
  `param_1` varchar(50) DEFAULT NULL,
  `nilai_1` varchar(50) DEFAULT NULL,
  `param_2` varchar(50) DEFAULT NULL,
  `nilai_2` varchar(50) DEFAULT NULL,
  `param_3` varchar(50) DEFAULT NULL,
  `nilai_3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pemsim.myfuzzy: ~4 rows (approximately)
DELETE FROM `myfuzzy`;
/*!40000 ALTER TABLE `myfuzzy` DISABLE KEYS */;
INSERT INTO `myfuzzy` (`index`, `param_1`, `nilai_1`, `param_2`, `nilai_2`, `param_3`, `nilai_3`) VALUES
	('R1', 'Permintaan', 'Turun', 'Persediaan Barang', 'Banyak', 'Produk', 'Berkurang'),
	('R2', 'Permintaan', 'Turun', 'Persediaan barang', 'sedikit', 'produk', 'berkurang'),
	('R3', 'Permintaan', 'Naik', 'Persediaan Barang', 'Banyak', 'Produksi', 'bertambah'),
	('R4', 'Permintaan', 'Naik', 'Persediaan Barang', 'Sedikit', 'Produksi', 'Banyak'),
	('R5', 'a', 'b', 'v', 'd', 'e', 'f');
/*!40000 ALTER TABLE `myfuzzy` ENABLE KEYS */;

-- Dumping structure for table pemsim.operasifuzzy
CREATE TABLE IF NOT EXISTS `operasifuzzy` (
  `rules` varchar(2) DEFAULT NULL,
  `nilai` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pemsim.operasifuzzy: ~0 rows (approximately)
DELETE FROM `operasifuzzy`;
/*!40000 ALTER TABLE `operasifuzzy` DISABLE KEYS */;
INSERT INTO `operasifuzzy` (`rules`, `nilai`) VALUES
	('R1', '0.222'),
	('R2', '0.227'),
	('R3', '0.222'),
	('R4', '0.777'),
	('R1', '0.222'),
	('R2', '0.227'),
	('R3', '0.222'),
	('R4', '0.777');
/*!40000 ALTER TABLE `operasifuzzy` ENABLE KEYS */;

-- Dumping structure for table pemsim.variabel
CREATE TABLE IF NOT EXISTS `variabel` (
  `variabel` varchar(50) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `bb_nama` varchar(50) DEFAULT NULL,
  `bb_nilai` varchar(50) DEFAULT NULL,
  `ba_nama` varchar(50) DEFAULT NULL,
  `ba_nilai` varchar(50) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pemsim.variabel: ~3 rows (approximately)
DELETE FROM `variabel`;
/*!40000 ALTER TABLE `variabel` DISABLE KEYS */;
INSERT INTO `variabel` (`variabel`, `tipe`, `bb_nama`, `bb_nilai`, `ba_nama`, `ba_nilai`, `satuan`) VALUES
	('Permintaan', 'Input', 'Turun', '1000', 'Naik', '5000', 'kemasan.hari'),
	('Persediaan Barang', 'Output', 'Kurang', '100', 'Tambah', '600', 'Kemasan/hari'),
	('Produksi', 'Output', 'Sedikit', '2000', 'Banyak', '7000', 'kemasan/hari');
/*!40000 ALTER TABLE `variabel` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
