/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Linux (x86_64)
--
-- Host: 103.185.53.108    Database: projectf_ymzstore
-- ------------------------------------------------------
-- Server version	10.6.21-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `branch_type` varchar(255) NOT NULL,
  `branch_phone` varchar(255) NOT NULL,
  `branch_latitude` varchar(255) DEFAULT NULL,
  `branch_longitude` varchar(255) DEFAULT NULL,
  `branch_thumbnail` varchar(255) DEFAULT NULL,
  `branch_address` text DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `branch_branch_code_unique` (`branch_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT IGNORE INTO `branch` VALUES
(1,'BRANCH0001','Chapter Paragon Mall','Self Order','085882357670','-6.2088','106.8456','https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/99/b9/23/20151124-165301-largejpg.jpg?w=1200&h=-1&s=1','Jalan Juminahan no.26 Ruko Gajah Mada Square, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166',1,NULL,NULL),
(2,'BRANCH0002','Chapter Mall Kelapa Gading','Self Order','08127635241','-6.1751','110.3688','https://media-cdn.tripadvisor.com/media/photo-s/06/23/86/fd/the-middle-hall.jpg','Jl. Kelapa Gading No.2, Jakarta',1,NULL,NULL),
(3,'BRANCH0003','Chapter Mall Taman Anggrek','Self Order','081736452716','-6.2500','107.6191','https://www.taman-anggrek-mall.com/storage/01JDQ6XNWE36ADWG6Z9QRHEGM4.webp','Jl. Taman Anggrek No.3, Jakarta',1,NULL,NULL),
(4,'BRANCH0004','Chapter Mall Puri Indah','Self Order','085882746179','-6.9147','112.7383','https://pict.sindonews.net/dyn/850/pena/news/2023/07/12/171/1149961/5-perbedaan-puri-indah-mall-dan-lippo-mall-puri-meski-samasama-di-jakbar-qbq.jpg','Jl. Puri Indah No.4, Jakarta',1,NULL,NULL),
(5,'BRANCH0005','Chapter Mall Senayan','Self Order','089655263546','-7.7972','115.1687','https://img.antaranews.com/cache/800x533/2022/11/03/antarafoto-pemulihan-kunjungan-pusat-perbelanjaan-031122-riv-2.jpg','Jl. Senayan No.5, Jakarta',1,NULL,NULL),
(6,'BRANCH0006','Chapter Mall Gandaria City','Self Order','081362537564','-6.2000','110.3646','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDTz1Ha_8Y-1vBOPppGVB_BiSaAATqhl4S6g&s','Jl. Gandaria City No.6, Jakarta',1,NULL,NULL),
(7,'BRANCH0007','Chapter Mall Grand Indonesia','Self Order','08128374659','-6.9142','98.6722','https://lh3.googleusercontent.com/p/AF1QipOyR39j1wr-zCuG6XuNKCV6DppLg8cLfmnPHCHI=s680-w680-h510','Jl. Grand Indonesia No.7, Jakarta',1,NULL,NULL),
(8,'BRANCH0008','Chapter Mall Plaza Senayan','Self Order','0858837265879','-6.1750','119.4179','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvTQAbYL44vQdGanMzpm303EfM54mf7Bdpug&s','Jl. Plaza Senayan No.8, Jakarta',1,NULL,NULL),
(9,'BRANCH0009','Chapter Mall Central Park','Self Order','0218475633','-6.2080','104.6950','https://media-cdn.tripadvisor.com/media/photo-s/0e/f3/fc/97/inside-wall-in-mall.jpg','Jl. Central Park No.9, Jakarta',1,NULL,NULL);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_code` bigint(20) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `stock_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_type` varchar(255) NOT NULL,
  `total_quantity` double NOT NULL,
  `total_price` double NOT NULL,
  `tax` double NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT IGNORE INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2025_06_09_062159_create_main_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_parent` bigint(20) NOT NULL,
  `order_invoice` varchar(255) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `stock_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_type` varchar(255) NOT NULL,
  `total_quantity` double NOT NULL,
  `total_price` double NOT NULL,
  `total_taxes` double NOT NULL,
  `point_earned` double NOT NULL,
  `status` double NOT NULL DEFAULT 0,
  `order_note` text DEFAULT NULL,
  `order_note_mart` text DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT IGNORE INTO `orders` VALUES
(1,0,'INV-PXIVNUKR',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 03:00:45','2025-06-12 03:00:45'),
(2,0,'INV-PXIVNUKR',1,4,2,'Self Order',1,53000,53,10,1,'',NULL,1,'2025-06-12 03:00:45','2025-06-12 03:00:45'),
(3,0,'INV-MOIJQSFJ',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 03:33:25','2025-06-12 03:33:25'),
(4,0,'INV-GKSKMWOK',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 03:35:24','2025-06-12 03:35:24'),
(5,0,'INV-GKSKMWOK',1,4,2,'Self Order',1,53000,53,10,1,'',NULL,1,'2025-06-12 03:35:24','2025-06-12 03:35:24'),
(6,0,'INV-Y2U9WBZO',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 03:52:17','2025-06-12 03:52:17'),
(7,0,'INV-68ZAFE1O',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 06:04:28','2025-06-12 06:04:28'),
(8,0,'INV-GRDUHHJO',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 06:16:02','2025-06-12 06:16:02'),
(9,0,'INV-8I6ADWNS',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 06:30:07','2025-06-12 06:30:07'),
(10,0,'INV-EWVPTPUR',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 06:36:50','2025-06-12 06:36:50'),
(11,0,'INV-ZIXHL97Y',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 06:57:16','2025-06-12 06:57:16'),
(12,0,'INV-YF8E1K9P',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 07:18:57','2025-06-12 07:18:57'),
(13,0,'INV-YF8E1K9P',1,1,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 07:18:57','2025-06-12 07:18:57'),
(14,0,'INV-WPTI2DWD',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 07:35:32','2025-06-12 07:35:32'),
(15,0,'INV-JZSOIG6U',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 07:36:09','2025-06-12 07:36:09'),
(16,0,'INV-UQMNX7TV',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 07:37:00','2025-06-12 07:37:00'),
(17,0,'INV-UQMNX7TV',1,14,2,'Self Order',1,500,0.5,10,1,'',NULL,1,'2025-06-12 07:37:00','2025-06-12 07:37:00'),
(18,0,'INV-PMDTFNAN',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 07:39:32','2025-06-12 07:39:32'),
(19,0,'INV-PIEQWBYW',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 07:39:59','2025-06-12 07:39:59'),
(20,0,'INV-OX42BKLM',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 07:40:17','2025-06-12 07:40:17'),
(21,0,'INV-WLFT7AMR',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 08:33:53','2025-06-12 08:33:53'),
(22,0,'INV-XMQBSA85',8,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 08:34:19','2025-06-12 08:34:19'),
(23,0,'INV-5ZTYSIXB',1,7,2,'Self Order',1,42000,42,10,1,'',NULL,1,'2025-06-12 08:59:47','2025-06-12 08:59:47'),
(24,0,'INV-K5MIUVMW',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 21:24:22','2025-06-12 21:24:22'),
(25,0,'INV-K5MIUVMW',1,1,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 21:24:22','2025-06-12 21:24:22'),
(26,0,'INV-ZZ3ZFPTN',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:26:24','2025-06-13 04:26:24'),
(27,0,'INV-P6DJIQRQ',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:32:15','2025-06-13 04:32:15'),
(28,0,'INV-GXLJ6ON8',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:32:52','2025-06-13 04:32:52'),
(29,0,'INV-JNHRGZAA',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:33:18','2025-06-13 04:33:18'),
(30,0,'INV-W4VGSQOP',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:34:17','2025-06-13 04:34:17'),
(31,0,'INV-159ERYGR',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:36:28','2025-06-13 04:36:28'),
(32,0,'INV-PUAANAVN',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:36:57','2025-06-13 04:36:57'),
(33,0,'INV-EBQ98LTD',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:37:25','2025-06-13 04:37:25'),
(34,0,'INV-FOZKU3PA',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:40:27','2025-06-13 04:40:27'),
(35,0,'INV-58DS7QDD',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:45:14','2025-06-13 04:45:14'),
(36,0,'INV-WOGMTWCV',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:46:24','2025-06-13 04:46:24'),
(37,0,'INV-VYD5YYVO',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:48:22','2025-06-13 04:48:22'),
(38,0,'INV-S0VXZOKZ',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:49:05','2025-06-13 04:49:05'),
(39,0,'INV-OZRAHJQM',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:49:40','2025-06-13 04:49:40'),
(40,0,'INV-SHKBX1CK',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:50:07','2025-06-13 04:50:07'),
(41,0,'INV-JTGHD0R3',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:51:04','2025-06-13 04:51:04'),
(42,0,'INV-KSDNPVTK',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:51:30','2025-06-13 04:51:30'),
(43,0,'INV-LATOG0FB',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:53:11','2025-06-13 04:53:11'),
(44,0,'INV-0NNQQGXG',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:53:30','2025-06-13 04:53:30'),
(45,0,'INV-IFW52LSF',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:53:36','2025-06-13 04:53:36'),
(46,0,'INV-YDZJV6DO',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:54:01','2025-06-13 04:54:01'),
(47,0,'INV-GEWVTD48',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 04:54:09','2025-06-13 04:54:09'),
(48,0,'INV-9BN6OPOP',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 05:02:29','2025-06-13 05:02:29'),
(49,0,'INV-RDBEX6PJ',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-13 05:03:15','2025-06-13 05:03:15'),
(50,0,'INV-BLD5I05L',1,11,2,'Self Order',1,25000,25,10,1,'',NULL,1,'2025-06-13 10:34:44','2025-06-13 10:34:44'),
(51,0,'INV-7ITWHULO',1,10,2,'Self Order',1,25000,25,10,1,'',NULL,1,'2025-06-13 12:34:30','2025-06-13 12:34:30'),
(52,0,'INV-HE2HKR9E',1,18,2,'Self Order',1,6000,6,10,1,'',NULL,1,'2025-06-13 16:36:27','2025-06-13 16:36:27'),
(53,0,'INV-TA8PBGQM',1,1,2,'Self Order',1,3000,3,10,1,'',NULL,1,'2025-06-13 16:37:00','2025-06-13 16:37:00'),
(54,0,'INV-5AHD3CA8',1,1,2,'Self Order',1,3000,3,10,1,'',NULL,1,'2025-06-13 16:41:45','2025-06-13 16:41:45'),
(55,0,'INV-KWS0RCTF',1,28,2,'Self Order',1,6000,6,10,1,'',NULL,1,'2025-06-13 16:45:14','2025-06-13 16:45:14');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `payment_code` varchar(255) NOT NULL,
  `order_invoice` varchar(255) NOT NULL,
  `total_payment` double NOT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'CASHIER',
  `payment_status` varchar(255) NOT NULL DEFAULT 'PENDING',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_payment_code_unique` (`payment_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT IGNORE INTO `payment` VALUES
(1,2,'QIC0','INV-PXIVNUKR',153153,'qris','PAID',1,'2025-06-12 03:00:46','2025-06-12 03:00:50'),
(2,2,'QXHB','INV-MOIJQSFJ',100100,'qris','PAID',1,'2025-06-12 03:33:25','2025-06-12 03:33:30'),
(3,2,'C63K','INV-GKSKMWOK',10010053053,'qris','PAID',1,'2025-06-12 03:35:24','2025-06-12 03:35:25'),
(4,2,'EF5H','INV-Y2U9WBZO',100100,'qris','PAID',1,'2025-06-12 03:52:17','2025-06-12 03:52:24'),
(5,2,'2ZEP','INV-68ZAFE1O',100100,'qris','PAID',1,'2025-06-12 06:04:28','2025-06-12 06:04:31'),
(6,2,'VGCK','INV-GRDUHHJO',100100,'qris','PAID',1,'2025-06-12 06:16:02','2025-06-12 06:16:04'),
(7,2,'1FKL','INV-8I6ADWNS',100100,'qris','PAID',1,'2025-06-12 06:30:07','2025-06-12 06:30:19'),
(8,2,'LQO9','INV-EWVPTPUR',100100,'qris','PAID',1,'2025-06-12 06:36:50','2025-06-12 06:37:03'),
(9,2,'6QGL','INV-ZIXHL97Y',100100,'qris','PAID',1,'2025-06-12 06:57:16','2025-06-12 06:57:18'),
(10,2,'TP0P','INV-YF8E1K9P',200200,'cash','PAID',1,'2025-06-12 07:18:57','2025-06-12 07:18:59'),
(11,2,'WHIR','INV-WPTI2DWD',100100,'cash','PAID',1,'2025-06-12 07:35:32','2025-06-12 07:35:34'),
(12,2,'2J2J','INV-JZSOIG6U',100100,'qris','PAID',1,'2025-06-12 07:36:09','2025-06-12 07:36:10'),
(13,2,'PBT0','INV-UQMNX7TV',100100500.5,'qris','PAID',1,'2025-06-12 07:37:00','2025-06-12 07:37:02'),
(14,2,'KMS6','INV-PMDTFNAN',100100,'qris','PAID',1,'2025-06-12 07:39:32','2025-06-12 07:39:33'),
(15,2,'VVX0','INV-PIEQWBYW',100100,'cash','PAID',1,'2025-06-12 07:39:59','2025-06-12 07:40:01'),
(16,2,'ZINX','INV-OX42BKLM',100100,'qris','PAID',1,'2025-06-12 07:40:17','2025-06-12 07:40:18'),
(17,2,'ODKT','INV-WLFT7AMR',100100,'qris','PENDING',1,'2025-06-12 08:33:53','2025-06-12 08:33:53'),
(18,2,'PFHE','INV-XMQBSA85',100100,'qris','PAID',1,'2025-06-12 08:34:19','2025-06-12 08:34:20'),
(19,2,'JJRF','INV-5ZTYSIXB',42042,'qris','PAID',1,'2025-06-12 08:59:47','2025-06-12 08:59:48'),
(20,2,'4GG4','INV-K5MIUVMW',200200,'qris','PAID',1,'2025-06-12 21:24:22','2025-06-13 04:26:09'),
(21,2,'CBKV','INV-ZZ3ZFPTN',100100,'cash','PENDING',1,'2025-06-13 04:26:24','2025-06-13 04:26:24'),
(22,2,'52O4','INV-P6DJIQRQ',100100,'qris','PENDING',1,'2025-06-13 04:32:15','2025-06-13 04:32:15'),
(23,2,'2TN2','INV-GXLJ6ON8',100100,'cash','PENDING',1,'2025-06-13 04:32:52','2025-06-13 04:32:52'),
(24,2,'CQFC','INV-JNHRGZAA',100100,'cash','PENDING',1,'2025-06-13 04:33:18','2025-06-13 04:33:18'),
(25,2,'LIMJ','INV-W4VGSQOP',100100,'qris','PENDING',1,'2025-06-13 04:34:17','2025-06-13 04:34:17'),
(26,2,'F5W6','INV-159ERYGR',100100,'qris','PENDING',1,'2025-06-13 04:36:28','2025-06-13 04:36:28'),
(27,2,'9L58','INV-PUAANAVN',100100,'qris','PENDING',1,'2025-06-13 04:36:57','2025-06-13 04:36:57'),
(28,2,'F7LN','INV-EBQ98LTD',100100,'qris','PENDING',1,'2025-06-13 04:37:25','2025-06-13 04:37:25'),
(29,2,'B0IJ','INV-FOZKU3PA',100100,'qris','PENDING',1,'2025-06-13 04:40:27','2025-06-13 04:40:27'),
(30,2,'QUIR','INV-58DS7QDD',100100,'qris','PENDING',1,'2025-06-13 04:45:14','2025-06-13 04:45:14'),
(31,2,'UMEU','INV-WOGMTWCV',100100,'qris','PENDING',1,'2025-06-13 04:46:24','2025-06-13 04:46:24'),
(32,2,'KNUO','INV-VYD5YYVO',100100,'qris','PENDING',1,'2025-06-13 04:48:22','2025-06-13 04:48:22'),
(33,2,'BSYR','INV-S0VXZOKZ',100100,'qris','PENDING',1,'2025-06-13 04:49:05','2025-06-13 04:49:05'),
(34,2,'ACR7','INV-OZRAHJQM',100100,'qris','PENDING',1,'2025-06-13 04:49:40','2025-06-13 04:49:40'),
(35,2,'RCDU','INV-SHKBX1CK',100100,'qris','PENDING',1,'2025-06-13 04:50:07','2025-06-13 04:50:07'),
(36,2,'DGRP','INV-JTGHD0R3',100100,'qris','PENDING',1,'2025-06-13 04:51:04','2025-06-13 04:51:04'),
(37,2,'RWMF','INV-KSDNPVTK',100100,'qris','PENDING',1,'2025-06-13 04:51:30','2025-06-13 04:51:30'),
(38,2,'IQ4G','INV-LATOG0FB',100100,'cash','PENDING',1,'2025-06-13 04:53:11','2025-06-13 04:53:11'),
(39,2,'XJTO','INV-0NNQQGXG',100100,'qris','PENDING',1,'2025-06-13 04:53:30','2025-06-13 04:53:30'),
(40,2,'2BZS','INV-IFW52LSF',100100,'cash','PAID',1,'2025-06-13 04:53:36','2025-06-13 04:53:45'),
(41,2,'XHS1','INV-YDZJV6DO',100100,'qris','PENDING',1,'2025-06-13 04:54:01','2025-06-13 04:54:01'),
(42,2,'5H6O','INV-GEWVTD48',100100,'cash','PENDING',1,'2025-06-13 04:54:09','2025-06-13 04:54:09'),
(43,2,'OOAP','INV-9BN6OPOP',100100,'qris','PAID',1,'2025-06-13 05:02:29','2025-06-13 05:02:31'),
(44,2,'F4RE','INV-RDBEX6PJ',100100,'qris','PAID',1,'2025-06-13 05:03:15','2025-06-13 05:03:23'),
(45,2,'8GSP','INV-BLD5I05L',25025,'qris','PAID',1,'2025-06-13 10:34:44','2025-06-13 10:34:45'),
(46,2,'YXTM','INV-7ITWHULO',25025,'cash','PAID',1,'2025-06-13 12:34:30','2025-06-13 12:34:37'),
(47,2,'AGVV','INV-HE2HKR9E',6006,'cash','PAID',1,'2025-06-13 16:36:27','2025-06-13 16:36:28'),
(48,2,'JOMB','INV-TA8PBGQM',3003,'cash','PAID',1,'2025-06-13 16:37:00','2025-06-13 16:37:01'),
(49,2,'F3NU','INV-5AHD3CA8',3003,'qris','PAID',1,'2025-06-13 16:41:45','2025-06-13 16:41:48'),
(50,2,'OYJG','INV-KWS0RCTF',6006,'qris','PAID',1,'2025-06-13 16:45:14','2025-06-13 16:45:15');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT IGNORE INTO `sessions` VALUES
('2CxyicYidLKUu00aKr7rmvZ3zJAfnjVOvDlMZI7N',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibVFYODF0N2ROUmx3aEhPTDZNMjVsSzY5YU1kWktZR3ZCTGVVRGl6WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9nZXQtc3RvY2svMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749833642),
('bppxfN0RMVG3LTPHpeW8XTqi1ghs9bkCZam4p0aC',NULL,'149.57.180.80','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm1vYU44YmVkYmg1SW15ZGtPcVEwaFhNdUJWV0R5YUVDdTFMOUVlVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749813940),
('cjfP9OmnxOzxur44TRPfBfEuO3Vruha7hz2B6mp3',NULL,'5.181.170.220','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWtSSzlsQzV2cTRVMmZQOGY3UWVxcUFMY3E5RVBadmpscjgwUTN1ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749821293),
('CjvcdRmE7XI6m9KAzxafC7s7wwgosP5Ti2Zc1Ift',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicG11Y0s2SnpWTElVdXJWNEJmZEFRRnpQWWxBWTJZZmNKTWFiR2hBZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749832910),
('cwKBx2YBbBl2B7XHydSwr8OiiTWbKdzeo8l2LgqX',NULL,'149.57.180.167','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ01Ed3IyaHc2Z2xDcFg5Vmw3VjdVOVpvaTV1UzZ2ZEdhV0xSRExXbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749820554),
('gjSesFgksCheSn3YFAVKmUQcTo9tvEjyEJrwj3yQ',NULL,'103.121.138.224','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE1SaURWTDRFQ3l3RzhiWFdkc3dNdVpkRThFdFhKYlNBVWhCa1dMOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZC9tZW51Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1749833808),
('he8GntQPMdQj9SmUguNZB55Eud88WXYsG689BIUc',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDk4YUNIM0NnaGtIMGlPeWF4eThHNkl2cjYwWnRmTGE3UlgyRlMxVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1749792643),
('jRrVavnlVHcXzyp3cloAOXqJy7IIYm3S3z6woeBK',NULL,'36.79.242.234','WhatsApp/2.23.20.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWdyR0dQYkc2VDF3djBtRHpVaG9hOHJ3REw2OXVRYWFPVWFyV1dFZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749818267),
('KIu4UiUbGVtb1piC7u5z8gSfkjyqhmHIcBlcti4k',NULL,'202.153.226.66','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibjAxNTNubTZPbnNuVUg2TmxkeTlBQjlkeFd5bVpCTXNWV0h1Q0JYRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749810898),
('l5LkXBFbVO2CG1ZEWXytsrncc4WNQvwfWEtXFqWX',NULL,'149.57.180.115','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUm1UUEYwRDduUVB3SDBQdktUSUxQeWRyNzJ2eWFrNWJ6VWlMa1h0TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749820537),
('ncC9ggOEVEZlwvjnvkMLHVxu3aD9FsDMy07v9WDG',NULL,'103.121.138.224','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWJqUkxCMjJCN01kTFhpR3R6V3FMZ0lpN3RmdXd4UUFWdjV3SHl4RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZC9tZW51Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1749833226),
('PnOo7zyuSC4sV0JZ3MU2ZfcakBaRRfgdDL1A2iNm',NULL,'36.79.242.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 OPR/119.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnEzT0l3NVJrZDVwcjQ1RjhOVGJ2YmVCd2kxTktJbjRySzhnWUFEcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749818152),
('qoHAp9qF9wcuLRFIQKIdqsju31IkYOhI0yCez9tR',NULL,'114.10.112.179','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicW9VRU1WaXJ2U2ZZaWxrZldzcDRIb2p0NE81QlJxdUh0ZmRXZXduOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZC9nZXQtc3RvY2svMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749796031),
('ranaPD1ZpIDWV187pFIFenOlbhCTSpO3NWVvwIF4',NULL,'5.181.170.220','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiREFlUXJUc1laYzNzb3N4WFNWN0ZvZEJTWlJYd05kMmVhYWdoSDI3NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749821289),
('rGd2LZWx7z9fiaXYdpnxN4LcvGkid5rGUgGeicpy',NULL,'182.4.102.184','Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWszZGxWMkd5UUl4S3lWUUF5QVdqZkRvRk5iQXBFUkxNV25ITlRXMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749820185),
('RKrn3btFpViT3c25l0fDOene6USMpiaNt0JTW5pg',NULL,'202.153.226.66','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWpxa0dVSVdCR3hrZHNMSlhSQmNGRExWT3A1SE52TmlWdUxZSHdCViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749790953),
('SFIZV7AkaaDSH8LMSPMvimpO7e6t1n4AOlbeY8nP',NULL,'162.243.51.137','Mozilla/5.0 (compatible; OpenDirScraper/1.0)','YTozOntzOjY6Il90b2tlbiI7czo0MDoibzNFVEVLYjFqdUpmTVBJWG1wVGM2TWhKbU5KWFRmakRyTGZkcmR6cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749819400),
('t0qg3diwYvTCwFEi8r6ARWTbuVlcOVuDljSeYKFz',NULL,'103.121.138.224','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTVOU285WDBiTXhYYUpBN1dSZzdUaU5weVJkWEJ4djlOVjA4cWJzeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZC9nZXQtc3RvY2svMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749832529),
('tIkqsWUrPU8zHm8tApuG3fRzkodEfyqDg7TTjKEj',NULL,'36.79.242.234','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 OPR/119.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoicFRIdG1HUExYbGsweFE5VWZlNnFjWndmcmdxWUJaeXpyY2JIeVp2ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZC9nZXQtc3RvY2svNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749827069),
('tXEZ6QrUKk8ZUjxKjkiIMmIw6heTLMQVyv929WNk',NULL,'149.57.180.37','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFhpRHZxemNnVmo0Mnoyc3hkYUNROXp1elp3U0NRc04weks2OU1ySSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749812145),
('UkW4G95x9UOoKVboCcoFhDvX90IlaTXsehWifynW',NULL,'103.121.138.224','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiazZGcGR4VWpqSzRab044cmhUSWxMT0p0OWxMcm9RQ05xVlRSc05qQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZC9tZW51Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1749832621),
('wKrDbuBrhDFPZZ3PHR9OSHniJb3vF19aNSqpVLCL',NULL,'188.245.193.111','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWE5NkJOWVV2Rm1hQ0JSdzY0VmYwSDVkSFIxQ2dGRnRUdkVNM0w2UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749791187),
('yasa13Iz7n6ygtkaC1RlLbpzUQD1rJT4hIV65VO5',NULL,'159.89.122.178','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmxidlNBVjdzTW84ejE5bEVvd2dlMGNUS2FlQTZlVTZTVXo5dTVqYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly93d3cuc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749821961),
('YLchjUPqeiUiu1t9xFH5Tjzr7Kx8ZCmsLJDRyzNC',NULL,'36.78.42.98','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDZpQU8yNjJTSzRtd3ZXMmhIdktWYXJsbWcwOURKbzJuRHhVd3RieiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749818350),
('Z4QyODFZzhVE46gM3DehumbjtI0CTSlPLyMGeKkM',NULL,'159.89.122.178','Mozilla/5.0 (X11; Linux x86_64; rv:136.0) Gecko/20100101 Firefox/136.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDBKaHBONjhHaG00QUVDNkJvZk9FR2MwUklhT25kallrOFlsUmhoQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749821963);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `stock_code` varchar(255) NOT NULL,
  `stock_name` varchar(255) NOT NULL,
  `stock_description` text DEFAULT NULL,
  `stock_quantity` double NOT NULL,
  `stock_type` bigint(20) NOT NULL,
  `stock_thumbnail` varchar(255) DEFAULT NULL,
  `stock_image` varchar(255) DEFAULT NULL,
  `stock_image1` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `tax` double NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stock_stock_code_unique` (`stock_code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT IGNORE INTO `stock` VALUES
(1,1,'S001','Teh Original','Teh Original',99,5,'https://project-fz.my.id/assets/teh-original.jpg','https://project-fz.my.id/assets/teh-original.jpg','https://project-fz.my.id/assets/teh-original.jpg',3000,0,0,NULL,NULL),
(2,2,'S002','Teh Lemon','Teh Lemon',99,5,'https://project-fz.my.id/assets/teh-lemon.jpg','https://project-fz.my.id/assets/teh-lemon.jpg','https://project-fz.my.id/assets/teh-lemon.jpg',6000,0,0,NULL,NULL),
(3,3,'S003','Teh Apel','Teh Apel',99,5,'https://project-fz.my.id/assets/teh-apel.jpg','https://project-fz.my.id/assets/teh-apel.jpg','https://project-fz.my.id/assets/teh-apel.jpg',6000,0,0,NULL,NULL),
(4,4,'S004','Teh Mangga','Teh Mangga',99,5,'https://project-fz.my.id/assets/teh-mangga.jpg','https://project-fz.my.id/assets/teh-mangga.jpg','https://project-fz.my.id/assets/teh-mangga.jpg',6000,0,0,NULL,NULL),
(5,5,'S005','Teh Nanas','Teh Nanas',99,5,'https://project-fz.my.id/assets/teh-nanas.jpg','https://project-fz.my.id/assets/teh-nanas.jpg','https://project-fz.my.id/assets/teh-nanas.jpg',6000,0,0,NULL,NULL),
(6,6,'S006','Teh Leci','Teh Leci',99,5,'https://project-fz.my.id/assets/teh-leci.jpg','https://project-fz.my.id/assets/teh-leci.jpg','https://project-fz.my.id/assets/teh-leci.jpg',6000,0,0,NULL,NULL),
(7,7,'S007','Teh Persik','Teh Persik',99,5,'https://project-fz.my.id/assets/teh-persik.jpg','https://project-fz.my.id/assets/teh-persik.jpg','https://project-fz.my.id/assets/teh-persik.jpg',6000,0,0,NULL,NULL),
(8,8,'S008','Teh Melon','Teh Melon',99,5,'https://project-fz.my.id/assets/teh-melon.jpg','https://project-fz.my.id/assets/teh-melonl.jpg','https://project-fz.my.id/assets/teh-melonl.jpg',6000,0,0,NULL,NULL),
(9,9,'S009','Teh Markisa','Teh Markisa',99,5,'https://project-fz.my.id/assets/teh-markisa.jpg','https://project-fz.my.id/assets/teh-markisa.jpg','https://project-fz.my.id/assets/teh-markisa.jpg',6000,0,0,NULL,NULL),
(10,10,'S010','Teh Jambu','Teh Jambu',99,5,'https://project-fz.my.id/assets/teh-jambu.jpg','https://project-fz.my.id/assets/teh-jambu.jpg','https://project-fz.my.id/assets/teh-jambu.jpg',6000,0,0,NULL,NULL),
(11,11,'S012','Teh Kampul','Teh Kampul',99,5,'https://project-fz.my.id/assets/teh-kampul.jpg','https://project-fz.my.id/assets/teh-kampul.jpg','https://project-fz.my.id/assets/teh-kampul.jpg',6000,0,0,NULL,NULL),
(12,12,'S013','Teh Stroberi','Teh Stroberi',99,5,'https://project-fz.my.id/assets/teh-stroberi.jpg','https://project-fz.my.id/assets/teh-stroberi.jpg','https://project-fz.my.id/assets/teh-stroberi.jpg',6000,0,0,NULL,NULL),
(13,13,'S014','Teh Jeruk','Teh Jeruk',99,5,'https://project-fz.my.id/assets/teh-jeruk.jpg','https://project-fz.my.id/assets/teh-jeruk.jpg','https://project-fz.my.id/assets/teh-jeruk.jpg',6000,0,0,NULL,NULL),
(15,15,'S016','Teh Milo','Teh Milo',99,5,'https://project-fz.my.id/assets/teh-milo.jpg','https://project-fz.my.id/assets/teh-milo.jpg','https://project-fz.my.id/assets/teh-milo.jpg',6000,0,0,NULL,NULL),
(16,1,'S017','Mojito Stroberi','Mojito Stroberi',99,6,'https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(17,1,'S018','Mojito Anggur','Mojito Anggur',99,6,'https://project-fz.my.id/assets/mojito-anggur.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(18,1,'S019','Mojito Leci','Mojito Leci',99,6,'https://project-fz.my.id/assets/mojito-leci.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(19,1,'S020','Mojito Jeruk','Mojito Jeruk',99,6,'https://project-fz.my.id/assets/mojito-jeruk.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(20,1,'S021','Mojito Mangga','Mojito Mangga',99,6,'https://project-fz.my.id/assets/mojito-mangga.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(21,1,'S022','Mojito Buah Mix','Mojito Buah Mix',99,6,'https://project-fz.my.id/assets/mojito-buahmix.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(22,1,'S023','Mojito Nanas','Mojito Nanas',99,6,'https://project-fz.my.id/assets/mojito-nanas.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(23,1,'S024','Mojito Melon','Mojito Melon',99,6,'https://project-fz.my.id/assets/mojito-melon.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(24,1,'S025','Mojito Persik','Mojito Persik',99,6,'https://project-fz.my.id/assets/mojito-persik.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(25,1,'S026','Mojito Apel','Mojito Apel',99,6,'https://project-fz.my.id/assets/mojito-apel.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(26,1,'S027','Mojito Jambu','Mojito Jambu',99,6,'https://project-fz.my.id/assets/mojito-jambu.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(27,1,'S028','Mojito Markisa','Mojito Markisa',99,6,'https://project-fz.my.id/assets/mojito-markisa.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(28,1,'S029','Milo Susu','Milo Susu',99,7,'https://project-fz.my.id/assets/milo-susu.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',6000,0,0,NULL,NULL),
(29,1,'S030','Es Cokelat','Es Cokelat',99,7,'https://project-fz.my.id/assets/es-cokelat.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',7000,0,0,NULL,NULL),
(30,1,'S031','Milk Tea','Milk Tea',99,7,'https://project-fz.my.id/assets/milk-tea.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',8000,0,0,NULL,NULL),
(31,1,'S032','Thai Tea','Thai Tea',99,7,'https://project-fz.my.id/assets/thai-tea.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',8000,0,0,NULL,NULL),
(32,1,'S033','Matcha','Matcha',99,7,'https://project-fz.my.id/assets/matcha.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',8000,0,0,NULL,NULL),
(33,1,'S034','Taro','Taro',99,7,'https://project-fz.my.id/assets/taro.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg','https://project-fz.my.id/assets/mojito-stroberi.jpg',7000,0,0,NULL,NULL);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_type`
--

DROP TABLE IF EXISTS `stock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stock_name` varchar(255) NOT NULL,
  `stock_description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_type`
--

LOCK TABLES `stock_type` WRITE;
/*!40000 ALTER TABLE `stock_type` DISABLE KEYS */;
INSERT IGNORE INTO `stock_type` VALUES
(1,'Promo','Promo Baru',NULL,NULL),
(2,'Special Sapi','Special Sapi',NULL,NULL),
(3,'Menu Ayam','Menu Ayam',NULL,NULL),
(4,'Lain-Lain','Lain-Lain',NULL,NULL),
(5,'Teh Series','Teh Series',NULL,NULL),
(6,'Mojito Series','Mojito Series',NULL,NULL),
(7,'Milk Series','Milk Series',NULL,NULL);
/*!40000 ALTER TABLE `stock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT '1',
  `status` varchar(255) NOT NULL DEFAULT '3',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-06-13 23:58:46
