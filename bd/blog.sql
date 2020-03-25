-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.5.52-0+deb8u1

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
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_tag_article_id_foreign` (`article_id`),
  KEY `article_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
INSERT INTO `article_tag` VALUES (15,15,2,NULL,NULL),(16,15,3,NULL,NULL),(17,16,2,NULL,NULL),(18,16,3,NULL,NULL),(19,16,6,NULL,NULL),(20,17,5,NULL,NULL),(21,17,6,NULL,NULL),(22,17,4,NULL,NULL),(23,18,5,NULL,NULL),(24,18,6,NULL,NULL),(25,18,4,NULL,NULL),(26,19,5,NULL,NULL),(27,19,2,NULL,NULL),(28,19,6,NULL,NULL);
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_user_id_foreign` (`user_id`),
  KEY `articles_category_id_foreign` (`category_id`),
  CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (15,'PHP FOR DUMMIES','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>',14,2,'2016-10-19 19:18:03','2016-10-19 19:18:03','php-for-dummies'),(16,'Python for Dummies','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>',14,6,'2016-10-19 19:19:40','2016-10-19 19:19:40','python-for-dummies'),(17,'Node js para dummies','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>',14,7,'2016-10-19 19:20:41','2016-10-19 19:20:41','node-js-para-dummies'),(18,'jQuery for dummies','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>',14,8,'2016-10-19 19:21:15','2016-10-19 19:21:15','jquery-for-dummies'),(19,'Ajax for dummies','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>',14,4,'2016-10-19 19:21:40','2016-10-19 19:21:40','ajax-for-dummies');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Php','2016-09-26 18:25:30','2016-09-26 18:25:30'),(4,'Ajax','2016-09-26 18:26:01','2016-09-26 18:26:01'),(6,'Python','2016-09-26 18:26:32','2016-09-26 18:26:32'),(7,'Node js','2016-09-27 19:25:33','2016-09-27 19:25:33'),(8,'jquery avanzado','2016-10-03 17:10:02','2016-10-03 17:10:02');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_article_id_foreign` (`article_id`),
  CONSTRAINT `image_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (5,15,'2016-10-19 19:18:03','2016-10-19 19:18:03','blog_1476890283.png'),(6,16,'2016-10-19 19:19:40','2016-10-19 19:19:40','blog_1476890380.png'),(7,17,'2016-10-19 19:20:41','2016-10-19 19:20:41','blog_1476890441.png'),(8,18,'2016-10-19 19:21:15','2016-10-19 19:21:15','blog_1476890475.jpg'),(9,19,'2016-10-19 19:21:40','2016-10-19 19:21:40','blog_1476890500.jpg');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_08_23_005815_add_categories_table',1),('2016_08_23_012449_add_articles_table',1),('2016_08_23_013816_add_image_table',1),('2016_08_23_014147_add_tags_table',1),('2016_09_15_022301_add_Slug_to_Articles_table',1);
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
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
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (2,'Programación nivel 2','2016-09-26 21:01:13','2016-09-26 21:01:13'),(3,'Programacion nivel 3','2016-09-26 21:24:32','2016-09-26 21:24:32'),(4,'Python para dummies','2016-09-26 21:24:42','2016-09-26 21:31:57'),(5,'javascript','2016-09-26 21:24:54','2016-09-26 21:24:54'),(6,'Prueba','2016-09-27 17:53:48','2016-09-27 17:53:48');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'gianni','asd123456@gmail.com','$2y$10$Vj5BmFH7LJhKt.dcR103s.wNvcr40tiQaRR.cD/uQeMPqeEytc9bS','admin',NULL,'2016-09-21 23:21:12','2016-09-23 21:47:48'),(2,'prueba','asddff@gmail.com','$2y$10$7LcYKgjQJPD3avflpOhu8eIvmAilOozBDvH55xsy66JSIUeTdDJBu','member',NULL,'2016-09-21 23:22:07','2016-09-21 23:22:07'),(10,'andres crimaldi','acrimaldi@gmail.com','$2y$10$ntaYDrE9M16Xq9363bG18OJsBP74NydaP5OS.SuX1P8JOYpoJ/VQq','member',NULL,'2016-09-23 20:17:58','2016-09-23 20:17:58'),(11,'paolo crimaldi','pcrimaldi@gmail.com','$2y$10$PHebfZVdpqy3s.4aszWdZO5Fwk4pGoGQ/Ocuh2iG/l1QXtGdDJIqm','member',NULL,'2016-09-23 20:18:20','2016-09-23 20:18:20'),(13,'nelly moreno','nmoreno@gmail.com','$2y$10$FwB9zCTyaWQpsR3LxWGjEe.AmmQjdnkGWtvCQ/VijlELVMqTOQlx2','member','7BBgPDLBs2LuMw2rypZq4A8m2BFNmUHUdmCzllNsdPtQMA5QEJdRlM5dpr1M','2016-09-23 20:19:03','2016-09-26 18:27:42'),(14,'santucci','santucci@gmail.com','$2y$10$44YHmeE.1kenFpqaXmBfmuERLZUNZk5S5fOJ.nbKshVXOorALJdAy','admin','r4Nt1g4ovQNw0Z1yseMSGdwMVh8t3sEGp5cHwqacPUyM0VSz9mDVMv941zMy','2016-09-26 18:24:40','2016-10-04 00:11:52'),(15,'prueba2','prueba2@gmaill.com','$2y$10$OzmCKQ5YYX.t97VXOvWSDuPnH.k51nEZEEGVghbWMl7zpK4EUoHmy','member',NULL,'2016-10-03 17:15:13','2016-10-03 17:15:13');
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

-- Dump completed on 2016-10-19 16:30:33
