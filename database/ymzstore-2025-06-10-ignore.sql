/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ymzstore
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB

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
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT IGNORE INTO `branch` VALUES
(1,'BRANCH0001','Chapter Paragon Mall','Self Order','085882357670','-6.2088','106.8456','','Jl. Paragon No.1, Semarang',1,NULL,NULL),
(2,'BRANCH0002','Chapter Mall Kelapa Gading','Self Order','08127635241','-6.1751','110.3688','','Jl. Kelapa Gading No.2, Jakarta',1,NULL,NULL),
(3,'BRANCH0003','Chapter Mall Taman Anggrek','Self Order','081736452716','-6.2500','107.6191','','Jl. Taman Anggrek No.3, Jakarta',1,NULL,NULL),
(4,'BRANCH0004','Chapter Mall Puri Indah','Self Order','085882746179','-6.9147','112.7383','','Jl. Puri Indah No.4, Jakarta',1,NULL,NULL),
(5,'BRANCH0005','Chapter Mall Senayan','Self Order','089655263546','-7.7972','115.1687','','Jl. Senayan No.5, Jakarta',1,NULL,NULL),
(6,'BRANCH0006','Chapter Mall Gandaria City','Self Order','081362537564','-6.2000','110.3646','','Jl. Gandaria City No.6, Jakarta',1,NULL,NULL),
(7,'BRANCH0007','Chapter Mall Grand Indonesia','Self Order','08128374659','-6.9142','98.6722','','Jl. Grand Indonesia No.7, Jakarta',1,NULL,NULL),
(8,'BRANCH0008','Chapter Mall Plaza Senayan','Self Order','0858837265879','-6.1750','119.4179','','Jl. Plaza Senayan No.8, Jakarta',1,NULL,NULL),
(9,'BRANCH0009','Chapter Mall Central Park','Self Order','0218475633','-6.2080','104.6950','','Jl. Central Park No.9, Jakarta',1,NULL,NULL);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT IGNORE INTO `stock` VALUES
(1,1,'STOCK0001','Steak Sapi','Olahan daging sapi yang paling ikonik, biasanya dipanggang atau dibakar. Ada berbagai potongan steak seperti sirloin, tenderloin, ribeye, T-bone, dan porterhouse. Tingkat kematangan bisa diatur dari rare hingga well-done.',5,2,'https://asset.kompas.com/crops/ZApJuQRRj8hCN6qhFeFp1YcDxeM=/0x0:1000x667/1200x800/data/photo/2022/12/27/63aa85776cf9e.jpg','https://asset.kompas.com/crops/ZApJuQRRj8hCN6qhFeFp1YcDxeM=/0x0:1000x667/1200x800/data/photo/2022/12/27/63aa85776cf9e.jpg','https://asset.kompas.com/crops/ZApJuQRRj8hCN6qhFeFp1YcDxeM=/0x0:1000x667/1200x800/data/photo/2022/12/27/63aa85776cf9e.jpg',100000,0.3,1,NULL,NULL),
(2,1,'STOCK0002','Rendang','Masakan khas Indonesia yang mendunia. Daging sapi dimasak perlahan dalam santan dan bumbu rempah-rempah yang kaya hingga mengering dan bumbunya meresap sempurna.',7,2,'https://cdn0-production-images-kly.akamaized.net/jAhRHll_RQBlFGXC18vg2VpRWZ0=/0x120:3000x1811/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3282059/original/075075700_1604028408-shutterstock_1788721670.jpg','https://cdn0-production-images-kly.akamaized.net/jAhRHll_RQBlFGXC18vg2VpRWZ0=/0x120:3000x1811/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3282059/original/075075700_1604028408-shutterstock_1788721670.jpg','https://cdn0-production-images-kly.akamaized.net/jAhRHll_RQBlFGXC18vg2VpRWZ0=/0x120:3000x1811/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3282059/original/075075700_1604028408-shutterstock_1788721670.jpg',53000,0.3,1,NULL,NULL),
(3,1,'STOCK0003','Steak Sapi Full','Olahan daging sapi yang paling ikonik, biasanya dipanggang atau dibakar. Ada berbagai potongan steak seperti sirloin, tenderloin, ribeye, T-bone, dan porterhouse. Tingkat kematangan bisa diatur dari rare hingga well-done.',7,1,'https://asset.kompas.com/crops/ZApJuQRRj8hCN6qhFeFp1YcDxeM=/0x0:1000x667/1200x800/data/photo/2022/12/27/63aa85776cf9e.jpg','https://asset.kompas.com/crops/ZApJuQRRj8hCN6qhFeFp1YcDxeM=/0x0:1000x667/1200x800/data/photo/2022/12/27/63aa85776cf9e.jpg','https://asset.kompas.com/crops/ZApJuQRRj8hCN6qhFeFp1YcDxeM=/0x0:1000x667/1200x800/data/photo/2022/12/27/63aa85776cf9e.jpg',100000,0.3,1,NULL,NULL),
(4,1,'STOCK0004','Rendang Sei Full','Masakan khas Indonesia yang mendunia. Daging sapi dimasak perlahan dalam santan dan bumbu rempah-rempah yang kaya hingga mengering dan bumbunya meresap sempurna.',7,1,'https://cdn0-production-images-kly.akamaized.net/jAhRHll_RQBlFGXC18vg2VpRWZ0=/0x120:3000x1811/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3282059/original/075075700_1604028408-shutterstock_1788721670.jpg','https://cdn0-production-images-kly.akamaized.net/jAhRHll_RQBlFGXC18vg2VpRWZ0=/0x120:3000x1811/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3282059/original/075075700_1604028408-shutterstock_1788721670.jpg','https://cdn0-production-images-kly.akamaized.net/jAhRHll_RQBlFGXC18vg2VpRWZ0=/0x120:3000x1811/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3282059/original/075075700_1604028408-shutterstock_1788721670.jpg',53000,0.3,1,NULL,NULL);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stock_type`
--

LOCK TABLES `stock_type` WRITE;
/*!40000 ALTER TABLE `stock_type` DISABLE KEYS */;
INSERT IGNORE INTO `stock_type` VALUES
(1,'Promo','Promo Baru',NULL,NULL),
(2,'Special Sapi','Special Sapi',NULL,NULL),
(3,'Menu Ayam','Menu Ayam',NULL,NULL);
/*!40000 ALTER TABLE `stock_type` ENABLE KEYS */;
UNLOCK TABLES;

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-06-10 23:26:54
