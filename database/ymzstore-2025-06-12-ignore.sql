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
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT IGNORE INTO `branch` VALUES
(1,'BRANCH0001','Chapter Paragon Mall','Self Order','085882357670','-6.2088','106.8456','https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/99/b9/23/20151124-165301-largejpg.jpg?w=1200&h=-1&s=1','Jl. Paragon No.1, Semarang',1,NULL,NULL),
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
(6,0,'INV-Y2U9WBZO',1,3,2,'Self Order',1,100000,100,10,1,'',NULL,1,'2025-06-12 03:52:17','2025-06-12 03:52:17');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT IGNORE INTO `payment` VALUES
(1,2,'QIC0','INV-PXIVNUKR',153153,'qris','PAID',1,'2025-06-12 03:00:46','2025-06-12 03:00:50'),
(2,2,'QXHB','INV-MOIJQSFJ',100100,'qris','PAID',1,'2025-06-12 03:33:25','2025-06-12 03:33:30'),
(3,2,'C63K','INV-GKSKMWOK',10010053053,'qris','PAID',1,'2025-06-12 03:35:24','2025-06-12 03:35:25'),
(4,2,'EF5H','INV-Y2U9WBZO',100100,'qris','PAID',1,'2025-06-12 03:52:17','2025-06-12 03:52:24');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT IGNORE INTO `sessions` VALUES
('0EMHOTlZhURsaO0bRZ0UywVAF1Ncdw2lb6P9GnLA',NULL,'149.57.180.26','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0NUTW5pTlFDeU1URXpDaHdHYWNBSVNaM3V5WG5ZSnRibUFjVWpMOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749730709),
('6AdzfIkEWgTnTRJSMcavC6V1Q8v3mJa7DlJKpdK1',NULL,'149.57.180.80','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoieGl2MjVhR291SmluejJJb2VjRFQyMDNDdjNhOHU2SW9mZFkxMlR5diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnN0b3JlLnByb2plY3QtZnoubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1749725513),
('6FXjYNYAkLOzlcm68aXiRbVA5faEfpbZnbxpfOSH',NULL,'103.121.138.224','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEpBUlRiOTM0bFd2NXZscFc4TEpRazB2ajRZU3BTR25SWUF2bVVyTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZC9nZXQtc3RvY2svMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749729675),
('A0yjJECIO7RyxYtHJSVDNBzuBqYR0TpY1x96fwd3',NULL,'103.121.138.224','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3VLbTJuUDdDWWh5OGVNQjF0SkdQczJIakRXekJIUXB0NXRseDkwRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749731250),
('CuIxW4vir65RxHkzV89E39lP4TyDZeElATGdL6ST',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3lMWmMzYjh3OGJaTzZSb3pnak9aMDlnMnRwZlRDQTBlTW1xSFpnbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tZW51Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1749732256),
('jZiScZPM45lLMuOTXPAQYUlfXKwdFijjmJFWfjxD',NULL,'149.57.180.102','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWNOaUlpcVJQRTVkNHlMa1lIVUNWQVlEY3UwaFlFY0RLQ3BLbTJJMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1749725632),
('XqKC6GoBKePgN7KToAq5oWnPUNFupolqDzSX3edF',NULL,'202.153.226.66','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0lES1hJRE1aS0d6U3ozaFk2ck52UTNCYVlSM1FRcWNJRkVtbVZlSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vc3RvcmUucHJvamVjdC1mei5teS5pZC9tZW51Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1749725544);
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

-- Dump completed on 2025-06-12 19:50:12
