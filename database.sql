-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: influencer
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `influencers`
--

DROP TABLE IF EXISTS `influencers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `influencers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PENDING','WAIT','ACTIVE') COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maritalStatus` enum('MARRIED','SINGLE') COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('MALE','FEMALE','OTHER') COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `influencers`
--

LOCK TABLES `influencers` WRITE;
/*!40000 ALTER TABLE `influencers` DISABLE KEYS */;
INSERT INTO `influencers` VALUES (4,1,'Nguyen Suuu','ACTIVE','0988988098','nguyensu@gmail.com','SINGLE','MALE','2000-10-11 00:00:00','2022-10-22 17:02:13','2022-10-23 05:03:10'),(5,1,'Le Kim','PENDING','0988988222','anhlekim@gmail.com','MARRIED','FEMALE','2022-10-12 00:00:00','2022-10-22 17:04:25','2022-10-22 17:06:13');
/*!40000 ALTER TABLE `influencers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_10_22_121531_influencer',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',2,'MyAuthApp','a8e3a7a0113600aadef864a7f6a1be1e06d0875e67d009005752e1326abbb150','[\"*\"]',NULL,'2022-10-22 04:48:13','2022-10-22 04:48:13'),(2,'App\\Models\\User',2,'MyAuthApp','4aac2872865fc164c39fffa3c8b353482516c3272a447516897f9762cf7c4558','[\"*\"]',NULL,'2022-10-22 04:55:59','2022-10-22 04:55:59'),(3,'App\\Models\\User',2,'MyAuthApp','bc1c2546094df3f602fb0f0aa10e9acf750fb86728193f57773154d233d3f7dc','[\"*\"]',NULL,'2022-10-22 05:14:04','2022-10-22 05:14:04'),(4,'App\\Models\\User',2,'MyAuthApp','b39cd5b044671b8e4bdc7539e60d31705c309b0bfbae509b5c86d5a0ef89a778','[\"*\"]',NULL,'2022-10-22 05:15:24','2022-10-22 05:15:24'),(5,'App\\Models\\User',2,'MyAuthApp','7ab643c0012f7c50225c949805d33c2c67bddffe915e975dcfd5c4b0fcce5288','[\"*\"]',NULL,'2022-10-22 12:11:58','2022-10-22 12:11:58'),(6,'App\\Models\\User',2,'MyAuthApp','747a57b68451bca48f7a68b087191ef66a7b4a8c2bddfb588906887b5b0f42b3','[\"*\"]',NULL,'2022-10-22 12:15:00','2022-10-22 12:15:00'),(7,'App\\Models\\User',2,'MyAuthApp','96a394fa6dc4e9982a1209d86ae3f20693105ec11d32c07ec18855833735289f','[\"*\"]',NULL,'2022-10-22 12:20:57','2022-10-22 12:20:57'),(8,'App\\Models\\User',2,'MyAuthApp','f5638c62f40017c1e7281cea501eed7d8d7406a90987e08dde265b18b1ed90cb','[\"*\"]',NULL,'2022-10-22 12:26:12','2022-10-22 12:26:12'),(9,'App\\Models\\User',2,'MyAuthApp','bd5fcedb076bab98408cb804fbaf47139b5a01d61960c4c4bb718fef502a25e2','[\"*\"]',NULL,'2022-10-22 12:26:13','2022-10-22 12:26:13'),(10,'App\\Models\\User',2,'MyAuthApp','46b5a9f643d593d8620612768a6b51f06d2a2177b9cc9a9bda1fa5b950875fbd','[\"*\"]',NULL,'2022-10-22 12:26:44','2022-10-22 12:26:44'),(11,'App\\Models\\User',2,'MyAuthApp','bbd39094a260273ac663a2c6b4f94a4ef0310ebaee0f62aaedfa03f02b4989d4','[\"*\"]',NULL,'2022-10-22 12:27:00','2022-10-22 12:27:00'),(12,'App\\Models\\User',1,'MyAuthApp','f417f5531c7e6e0f62591ff1217639436dc34bbf2ada1334973ed0731549c76b','[\"*\"]',NULL,'2022-10-22 12:42:33','2022-10-22 12:42:33'),(13,'App\\Models\\User',1,'MyAuthApp','760bdf0295ba9df126d2665c1e75e0f116a54fd758956948648837223b899ee3','[\"*\"]',NULL,'2022-10-22 12:57:35','2022-10-22 12:57:35'),(14,'App\\Models\\User',1,'MyAuthApp','f227130f7d77c7ce7e862f16437058818e4120215591c235183657953d13aefe','[\"*\"]',NULL,'2022-10-22 12:57:37','2022-10-22 12:57:37'),(15,'App\\Models\\User',1,'MyAuthApp','1eb31984d366fa4ae2bf4e421e599edde1500ee97c958b2bc400a8eb539e4d53','[\"*\"]',NULL,'2022-10-22 12:57:37','2022-10-22 12:57:37'),(16,'App\\Models\\User',1,'MyAuthApp','32662b91403793d3958a94ce093804d28566230d8944907e69cfde3845558d73','[\"*\"]',NULL,'2022-10-22 12:57:37','2022-10-22 12:57:37'),(17,'App\\Models\\User',2,'MyAuthApp','e6ba14af2d680006c66e9c3dec529c641deb6d0db6410dcb494f9ac6abb1554c','[\"*\"]',NULL,'2022-10-22 13:02:02','2022-10-22 13:02:02'),(18,'App\\Models\\User',1,'MyAuthApp','a25a8b42c287d9924e1a421ff55107a4c87acae19556c33e9bc2384af1176af6','[\"*\"]',NULL,'2022-10-22 13:02:06','2022-10-22 13:02:06'),(19,'App\\Models\\User',2,'MyAuthApp','95aaa91601184f280dc96ead9d9965fab314670d4cd5b2d11d6ccd1cccd21480','[\"*\"]',NULL,'2022-10-22 13:20:04','2022-10-22 13:20:04'),(20,'App\\Models\\User',2,'MyAuthApp','9bc1aced6a10cc61fb995ebc39c2963e29faf7471a27b3c2c3a11f0063076372','[\"*\"]',NULL,'2022-10-22 13:21:41','2022-10-22 13:21:41'),(21,'App\\Models\\User',2,'MyAuthApp','5410f07d06623b2b1d0bb3de88ec76b3a9ccec7f44cac331f06c5a4256d75932','[\"*\"]',NULL,'2022-10-22 13:21:42','2022-10-22 13:21:42'),(22,'App\\Models\\User',2,'MyAuthApp','730f1ce4b67c0ab52feefa158b022690fbc6249128e883b870361cc05a16f1a1','[\"*\"]',NULL,'2022-10-22 13:21:43','2022-10-22 13:21:43'),(23,'App\\Models\\User',2,'MyAuthApp','7f5adb16d021dec43ae8c9536a548b3628352a241e37e679979d23dc944c6c1e','[\"*\"]',NULL,'2022-10-22 13:21:44','2022-10-22 13:21:44'),(24,'App\\Models\\User',2,'MyAuthApp','9f61ba402c246229a73a1527f282d2000b8cc372733069e134391144693c9683','[\"*\"]',NULL,'2022-10-22 13:22:05','2022-10-22 13:22:05'),(25,'App\\Models\\User',2,'MyAuthApp','6ef5d71a9469af51482f9518d7adbf6ec2844fe111b612acfaa839a46b2a855d','[\"*\"]',NULL,'2022-10-22 13:22:06','2022-10-22 13:22:06'),(26,'App\\Models\\User',2,'MyAuthApp','142bdf2e6b2567623ac68768c83d52fda8770303338b2f08f1b61ae87a10f96c','[\"*\"]',NULL,'2022-10-22 13:22:07','2022-10-22 13:22:07'),(27,'App\\Models\\User',2,'MyAuthApp','96bbe9e951a5a67ad72c78478bfdbdb26f47e262ce979d5bcff712be53fc7a8f','[\"*\"]',NULL,'2022-10-22 13:22:07','2022-10-22 13:22:07'),(28,'App\\Models\\User',2,'MyAuthApp','8de93a29e9c7f91fdae80f0f9177a2d42362ebbdd4aeda88172f640b26a81c55','[\"*\"]',NULL,'2022-10-22 13:22:08','2022-10-22 13:22:08'),(29,'App\\Models\\User',2,'MyAuthApp','e6d45c092ee5e114114b5f35b5a1098bc8d11d62bb391dadf6faace31eaeb709','[\"*\"]',NULL,'2022-10-22 13:22:09','2022-10-22 13:22:09'),(30,'App\\Models\\User',1,'MyAuthApp','f488478d37ca5910904eb1e464bf6688432b3969236f4ddaeb7f56c290d8f392','[\"*\"]','2022-10-22 14:55:46','2022-10-22 13:39:21','2022-10-22 14:55:46'),(31,'App\\Models\\User',2,'MyAuthApp','ea9bbfe5c94dd7f1c8fd3989128c92ceb46f7e1a160747f9d1496e5248e478cc','[\"*\"]',NULL,'2022-10-22 14:18:25','2022-10-22 14:18:25'),(32,'App\\Models\\User',2,'MyAuthApp','b3b8df347c1616c800f85c84db12fba64b8f860b77ace5d7b86cdc9c7ca3b3d4','[\"*\"]',NULL,'2022-10-22 14:25:49','2022-10-22 14:25:49'),(33,'App\\Models\\User',2,'MyAuthApp','5ca5760308ea2a28933da789a036acbfca1ea07db9995bd4d7ec2d304d5bd2f3','[\"*\"]',NULL,'2022-10-22 14:28:45','2022-10-22 14:28:45'),(34,'App\\Models\\User',2,'MyAuthApp','840378df6fc2d2a1999228e3d4506f36fd44a9f3ede5f8a7b3c3b8981a5e5649','[\"*\"]',NULL,'2022-10-22 14:28:46','2022-10-22 14:28:46'),(35,'App\\Models\\User',2,'MyAuthApp','6fd5b0b8bacc35060b34eb97a21b3072c502467c930866db186ccfc3aee7f16f','[\"*\"]',NULL,'2022-10-22 14:28:46','2022-10-22 14:28:46'),(36,'App\\Models\\User',1,'MyAuthApp','696a891676156172144dbc93df41cd2fda053b492fad6fcbf857cc99c9e8cca9','[\"*\"]',NULL,'2022-10-22 14:28:54','2022-10-22 14:28:54'),(37,'App\\Models\\User',1,'MyAuthApp','ce2d7770eaf16428bb2433cc031a626e80d679b3f8ad908c34ea5630194569f5','[\"*\"]','2022-10-22 15:29:43','2022-10-22 14:59:48','2022-10-22 15:29:43'),(38,'App\\Models\\User',1,'MyAuthApp','8aff3a21414684669cf649d9672b9651511e06e6f75aa5b3fc4a536e33c6f82d','[\"*\"]','2022-10-22 16:28:14','2022-10-22 15:29:58','2022-10-22 16:28:14'),(39,'App\\Models\\User',4,'MyAuthApp','87c928b16255c2cae102cddeaf6ff3c2d6dcccfbbe02afb287110d6aec4a343b','[\"*\"]',NULL,'2022-10-22 16:40:32','2022-10-22 16:40:32'),(40,'App\\Models\\User',4,'MyAuthApp','8f7e58f5dfd529944a8f01849414a49c47fc9f1a932eb52b14318caa7b72f858','[\"*\"]','2022-10-22 16:42:21','2022-10-22 16:41:32','2022-10-22 16:42:21'),(41,'App\\Models\\User',1,'MyAuthApp','1112cfec3c2710d137495138fdae90d6482aa471029cf398e9fd0ecbcbb30c85','[\"*\"]','2022-10-23 04:45:54','2022-10-22 16:43:01','2022-10-23 04:45:54'),(42,'App\\Models\\User',1,'MyAuthApp','5cef33acaccb879b731477bbe903cc1f15e45f028b52844d4983203df71ff528','[\"*\"]','2022-10-23 05:03:11','2022-10-23 05:02:44','2022-10-23 05:03:11');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('ADMIN','SALE') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@gmail.com',NULL,'$2a$12$P8wIS.ra3pq4VYZaAfKuHehvqnBWb5WZ8KvnYmRTSLjlJQBqGH1Qu',NULL,NULL,NULL,'ADMIN'),(2,'TamK','user@gmail.com',NULL,'$2y$10$FLCIAUois41ua5syJogScuiA8B.A4UFL8ch33DipNETIU11vAvDWK',NULL,'2022-10-22 04:48:13','2022-10-22 04:48:13',NULL),(4,'User Test','user2@gmail.com',NULL,'$2y$10$vpUnnn1FTQFESEay2fYZlesBS32yKOCxp4hGJ9sBJPR/8IN64Q/4m',NULL,'2022-10-22 16:40:32','2022-10-22 16:40:32','SALE');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-23 14:07:33
