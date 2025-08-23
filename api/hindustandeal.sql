-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hindustandeal
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (1,1,'swati','mahajan','','jhjhjhj','hjhjhjh','jhjhjhjh','766778',222,3513,''),(2,5,'Suhail ','Syed ','Perumbakkam','3/111','Opp.gym','Colachel','600073',99,1503,''),(12,25,'Manikandan','C','','Mottavilai','Karankadu PO','Kanyakumari Dist','629809',99,1503,''),(9,19,'kannan','Page','','Mottavilai','Karankadu PO','Kanyakumari Dist','629809',99,1503,''),(10,23,'Ravi','A','','Kusavankuzhi','Karan Kadu PO','Kanyakumari Dist','629809',99,1503,''),(11,24,'Siva ','Kumar','','Kanden Vilai','Kanden Vilai PO','Kanyakumari Dist','629810',99,1503,''),(13,26,'Alwin','Anbu Sign Pvt Ltd','Anbu Sign Pvt Ltd','Chithanthoppu','Kandanvilai PO','Kanyakumari District,','629810',99,1503,'[]'),(14,29,'Amal','Raji','','Kandenvilai','Kandenvilai PO','Kanyakumari Dist','629810',99,1503,''),(15,32,'Benny','Lourdwin','','KandenVilai','KandenVilai','Kanyakumari Dist','629810',99,1503,''),(16,28,'Jino','Jino','','Kusavan kuzhi karankadu po','','Kandanvilai','629809',99,1503,''),(17,82,'Yrhh','Hhkhego','Gebh','Hdhkh','Vdjj','Cgij','Bx ',99,1476,'');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','fSczK2SXmfNmLtThAPbuBHBK29FdsHv0olhBg16uS7If3Yuu175LJWfAJw8TPAAEY4ScdQPNc9JA8tix6IXlKd3ThJnJdy1vf6YrihK3oBAL4859KkI3rnhhDdelkXeQHjK2wyotFf0RfP9KHOA2ek9fGG7EWgn6MiS7Tif5NztnU2IQcz6TmRY1RRLpV1mcEnO68mAByxTqaQSk9oLwDCgjf0MKgFobp1CP2VaT7UxbZIklsAiN0YRD3VQHjnWj',1,'2020-02-18 10:15:45','2020-02-18 10:15:45');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
INSERT INTO `oc_api_ip` VALUES (1,1,'2.49.110.5'),(2,1,'112.133.237.62'),(3,1,'112.133.237.32'),(4,1,'112.133.248.98'),(5,1,'112.133.248.113'),(6,1,'112.133.237.22'),(7,1,'112.133.237.21'),(8,1,'112.133.248.125'),(9,1,'112.133.248.120'),(10,1,'42.106.176.236'),(11,1,'112.133.236.46'),(12,1,'112.133.236.32'),(13,1,'112.133.236.42'),(14,1,'112.133.236.116'),(15,1,'112.133.236.18');
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
INSERT INTO `oc_api_session` VALUES (59,1,'ca3080b4314415ae80bb49b88c','112.133.236.18','2020-08-17 20:42:56','2020-08-17 20:42:56'),(58,1,'acc40918828a48c4062416ff2c','112.133.236.18','2020-08-17 20:42:56','2020-08-17 20:42:56'),(57,1,'287dd79dd474a1d285821f14f0','112.133.236.116','2020-06-08 17:50:34','2020-06-08 17:50:34'),(54,1,'511fef0331813beecd1ca18a8a','112.133.236.42','2020-05-15 15:04:26','2020-05-15 15:04:40'),(56,1,'eb4819121aaa32557999844ce9','112.133.236.116','2020-06-08 17:48:05','2020-06-08 17:48:05'),(55,1,'67f67c48c9a3ad7fbdc0664007','112.133.236.116','2020-05-20 16:38:12','2020-05-20 16:38:12');
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `approve` smallint(6) NOT NULL DEFAULT '0',
  `seller_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1,0,0),(2,6,5,0,0),(3,6,3,0,0),(4,3,1,0,0),(5,3,2,0,0),(6,3,3,0,0),(7,3,4,0,0),(8,3,5,0,0),(9,3,6,0,0),(10,3,7,0,0),(11,3,8,0,0);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'Grocery Regular Basket',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1),(9,'Home Page',0),(10,'Advance tamil new Year celebration',1),(11,'Fruits &amp; Vegetables',1),(12,'Foodgrains, Oil &amp; Masala',1),(13,'Bakery, Cakes &amp; Dairy',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (124,7,1,' Foodgrains Oil Masala','','catalog/Foodgrains-Oil-Masala.png',2),(123,6,1,'Grocery Regular Basket','http://hindustandeal.com/index.php?route=product/category&amp;path=34','catalog/Combo offers/grocery-regular-baske.jpg',0),(127,13,1,'Bakery, Cakes &amp; Dairy','https://hindustandeal.com/index.php?route=product/category&amp;path=57','catalog/Bakery_Cakes_and_Dairy.jpg',0),(126,7,1,' Fruits and Vegetables','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/Fruits-and-Vegetables.png',1),(132,10,1,'Advance tamil new Year celebration','http://hindustandeal.com','catalog/add-2.jpg',0),(102,8,1,'RnD HuB','','catalog/demo/manufacturer/rnd-hub.jpg',0),(101,8,1,'GTP Inc','','catalog/demo/manufacturer/gtp-inc.jpg',0),(125,7,1,'Snacks &amp; Branded Food','','catalog/snacks-and-branded-food.png',3),(130,11,1,'Fruits &amp; Vegetables','https://hindustandeal.com/index.php?route=product/category&amp;path=20','catalog/Fruits_and_Vegetables.jpg',0),(131,12,1,'Foodgrains, Oil &amp; Masala','https://hindustandeal.com/index.php?route=product/category&amp;path=18','catalog/Foodgrains_Oil_and_Masala.jpg',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
INSERT INTO `oc_cart` VALUES (8,0,9,'cf396dd7743c4d74330f98321f',36,0,'{\"235\":\"2020-04-15 12:01\"}',1,'2020-04-15 12:01:24',0),(20,0,25,'77a76f097ed9699a375e9be56f',131,0,'[]',4,'2020-04-28 12:19:01',0),(31,0,32,'8a4540b73dd43009e2707e0a83',126,0,'{\"329\":\"66\"}',1,'2020-05-09 22:41:43',0),(33,0,67,'78a2d86271d81ffc9a9a0e5e58',261,0,'{\"378\":\"186\"}',2,'2020-07-29 10:14:57',0),(35,0,82,'0e2e20d1876b8aea051cd12369',92,0,'{\"288\":\"2020-08-22 22:12\"}',1,'2020-08-20 22:15:11',0);
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `approve` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (25,'',0,1,1,3,1,'2009-01-31 01:04:25','2020-04-07 10:57:33',0,1),(27,'',43,0,0,0,1,'2009-01-31 01:55:34','2020-04-07 11:43:31',0,1),(20,'',0,1,1,1,1,'2009-01-05 21:49:43','2020-04-14 23:17:19',0,1),(24,'',0,1,1,6,1,'2009-01-20 02:36:26','2020-05-26 09:47:17',0,1),(18,'',0,1,2,2,1,'2009-01-05 21:49:15','2020-05-14 17:39:51',0,1),(17,'',0,1,1,5,1,'2009-01-03 21:08:57','2020-04-07 11:04:35',0,1),(28,'',18,0,0,0,1,'2009-02-02 13:11:12','2020-04-15 09:29:19',0,1),(26,'',43,0,0,0,1,'2009-01-31 01:55:14','2020-04-07 11:44:42',0,1),(29,'',18,0,0,0,1,'2009-02-02 13:11:37','2020-04-15 09:30:11',0,1),(30,'',33,0,0,0,1,'2009-02-02 13:11:59','2020-04-13 10:17:40',0,1),(31,'',33,0,0,0,1,'2009-02-03 14:17:24','2020-04-13 10:16:46',0,1),(32,'',33,0,0,0,1,'2009-02-03 14:17:34','2020-04-13 10:15:49',0,1),(33,'',0,1,1,5,1,'2009-02-03 14:17:55','2020-05-26 09:48:04',0,1),(34,'',0,1,0,7,1,'2009-02-03 14:18:11','2020-04-22 19:04:54',0,1),(35,'',62,0,0,0,1,'2010-09-17 10:06:48','2020-04-15 09:32:13',0,1),(36,'',62,0,0,0,1,'2010-09-17 10:07:13','2020-04-15 09:33:26',0,1),(37,'',47,0,0,0,1,'2010-09-18 14:03:39','2020-04-07 11:57:54',0,1),(38,'',44,0,0,0,1,'2010-09-18 14:03:51','2020-04-07 11:56:15',0,1),(39,'',49,0,0,0,1,'2010-09-18 14:04:17','2020-04-12 09:51:30',0,1),(40,'',49,0,0,0,1,'2010-09-18 14:05:36','2020-04-12 09:53:19',0,1),(41,'',49,0,0,0,1,'2010-09-18 14:05:49','2020-04-12 09:54:34',0,1),(42,'',49,0,0,0,1,'2010-09-18 14:06:34','2020-04-12 09:55:31',0,1),(43,'',20,0,0,0,1,'2010-09-18 14:06:49','2020-04-07 11:24:11',0,1),(44,'',20,0,0,0,1,'2010-09-21 15:39:21','2020-04-07 11:25:01',0,1),(45,'',18,0,0,0,1,'2010-09-24 18:29:16','2020-04-15 09:30:25',0,1),(46,'',18,0,0,0,1,'2010-09-24 18:29:31','2020-04-15 09:29:55',0,1),(47,'',20,0,0,0,1,'2010-11-07 11:13:16','2020-04-07 11:25:54',0,1),(48,'',20,0,0,0,1,'2010-11-07 11:13:33','2020-04-07 11:26:53',0,1),(49,'',20,0,0,0,1,'2010-11-07 11:14:04','2020-04-14 21:10:57',0,1),(50,'',43,0,0,0,1,'2010-11-07 11:14:23','2020-04-07 11:46:13',0,1),(51,'',43,0,0,0,1,'2010-11-07 11:14:38','2020-04-07 11:47:05',0,1),(52,'',43,0,0,0,1,'2010-11-07 11:16:09','2020-04-07 11:47:53',0,1),(53,'',43,0,0,0,1,'2010-11-07 11:28:53','2020-04-07 11:48:38',0,1),(54,'',43,0,0,0,1,'2010-11-07 11:29:16','2020-04-07 11:49:19',0,1),(55,'',43,0,0,0,1,'2010-11-08 10:31:32','2020-04-07 11:49:52',0,1),(56,'',44,0,0,0,1,'2010-11-08 10:31:50','2020-04-07 11:54:57',0,1),(57,'',0,1,1,4,1,'2011-04-26 08:53:16','2020-04-07 11:16:23',0,1),(58,'',52,0,0,0,1,'2011-05-08 13:44:16','2011-05-08 13:44:16',0,1),(86,'',20,0,0,0,1,'2020-08-13 15:34:18','2020-08-13 15:34:18',0,0),(59,'',47,0,0,0,1,'2020-04-13 08:34:21','2020-04-13 08:34:21',0,0),(60,'',47,0,0,0,1,'2020-04-13 09:02:25','2020-04-13 09:02:25',0,0),(61,'',47,0,0,0,1,'2020-04-13 09:18:11','2020-04-13 09:18:11',0,0),(62,'',18,0,0,0,1,'2020-04-13 10:01:07','2020-04-15 09:28:35',0,0),(63,'',18,0,0,0,1,'2020-04-13 10:02:02','2020-04-15 09:30:54',0,0),(64,'',18,0,0,0,1,'2020-04-13 10:02:53','2020-04-15 09:30:42',0,0),(65,'',18,0,0,0,1,'2020-04-13 10:03:47','2020-04-15 09:29:06',0,0),(66,'',62,0,0,0,1,'2020-04-15 09:34:50','2020-04-15 09:34:50',0,0),(67,'',34,0,1,0,1,'2020-04-17 08:26:25','2020-04-17 08:26:25',0,0),(68,'',67,0,1,0,1,'2020-04-17 08:27:45','2020-04-17 08:27:45',0,0),(69,'',67,0,2,0,1,'2020-04-17 08:28:41','2020-04-17 08:28:41',0,0),(70,'',65,0,0,0,1,'2020-04-22 13:10:08','2020-04-22 13:10:08',0,0),(71,'',65,0,0,0,1,'2020-04-22 17:01:01','2020-04-22 17:01:01',0,0),(72,'',65,0,0,0,1,'2020-04-22 17:49:51','2020-04-22 17:49:51',0,0),(73,'',34,0,0,0,1,'2020-04-22 18:57:07','2020-04-22 18:57:07',0,0),(74,'',33,0,0,0,1,'2020-04-23 08:57:57','2020-04-23 08:57:57',0,0),(75,'',33,0,0,0,1,'2020-04-23 09:56:30','2020-04-23 09:56:30',0,0),(76,'',33,0,0,0,1,'2020-04-23 11:36:47','2020-04-23 11:36:47',0,0),(77,'',33,0,0,0,1,'2020-04-23 12:58:30','2020-04-23 12:58:30',0,0),(78,'',46,0,0,0,1,'2020-04-29 12:49:44','2020-04-29 14:52:56',0,0),(79,'',46,0,0,0,1,'2020-04-29 14:54:17','2020-04-29 14:54:17',0,0),(80,'',46,0,0,0,1,'2020-04-29 14:55:31','2020-04-29 14:55:31',0,0),(81,'',46,0,0,0,1,'2020-04-29 14:56:28','2020-04-29 14:56:28',0,0),(82,'',46,0,0,0,1,'2020-04-29 14:57:19','2020-04-29 14:57:19',0,0),(83,'',46,0,0,0,1,'2020-04-29 14:58:12','2020-04-29 14:58:12',0,0),(84,'',46,0,0,0,1,'2020-04-29 14:59:23','2020-04-29 14:59:23',0,0),(85,'',46,0,0,0,1,'2020-04-29 15:00:13','2020-04-29 15:00:13',0,0),(87,'',17,0,1,0,1,'2020-08-22 11:21:04','2020-08-22 11:21:04',0,0);
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (32,1,'Eggs','&lt;p&gt;Eggs&lt;br&gt;&lt;/p&gt;','Eggs','',''),(31,1,'Poultry','&lt;p&gt;Poultry&lt;br&gt;&lt;/p&gt;','Poultry','',''),(30,1,'Fish &amp; Seafood','&lt;p&gt;Fish &amp;amp; Seafood&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Fish &amp; Seafood','',''),(66,1,'Urad &amp; Other Dals','','Urad &amp; Other Dals','',''),(27,1,'Potato, Onion &amp; Tomato','&lt;p&gt;Potato, Onion &amp;amp; Tomato&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Potato, Onion &amp; Tomato','Potato, Onion &amp; Tomato\r\n',''),(26,1,'Root Vegetables','&lt;p&gt;Root Vegetables&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Root Vegetables','Root Vegetables\r\n',''),(17,1,'Beauty &amp; Hygiene','&lt;p&gt;Beauty &amp;amp; Hygiene&lt;br&gt;&lt;/p&gt;','Beauty &amp; Hygiene','Beauty &amp; Hygiene',''),(25,1,'Snacks &amp; Branded Foods','&lt;p&gt;Snacks &amp;amp; Branded Foods&lt;br&gt;&lt;/p&gt;','Snacks &amp; Branded Foods','Snacks &amp; Branded Foods',''),(20,1,'Fruits &amp; Vegetables','&lt;p&gt;&lt;a href=&quot;https://www.webmd.com/food-recipes/ss/slideshow-fun-facts-fruits-vegetables&quot; ping=&quot;/url?sa=t&amp;amp;source=web&amp;amp;rct=j&amp;amp;url=https://www.webmd.com/food-recipes/ss/slideshow-fun-facts-fruits-vegetables&amp;amp;ved=2ahUKEwjjoJ-DwdXoAhV6H7cAHRXCBsoQFjAjegQIBhAB&quot; style=&quot;color: rgb(102, 0, 153); cursor: pointer; font-family: arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/a&gt;&lt;/p&gt;','Fruits &amp; Vegetables','Fruits &amp; Vegetables',''),(35,1,'Toor, Channa &amp; Moong Dal','','Toor, Channa &amp; Moong Dal','',''),(36,1,'Cereals &amp; Millets','','Cereals &amp; Millets','',''),(37,1,'Banana, Sapota &amp; Papaya','&lt;p&gt;Banana, Sapota &amp;amp; Papaya&lt;br&gt;&lt;/p&gt;','Banana, Sapota &amp; Papaya','Banana, Sapota &amp; Papaya',''),(38,1,'Indian &amp; Exotic Herbs','&lt;p&gt;Indian &amp;amp; Exotic Herbs&lt;br&gt;&lt;/p&gt;','Indian &amp; Exotic Herbs','Indian &amp; Exotic Herbs',''),(39,1,'Cut Fruit, Tender Coconut','&lt;p&gt;Cut Fruit, Tender Coconut&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Cut Fruit, Tender Coconut','',''),(40,1,'Cut &amp; Peeled Veggies','&lt;p&gt;Cut &amp;amp; Peeled Veggies&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Cut &amp; Peeled Veggies','',''),(41,1,'Fresh Salads &amp; Sprouts','&lt;p&gt;Fresh Salads &amp;amp; Sprouts&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Fresh Salads &amp; Sprouts','',''),(42,1,'Recipe Packs','&lt;p&gt;Recipe Packs&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Recipe Packs','',''),(43,1,'Fresh Vegetables','&lt;p&gt;Fresh Vegetables&lt;br&gt;&lt;/p&gt;','Fresh Vegetables','Fresh Vegetables',''),(18,1,'Foodgrains, Oil &amp; Masala','&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n','Foodgrains, Oil &amp; Masala','Foodgrains, Oil &amp; Masala',''),(57,1,'Bakery, Cakes &amp; Dairy','&lt;p&gt;Bakery, Cakes &amp;amp; Dairy&lt;br&gt;&lt;/p&gt;','Bakery, Cakes &amp; Dairy','Bakery, Cakes &amp; Dairy',''),(44,1,'Herbs &amp; Seasonings','&lt;p&gt;Herbs &amp;amp; Seasonings&lt;br&gt;&lt;/p&gt;','Herbs &amp; Seasonings','Herbs &amp; Seasonings',''),(47,1,'Fresh Fruits','&lt;p&gt;Fresh Fruits&lt;br&gt;&lt;/p&gt;','Fresh Fruits','Fresh Fruits',''),(48,1,'Exotic Fruits &amp; Veggies','&lt;p&gt;Exotic Fruits &amp;amp; Veggies&lt;br&gt;&lt;/p&gt;','Exotic Fruits &amp; Veggies','Exotic Fruits &amp; Veggies',''),(50,1,'Cucumber &amp; Capsicum','&lt;p&gt;Cucumber &amp;amp; Capsicum&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Cucumber &amp; Capsicum','Cucumber &amp; Capsicum\r\n',''),(51,1,'Beans, Brinjals &amp; Okra','&lt;p&gt;Beans, Brinjals &amp;amp; Okra&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Beans, Brinjals &amp; Okra','Beans, Brinjals &amp; Okra\r\n',''),(52,1,'Gourd, Pumpkin, Drumstick','&lt;p&gt;Gourd, Pumpkin, Drumstick&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Gourd, Pumpkin, Drumstick','Gourd, Pumpkin, Drumstick\r\n',''),(53,1,'Cabbage &amp; Cauliflower','&lt;p&gt;Cabbage &amp;amp; Cauliflower&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Cabbage &amp; Cauliflower','Cabbage &amp; Cauliflower\r\n',''),(54,1,'Leafy Vegetables','&lt;p&gt;Leafy Vegetables&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','Leafy Vegetables','Leafy Vegetables\r\n',''),(55,1,'Specialty','&lt;p&gt;Specialty&lt;br&gt;&lt;/p&gt;','Specialty','Specialty',''),(56,1,'Lemon, Ginger &amp; Garlic','&lt;p&gt;Lemon, Ginger &amp;amp; Garlic&lt;br&gt;&lt;/p&gt;','Lemon, Ginger &amp; Garlic','Lemon, Ginger &amp; Garlic',''),(58,1,'test 25','','test 25','',''),(33,1,'Meat &amp; Fish','&lt;p&gt;Meat &amp;amp; Fish&lt;br&gt;&lt;/p&gt;','Meat &amp; Fish','Meat &amp; Fish',''),(49,1,'Cuts &amp; Sprouts','&lt;p&gt;Cuts &amp;amp; Sprouts&lt;br&gt;&lt;/p&gt;','Cuts &amp; Sprouts','Cuts &amp; Sprouts',''),(59,1,'Kiwi, Melon, Citrus Fruit','&lt;h2 qa=&quot;pageName&quot; class=&quot;ng-binding&quot; style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 24px; line-height: normal; font-family: ProximaNovaA-Regular; color: rgb(88, 89, 91); margin: 12px 0px 5px; padding: 0px;&quot;&gt;&lt;span ng-bind=&quot;vm.screen_name&quot; class=&quot;ng-binding&quot;&gt;Kiwi, Melon, Citrus Fruit&lt;/span&gt;&lt;/h2&gt;','Kiwi, Melon, Citrus Fruit','',''),(60,1,'Apples &amp; Pomegranate','&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span ng-bind=&quot;subcategory2.display_name&quot; class=&quot;ng-binding&quot; style=&quot;color: rgb(98, 161, 84); font-family: ProximaNovaA-Semibold; font-size: 14px;&quot;&gt;Apples &amp;amp; Pomegranate&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Apples &amp; Pomegranate','',''),(61,1,' Seasonal Fruits','&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(88, 89, 91); font-family: ProximaNovaA-Regular; font-size: 24px;&quot;&gt;Seasonal Fruits&lt;/span&gt;&lt;br&gt;&lt;/p&gt;',' Seasonal Fruits','',''),(62,1,'Dals &amp; Pulses','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Dals &amp; Pulses','',''),(63,1,'Salt, Sugar &amp; Jaggery','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Salt, Sugar &amp; Jaggery','',''),(64,1,'Rice &amp; Rice Products','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Rice &amp; Rice Products','',''),(65,1,'Atta, Flours &amp; Sooji','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Atta, Flours &amp; Sooji','',''),(46,1,'Edible Oils &amp; Ghee','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Edible Oils &amp; Ghee','',''),(45,1,'Organic Staples','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Organic Staples','',''),(29,1,'Masalas &amp; Spices','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Masalas &amp; Spices','',''),(28,1,'Dry Fruits','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Dry Fruits','',''),(34,1,'Combo offers ','&lt;p class=&quot;&quot;&gt;&lt;br&gt;&lt;/p&gt;\r\n','Combo offers ','Baby Care',''),(67,1,' Fruits &amp; Vegetables','',' Fruits &amp; Vegetables','',''),(68,1,'Fruits','','Fruits','',''),(69,1,'Vegetables','','Vegetables','',''),(70,1,'Atta Whole Wheat','','Atta Whole Wheat','Atta Whole Wheat',''),(71,1,'Rice &amp; Other Flours','','Rice &amp; Other Flours','Rice &amp; Other Flours',''),(72,1,'Sooji, Maida &amp; Besan','','Sooji, Maida &amp; Besan','Sooji, Maida &amp; Besan',''),(73,1,'Grocery','','Grocery','',''),(74,1,'Mutton &amp; Lamb','','Mutton &amp; Lamb','Mutton &amp; Lamb',''),(75,1,'Fresh Mutton','','Fresh Mutton','Fresh Mutton',''),(76,1,'Chicken ','','Chicken','Chicken',''),(77,1,'Fresh Beef','','Fresh Beef','Fresh Beef',''),(78,1,'Blended Cooking Oils','','Blended Cooking Oils','Blended Cooking Oils',''),(79,1,'Sunflower, Rice Bran Oil','','Sunflower, Rice Bran Oil','Sunflower, Rice Bran Oil',''),(80,1,'Soya &amp; Mustard Oils','','Soya &amp; Mustard Oils','Soya &amp; Mustard Oils\r\n',''),(81,1,'Gingelly Oil','','Gingelly Oil','Gingelly Oil\r\n',''),(82,1,'Ghee &amp; Vanaspati','','Ghee &amp; Vanaspati','Ghee &amp; Vanaspati\r\n',''),(83,1,'Other Edible Oils','','Other Edible Oils','Other Edible Oils\r\n',''),(84,1,'Olive &amp; Canola Oils','','Olive &amp; Canola Oils','Olive &amp; Canola Oils\r\n',''),(85,1,'Gingelly, Groundnut Oils','','Gingelly, Groundnut Oils','Gingelly, Groundnut Oils',''),(24,1,'Electronics','&lt;div&gt;&lt;font color=&quot;#111111&quot; face=&quot;Ubuntu, sans-serif&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;','Electronics','Electronics','Electronics'),(86,1,'Spinach (Keerai)','','Spinach (Keerai)','Spinach (Keerai)','Spinach (Keerai)'),(87,1,'Personal Care','','Personal Care','Personal Care','Personal Care');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (25,25,0),(28,18,0),(28,28,1),(35,18,0),(35,62,1),(35,35,2),(36,62,1),(36,18,0),(36,36,2),(29,18,0),(29,29,1),(30,33,0),(30,30,1),(31,33,0),(31,31,1),(32,33,0),(32,32,1),(20,20,0),(27,20,0),(27,27,2),(26,20,0),(26,26,2),(24,24,0),(18,18,0),(45,18,0),(45,45,1),(46,18,0),(46,46,1),(17,17,0),(33,33,0),(34,34,0),(37,20,0),(37,37,2),(38,20,0),(38,38,2),(39,20,0),(39,39,2),(40,20,0),(40,40,2),(41,20,0),(41,41,2),(42,20,0),(42,42,2),(43,20,0),(43,43,1),(44,20,0),(44,44,1),(47,20,0),(47,47,1),(48,20,0),(48,48,1),(49,20,0),(49,49,1),(50,20,0),(50,50,2),(51,20,0),(51,51,2),(52,20,0),(52,52,2),(58,20,0),(58,52,2),(58,58,3),(53,20,0),(53,53,2),(54,20,0),(54,54,2),(55,20,0),(55,55,2),(56,20,0),(56,56,2),(57,57,0),(27,43,1),(26,43,1),(50,43,1),(51,43,1),(52,43,1),(58,43,1),(53,43,1),(54,43,1),(55,43,1),(56,44,1),(38,44,1),(37,47,1),(39,49,1),(40,49,1),(41,49,1),(42,49,1),(59,20,0),(59,47,1),(59,59,2),(60,20,0),(60,47,1),(60,60,2),(61,20,0),(61,47,1),(61,61,2),(62,18,0),(62,62,1),(63,18,0),(63,63,1),(64,18,0),(64,64,1),(65,18,0),(65,65,1),(66,18,0),(66,62,1),(66,66,2),(67,34,0),(67,67,1),(68,34,0),(68,67,1),(68,68,2),(69,34,0),(69,67,1),(69,69,2),(70,18,0),(70,65,1),(70,70,2),(71,18,0),(71,65,1),(71,71,2),(72,18,0),(72,65,1),(72,72,2),(73,34,0),(73,73,1),(74,33,0),(74,74,1),(75,33,0),(75,75,1),(76,33,0),(76,76,1),(77,33,0),(77,77,1),(78,46,1),(78,18,0),(78,78,2),(79,18,0),(79,46,1),(79,79,2),(80,18,0),(80,46,1),(80,80,2),(81,18,0),(81,46,1),(81,81,2),(82,18,0),(82,46,1),(82,82,2),(83,18,0),(83,46,1),(83,83,2),(84,18,0),(84,46,1),(84,84,2),(85,18,0),(85,46,1),(85,85,2),(86,20,0),(86,86,1),(87,17,0),(87,87,1);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (20,0,0),(18,0,0),(25,0,0),(57,0,0),(17,0,0),(24,0,0),(33,0,0),(34,0,0),(43,0,0),(44,0,0),(47,0,0),(48,0,0),(49,0,0),(27,0,0),(26,0,0),(50,0,0),(51,0,0),(52,0,0),(53,0,0),(54,0,0),(55,0,0),(56,0,0),(38,0,0),(37,0,0),(39,0,0),(40,0,0),(41,0,0),(42,0,0),(59,0,0),(60,0,0),(61,0,0),(62,0,0),(63,0,0),(64,0,0),(65,0,0),(46,0,0),(45,0,0),(29,0,0),(28,0,0),(32,0,0),(31,0,0),(30,0,0),(35,0,0),(36,0,0),(66,0,0),(67,0,0),(68,0,0),(69,0,0),(70,0,0),(71,0,0),(72,0,0),(73,0,0),(74,0,0),(75,0,0),(76,0,0),(77,0,0),(78,0,0),(79,0,0),(80,0,0),(81,0,0),(82,0,0),(83,0,0),(84,0,0),(85,0,0),(86,0,0),(87,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (17,0),(18,0),(20,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(37,0),(38,0),(39,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_commission`
--

DROP TABLE IF EXISTS `oc_commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `commission_type` tinyint(4) NOT NULL,
  `commission` int(11) NOT NULL,
  `product_limit` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `amount` float NOT NULL,
  `commission_discount` int(11) NOT NULL,
  `per` int(11) NOT NULL,
  `duration_id` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_commission`
--

LOCK TABLES `oc_commission` WRITE;
/*!40000 ALTER TABLE `oc_commission` DISABLE KEYS */;
INSERT INTO `oc_commission` VALUES (1,'Gold',0,10,20,2,'0000-00-00 00:00:00',0,0,0,'',''),(2,'Silver',1,20,5,3,'0000-00-00 00:00:00',0,0,0,'',''),(3,'Bronze',0,30,10,1,'0000-00-00 00:00:00',0,0,0,'','');
/*!40000 ALTER TABLE `oc_commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_commission_rates`
--

DROP TABLE IF EXISTS `oc_commission_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_commission_rates` (
  `category_id` int(11) NOT NULL,
  `commission_id` int(11) NOT NULL,
  `commission_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_commission_rates`
--

LOCK TABLES `oc_commission_rates` WRITE;
/*!40000 ALTER TABLE `oc_commission_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_commission_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'South Korea','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2020-06-22','2020-06-24',10,'10',1,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18'),(7,'suhi06','6666','F',30.0000,0,0,0.0000,'2020-06-22','2020-07-22',1,'1',0,'2020-06-22 18:54:58');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Pound Sterling','GBP','£','','2',0.61250001,0,'2020-03-26 22:37:05'),(2,'US Dollar','USD','$','','2',1.00000000,0,'2020-03-26 17:08:14'),(3,'Euro','EUR','','€','2',0.78460002,0,'2020-03-26 22:36:45'),(4,'Indian Rupees','INR','',' ₹','2',1.00000000,1,'2020-08-22 10:41:03');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (1,1,0,1,'swati','mahajan','swati.mahajan.1985@gmail.com','87899898','','3a1af7f00ed19fb61fd75061c7d8bb64e887a507','JAdDlsJWs',NULL,NULL,0,1,'','2.49.110.5',1,0,'','','2020-02-18 13:55:39'),(25,1,0,1,'Manikandan','C','mk4047695@gmail.com','9042126463','','cea30b3ed4c7347b376f21e9f511af6fb6619242','SCBeZ35az',NULL,NULL,1,12,'','112.133.237.22',1,0,'','','2020-04-28 12:15:20'),(22,1,0,1,'Louisa','Dooley','juliepascoe@bigpond.com','1-050-906-4116 x0772','','1e0f4f9e41c4729427d8e40d2a4fecca838d76c5','RC9SEp09l',NULL,NULL,0,0,'','104.244.76.56',1,0,'','','2020-04-27 21:08:48'),(4,1,0,1,'Toni','Hackett','mark@qualitysoundinc.com','326-656-5206 x31126','','39a55a89c03aca679e4d83505631257b5e67e554','KCtfzI5f9',NULL,NULL,0,0,'','185.220.101.2',1,0,'','','2020-03-31 06:55:42'),(5,1,0,1,'Suhail ','Syed ','suhaisha.14321@gmail.com','9066987654','','5bdc659e3e010396689376598329cbd948af8bc0','xxh5Xgwdp',NULL,NULL,1,2,'','223.182.196.13',1,0,'','','2020-04-02 16:33:39'),(24,1,0,1,'Siva ','Kumar','sivakumar12051986@gmail.com','919578883144','','9dbcc5f5ef7aa2691d1b4d46f43f2ac5c267716f','ZvrOgIhSm',NULL,NULL,1,11,'','112.133.236.46',1,0,'','','2020-04-28 11:50:25'),(18,1,0,1,'sukumar','hhh','sukumar.inapp2@gmail.com','8778193926','','a9653cc048280853efee5f7e1e199e517a2def63','KLhfisDFB',NULL,NULL,0,0,'[]','157.49.160.115',1,0,'','','2020-04-15 23:33:41'),(19,1,0,1,'kannan','Page','gtp.kannan@gmail.com','9344332244','','984db247e1e7a3e9e157aff087442c19b4b1ab10','tybNVQ9U9',NULL,NULL,1,9,'','112.133.237.32',1,0,'','','2020-04-15 23:55:27'),(20,1,0,1,'Danielle','Auer','arlene_2007@verizon.net','(250) 896-1825 x152','','8341c40def7b5eb3bc8e4e1f11774c11d3f361b9','MIZMxsq0A',NULL,NULL,0,0,'','167.114.92.52',1,0,'','','2020-04-17 13:19:39'),(21,1,0,1,'Mac','Stoltenberg','heasma02@hotmail.com','(648) 891-8041 x71400','','b913b331ea6b4ba78adb9aaae35e70345f9ca362','W7lYkx9d5',NULL,NULL,0,0,'','46.166.139.111',1,0,'','','2020-04-23 23:15:36'),(23,1,0,1,'Ravi','A','iniya5415@gmail.com','8903706261','','586e2d3e6613cd5fb41cddd2c83739e7bc033380','7ytqHaIBP',NULL,NULL,1,10,'','112.133.237.22',1,0,'','','2020-04-28 11:26:00'),(26,1,0,1,'Alwin','Anbu Sign Pvt Ltd','anbusign@yahoo.com','7305505050','','0ac10ef8a77535993402eb8a4fb8f1001f1af34f','G5e4zq0Ma',NULL,NULL,1,13,'[]','112.133.236.46',1,0,'','','2020-04-28 12:24:58'),(27,1,0,1,'Theresia','Quitzon','missrenteria@yahoo.com','206.971.0721','','cdcadeacb88803ae49cc8bd3eb6dbf8250aa05b3','Msqv2ELXJ',NULL,NULL,0,0,'','185.121.69.14',1,0,'','','2020-04-28 18:32:06'),(28,1,0,1,'Jesus','Jino','Jino04652@gmail.com','9047736317','','5787d931ca441bb2359465f770bd06629e037f14','K8pQesM0o',NULL,NULL,1,16,'[]','112.133.236.32',1,0,'','','2020-05-02 19:37:23'),(29,1,0,1,'Amal','Raji','amalrajraj232@gmail.com','9994430534','','774c47c2e0b391aa43f5f71f135fb98c2ed69d64','DhhasNpnv',NULL,NULL,1,14,'','112.133.248.125',1,0,'','','2020-05-02 22:32:07'),(30,1,0,1,'Martina','Welch','debraluci@yahoo.com','17244127593','','176b23556677c604de0b2b92c0977be0f8fea0ac','qc9xzEbEJ',NULL,NULL,0,0,'','185.220.101.212',1,0,'','','2020-05-06 18:53:30'),(31,1,0,1,'Valerie','Fritsch','bwyn17@yahoo.com','11042768039','','e8c23bdba57d2a86cb8f3895e40a2559c884d17f','F2tCgvzDf',NULL,NULL,0,0,'','104.244.73.193',1,0,'','','2020-05-09 19:08:01'),(32,1,0,1,'Benny','Lourdwin','lourdwinbenny@gmail.com','9488252524','','20c86d252c348888f3abe04b364417d7886a11f6','1GLUzciPb',NULL,NULL,1,15,'','112.133.236.46',1,0,'','','2020-05-09 22:13:32'),(33,1,0,1,'Marques','Bogisich','lisahouareau@hotmail.com','14359565117','','c05674eafa9c68e18c96d5fb91192ab0300bdcfd','uT9Dlpok8',NULL,NULL,0,0,'','51.75.52.118',1,0,'','','2020-05-10 15:38:35'),(34,1,0,1,'Audie','Okuneva','mangus111979@gmail.com','11309174822','','63703d87ba70828e713f5be29fa3bc32af2519f4','6vlvW48MY',NULL,NULL,0,0,'','62.102.148.68',1,0,'','','2020-05-13 12:28:09'),(35,1,0,1,'TSAciS080','eryn  Steski ','FLTSUXSiXTY@men.marrived.com','89936117772','','094d5e622ec7feccc39815554850ae733037c4c5','T8tjNyO47',NULL,NULL,0,0,'','195.154.207.112',1,0,'','','2020-05-15 13:37:15'),(36,1,0,1,'Destin','Wolff','capricecfusco@gmail.com','19002150218','','63fc6345b2c31175b3a3f10aa5dbcca82e2187b5','X6NZ4hx1F',NULL,NULL,0,0,'','51.38.233.93',1,0,'','','2020-05-15 19:29:52'),(37,1,0,1,'Cicero','Rutherford','clayps@gmail.com','15209639714','','aee6680ba6f8ad1b975a9d06bd2e4d828f2cb9c1','WzQ2VuH3r',NULL,NULL,0,0,'','212.47.229.4',1,0,'','','2020-05-21 07:26:29'),(38,1,0,1,'Imani','Graham','nnmbady@hotmail.com','10007346687','','acb4b3fc5f8a7705d152191928e7b5884d96d6f4','Thz9vSC0U',NULL,NULL,0,0,'','185.220.101.156',1,0,'','','2020-05-25 09:27:01'),(39,1,0,1,'Alvina','Raynor','abigailoansah@yahoo.co.uk','11272037187','','bcbaa1035d0835bb1e61f87cdb50cad44b8a0abf','4Grcw5F8i',NULL,NULL,0,0,'','27.122.59.100',1,0,'','','2020-05-30 03:55:47'),(40,1,0,1,'Creola','Leffler','cbuchanan10@hotmail.co.uk','18340409519','','a51dc1b37b7a876956b52d4779bc44ab5c2cf0b7','hhzgjPpyq',NULL,NULL,0,0,'','23.129.64.193',1,0,'','','2020-06-01 03:12:39'),(41,1,0,1,'Treva','Boyle','babsecameron@yahoo.co.uk','16843899069','','8da30d1f254c4bca548e64f42b67bbb77c81e3f7','il6vAcJul',NULL,NULL,0,0,'','46.19.141.86',1,0,'','','2020-06-01 12:58:25'),(42,1,0,1,'Cedrick','Gorczany','cmekchinda@msn.com','14565434531','','7e6cfdf212510acc8c2ef5d2d485be9906b55523','Y0zmF6K1s',NULL,NULL,0,0,'','95.211.230.211',1,0,'','','2020-06-05 08:09:18'),(43,1,0,1,'Gerda','Rolfson','akelamacwilliams@yahoo.com','18155951449','','e8e4148838842d5351c9d8340a42bebb17fa14c8','7YHHTH30Q',NULL,NULL,0,0,'','167.114.92.50',1,0,'','','2020-06-06 07:37:17'),(44,1,0,1,'Nolan','Bosco','filin_phuong@hotmail.com','11482991354','','8fea40e61e835dad19c3e7071ace030ce957d804','aRryYufN6',NULL,NULL,0,0,'','89.31.57.5',1,0,'','','2020-06-07 01:03:25'),(45,1,0,1,'Malachi','Jacobs','jefferypoland@aol.com','16167973441','','771403b6078e228b7db8ba29f88bad2d88d5f4ef','4LGoT96oY',NULL,NULL,0,0,'','199.249.230.100',1,0,'','','2020-06-08 08:38:31'),(46,1,0,1,'Jennings','Labadie','louvainlake@aol.com','19060094662','','8fc7c2aaa55001221dc10f1c77516f89b6b8fac1','OuUrgCyEP',NULL,NULL,0,0,'','185.100.87.41',1,0,'','','2020-06-08 14:28:55'),(47,1,0,1,'Elna','D\'Amore','kimberly@ciaowireless.com','14820811181','','967c0dbb3b5ca251e9ab82bb7155ad6316f64974','vzEWFLbzS',NULL,NULL,0,0,'','185.220.101.197',1,0,'','','2020-06-10 19:56:57'),(48,1,0,1,'Donald','Smitham','kruffule@gmail.com','11931177735','','d33e145505b85c1e61c8c012aab6fcf9805af689','vK3ksPwEI',NULL,NULL,0,0,'','212.21.66.6',1,0,'','','2020-06-15 20:33:53'),(49,1,0,1,'London','Gusikowski','jarhead1093@gmail.com','16530959869','','0e61f0859f900b4bd479241b18f8f45cdbcea8eb','bcuDcWazP',NULL,NULL,0,0,'','185.220.101.129',1,0,'','','2020-06-18 14:15:09'),(50,1,0,1,'Katrine','Turner','karsten.wolfewicz@web.de','17130789974','','e25fb59e995a3fc6c121a1319699737cf9f0baae','dHqLxUkmf',NULL,NULL,0,0,'','193.70.12.219',1,0,'','','2020-06-19 15:00:35'),(51,1,0,1,'Ella','Nienow','acarvalho@comecogroupinc.com','19507055407','','81eb58ac900fd38d1a230efc1c188dcad5ae4f46','JHHLToEgx',NULL,NULL,0,0,'','199.249.230.119',1,0,'','','2020-06-22 04:23:05'),(52,1,0,1,'Tommie','Lind','daisy.g@gcliconcrete.com','14280890618','','1121e809764971fecbfab887909d9a72e286659a','CEAKHNbOY',NULL,NULL,0,0,'','185.220.100.246',1,0,'','','2020-06-22 20:43:24'),(53,1,0,1,'Connor','Mraz','zandaaisso2020@gmail.com','14596864484','','5e6e2b56a78a937d4134cbfd12d2a00f94c93f6e','io0d1SwHS',NULL,NULL,0,0,'','185.107.83.71',1,0,'','','2020-06-25 16:25:20'),(54,1,0,1,'Katharina','Abbott','abrianna.boggs@aol.com','16910999992','','3711138cf3914bd1abdffa4d09f5dd9a61f88b9e','xqauzMt6j',NULL,NULL,0,0,'','51.75.144.43',1,0,'','','2020-06-27 05:04:27'),(55,1,0,1,'Heloise','Prohaska','valerie.bonfiglio@pro-digno.de','10312581081','','e7a238673b8eabc088fdf4753b0ce2534d5658e7','1oQ3why8H',NULL,NULL,0,0,'','185.220.100.253',1,0,'','','2020-06-27 09:44:08'),(56,1,0,1,'Madie','Tremblay','jamesm14793@gmail.com','10996362352','','ac99931bd4a38bb83492e6073fb09291cd3531bf','FoIwj5BoT',NULL,NULL,0,0,'','188.214.104.146',1,0,'','','2020-06-28 14:39:05'),(57,1,0,1,'Spencer','Pollich','mrjarrodmoore@gmail.com','12599505637','','1bf2ab8b356f7c0835a8a4f6090564d22adaaa39','OzvVqEilt',NULL,NULL,0,0,'','185.220.101.166',1,0,'','','2020-07-02 08:07:27'),(58,1,0,1,'Duane','Eichmann','dsafran@juno.com','10374852204','','3554cf2d8d47f92a2f90a3dc83fbbbcce91b8acc','T0ZyHvv2q',NULL,NULL,0,0,'','185.220.101.217',1,0,'','','2020-07-02 20:02:43'),(59,1,0,1,'Emelia','Schimmel','lacatt@hotmail.com','19490718931','','41513041219798a86385d48b45587523f9886033','RhMJ0RlGK',NULL,NULL,0,0,'','51.79.53.145',1,0,'','','2020-07-03 19:53:52'),(60,1,0,1,'Meggie','Kuhic','deepwatr@mindless.com','12753252022','','89e93b7359f370e090a8c92ba463c088b8e52528','Wqd6a6ZQL',NULL,NULL,0,0,'','199.249.230.141',1,0,'','','2020-07-05 00:48:58'),(61,1,0,1,'Simone','Schneider','ledgington@shaw.ca','19112377075','','a8609dd168fb3f9dfad5b675bfece9a7ac19accf','kuyiM8te1',NULL,NULL,0,0,'','163.172.125.41',1,0,'','','2020-07-05 18:23:08'),(62,1,0,1,'Leland','Renner','info@starpress.de','17309382189','','5716b3981b5d862952213b9d03b818871987fe0a','dI6qleoSb',NULL,NULL,0,0,'','185.220.101.224',1,0,'','','2020-07-13 00:23:35'),(63,1,0,1,'Raleigh','Fahey','karenpaschal@verizon.net','16601439854','','67109f84f6a1c33393039215d64ddde6c690ab46','SmbZlbqPe',NULL,NULL,0,0,'','46.165.230.5',1,0,'','','2020-07-14 16:15:54'),(64,1,0,1,'Alvah','Buckridge','meg_dodd@hotmail.com','19903229665','','8b1244c7ceb26fe212b5827748efe75855ab76c5','sq06an9my',NULL,NULL,0,0,'','199.249.230.117',1,0,'','','2020-07-20 21:07:13'),(65,1,0,1,'Scotty','Terry','leonardomachadoavai@gmail.com','18516133711','','6fca039c5af46e99f6be74bff3b06608c4749260','Y5KBTFHZ6',NULL,NULL,0,0,'','54.38.81.231',1,0,'','','2020-07-24 11:06:00'),(66,1,0,1,'Ellsworth','Block','info@clicknewsandmedia.com','16527084267','','2929ef88f0ce70fcc999939fe212d0072d116e72','JJl2tSx92',NULL,NULL,0,0,'','51.15.43.205',1,0,'','','2020-07-28 00:49:40'),(67,1,0,1,'Sree','Jith','sreejithjith@gmail.com','8925363844','','2b05f3bda7a8222c500b4e5ff2fd7e808e024cc5','4hkllrPDf',NULL,NULL,0,0,'','112.133.236.61',1,0,'','','2020-07-29 10:12:50'),(68,1,0,1,'Adam','Dicki','saba.fatemizadeh@gmail.com','17925787290','','74a324ba91624dc0233d9d1f16e1f60737c91795','bWPktWx4F',NULL,NULL,0,0,'','94.230.208.148',1,0,'','','2020-07-31 18:05:21'),(69,1,0,1,'Beryl','Hyatt','info@hiltonmgmt.com','15738554050','','15b8ce18a05abdb7403acfa2600040ae25343c63','5cA5nEvWn',NULL,NULL,0,0,'','185.220.101.197',1,0,'','','2020-08-02 03:54:18'),(70,1,0,1,'Bailee','Blick','rsiebeneck@gmail.com','15172495426','','3132bed5e7a69446f17c1a6918024edd6a4d2cb6','we6G33Tq1',NULL,NULL,0,0,'','109.70.100.38',1,0,'','','2020-08-02 07:52:02'),(71,1,0,1,'Wilford','Christiansen','jkachami@yahoo.ca','13313720272','','1d20ef675eea8e650682a7802a34b81ab96e2028','pEozrWD9o',NULL,NULL,0,0,'','87.120.254.98',1,0,'','','2020-08-04 08:26:30'),(72,1,0,1,'Rahsaan','Bernhard','trustgasltd@yahoo.co.uk','14808348825','','166022006b1ee59052f33ab45b0903c1d07e3a92','MmyhbtA4H',NULL,NULL,0,0,'','185.220.101.17',1,0,'','','2020-08-07 02:43:30'),(73,1,0,1,'Ryley','Wiza','berman.carleane@gmail.com','11715708119','','a258476c20b7582af107d9ec4ee3918e8f389746','AMhVLjFb1',NULL,NULL,0,0,'','87.118.116.103',1,0,'','','2020-08-08 08:32:44'),(74,1,0,1,'Elinor','Jacobson','bujinka.ma@gmail.com','13077660235','','cf192256d749337edcad3ae285a4d4b0391ecf98','rd6kp1Fkw',NULL,NULL,0,0,'','51.195.166.192',1,0,'','','2020-08-09 16:16:18'),(75,1,0,1,'Jerel','Nikolaus','krwhite1056@aol.com','10621634660','','27b6c989a666162dc36202805cf443d831906e9f','67Zr4BtVV',NULL,NULL,0,0,'','87.98.139.44',1,0,'','','2020-08-10 02:47:02'),(76,1,0,1,'Fanny','Powlowski','5122301472@vtext.com','17331076400','','e1548e6ce448608374c3973a1379e4dbbf982b48','JKGIKvnoC',NULL,NULL,0,0,'','51.77.52.11',1,0,'','','2020-08-10 13:32:39'),(77,1,0,1,'Kamryn','Legros','ssimonson7@gmail.com','14312802356','','c0ec4b8cb57feadd7239d16bdccebbab26586529','97dsqpvWv',NULL,NULL,0,0,'','150.129.8.34',1,0,'','','2020-08-11 03:05:23'),(78,1,0,1,'Jazmin','Mayert','leahldlr@gmail.com','16283278894','','086d3dfd8da57d6a2b85a5bab9a87fbbb6c5823d','RJQWp1Ckm',NULL,NULL,0,0,'','150.129.8.15',1,0,'','','2020-08-11 11:32:21'),(79,1,0,1,'Columbus','Bogisich','meghanisene@hotmail.com','14083592539','','7337bddfe3df56a99968ae8fbba8d2267fa7191b','MP6gxdCqz',NULL,NULL,0,0,'','185.220.101.5',1,0,'','','2020-08-15 14:57:41'),(80,1,0,1,'JTuvyoDRIZLVl','LSrXywZae','markbaker3753@gmail.com','2860429048','','71a2eff174e212113456726d331ad83058881066','IJIK5azhj',NULL,NULL,0,0,'','94.177.164.168',1,0,'','','2020-08-18 13:04:35'),(81,1,0,1,'Haleigh','Veum','jasminemilligan@yahoo.com','14254466168','','c3963d6b884a4c2e428fc001cf0d1a13b01bfddd','otYmOCHSG',NULL,NULL,0,0,'','217.182.139.85',1,0,'','','2020-08-20 19:15:07'),(82,1,0,1,'Yrhh','Hhkhego','universekannan@gmail.com','1234567890','','106a262c206046bda31711083d04250598821315','6Me3u4thL',NULL,NULL,1,17,'','112.133.236.70',1,0,'','','2020-08-20 22:15:07'),(83,1,0,1,'Kayli','Christiansen','jeremykondos@gmail.com','16783184203','','647c202281b2f00bb9981faefa87053d852fd655','A4LuT1hyr',NULL,NULL,0,0,'','144.217.166.65',1,0,'','','2020-08-23 05:27:29');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_affiliate`
--

LOCK TABLES `oc_customer_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_approval`
--

LOCK TABLES `oc_customer_approval` WRITE;
/*!40000 ALTER TABLE `oc_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (1,1,'2.49.110.5','2020-02-18 13:55:39'),(12,20,'167.114.92.52','2020-04-17 13:19:49'),(3,4,'185.220.101.2','2020-03-31 06:55:43'),(4,5,'223.182.196.13','2020-04-02 16:33:40'),(11,19,'112.133.237.32','2020-04-15 23:55:34'),(13,21,'46.166.139.111','2020-04-23 23:15:45'),(10,18,'157.49.160.115','2020-04-15 23:33:54'),(14,22,'104.244.76.56','2020-04-27 21:08:57'),(15,23,'112.133.237.22','2020-04-28 11:26:08'),(16,24,'112.133.237.22','2020-04-28 11:50:33'),(17,25,'112.133.237.22','2020-04-28 12:15:25'),(18,26,'112.133.237.22','2020-04-28 12:25:02'),(19,26,'112.133.237.21','2020-04-28 13:42:42'),(20,27,'185.121.69.14','2020-04-28 18:32:11'),(21,28,'106.198.38.23','2020-05-02 19:37:27'),(22,26,'112.133.248.125','2020-05-02 20:40:43'),(23,29,'112.133.248.125','2020-05-02 22:32:12'),(24,30,'185.220.101.212','2020-05-06 18:53:35'),(25,31,'104.244.73.193','2020-05-09 19:08:06'),(26,24,'112.133.236.46','2020-05-09 20:09:59'),(27,26,'112.133.236.46','2020-05-09 20:17:22'),(28,32,'112.133.236.46','2020-05-09 22:13:36'),(29,33,'51.75.52.118','2020-05-10 15:38:40'),(30,28,'112.133.236.32','2020-05-10 16:39:59'),(31,34,'62.102.148.68','2020-05-13 12:28:14'),(32,35,'195.154.207.112','2020-05-15 13:37:21'),(33,36,'51.38.233.93','2020-05-15 19:29:57'),(34,37,'212.47.229.4','2020-05-21 07:26:34'),(35,38,'185.220.101.156','2020-05-25 09:27:06'),(36,39,'27.122.59.100','2020-05-30 03:55:52'),(37,40,'23.129.64.193','2020-06-01 03:12:44'),(38,41,'46.19.141.86','2020-06-01 12:58:31'),(39,42,'95.211.230.211','2020-06-05 08:09:23'),(40,43,'167.114.92.50','2020-06-06 07:37:22'),(41,44,'89.31.57.5','2020-06-07 01:03:31'),(42,45,'199.249.230.100','2020-06-08 08:38:36'),(43,46,'185.100.87.41','2020-06-08 14:28:59'),(44,47,'185.220.101.197','2020-06-10 19:57:02'),(45,48,'212.21.66.6','2020-06-15 20:33:58'),(46,49,'185.220.101.129','2020-06-18 14:15:14'),(47,50,'193.70.12.219','2020-06-19 15:00:40'),(48,51,'199.249.230.119','2020-06-22 04:23:11'),(49,52,'185.220.100.246','2020-06-22 20:43:29'),(50,53,'185.107.83.71','2020-06-25 16:25:25'),(51,54,'51.75.144.43','2020-06-27 05:04:32'),(52,67,'112.133.236.61','2020-07-29 10:14:57'),(53,80,'94.177.164.168','2020-08-18 13:04:39'),(54,81,'217.182.139.85','2020-08-20 19:15:12'),(55,82,'112.133.236.70','2020-08-20 22:15:11'),(56,83,'144.217.166.65','2020-08-23 05:27:34');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (2,'admin','112.133.237.62',1,'2020-04-15 06:29:39','2020-04-15 06:29:39'),(3,'','77.83.184.230',5,'2020-04-16 02:32:18','2020-04-16 02:32:20'),(4,'\'','77.83.184.230',2,'2020-04-16 02:32:18','2020-04-16 02:32:38'),(5,'&quot;','77.83.184.230',2,'2020-04-16 02:32:19','2020-04-16 02:32:39'),(8,'9047736317','112.133.236.32',3,'2020-05-10 11:06:52','2020-05-10 11:09:35'),(9,'universejino@gmail.com','112.133.236.32',5,'2020-05-10 11:07:51','2020-05-10 11:08:27'),(10,'gtp.kannan@gmail.com','112.133.236.32',1,'2020-05-10 11:22:16','2020-05-10 11:22:16'),(12,'markbaker3753@gmail.com','94.177.164.168',2,'2020-08-18 07:36:42','2020-08-18 07:36:47');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_search`
--

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `approve` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),(32,'admin_mail_return','admin/model/sale/return/addReturn/after','mail/return',1,0),(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0),(34,'advertise_google','admin/model/catalog/product/deleteProduct/after','extension/advertise/google/deleteProduct',1,0),(35,'advertise_google','admin/model/catalog/product/copyProduct/after','extension/advertise/google/copyProduct',1,0),(36,'advertise_google','admin/view/common/column_left/before','extension/advertise/google/admin_link',1,0),(37,'advertise_google','admin/model/catalog/product/addProduct/after','extension/advertise/google/addProduct',1,0),(38,'advertise_google','catalog/controller/checkout/success/before','extension/advertise/google/before_checkout_success',1,0),(39,'advertise_google','catalog/view/common/header/after','extension/advertise/google/google_global_site_tag',1,0),(40,'advertise_google','catalog/view/common/success/after','extension/advertise/google/google_dynamic_remarketing_purchase',1,0),(41,'advertise_google','catalog/view/product/product/after','extension/advertise/google/google_dynamic_remarketing_product',1,0),(42,'advertise_google','catalog/view/product/search/after','extension/advertise/google/google_dynamic_remarketing_searchresults',1,0),(43,'advertise_google','catalog/view/product/category/after','extension/advertise/google/google_dynamic_remarketing_category',1,0),(44,'advertise_google','catalog/view/common/home/after','extension/advertise/google/google_dynamic_remarketing_home',1,0),(45,'advertise_google','catalog/view/checkout/cart/after','extension/advertise/google/google_dynamic_remarketing_cart',1,0);
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'report','sale_coupon'),(31,'report','customer_search'),(32,'report','customer_transaction'),(33,'report','product_purchased'),(34,'report','product_viewed'),(35,'report','sale_return'),(36,'report','sale_order'),(37,'report','sale_shipping'),(38,'report','sale_tax'),(39,'report','customer_activity'),(40,'report','customer_order'),(41,'report','customer_reward'),(42,'advertise','google'),(44,'module','bestseller'),(46,'module','special'),(47,'module','latest');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_install`
--

LOCK TABLES `oc_extension_install` WRITE;
/*!40000 ALTER TABLE `oc_extension_install` DISABLE KEYS */;
INSERT INTO `oc_extension_install` VALUES (1,0,'plus-minus-oc3.ocmod.zip','2020-03-26 22:24:59');
/*!40000 ALTER TABLE `oc_extension_install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_path`
--

LOCK TABLES `oc_extension_path` WRITE;
/*!40000 ALTER TABLE `oc_extension_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_extension_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2010-02-26 22:33:24'),(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2010-12-15 15:18:13');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_category`
--

DROP TABLE IF EXISTS `oc_googleshopping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_category`
--

LOCK TABLES `oc_googleshopping_category` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product`
--

DROP TABLE IF EXISTS `oc_googleshopping_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=487 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product`
--

LOCK TABLES `oc_googleshopping_product` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product` DISABLE KEYS */;
INSERT INTO `oc_googleshopping_product` VALUES (1,51,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,52,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(3,53,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(4,54,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(5,55,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(6,56,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(7,57,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(8,58,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(9,59,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(10,60,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(11,61,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(12,62,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(13,63,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(14,64,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(15,65,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(16,66,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(17,67,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(18,68,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(19,69,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(20,70,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(21,71,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(22,72,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(23,73,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(24,74,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(25,75,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(26,76,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(27,77,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(28,78,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(29,79,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(30,80,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(31,81,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(32,82,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(33,83,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(34,84,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(35,85,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(36,86,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(37,87,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(38,88,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(39,89,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(40,90,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(41,91,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(42,92,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(43,93,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(44,94,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(45,95,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(46,96,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(47,97,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(48,98,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(49,99,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(50,100,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(51,101,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(52,102,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(53,103,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(54,104,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(55,105,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(56,106,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(57,107,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(58,108,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(59,109,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(60,110,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(61,111,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(62,112,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(63,113,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(64,114,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(65,115,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(66,116,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(67,117,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(68,118,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(69,119,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(70,120,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(71,121,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(72,122,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(73,123,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(74,124,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(75,125,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(76,126,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(77,127,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(78,128,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(79,129,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(80,130,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(81,131,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(82,132,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(83,133,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(84,134,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(85,135,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(86,136,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(87,137,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(88,138,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(89,139,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(90,140,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(91,141,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(92,142,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(93,143,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(94,144,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(95,145,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(96,146,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(97,147,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(98,148,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(99,149,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(100,150,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(101,151,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(102,152,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(103,153,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(104,154,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(105,155,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(106,156,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(107,157,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(108,158,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(109,159,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(110,160,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(111,161,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(112,162,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(113,163,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(114,164,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(115,165,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(116,166,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(117,167,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(118,168,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(119,169,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(120,170,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(121,171,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(122,172,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(123,173,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(124,174,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(125,175,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(126,176,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(127,177,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(128,178,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(129,179,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(130,180,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(131,181,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(132,182,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(133,183,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(134,184,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(135,185,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(136,186,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(137,187,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(138,188,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(139,189,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(140,190,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(141,191,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(142,192,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(143,193,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(144,194,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(145,195,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(146,196,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(147,197,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(148,198,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(149,199,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(150,200,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(151,201,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(152,202,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(153,203,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(154,204,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(155,205,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(156,206,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(157,207,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(158,208,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(159,209,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(160,210,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(161,211,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(162,212,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(163,213,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(164,214,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(165,215,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(166,216,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(167,217,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(168,218,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(169,219,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(170,220,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(171,221,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(172,222,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(173,223,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(174,224,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(175,225,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(176,226,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(177,227,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(178,228,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(179,229,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(180,230,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(181,231,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(182,232,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(183,233,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(184,234,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(185,235,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(186,236,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(187,237,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(188,238,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(189,239,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(190,240,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(191,241,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(192,242,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(193,243,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(194,244,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(195,245,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(196,246,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(197,247,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(198,248,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(199,249,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(200,250,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(201,251,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(202,252,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(203,253,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(204,254,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(205,255,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(206,256,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(207,257,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(208,258,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(209,259,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(210,260,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(211,261,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(212,262,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(213,263,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(214,264,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(215,265,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(216,266,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(217,267,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(218,268,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(219,269,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(220,270,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(221,271,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(231,281,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(230,280,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(229,279,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(228,278,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(227,277,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(232,282,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(233,283,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(234,284,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(235,285,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(236,286,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(237,287,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(238,288,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(239,289,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(240,290,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(241,291,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(242,292,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(243,293,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(244,294,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(245,295,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(246,296,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(247,297,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(248,298,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(249,299,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(250,300,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(251,301,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(252,302,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(253,303,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(254,304,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(255,305,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(256,306,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(257,307,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(258,308,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(259,309,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(260,310,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(265,315,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(262,312,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(263,313,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(264,314,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(266,316,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(267,317,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(268,318,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(269,319,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(270,320,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(271,321,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(272,322,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(273,323,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(274,324,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(275,325,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(276,326,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(277,327,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(283,333,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(282,332,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(280,330,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(281,331,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(284,334,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(285,335,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(286,336,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(287,337,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(288,338,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(289,339,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(290,340,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(291,341,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(292,342,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(293,343,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(294,344,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(295,345,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(296,346,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(297,347,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(298,348,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(299,349,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(300,350,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(301,351,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(302,352,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(303,353,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(304,354,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(305,355,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(306,356,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(307,357,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(308,358,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(309,359,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(310,360,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(311,361,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(312,362,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(313,363,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(314,364,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(315,365,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(316,366,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(317,367,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(318,368,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(319,369,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(320,370,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(321,371,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(322,372,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(323,373,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(324,374,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(325,375,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(326,376,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(327,377,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(328,378,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(329,379,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(330,380,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(331,381,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(332,382,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(333,383,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(334,384,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(335,385,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(336,386,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(337,387,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(338,388,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(339,389,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(340,390,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(341,391,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(342,392,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(343,393,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(344,394,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(345,395,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(346,396,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(347,397,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(348,398,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(349,399,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(350,400,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(351,401,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(352,402,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(353,403,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(354,404,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(355,405,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(356,406,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(357,407,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(358,408,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(359,409,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(360,410,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(361,411,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(362,412,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(363,413,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(364,414,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(365,415,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(366,416,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(367,417,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(368,418,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(369,419,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(370,420,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(371,421,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(372,422,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(373,423,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(374,424,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(375,425,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(376,426,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(377,427,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(378,428,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(379,429,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(380,430,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(381,431,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(382,432,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(383,433,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(384,434,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(385,435,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(386,436,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(387,437,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(388,438,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(389,439,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(390,440,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(391,441,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(392,442,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(393,443,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(394,444,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(395,445,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(396,446,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(397,447,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(398,448,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(399,449,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(400,450,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(401,451,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(402,452,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(403,453,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(404,454,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(405,455,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(406,456,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(407,457,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(408,458,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(409,459,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(410,460,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(411,461,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(412,462,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(413,463,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(414,464,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(415,465,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(416,466,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(417,467,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(418,468,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(419,469,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(420,470,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(421,471,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(422,472,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(423,473,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(424,474,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(425,475,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(426,476,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(427,477,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(428,478,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(429,479,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(430,480,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(431,481,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(432,482,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(433,483,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(434,484,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(435,485,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(436,486,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(437,487,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(438,488,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(439,489,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(440,490,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(441,491,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(442,492,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(443,493,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(444,494,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(445,495,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(446,496,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(447,497,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(448,498,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(449,499,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(450,500,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(451,501,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(452,502,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(453,503,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(454,504,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(455,505,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(456,506,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(457,507,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(458,508,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(459,509,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(460,510,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(461,511,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(462,512,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(463,513,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(464,514,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(465,515,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(466,516,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(467,517,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(468,518,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(469,519,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(470,520,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(471,521,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(472,522,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(473,523,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(474,524,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(475,525,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(476,526,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(477,527,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(478,528,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(479,529,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(480,530,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(481,531,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(482,532,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(483,533,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(484,534,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(485,535,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(486,536,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_googleshopping_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product_status`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product_status`
--

LOCK TABLES `oc_googleshopping_product_status` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product_target`
--

LOCK TABLES `oc_googleshopping_product_target` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_target`
--

LOCK TABLES `oc_googleshopping_target` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,1,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','',''),(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','',''),(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'English','en-gb','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (2,4,'0','content_top',0),(3,4,'0','content_top',1),(20,5,'0','column_left',2),(69,10,'account','column_right',1),(68,6,'account','column_right',1),(143,1,'banner.38','content_top',7),(142,1,'featured.37','content_top',6),(141,1,'banner.36','content_top',5),(140,1,'featured.33','content_top',4),(139,1,'banner.35','content_top',3),(138,1,'featured.28','content_top',2),(137,1,'slideshow.27','content_top',1);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(68,3,0,'product/category'),(66,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'Sakthi','catalog/demo/htc_logo.jpg',0),(6,'iFlo','',0),(7,'Aachi','catalog/demo/hp_logo.jpg',0),(8,'GTP Inc','catalog/demo/manufacturer/gtp-inc.jpg',0),(9,'Rnd HuB','catalog/demo/manufacturer/rnd-hub.jpg',0),(10,' Ajantha ','',0),(11,'Aashirvaad','',0),(12,'Amul ','',0),(13,'Eldia ','',0),(14,'Fortune ','',0),(15,'Ganesh','',0),(16,'GRB ','',0),(17,'Kuthuvilaku','',0),(18,'M.R.K','',0),(19,'Abirami','',0),(20,'Daawat','',0),(21,'India Gate','',0),(22,'Healtta','',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (1,1,'Plus and Minus on Product','Plus and Minus on Product','High as a Kite','3.x','www.opencart.com','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n    <name>Plus and Minus on Product</name>\n	<code>Plus and Minus on Product</code>\n	<version>3.x</version>\n	<link>www.opencart.com</link>\n	<author>High as a Kite</author>\n	\n	<file path=\"catalog/view/theme/*/template/product/product.twig\">\n        <operation>\n            <search><![CDATA[<label class=\"control-label\" for=\"input-quantity\">{{ entry_qty }}</label>]]></search>\n            <add position=\"after\"><![CDATA[<div class=\"input-group number-spinner\">\n			      <span class=\"input-group-btn\">\n					<button class=\"btn btn-default\" data-dir=\"dwn\"><i class=\"fa fa-minus\"></i></button>\n			      </span>\n				<input type=\"text\" name=\"quantity\" value=\"{{ minimum }}\" id=\"input-quantity\" class=\"form-control text-center\" />\n				  <span class=\"input-group-btn\">\n					<button class=\"btn btn-default\" data-dir=\"up\"><i class=\"fa fa-plus\"></i></button>\n				  </span>\n			    </div>]]></add>\n        </operation>\n		\n		<operation>\n            <search><![CDATA[<input type=\"text\" name=\"quantity\" value=\"{{ minimum }}\" size=\"2\" id=\"input-quantity\" class=\"form-control\" />]]></search>\n            <add position=\"replace\"><![CDATA[]]></add>\n        </operation>\n		\n		<operation>\n            <search><![CDATA[{{ footer }}]]></search>\n            <add position=\"before\"><![CDATA[<script type=\"text/javascript\"><!--\n$(document).on(\'click\', \'.number-spinner button\', function () {    \n	var btn = $(this),\n		oldValue = btn.closest(\'.number-spinner\').find(\'input\').val().trim(),\n		newVal = 1;\n			\n	if (btn.attr(\'data-dir\') == \'up\') {\n		newVal = parseInt(oldValue) + 1;\n	} else {\n		if (oldValue > 1) {\n			newVal = parseInt(oldValue) - 1;\n		} else {\n			newVal = 1;\n		}\n	}\n	btn.closest(\'.number-spinner\').find(\'input\').val(newVal);\n});\n//--></script>]]></add>\n        </operation>\n    </file>\n	\n</modification>',1,'2020-03-26 22:24:59');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),(28,'Home Page','featured','{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"92\",\"105\",\"90\",\"103\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),(31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(32,'Advance tamil new Year celebration','banner','{\"name\":\"Advance tamil new Year celebration\",\"banner_id\":\"10\",\"width\":\"1200\",\"height\":\"400\",\"status\":\"1\"}'),(33,'Fast moving Products','featured','{\"name\":\"Fast moving Products\",\"product_name\":\"\",\"product\":[\"46\",\"42\",\"89\",\"80\"],\"limit\":\"4\",\"width\":\"400\",\"height\":\"400\",\"status\":\"1\"}'),(34,'Home Page','bestseller','{\"name\":\"Home Page\",\"limit\":\"4\",\"width\":\"400\",\"height\":\"400\",\"status\":\"1\"}'),(37,'Foodgrains, Oil &amp; Masala','featured','{\"name\":\"Foodgrains, Oil &amp; Masala\",\"product_name\":\"\",\"product\":[\"43\",\"94\",\"96\",\"129\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(35,'Fruits &amp; Vegetables','banner','{\"name\":\"Fruits &amp; Vegetables\",\"banner_id\":\"11\",\"width\":\"1200\",\"height\":\"400\",\"status\":\"1\"}'),(36,'Foodgrains, Oil &amp; Masala','banner','{\"name\":\"Foodgrains, Oil &amp; Masala\",\"banner_id\":\"12\",\"width\":\"1200\",\"height\":\"400\",\"status\":\"1\"}'),(38,'Bakery, Cakes &amp; Dairy','banner','{\"name\":\"Bakery, Cakes &amp; Dairy\",\"banner_id\":\"13\",\"width\":\"1200\",\"height\":\"400\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `approve` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1,0,1),(2,'checkbox',2,0,1),(4,'text',3,0,1),(5,'select',4,0,1),(6,'textarea',5,0,1),(7,'file',6,0,1),(8,'date',7,0,1),(9,'time',8,0,1),(10,'datetime',9,0,1),(11,'select',10,0,1),(12,'date',11,0,1),(13,'select',4,0,0);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Product Color'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size'),(13,1,'Product Quantity');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(40,5,'',2),(39,5,'',1),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3),(65,13,'',18),(64,13,'',17),(63,13,'',16),(62,13,'',15),(61,13,'',14),(60,13,'',13),(50,13,'',12),(58,13,'',11),(57,13,'',10),(56,13,'',9),(55,13,'',8),(54,13,'',7),(53,13,'',6),(52,13,'',5),(51,13,'',4),(49,13,'',2),(59,13,'',1),(66,13,'',19);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(41,1,5,'Green'),(40,1,5,'Blue'),(39,1,5,'Red'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small'),(64,1,13,'1 L'),(63,1,13,'500 ML'),(62,1,13,'250 ML'),(61,1,13,'100 ML'),(60,1,13,'50 G'),(50,1,13,'200 G'),(58,1,13,'25 KG'),(57,1,13,'10 KG'),(56,1,13,'5 KG'),(55,1,13,'2 KG'),(42,1,5,'Yellow'),(54,1,13,'1KG'),(53,1,13,'750 G'),(52,1,13,'500 G'),(51,1,13,'250 G'),(49,1,13,'100 G'),(59,1,13,'No Thanks'),(65,1,13,'5 L'),(66,1,13,'50 ML');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (11,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',23,1,'Ravi','A','iniya5415@gmail.com','8903706261','','','Ravi','A','','Kusavankuzhi','Karan Kadu PO','Kanyakumari Dist','629809','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Ravi','A','','Kusavankuzhi','Karan Kadu PO','Kanyakumari Dist','629809','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','ok',1055.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.237.22','','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36','en,la;q=0.9','2020-04-28 11:32:23','2020-05-09 19:55:31'),(12,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',24,1,'Siva ','Kumar','sivakumar12051986@gmail.com','919578883144','','','Siva ','Kumar','','Kanden Vilai','Kanden Vilai PO','Kanyakumari Dist','629810','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Siva ','Kumar','','Kanden Vilai','Kanden Vilai PO','Kanyakumari Dist','629810','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','Ok',405.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.237.22','','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36','en,la;q=0.9','2020-04-28 11:50:49','2020-04-28 11:59:49'),(13,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',25,1,'Manikandan','C','mk4047695@gmail.com','9042126463','','','Manikandan','C','','Mottavilai','Karankadu PO','Kanyakumari Dist','629809','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Manikandan','C','','Mottavilai','Karankadu PO','Kanyakumari Dist','629809','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','Ok',205.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.237.22','','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36','en,la;q=0.9','2020-04-28 12:15:41','2020-04-28 12:17:02'),(14,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',26,1,'Alwin','Anbu Sign Pvt Ltd','alwin6708@gmail.com','7305505050','','','Alwin','Anbu Sign Pvt Ltd','Anbu Sign Pvt Ltd','Chithanthoppu','Kandanvilai PO','Kanyakumari District,','629810','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Alwin','Anbu Sign Pvt Ltd','Anbu Sign Pvt Ltd','Chithanthoppu','Kandanvilai PO','Kanyakumari District,','629810','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','Ok',45.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.237.22','','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36','en,la;q=0.9','2020-04-28 12:25:24','2020-04-28 14:30:11'),(15,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',29,1,'Amal','Raji','amalrajraj232@gmail.com','9994430534','','','Amal','Raji','','Kandenvilai','Kandenvilai PO','Kanyakumari Dist','629810','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Amal','Raji','','Kandenvilai','Kandenvilai PO','Kanyakumari Dist','629810','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','ok',405.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.248.125','','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36','en,la;q=0.9','2020-05-02 22:32:28','2020-05-03 19:34:12'),(16,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',24,1,'Siva ','Kumar','sivakumar12051986@gmail.com','919578883144','','','Siva ','Kumar','','Kanden Vilai','Kanden Vilai PO','Kanyakumari Dist','629810','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Siva ','Kumar','','Kanden Vilai','Kanden Vilai PO','Kanyakumari Dist','629810','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','ok',205.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.236.46','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36','en,la;q=0.9','2020-05-09 20:10:23','2020-05-09 20:27:45'),(17,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',26,1,'Alwin','Anbu Sign Pvt Ltd','anbusign@yahoo.com','7305505050','','[]','Alwin','Anbu Sign Pvt Ltd','Anbu Sign Pvt Ltd','Chithanthoppu','Kandanvilai PO','Kanyakumari District,','629810','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Alwin','Anbu Sign Pvt Ltd','Anbu Sign Pvt Ltd','Chithanthoppu','Kandanvilai PO','Kanyakumari District,','629810','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','ok',595.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.236.46','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36','en,la;q=0.9','2020-05-09 20:17:39','2020-05-09 20:23:50'),(18,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',26,1,'Alwin','Anbu Sign Pvt Ltd','anbusign@yahoo.com','7305505050','','[]','Alwin','Anbu Sign Pvt Ltd','Anbu Sign Pvt Ltd','Chithanthoppu','Kandanvilai PO','Kanyakumari District,','629810','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Alwin','Anbu Sign Pvt Ltd','Anbu Sign Pvt Ltd','Chithanthoppu','Kandanvilai PO','Kanyakumari District,','629810','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','7/5/2020',245.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.236.46','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36','en,la;q=0.9','2020-05-09 20:25:19','2020-05-09 20:27:10'),(19,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',32,1,'Benny','Lourdwin','lourdwinbenny@gmail.com','9488252524','','','Benny','Lourdwin','','KandenVilai','KandenVilai','Kanyakumari Dist','629810','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Benny','Lourdwin','','KandenVilai','KandenVilai','Kanyakumari Dist','629810','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','ok',595.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.236.46','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36','en,la;q=0.9','2020-05-09 22:34:50','2020-05-15 15:04:40'),(20,0,'INV-2020-00',0,'Hindustan Deal','https://hindustandeal.com/',28,1,'Jesus','Jino','Jino04652@gmail.com','9047736317','','[]','Jino','Jino','','Kusavan kuzhi karankadu po','','Kandanvilai','629809','India',99,'Tamil Nadu',1503,'','[]','Cash On Delivery','cod','Jino','Jino','','Kusavan kuzhi karankadu po','','Kandanvilai','629809','India',99,'Tamil Nadu',1503,'','[]','Flat Shipping Rate','flat.flat','Ok',175.0000,5,0,0.0000,0,'',1,4,'INR',1.00000000,'112.133.236.32','','Mozilla/5.0 (Linux; Android 9; Redmi Note 5 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.136 Mobile Safari/537.36','en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7','2020-05-10 16:45:55','2020-05-10 16:47:48');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (29,13,5,1,'Thanks &amp; Regards','2020-04-28 12:17:02',0),(24,11,1,0,'','2020-04-28 11:33:58',0),(25,11,15,0,'','2020-04-28 11:38:45',0),(26,12,1,0,'','2020-04-28 11:51:00',0),(27,12,5,1,'Ok','2020-04-28 11:59:49',0),(28,13,1,0,'','2020-04-28 12:15:50',0),(30,14,1,0,'','2020-04-28 12:25:36',0),(31,14,3,1,'ok','2020-04-28 12:27:16',0),(32,14,5,0,'','2020-04-28 14:30:11',0),(33,15,1,0,'','2020-05-02 22:32:39',0),(34,15,2,0,'','2020-05-02 22:35:14',0),(35,15,5,1,'Thanks &amp; Regards','2020-05-03 19:34:12',0),(36,11,5,0,'ok','2020-05-09 19:55:31',0),(37,16,1,0,'','2020-05-09 20:10:33',0),(38,17,1,0,'','2020-05-09 20:17:48',0),(39,17,5,1,'03/05/2020 delivery completed','2020-05-09 20:23:50',0),(40,18,1,0,'','2020-05-09 20:25:27',0),(41,18,5,1,'7/5/2020 delivery completed 345 Rs','2020-05-09 20:27:10',0),(42,16,5,0,'delivery completed','2020-05-09 20:27:45',0),(43,19,1,0,'','2020-05-09 22:35:11',0),(44,20,1,0,'','2020-05-10 16:46:06',0),(45,20,5,0,'done','2020-05-10 16:47:33',0),(46,20,5,1,'','2020-05-10 16:47:48',0),(47,19,5,0,'','2020-05-15 15:04:40',0);
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
INSERT INTO `oc_order_option` VALUES (8,11,15,319,24,'Product Quantity','25 K','select'),(9,12,16,320,26,'Product Quantity','1K','select'),(10,13,17,320,26,'Product Quantity','1K','select'),(11,15,19,324,47,'Product Quantity','250 GM','select'),(12,17,21,321,33,'Product Quantity','5 KG','select'),(13,18,22,321,32,'Product Quantity','2 KG','select'),(14,19,23,330,67,'Product Quantity','250 G','select'),(15,19,24,329,65,'Product Quantity','1KG','select'),(16,20,25,329,66,'Product Quantity','500 G','select');
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  `commission` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `commissionper` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `seller_total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `seller_paid_status` tinyint(1) NOT NULL DEFAULT '0',
  `product_status_id` int(11) NOT NULL DEFAULT '0',
  `payment_description` text NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `payment_date` datetime NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (15,11,129,'IVN Sengalpattu Rice','Local Organic Grown',1,1050.0000,1050.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(16,12,127,'Broiler Chicken Curry Cut Without Skin','Local Organic Grown',1,400.0000,400.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(17,13,127,'Broiler Chicken Curry Cut Without Skin','Local Organic Grown',1,200.0000,200.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(18,14,131,'Country Chicken Egg','Local Organic Grown',4,10.0000,40.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(19,15,121,'Premium Mutton Curry Cut – Net Wt. 250 Grams','Local Organic Grown',1,400.0000,400.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(20,16,127,'Broiler Chicken Curry Cut Without Skin','Local Organic Grown',1,200.0000,200.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(21,17,125,'Broiler Chicken With Skin','Local Organic Grown',1,590.0000,590.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(22,18,125,'Broiler Chicken With Skin','Local Organic Grown',1,240.0000,240.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(23,19,119,'Premium Mutton Boneless 500 Grams','Local Organic Grown',1,250.0000,250.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(24,19,126,'Fresh Beef – 500 Grams','Local Organic Grown',1,340.0000,340.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00'),(25,20,126,'Fresh Beef – 500 Grams','Local Organic Grown',1,170.0000,170.0000,0.0000,0,0.0000,0.0000,0.0000,0,0,'',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_shipment`
--

LOCK TABLES `oc_order_shipment` WRITE;
/*!40000 ALTER TABLE `oc_order_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,1,'Processing'),(3,1,'Shipped'),(7,1,'Canceled'),(5,1,'Complete'),(8,1,'Denied'),(9,1,'Canceled Reversal'),(10,1,'Failed'),(11,1,'Refunded'),(12,1,'Reversed'),(13,1,'Chargeback'),(1,1,'Pending'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (49,16,'shipping','Flat Shipping Rate',5.0000,3),(48,16,'sub_total','Sub-Total',200.0000,1),(47,15,'total','Total',405.0000,9),(33,11,'sub_total','Sub-Total',1050.0000,1),(34,11,'shipping','Flat Shipping Rate',5.0000,3),(35,11,'total','Total',1055.0000,9),(36,12,'sub_total','Sub-Total',400.0000,1),(37,12,'shipping','Flat Shipping Rate',5.0000,3),(38,12,'total','Total',405.0000,9),(39,13,'sub_total','Sub-Total',200.0000,1),(40,13,'shipping','Flat Shipping Rate',5.0000,3),(41,13,'total','Total',205.0000,9),(42,14,'sub_total','Sub-Total',40.0000,1),(43,14,'shipping','Flat Shipping Rate',5.0000,3),(44,14,'total','Total',45.0000,9),(45,15,'sub_total','Sub-Total',400.0000,1),(46,15,'shipping','Flat Shipping Rate',5.0000,3),(50,16,'total','Total',205.0000,9),(51,17,'sub_total','Sub-Total',590.0000,1),(52,17,'shipping','Flat Shipping Rate',5.0000,3),(53,17,'total','Total',595.0000,9),(54,18,'sub_total','Sub-Total',240.0000,1),(55,18,'shipping','Flat Shipping Rate',5.0000,3),(56,18,'total','Total',245.0000,9),(57,19,'sub_total','Sub-Total',590.0000,1),(58,19,'shipping','Flat Shipping Rate',5.0000,3),(59,19,'total','Total',595.0000,9),(60,20,'sub_total','Sub-Total',170.0000,1),(61,20,'shipping','Flat Shipping Rate',5.0000,3),(62,20,'total','Total',175.0000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_transaction`
--

DROP TABLE IF EXISTS `oc_order_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_transaction` (
  `order_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_transaction`
--

LOCK TABLES `oc_order_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `approve` smallint(6) NOT NULL DEFAULT '0',
  `documentation` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=537 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (28,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/hindustandeal-tomato-local-organically-grown.jpg',8,1,20.0000,200,9,'2009-02-03',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,113,'2009-02-03 16:06:50','2020-04-10 20:54:52',1,'',1),(29,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-capsicum-green-500-g-hindustan-deal.jpg',8,1,20.0000,0,9,'2009-02-03',20.00000000,2,0.00000000,0.00000000,0.00000000,3,1,1,0,1,117,'2009-02-03 16:42:17','2020-04-12 09:37:11',1,'',1),(30,'Local Organic Grown','','','','','','','',1002,7,'catalog/Bakery_Cakes_Dairy/nandini-goodLife-toned-milk-1-L-Carton-hindustan-deal.jpg',9,1,53.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,85,'2009-02-03 16:59:00','2020-04-12 09:39:19',1,'',1),(31,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-colocasia-250-gr-hindustan-deal.jpg',8,1,28.0000,0,9,'2009-02-03',250.00000000,2,0.00000000,0.00000000,0.00000000,3,1,1,0,1,122,'2009-02-03 17:00:10','2020-04-10 22:21:29',1,'',1),(32,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/radish-mullangi-whiter-hindustan-deal.jpg',8,1,16.0000,0,9,'2009-02-03',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,100,'2009-02-03 17:07:26','2020-04-10 22:01:04',1,'',1),(33,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-beans-haricot-500-gr-hindustan-deal.jpg',8,1,55.0000,0,0,'2009-02-03',500.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,0,1,132,'2009-02-03 17:08:31','2020-04-10 22:48:01',1,'',1),(34,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-beetrootr-hindustan-deal.jpg',8,1,20.0000,0,9,'2009-02-03',500.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,0,1,121,'2009-02-03 18:07:54','2020-04-10 21:52:47',1,'',1),(35,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-cucumber-500-g-hindustan-deal.jpg',8,0,16.0000,0,9,'2009-02-03',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,120,'2009-02-03 18:08:31','2020-04-10 22:30:46',1,'',1),(36,'Local Organic Grown','','','','','','','',994,7,'catalog/Fruits_Vegetables/carrot-localr-hindustan-deal.jpg',8,0,22.0000,100,9,'2009-02-03',500.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,0,1,107,'2009-02-03 18:09:19','2020-04-10 21:12:34',1,'',1),(40,'Local Organic Grown','','','','','','','',1002,7,'catalog/Snacks_Branded_Foods/MAGGI-Roasted-Spices-Masala-ae-Magic-72-G-hindustan-deal.jpg',8,1,50.0000,0,9,'2009-02-03',72.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,104,'2009-02-03 21:07:12','2020-04-07 14:15:39',1,'',1),(41,'1 kg ','','','','','','','',1001,7,'catalog/Fruits_Vegetables/hindustandeal-fresho-onion.jpg',8,1,35.0000,0,9,'2009-02-03',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,97,'2009-02-03 21:07:26','2020-04-17 15:48:14',1,'',1),(42,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/Fresho-Ladies-Finger-hindustan-deal.jpg',8,1,25.0000,0,9,'2009-02-04',500.00000000,2,1.00000000,2.00000000,3.00000000,1,1,1,0,1,177,'2009-02-03 21:07:37','2020-04-17 15:51:31',1,'',1),(43,'Local Organic Grown','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/Gold-Winner-Refined-Sunflower-Oil-1-L-Pouch-hindustan-deal.jpg',8,0,104.0000,15,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,139,'2009-02-03 21:07:49','2020-06-22 18:51:43',1,'',1),(44,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-yam-elephant-foot-500-gr-hindustan-deal.jpg',8,1,16.0000,0,9,'2009-02-03',500.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,0,1,111,'2009-02-03 21:08:00','2020-04-10 22:09:03',1,'',1),(45,'Local Organic Grown','','','','','','','',998,7,'catalog/Fruits_Vegetables/cfresho-pidi-karunai-250-gr-hindustan-deal.jpg',8,1,20.0000,0,0,'2009-02-03',250.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,0,1,112,'2009-02-03 21:08:17','2020-04-10 22:16:04',1,'',1),(46,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-brinjal-varikatri-500-gr-hindustan-deal.jpg',8,1,30.0000,0,9,'2009-02-03',500.00000000,2,0.00000000,0.00000000,0.00000000,2,1,1,0,1,163,'2009-02-03 21:08:29','2020-04-10 22:53:14',1,'',1),(47,'1 kg','','','','','','','',1000,7,'catalog/Fruits_Vegetables/hindustandeal-fresho-potato.jpg',8,1,40.0000,400,9,'2009-02-03',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,112,'2009-02-03 21:08:40','2020-04-10 20:47:06',1,'',1),(48,'Local Organic Grown','','','','','','','test 2',1000,7,'catalog/Fruits_Vegetables/hindustandeal-onion-sambar.jpg',8,1,65.0000,0,9,'2009-02-08',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,126,'2009-02-08 17:21:51','2020-04-17 15:48:49',1,'',1),(49,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-coccinia-500-g-hindustan-deal.jpg',8,1,20.0000,0,9,'2011-04-25',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,159,'2011-04-26 08:57:34','2020-04-10 22:36:39',1,'',1),(50,'Local Organic Grown','','','','','','','',1000,6,'catalog/Fruits_Vegetables/fresho-beans-broad-500-gr-hindustan-deal.jpg',8,1,35.0000,0,0,'2020-02-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,0,1,1,1,99,'2020-02-18 13:44:06','2020-04-12 09:36:43',1,'',2),(51,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-beans-cowpea-500-g-hindustan-deal.jpg',8,1,35.0000,0,0,'2020-04-10',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,95,'2020-04-10 23:04:47','2020-04-10 23:04:47',0,'',0),(52,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-beans-cluster-250-gr-hindustan-deal.jpg',8,1,10.0000,0,0,'2020-04-10',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,112,'2020-04-10 23:09:34','2020-04-10 23:09:34',0,'',0),(53,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-lahsun-garlic-250-gr-hindustan-deal.jpg',8,1,50.0000,0,0,'2020-04-10',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,131,'2020-04-10 23:19:30','2020-04-17 16:09:04',0,'',0),(54,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-ginger-adrak-250-g-hindustan-deal.jpg',8,1,45.0000,0,0,'2020-04-10',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,93,'2020-04-10 23:31:52','2020-04-17 16:06:02',0,'',0),(55,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-green-chilly-small-100-gr-hindustan-deal.jpg',8,1,15.0000,0,0,'2020-04-10',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,96,'2020-04-10 23:42:23','2020-04-17 15:54:45',0,'',0),(56,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-amla-gooseberry-500-gr-hindustan-deal.jpg',8,1,60.0000,0,0,'2020-04-10',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,98,'2020-04-10 23:48:42','2020-04-12 09:36:17',0,'',0),(57,'Local Organic Grown','','','','','','','',1000,6,'catalog/Fruits_Vegetables/fresho-bitter-gourd-karela-500-gr-hindustan-deal.jpg',8,1,60.0000,0,0,'2020-04-10',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,108,'2020-04-10 23:56:22','2020-04-11 20:44:35',0,'',0),(58,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-snake-gourd-250-g-hindustan-deal.jpg',8,1,8.0000,0,0,'2020-04-11',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,101,'2020-04-11 20:56:29','2020-04-11 20:56:29',0,'',0),(59,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-drumstick-250-g-hindustan-deal.jpg',8,1,18.0000,0,0,'2020-04-11',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,106,'2020-04-11 21:03:12','2020-04-11 21:03:12',0,'',0),(60,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-pumpkin-disco-250-g-hindustan-deal.jpg',8,1,5.0000,0,0,'2020-04-11',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,97,'2020-04-11 21:08:54','2020-04-11 21:08:54',0,'',0),(61,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-cauliflower-1-pc-approx-400-to-600-g-hindustan-deal.jpg',8,1,25.0000,0,0,'2020-04-11',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,100,'2020-04-11 21:17:14','2020-04-11 21:23:52',0,'',0),(62,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-cabbage-1-pc-approx-500-to-800-g-hindustan-deal.jpg',8,1,22.0000,0,0,'2020-04-11',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,85,'2020-04-11 21:21:26','2020-04-11 21:24:31',0,'',0),(63,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-cabbage-red-500-g-hindustan-deal.jpg',8,1,20.0000,0,0,'2020-04-11',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,112,'2020-04-11 21:29:18','2020-04-11 21:29:18',0,'',0),(64,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-palak-250-g-hindustan-deal.jpg',8,1,16.0000,0,0,'2020-04-11',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,92,'2020-04-11 21:36:04','2020-08-13 15:43:44',0,'',0),(65,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-mint-leaves-100-g-hindustan-deal.jpg',8,1,10.0000,0,0,'2020-04-11',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,101,'2020-04-11 21:40:34','2020-08-13 15:41:39',0,'',0),(66,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-lettuce-iceberg-500-g-hindustan-deal.jpg',8,1,26.0000,0,0,'2020-04-11',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,88,'2020-04-11 21:46:17','2020-04-17 15:50:42',0,'',0),(67,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-spring-onion-100-g-hindustan-deal.jpg',8,1,16.0000,0,0,'2020-04-11',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,91,'2020-04-11 21:51:25','2020-04-11 21:51:25',0,'',0),(68,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-amaranthus-red-250-g-hindustan-deal.jpg',8,1,20.0000,0,0,'2020-04-11',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,106,'2020-04-11 22:00:47','2020-08-13 15:42:56',0,'',0),(69,'Local Organic Grown','','','','','','','',1000,6,'catalog/Fruits_Vegetables/fresho-lettuce-red-70-to-100-g-hindustan-deal.jpg',8,1,15.0000,0,0,'2020-04-11',70.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,80,'2020-04-11 22:05:06','2020-04-17 15:50:05',0,'',0),(70,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-groundnut-fresh-500-g--hindustan-deal.jpg',8,1,50.0000,0,0,'2020-04-11',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,91,'2020-04-11 22:12:35','2020-04-17 15:53:00',0,'',0),(71,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-tender-coconut-medium-1-pc-hindustan-deal.jpg',8,1,40.0000,0,0,'2020-04-12',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,116,'2020-04-12 09:49:41','2020-04-12 09:57:16',0,'',0),(72,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/tadaa-boiled-sweet-corn-kernel-spice-up-with-chat-masala-seasoning-225-g-tray-hindustan-deal.jpg',8,1,49.0000,0,0,'2020-04-12',225.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,146,'2020-04-12 10:10:16','2020-04-12 10:31:10',0,'',0),(73,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/tadaa-boiled-sweet-corn-kernel-spice-up-with-lemon-and-pepper-seasoning-225-g-tray-hindustan-deal.jpg',8,1,49.0000,0,0,'2020-04-12',225.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,150,'2020-04-12 10:21:04','2020-04-12 10:30:28',0,'',0),(74,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/tadaa-boiled-sweet-corn-kernel-spice-up-with-cheese-and-herbs-seasoning-225-g-tray-hindustan-deal.jpg',8,1,49.0000,0,0,'2020-04-12',225.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,149,'2020-04-12 10:25:26','2020-04-12 10:30:47',0,'',0),(75,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/tadaa-boiled-sweet-corn-kernel-spice-up-with-peri-peri-seasoning-225-g-tray.jpg',8,1,49.0000,0,0,'2020-04-12',225.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,142,'2020-04-12 10:34:20','2020-04-12 10:39:35',0,'',0),(76,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/tadaa-boiled-rajma-225-g-tray.jpg',8,1,45.0000,0,0,'2020-04-12',225.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,145,'2020-04-12 10:39:12','2020-04-12 10:39:56',0,'',0),(77,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/healthy-life-paneer-salad-tandoor-mayo-dressing-200-g.jpg',8,1,179.0000,0,0,'2020-04-12',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,95,'2020-04-12 10:49:04','2020-04-22 19:02:47',0,'',0),(78,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/healthy-life-sprouts-salad-salsa-dressing-200-g.jpg',8,1,149.0000,0,0,'2020-04-12',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,100,'2020-04-12 10:52:44','2020-04-12 10:52:44',0,'',0),(79,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-guava-500-g.jpg',8,1,30.0000,0,0,'2020-04-13',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,100,'2020-04-13 08:18:13','2020-04-17 15:52:33',0,'',0),(80,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-sapota-500-g.jpg',8,1,30.0000,0,0,'2020-04-13',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,110,'2020-04-13 08:22:35','2020-04-13 08:22:35',0,'',0),(81,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-banana-500-g.jpg',8,1,50.0000,0,0,'2020-04-13',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,101,'2020-04-13 08:32:15','2020-04-13 08:32:15',0,'',0),(82,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-orange-nagpur-regular-1-kg.jpg',8,1,80.0000,0,0,'2020-04-13',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,96,'2020-04-13 08:41:35','2020-04-13 08:41:35',0,'',0),(83,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-watermelon-striped-large-1-pc.jpg',8,1,115.0000,0,0,'2020-04-13',3.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,95,'2020-04-13 08:48:57','2020-05-20 17:31:24',0,'',0),(84,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-kiwi-green-3-pcs.jpg',8,1,59.0000,0,0,'2020-04-13',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,84,'2020-04-13 08:55:52','2020-04-17 15:52:06',0,'',0),(85,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-pomegranate-4-pcs.jpg',8,1,155.0000,0,0,'2020-04-13',850.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,97,'2020-04-13 09:04:47','2020-04-13 09:04:47',0,'',0),(86,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-apple-red-delicious-washington-regular-2x4-pcs.jpg',8,1,218.0000,0,0,'2020-04-13',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,108,'2020-04-13 09:11:56','2020-04-13 09:11:56',0,'',0),(87,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-grapes-sonaka-seedless-500-g.jpg',8,1,35.0000,0,0,'2020-04-13',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,103,'2020-04-13 09:22:37','2020-04-17 15:55:19',0,'',0),(88,'Local Organic Grown','','','','','','','',1000,6,'catalog/Fruits_Vegetables/fresho-blueberry-imported-125-g.jpg',8,1,300.0000,0,0,'2020-04-13',125.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,97,'2020-04-13 09:27:55','2020-04-13 09:27:55',0,'',0),(89,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fresho-grapes-sharad-seedless-500-g.jpg',8,1,40.0000,0,0,'2020-04-13',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,121,'2020-04-13 09:32:22','2020-04-13 09:32:22',0,'',0),(90,'Local Organic Grown','','','','','','','',1000,7,'catalog/Combo offers/grocery-budget-basket.jpg',8,1,1399.0000,0,0,'2020-04-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,259,'2020-04-14 22:03:40','2020-04-22 18:57:35',0,'',0),(91,'Local Organic Grown','','','','','','','',1000,7,'catalog/Combo offers/grocery-regular-baske.jpg',8,1,2999.0000,0,0,'2020-04-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,100,'2020-04-14 22:35:50','2020-04-22 18:57:58',0,'',0),(92,'Local Organic Grown','','','','','','','',1000,7,'catalog/Combo offers/homemade-masala-basket.jpg',8,1,320.0000,0,0,'2020-04-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,259,'2020-04-14 22:44:18','2020-04-22 19:03:10',0,'',0),(93,'Local Organic Grown','','','','','','','',1000,7,'catalog/Combo offers/special-biryani-basket.jpg',8,1,550.0000,0,0,'2020-04-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,96,'2020-04-14 22:53:37','2020-04-22 19:04:01',0,'',0),(94,'Local Organic Grown','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/tata-sampann-toor-dal-1-kg.jpg',8,1,145.0000,0,0,'2020-04-15',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,113,'2020-04-15 09:51:38','2020-04-15 11:25:42',0,'',0),(95,'Local Organic Grown','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/tata-sampann-moong-dal-500-g.jpg',8,1,84.0000,0,0,'2020-04-15',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,95,'2020-04-15 11:09:10','2020-04-22 19:29:05',0,'',0),(96,'Local Organic Grown','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/tata-sampann-chana-dal-unpolished-500-g.jpg',8,1,58.0000,0,0,'2020-04-15',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,103,'2020-04-15 11:13:37','2020-05-20 17:34:44',0,'',0),(97,'Aashirvaad','','','','','','','',300,7,'catalog/Foodgrains_Oil_Masala/aashirvaad-atta-whole-wheat-1-kg-pouch.jpg',0,0,57.0000,0,0,'2020-04-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,112,'2020-04-17 13:55:49','2020-04-22 13:18:24',0,'',0),(98,'Aashirvaad','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aashirvaad-atta-multigrains-1-kg-pouch.jpg',0,0,64.0000,0,0,'2020-04-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,86,'2020-04-17 14:04:15','2020-05-20 17:27:24',0,'',0),(99,'Aashirvaad','','','','','','','',300,7,'catalog/Foodgrains_Oil_Masala/aashirvaad-atta-whole-wheat-10-kg-pouch.jpg',0,0,490.0000,0,0,'2020-04-17',10.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,101,'2020-04-17 14:18:59','2020-04-22 13:23:36',0,'',0),(100,'Annapurna','','','','','','','',300,7,'catalog/Foodgrains_Oil_Masala/annapurna-farm-fresh-atta-1-kg-pouch.jpg',0,0,55.0000,0,0,'2020-04-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,71,'2020-04-17 14:27:02','2020-04-22 13:28:15',0,'',0),(101,'Aachi','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-mix-rava-idly-200-g-pouch.jpg',0,0,35.0000,15,0,'2020-04-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,97,'2020-04-17 14:32:17','2020-04-22 17:40:49',0,'',0),(102,'Double Horse','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/double-horse-samba-wheat-broken-fine-500-g-pouch.jpg',0,0,110.0000,40,0,'2020-04-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,86,'2020-04-17 14:44:58','2020-05-14 17:38:21',0,'',0),(103,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/vegetables-combo-offers.jpg',8,1,148.0000,0,0,'2020-04-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,98,'2020-04-17 15:20:55','2020-04-17 15:24:38',0,'',0),(104,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/vegetables-combo-offers.jpg',8,1,125.0000,0,0,'2020-04-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,88,'2020-04-17 15:28:35','2020-04-17 15:28:35',0,'',0),(105,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/vegetables-combo-offers.jpg',8,1,100.0000,0,0,'2020-04-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,141,'2020-04-17 15:31:17','2020-04-17 15:31:17',0,'',0),(106,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/vegetables-combo-offers-35.jpg',8,1,35.0000,0,0,'2020-04-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,76,'2020-04-17 15:37:23','2020-04-17 15:37:23',0,'',0),(107,'Local Organic Grown','','','','','','','',1000,7,'catalog/Fruits_Vegetables/vegetables-combo-offers.jpg',8,1,120.0000,0,0,'2020-04-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,87,'2020-04-17 15:40:00','2020-04-17 15:40:00',0,'',0),(108,'Double Horse','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/double-horse-wheat-samba-broken-500-g-pouch.jpg',0,0,105.0000,0,0,'2020-04-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,75,'2020-04-17 15:59:57','2020-04-22 17:11:38',0,'',0),(109,'Elite','','','','','','','',200,7,'catalog/Foodgrains_Oil_Masala/elite-samba-broken-wheat-500-g-pillow-pouch.jpg',0,0,70.0000,0,0,'2020-04-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-04-17 16:07:05','2020-04-22 17:15:06',0,'',0),(110,'Elite','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/elite-chakki-atta-1-kg-pillow-pouch.jpg',0,0,55.0000,0,0,'2020-04-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,89,'2020-04-17 16:12:24','2020-04-22 17:19:18',0,'',0),(111,'Elite','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/elite-broken-wheat-fine-500-g-pillow-pouch.jpg',0,0,55.0000,0,0,'2020-04-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-04-17 16:15:04','2020-05-15 19:47:54',0,'',0),(112,'Eastern','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/eastern-podi-puttu-500-g-pouch.jpg',0,0,56.0000,0,0,'2020-04-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,72,'2020-04-17 17:31:09','2020-04-22 17:47:44',0,'',0),(113,'Eastern','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/eastern-podi-chemba-puttu-500-g-pouch.jpg',0,0,57.0000,0,0,'2020-04-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,70,'2020-04-17 17:41:05','2020-04-22 17:44:48',0,'',0),(114,'Pillsbury','','','','','','','',300,7,'catalog/Foodgrains_Oil_Masala/pillsbury-atta-chakki-fresh-1-kg-pouch.jpg',0,0,57.0000,20,0,'2020-04-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,69,'2020-04-17 19:06:08','2020-04-22 17:23:33',0,'',0),(115,'Pillsbury','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/pillsbury-atta-chakki-fresh-5-kg-pouch.jpg',0,0,270.0000,0,0,'2020-04-17',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,76,'2020-04-17 19:17:52','2020-04-22 17:32:56',0,'',0),(116,'Pillsbury','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/pillsbury-atta-chakki-fresh-10-kg-pouch.jpg',0,0,490.0000,0,0,'2020-04-17',10.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-04-17 19:23:37','2020-04-22 17:29:22',0,'',0),(117,'Pillsbury','','','','','','','',100,7,'catalog/Foodgrains_Oil_Masala/pillsbury-atta-multigrain-5-kg-pouch.jpg',0,0,310.0000,0,0,'2020-04-17',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,61,'2020-04-17 19:34:18','2020-04-22 17:36:43',0,'',0),(118,'Local Organic Grown','','','','','','','',1000,7,'catalog/Meat_Fish/premium-goat-curry-cut-500-grams.jpg',8,1,450.0000,0,0,'2020-04-23',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,74,'2020-04-23 10:01:25','2020-04-23 10:03:43',0,'',0),(119,'Local Organic Grown','','','','','','','',999,7,'catalog/Meat_Fish/premium-mutton-boneless-500-grams.jpg',8,1,500.0000,0,0,'2020-04-23',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,82,'2020-04-23 10:07:14','2020-05-09 22:33:48',0,'',0),(120,'Local Organic Grown','','','','','','','',1000,7,'catalog/Meat_Fish/premium-goat-lever-kaleji-net-wt-250-grams.jpg',8,1,165.0000,0,0,'2020-04-23',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-04-23 10:20:21','2020-04-23 10:20:21',0,'',0),(121,'Local Organic Grown','','','','','','','',999,7,'catalog/Meat_Fish/premium-goat-curry-cut-500-grams.jpg',8,1,200.0000,0,0,'2020-04-23',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,88,'2020-04-23 10:24:39','2020-05-03 19:42:46',0,'',0),(122,'Local Organic Grown','','','','','','','',1000,7,'catalog/Meat_Fish/rohu-fish-curry-cut-with-head-net-weight-400-grams.jpg',8,1,140.0000,0,0,'2020-04-23',400.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,67,'2020-04-23 11:04:36','2020-04-23 11:04:36',0,'',0),(123,'Local Organic Grown','','','','','','','',1000,7,'catalog/Meat_Fish/fresh-prawns-c-small-size-(30-35-pieces)-500-grams.jpg',8,1,350.0000,0,0,'2020-04-23',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,64,'2020-04-23 11:16:18','2020-04-23 11:16:18',0,'',0),(124,'Local Organic Grown','','','','','','','',1000,7,'catalog/Meat_Fish/country-chicken-from-the-royal-pastures-500-gms.jpg',8,1,525.0000,0,0,'2020-04-23',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,74,'2020-04-23 11:39:02','2020-04-28 09:36:55',0,'',0),(125,'Local Organic Grown','','','','','','','',998,7,'catalog/Meat_Fish/broiler-chicken-with-skin.jpg',8,1,120.0000,0,0,'2020-04-23',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2020-04-23 12:03:48','2020-05-09 20:14:04',0,'',0),(126,'Local Organic Grown','','','','','','','',998,6,'catalog/Meat_Fish/fresh-beef-500-grams.jpg',8,1,170.0000,0,0,'2020-04-23',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,89,'2020-04-23 13:16:22','2020-05-09 22:29:33',0,'',0),(127,'Local Organic Grown','','','','','','','',197,7,'catalog/Meat_Fish/broiler-chicken-500-gms.jpg',8,1,200.0000,0,0,'2020-04-25',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,91,'2020-04-25 18:44:39','2020-04-28 12:47:56',0,'',0),(128,'Local Organic Grown','','','','','','','',1000,7,'catalog/Meat_Fish/country-chicken-with-skin.jpg',8,1,500.0000,0,0,'2020-04-25',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,76,'2020-04-25 18:54:46','2020-04-28 09:31:42',0,'',0),(129,'Local Organic Grown','','','','','','','',999,7,'catalog/Foodgrains_Oil_Masala/Ivn-sengalpattu-rice-25-kg.jpg',8,1,1050.0000,0,0,'2020-04-25',25.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,134,'2020-04-25 20:57:05','2020-04-28 09:41:04',0,'',0),(130,'Local Organic Grown','','','','','','','',1000,7,'catalog/Meat_Fish/broiler-egg.jpg',8,1,5.0000,0,0,'2020-04-28',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2020-04-28 11:12:01','2020-04-28 11:12:01',0,'',0),(131,'Local Organic Grown','','','','','','','',996,7,'catalog/Meat_Fish/broiler-egg.jpg',8,1,10.0000,0,0,'2020-04-28',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,94,'2020-04-28 11:14:35','2020-04-28 11:14:35',0,'',0),(132,'Local Organic Grown','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/avm-coconut-oil-1-ltr-pouch.jpg',8,1,155.0000,0,0,'2020-04-29',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-04-29 12:53:44','2020-04-29 13:16:54',0,'',0),(133,'Local Organic Grown','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/saffola-gold-pro-healthy-lifestyle-edible-oil-5-l-jar.jpg',8,1,725.0000,0,0,'2020-04-29',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,118,'2020-04-29 15:14:32','2020-04-29 15:14:32',0,'',0),(134,'Local Organic Grown','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/saffola-tasty-pro-fitness-conscious-edible-oil-1-l-pouch.jpg',8,1,115.0000,0,0,'2020-04-29',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,122,'2020-04-29 15:18:23','2020-04-29 15:18:23',0,'',0),(135,'Local Organic Grown','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/saffola-active-pro-weight-watchers-edible-oil-1-l-pouch.jpg',8,1,135.0000,0,0,'2020-04-29',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,112,'2020-04-29 15:21:50','2020-04-29 15:21:50',0,'',0),(136,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Brown-Sugar-1-kg.jpg',0,1,79.0000,0,0,'2020-05-04',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,92,'2020-05-04 16:10:06','2020-05-04 16:10:06',0,'',0),(137,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Crystal-Salt.jpg',8,1,10.0000,0,0,'2020-05-05',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,91,'2020-05-05 14:59:54','2020-05-05 14:59:54',0,'',0),(138,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Jaggery-Vellam-1- kg.jpg',8,1,56.0000,0,0,'2020-05-05',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,91,'2020-05-05 15:30:05','2020-05-05 15:30:05',0,'',0),(139,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Kristal-Refined-Salt-Powder.jpg',0,1,10.0000,0,0,'2020-05-05',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,77,'2020-05-05 15:54:58','2020-05-05 15:54:58',0,'',0),(140,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Soda-Salt-100-G.jpg',8,1,5.0000,0,0,'2020-05-05',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,94,'2020-05-05 16:11:13','2020-05-05 16:11:13',0,'',0),(141,'Weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sugar-1-KG.jpg',8,1,40.0000,0,0,'2020-05-05',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,105,'2020-05-05 16:27:52','2020-05-20 17:34:09',0,'',0),(142,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Tata-I-Sakthi-Salt-1-kg.jpg',0,1,10.0000,0,0,'2020-05-05',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,80,'2020-05-05 16:46:15','2020-05-05 16:49:55',0,'',0),(143,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Tata-Lite-Low-Sodium-Salt-1-Kg.jpg',0,1,18.0000,0,0,'2020-05-05',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,74,'2020-05-05 17:02:56','2020-05-05 17:35:13',0,'',0),(144,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Taste-Salt-500-G.jpg',8,1,90.0000,0,0,'2020-05-05',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,88,'2020-05-05 17:34:38','2020-05-05 17:34:38',0,'',0),(145,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Aachi-Chicken-Powder-50g.jpg',0,1,20.0000,0,0,'2020-05-05',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,87,'2020-05-05 17:54:14','2020-05-05 18:26:06',0,'',0),(146,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Aachi-chilli-Powder-50g.jpg',0,1,12.0000,0,0,'2020-05-05',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,101,'2020-05-05 18:19:43','2020-05-14 16:54:04',0,'',0),(147,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Aachi-Coriander-Powder-50g.jpg',0,1,10.0000,0,0,'2020-05-06',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,77,'2020-05-06 14:26:08','2020-05-06 14:26:08',0,'',0),(148,' pcs','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Abirami-Basmathi-Rice.jpg',8,1,125.0000,0,0,'2020-05-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,99,'2020-05-09 23:11:09','2020-05-09 23:29:51',0,'',0),(149,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Prodect.jpg',0,1,22.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,79,'2020-05-14 16:32:14','2020-05-14 16:42:52',0,'',0),(150,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Aachi-Sampar-Powder-50g.jpg',0,1,18.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,79,'2020-05-14 16:41:47','2020-05-14 16:41:47',0,'',0),(151,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aniseed-Peru-Siragam.jpg',8,1,28.0000,0,0,'2020-05-14',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2020-05-14 16:51:53','2020-05-14 17:51:00',0,'',0),(152,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Asafoetids-Perukayam.jpg',0,1,59.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,74,'2020-05-14 17:06:50','2020-05-14 17:08:19',0,'',0),(153,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Asafoetids-Powder-Perukayam-Dool.jpg',8,1,60.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,82,'2020-05-14 17:10:42','2020-05-14 17:23:56',0,'',0),(154,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Biriyani-Masala-50g.jpg',8,1,24.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,85,'2020-05-14 17:21:12','2020-05-14 17:24:09',0,'',0),(155,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Biriyani-Leaf-25g.jpg',8,1,10.0000,0,0,'2020-05-14',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2020-05-14 17:22:01','2020-05-14 17:22:01',0,'',0),(156,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Black-Pepper.jpg',8,1,30.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-05-14 17:46:03','2020-05-14 17:46:03',0,'',0),(157,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Cardamom-Alakay.jpg',8,1,352.0000,0,0,'2020-05-14',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2020-05-14 17:53:28','2020-05-14 17:53:28',0,'',0),(158,'Piece','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Cinnamon-Pattai.jpg',8,1,121.0000,0,0,'2020-05-14',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-14 18:04:32','2020-05-14 18:04:32',0,'',0),(159,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Carom-seeds-Ommam.jpg',8,1,13.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,85,'2020-05-14 18:05:19','2020-05-14 18:05:19',0,'',0),(160,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Coriander-Seeds-Malli.jpg',8,1,23.0000,0,0,'2020-05-14',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2020-05-14 18:14:34','2020-05-14 18:14:34',0,'',0),(161,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Cumin-Seeds-siragam.jpg',8,1,14.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1000,1,1,75,'2020-05-14 18:14:59','2020-05-14 18:17:12',0,'',0),(162,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Dry-Fenugreek-Venthayam.jpg',8,1,5.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,88,'2020-05-14 18:31:30','2020-05-14 18:31:30',0,'',0),(163,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Dry-Chilly.jpg',8,1,90.0000,0,0,'2020-05-14',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,86,'2020-05-14 18:32:30','2020-05-14 18:32:30',0,'',0),(164,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Dry-Ginger-Chukku.jpg',8,1,21.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-05-14 18:47:12','2020-05-14 18:47:12',0,'',0),(165,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Ginger-garlic-paste.jpg',0,1,10.0000,0,0,'2020-05-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,62,'2020-05-14 18:56:48','2020-05-14 18:56:48',0,'',0),(166,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Dry-Fenugreek-Powder.jpg',8,1,12.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,84,'2020-05-14 19:03:42','2020-05-14 19:03:42',0,'',0),(167,'package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/i-FLO-Coriander-powder.jpg',8,1,16.0000,0,0,'2020-05-14',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-14 19:15:58','2020-05-14 19:15:58',0,'',0),(168,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/i-FLO-Red-Chilli-Powder.jpg',0,1,18.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,68,'2020-05-14 19:21:00','2020-05-14 19:21:00',0,'',0),(169,'package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ldli-Powder-50g.jpg',8,1,14.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,70,'2020-05-14 19:32:36','2020-05-14 19:32:36',0,'',0),(170,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Jathikaai-15g.jpg',8,1,9.0000,0,0,'2020-05-14',15.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,80,'2020-05-14 19:35:04','2020-05-14 19:35:04',0,'',0),(171,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Karungali-Pattai.jpg',8,1,20.0000,0,0,'2020-05-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,80,'2020-05-14 19:54:15','2020-05-14 19:54:15',0,'',0),(172,'Waite','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Jathipathri.jpg',8,1,39.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,74,'2020-05-14 20:04:28','2020-05-14 20:04:28',0,'',0),(173,'Box','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/kasari-powder-yellow.jpg',8,1,17.0000,0,0,'2020-05-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-14 20:10:34','2020-05-14 20:10:34',0,'',0),(174,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Karunjeeragam-100g.jpg',8,1,20.0000,0,0,'2020-05-14',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,75,'2020-05-14 20:14:03','2020-05-14 20:14:03',0,'',0),(175,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Lemon-Rice-Powder-50g.jpg',0,1,15.0000,0,0,'2020-05-14',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-05-14 20:25:25','2020-05-14 20:30:57',0,'',0),(176,'Weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Kirampu.jpg',8,1,77.0000,0,0,'2020-05-14',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,76,'2020-05-14 20:26:11','2020-05-14 20:26:11',0,'',0),(177,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Mixed-pickil.jpg',8,1,80.0000,0,0,'2020-05-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2020-05-14 20:32:01','2020-05-14 20:32:01',0,'',0),(178,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Mixed-Masala.jpg',8,1,30.0000,0,0,'2020-05-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,84,'2020-05-14 20:38:18','2020-05-14 20:38:18',0,'',0),(179,'Weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Mustard-Seeds-Kadugu.jpg',8,1,8.0000,0,0,'2020-05-14',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-05-14 20:39:18','2020-05-14 20:39:18',0,'',0),(180,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Palkayam-200g.jpg',8,1,100.0000,0,0,'2020-05-14',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,85,'2020-05-14 20:52:00','2020-05-20 17:32:59',0,'',0),(181,'Weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/poppy-seedskasa-kasa.jpg',8,1,52.0000,0,0,'2020-05-14',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,75,'2020-05-14 20:53:14','2020-05-14 20:53:14',0,'',0),(182,'Box','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Red-Kesari-Powder-100g.jpg',8,1,47.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,86,'2020-05-15 15:27:13','2020-05-15 15:27:13',0,'',0),(183,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-chicken-masala-100g.jpg',5,1,36.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-05-15 15:35:35','2020-05-15 15:35:35',0,'',0),(184,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-sambar-powder-100g.jpg',7,1,30.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-15 15:43:16','2020-05-15 16:54:38',0,'',0),(185,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sakthi-Rasam-Powder-100g.jpg',5,1,40.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,82,'2020-05-15 15:45:44','2020-05-15 15:45:44',0,'',0),(186,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sakthi-Black-Pepper-Powder-50g.jpg',5,1,45.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,97,'2020-05-15 15:55:25','2020-05-15 15:55:25',0,'',0),(187,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-aniseed-powder-500g.jpg',5,1,100.0000,0,0,'2020-05-15',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-05-15 16:00:49','2020-05-15 16:00:49',0,'',0),(188,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sakthi-Chilli-Chicken-65-masala-50g.jpg',5,1,20.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,70,'2020-05-15 16:03:24','2020-05-15 16:03:24',0,'',0),(189,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi-Chilli-Powder-50g.jpg',5,1,14.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,65,'2020-05-15 16:11:26','2020-05-15 16:11:26',0,'',0),(190,'Packag','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi-Cumin-Powder-50g.jpg',5,1,23.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-05-15 16:18:16','2020-05-15 16:18:16',0,'',0),(191,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sakthi-Coriander-Powder-100g.jpg',5,1,22.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,80,'2020-05-15 16:18:24','2020-05-15 16:18:24',0,'',0),(192,'Packag','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi-Curry-Powder-50g.jpg',5,1,19.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-05-15 16:22:29','2020-05-15 16:22:29',0,'',0),(193,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sakthi-Egg-Masala.jpg',5,1,25.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-05-15 16:26:47','2020-05-15 16:51:35',0,'',0),(194,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi-Fish-Curry-Masala-50g.jpg',5,1,16.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,84,'2020-05-15 16:27:52','2020-05-15 16:27:52',0,'',0),(195,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sakthi-Fish-Fry-Masala-50g.jpg',5,1,24.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,69,'2020-05-15 16:34:45','2020-05-15 16:34:45',0,'',0),(196,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi-Garam-Masala-50g.jpg',5,1,27.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,80,'2020-05-15 16:35:24','2020-05-15 16:35:24',0,'',0),(197,'Pakag','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi-puliyodharai-50g.jpg',5,1,19.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,79,'2020-05-15 16:40:38','2020-05-18 18:46:37',0,'',0),(198,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sakthi-Mutton-Powder-100g.jpg',5,1,40.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,66,'2020-05-15 16:45:53','2020-05-15 16:45:53',0,'',0),(199,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi-Red-Chilli-Powder-1kg.jpg',5,1,325.0000,0,0,'2020-05-15',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-05-15 16:51:43','2020-05-15 16:52:12',0,'',0),(200,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-Turmeric-powder-100g.jpg',5,1,20.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,93,'2020-05-15 17:01:26','2020-05-15 17:01:26',0,'',0),(201,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Salt-Nuts-250g.jpg',8,1,30.0000,0,0,'2020-05-15',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-05-15 17:08:30','2020-05-15 17:08:30',0,'',0),(202,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sunda-Vathal-1Kg.jpg',8,1,370.0000,0,0,'2020-05-15',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,82,'2020-05-15 17:15:25','2020-05-15 17:15:25',0,'',0),(203,'Box','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/TT-Asafoetids-50gm.jpg',8,1,52.0000,0,0,'2020-05-15',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,87,'2020-05-15 17:20:53','2020-05-15 17:20:53',0,'',0),(204,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Turmeric.jpg',8,1,11.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,73,'2020-05-15 17:30:09','2020-05-15 17:30:09',0,'',0),(205,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Vengai-Appalam.jpg',8,1,40.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,84,'2020-05-15 17:34:06','2020-05-15 17:34:06',0,'',0),(206,'Packag','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/White-Pattani.jpg',8,1,72.0000,0,0,'2020-05-15',72.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-15 17:38:40','2020-05-15 17:38:40',0,'',0),(207,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi-baji-bonda-mix.jpg',7,1,30.0000,0,0,'2020-05-15',100.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,125,'2020-05-15 18:42:25','2020-06-29 11:32:26',0,'',0),(208,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Aashirvaad-Atta-Whole-Wheat-5-kg.jpg',11,1,212.0000,0,0,'2020-05-15',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,125,'2020-05-15 18:52:22','2020-05-15 18:52:22',0,'',0),(209,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Annam-Appalam.jpg',8,1,25.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,76,'2020-05-15 18:57:51','2020-05-15 19:20:14',0,'',0),(210,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Apoorva-Sooji-1kg.jpg',8,1,56.0000,0,0,'2020-05-15',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,99,'2020-05-15 19:18:07','2020-05-15 19:22:24',0,'',0),(211,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Ajantha-Coconut-Oil.jpg',10,1,150.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,84,'2020-05-15 19:19:50','2020-05-15 19:19:50',0,'',0),(212,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Amul-Butter-100g.jpg',12,1,46.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,84,'2020-05-15 19:26:28','2020-05-15 19:26:28',0,'',0),(213,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Baking-Soda-100g.jpg',8,1,13.0000,0,0,'2020-05-15',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,96,'2020-05-15 19:29:48','2020-05-15 19:29:48',0,'',0),(214,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Biriyani-Essance.jpg',8,1,57.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,74,'2020-05-15 19:30:46','2020-05-15 19:30:46',0,'',0),(215,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Double-Horse-Sooji-500g.jpg',8,1,50.0000,0,0,'2020-05-15',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,110,'2020-05-15 19:41:52','2020-05-15 19:41:52',0,'',0),(216,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/eldia-pure-coconut-oil-200ml.jpg',13,1,193.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-15 19:57:28','2020-05-15 19:57:28',0,'',0),(217,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Ganesh-Idiyappam-Flour.jpg',0,1,30.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-15 20:01:25','2020-05-15 20:01:25',0,'',0),(218,'Jar','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Fortune-Sunflower-Oil.jpg',14,1,103.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-05-15 20:05:17','2020-05-20 17:30:27',0,'',0),(219,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Ganesh-Samba-Broken-Wheat-500g.jpg',15,1,48.0000,0,0,'2020-05-15',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,98,'2020-05-15 20:12:33','2020-05-15 20:12:33',0,'',0),(220,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Fortune-Sunflower-Oil-1lr.jpg',14,1,98.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,86,'2020-05-15 20:17:58','2020-05-15 20:17:58',0,'',0),(221,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Ganesh-Samba-Puttu-Flour.jpg',15,1,26.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,100,'2020-05-15 20:27:37','2020-05-15 20:27:37',0,'',0),(222,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Ganesh-Wheat-Sooji.jpg',15,1,44.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,85,'2020-05-15 20:38:05','2020-05-15 20:38:05',0,'',0),(223,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Harima-Baking-Powder-100g.jpg',8,1,40.0000,0,0,'2020-05-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,96,'2020-05-15 20:49:39','2020-05-15 20:49:39',0,'',0),(224,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Kanchi-Gothumai-500g.jpg',8,1,42.0000,0,0,'2020-05-15',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,99,'2020-05-15 21:04:08','2020-05-15 21:04:08',0,'',0),(225,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Kili-Maida-25-kg.jpg',8,1,1080.0000,0,0,'2020-05-16',25.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,95,'2020-05-16 16:12:16','2020-05-20 17:31:59',0,'',0),(226,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Kuthuvilakku-Sooji.jpg',0,1,28.0000,0,0,'2020-05-16',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,80,'2020-05-16 16:29:58','2020-05-16 16:29:58',0,'',0),(227,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Maida-500g.jpg',17,1,26.0000,0,0,'2020-05-16',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,99,'2020-05-16 16:41:44','2020-05-16 16:49:54',0,'',0),(228,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Manna-Idiyappam-Flour.jpg',8,1,28.0000,0,0,'2020-05-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,94,'2020-05-16 16:58:32','2020-05-16 16:58:32',0,'',0),(229,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/MRK-Idiyappam-Mavu.jpg',18,1,35.0000,0,0,'2020-05-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,93,'2020-05-16 17:20:02','2020-05-18 18:56:45',0,'',0),(230,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/MRK-Samba-Puttu-Mavu.jpg',18,1,32.0000,0,0,'2020-05-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,95,'2020-05-16 17:28:42','2020-05-18 19:01:42',0,'',0),(231,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/MTR-Gulab-Jamun-Mix-200g.jpg',0,1,99.0000,0,0,'2020-05-16',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,71,'2020-05-16 17:47:11','2020-05-20 17:32:31',0,'',0),(232,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Nice-Idiyappam-Flour.jpg',0,1,28.0000,0,0,'2020-05-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,74,'2020-05-16 18:14:35','2020-05-16 18:14:35',0,'',0),(233,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Pavalam-Idiyappam-mavu.jpg',8,1,34.0000,0,0,'2020-05-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,90,'2020-05-16 18:35:48','2020-05-16 18:35:48',0,'',0),(234,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/sakthi-bajji-bonda-Powder-200g.jpg',5,1,30.0000,0,0,'2020-05-16',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,101,'2020-05-16 18:54:45','2020-05-16 18:54:45',0,'',0),(235,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/sakthi-Bengal-Gram-Flour-500g.jpg',5,1,55.0000,0,0,'2020-05-16',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,90,'2020-05-16 19:09:28','2020-05-16 19:09:28',0,'',0),(236,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sakthi-Ragi-Flour-500g.jpg',5,1,33.0000,0,0,'2020-05-16',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,88,'2020-05-16 19:57:53','2020-05-16 19:57:53',0,'',0),(237,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Savorit-Payasam-Semiya.jpg',8,1,42.0000,0,0,'2020-05-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,94,'2020-05-16 20:09:11','2020-05-16 20:09:11',0,'',0),(238,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/SOOji-500g.jpg',8,1,26.0000,0,0,'2020-05-16',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,90,'2020-05-16 20:28:41','2020-05-16 20:28:41',0,'',0),(239,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Star-Maida.jpg',0,1,23.0000,0,0,'2020-05-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,82,'2020-05-16 20:55:48','2020-05-16 20:55:48',0,'',0),(240,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Star-White-Puttu-Powder.jpg',0,1,35.0000,0,0,'2020-05-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,69,'2020-05-16 21:05:07','2020-05-18 19:08:15',0,'',0),(241,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Wheat-1kg.jpg',8,1,35.0000,0,0,'2020-05-16',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,80,'2020-05-16 21:10:56','2020-05-16 21:10:56',0,'',0),(242,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Abirami-Idali-Rice-5kg.jpg',0,1,231.0000,0,0,'2020-05-18',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,69,'2020-05-18 19:17:03','2020-05-20 17:26:40',0,'',0),(243,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Abirami-Jeya-Rice-25kg.jpg',19,1,1093.0000,0,0,'2020-05-18',25.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-18 19:29:35','2020-05-18 19:29:35',0,'',0),(244,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Apple-Ponni-Rice-5kg.jpg',0,1,300.0000,0,0,'2020-05-18',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,63,'2020-05-18 20:21:41','2020-05-18 20:21:41',0,'',0),(245,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Classic-Sela-Basmati-Rice-5kg.jpg',8,1,585.0000,0,0,'2020-05-18',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2020-05-18 20:36:48','2020-05-18 20:36:48',0,'',0),(246,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Doppi-Rice-5kg.jpg',0,1,205.0000,0,0,'2020-05-18',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,62,'2020-05-18 20:57:12','2020-05-18 20:57:12',0,'',0),(247,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Premium-Idli-Rice-5kg.jpg',0,1,45.0000,0,0,'2020-05-18',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,58,'2020-05-18 21:15:00','2020-05-18 21:15:00',0,'',0),(248,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/grb-ghee-500-ml-bottle.jpg',16,1,64.0000,0,0,'2020-05-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,69,'2020-05-20 15:01:00','2020-05-20 15:03:15',0,'',0),(249,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Premium-Ponni-Rice-5kg.jpg',0,1,300.0000,0,0,'2020-05-20',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,66,'2020-05-20 15:05:17','2020-05-20 15:05:17',0,'',0),(250,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Daawat-Biriyani-Basmati-Rice-1kg.jpg',20,1,217.0000,0,0,'2020-05-20',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,84,'2020-05-20 15:11:06','2020-05-20 15:20:58',0,'',0),(251,'Package','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Healtta-Gingely-Oil.jpg',22,1,176.0000,0,0,'2020-05-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,70,'2020-05-20 15:22:12','2020-05-20 15:22:12',0,'',0),(252,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Daawat-Super-Basmati-Rice-1kg.jpg',20,1,142.0000,0,0,'2020-05-20',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,71,'2020-05-20 15:39:39','2020-05-20 15:39:39',0,'',0),(253,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Dawaat-gold-basmathi-rice-1kg.jpg',20,1,120.0000,0,0,'2020-05-20',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,74,'2020-05-20 17:22:16','2020-05-20 17:22:16',0,'',0),(254,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Double-Deer-Silver-Basmathi-Rice-1kg.jpg',8,1,100.0000,0,0,'2020-05-20',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,76,'2020-05-20 17:33:01','2020-05-20 17:33:01',0,'',0),(255,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/India-Gate-Basmathi-Rice-1kg.jpg',21,1,128.0000,0,0,'2020-05-20',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,66,'2020-05-20 17:42:01','2020-05-20 17:42:01',0,'',0),(256,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/India-gate-White-sella-1kg.jpg',21,1,104.0000,0,0,'2020-05-20',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,66,'2020-05-20 17:50:58','2020-05-20 17:50:58',0,'',0),(257,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/IVN-Doppi-Rice-25kg.jpg',0,1,950.0000,0,0,'2020-05-20',25.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,78,'2020-05-20 18:14:28','2020-05-20 18:14:28',0,'',0),(258,'Package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Jeera-Samba-Rice-1kg.jpg',8,1,100.0000,0,0,'2020-05-20',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,79,'2020-05-20 18:37:28','2020-05-20 18:37:28',0,'',0),(259,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Karuppu-Sundakadalai-500g.jpg',8,1,31.0000,0,0,'2020-05-20',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,81,'2020-05-20 20:50:41','2020-05-20 21:03:50',0,'',0),(260,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Vellai-Sundakadalai-500g.jpg',8,1,42.0000,0,0,'2020-05-20',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,86,'2020-05-20 21:01:30','2020-05-20 21:01:30',0,'',0),(261,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Cashew-Nuts-Pieces-1kg.jpg',8,1,202.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,32,'2020-07-21 12:16:24','2020-07-21 12:16:24',0,'',0),(262,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Full-Moog-DalSiruPayaru.jpg',8,1,121.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,26,'2020-07-21 12:30:48','2020-07-21 12:30:48',0,'',0),(263,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Gram-Dal-Premium-Kadalai-Paruppu.jpg',8,1,96.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,30,'2020-07-21 13:05:10','2020-07-21 13:05:10',0,'',0),(264,'package','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Gold-Winner-Sambar-Paruppu.jpg',0,1,98.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,20,'2020-07-21 13:07:17','2020-07-21 13:07:17',0,'',0),(265,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Irungu-Cholam.jpg',8,1,20.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,22,'2020-07-21 14:59:17','2020-07-21 15:01:34',0,'',0),(266,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Javvarici.jpg',8,1,80.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,18,'2020-07-21 15:14:44','2020-07-21 15:14:44',0,'',0),(267,'Weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Green-Peas-Dry-Pachai-Pattani.jpg',8,1,129.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,24,'2020-07-21 15:20:39','2020-07-21 15:20:39',0,'',0),(268,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Jothi-urad-dal-1-kg.jpg',8,1,128.0000,20,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,23,'2020-07-21 15:26:32','2020-07-24 17:05:46',0,'',0),(269,'weight','','','','','','','',1,6,'catalog/Foodgrains_Oil_Masala/Kadugu-Ulunthu-Mix.jpg',8,1,20.0000,0,0,'2020-07-21',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,17,'2020-07-21 15:35:25','2020-07-21 15:35:25',0,'',0),(270,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Meal-Maker.jpg',8,1,230.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,23,'2020-07-21 15:37:16','2020-07-21 15:37:16',0,'',0),(271,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Moong-Dal-Premium-Paasi-Paruppu.jpg',8,1,113.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,25,'2020-07-21 15:49:38','2020-07-21 16:03:03',0,'',0),(277,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Orid-Dal-Uluntham-Paruppu.jpg',0,1,127.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,18,'2020-07-21 16:15:12','2020-07-21 16:19:31',0,'',0),(278,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Pea-Dal-_-Sambaar-Paruppu.jpg',0,1,88.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,17,'2020-07-21 16:27:02','2020-07-21 16:27:02',0,'',0),(279,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Pottu-Kadalai.jpg',0,1,92.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,16,'2020-07-21 16:33:55','2020-07-21 16:33:55',0,'',0),(280,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Red-Rajma.jpg',0,1,73.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,15,'2020-07-21 16:39:33','2020-07-21 16:39:33',0,'',0),(281,'weight','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/Sesame-seeds-Ellu.jpg',8,1,270.0000,0,0,'2020-07-21',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,22,'2020-07-21 16:49:36','2020-07-21 16:49:36',0,'',0),(282,'Bundle','','','','','','','',1000,7,'catalog/Fruits_Vegetables/araikeerai-greenleavesbunch.jpg',8,1,20.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-14 15:58:59','2020-08-14 16:10:09',0,'',0),(283,'Bundele','','','','','','','',1000,7,'catalog/Fruits_Vegetables/curry-leaves.jpg',8,1,85.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2020-08-14 15:59:02','2020-08-14 16:11:46',0,'',0),(284,' bundle','','','','','','','',1000,7,'catalog/Fruits_Vegetables/coriander-leaves-bunch.jpg',8,1,20.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-14 15:59:02','2020-08-14 16:10:06',0,'',0),(285,'Bundele','','','','','','','',1000,7,'catalog/Fruits_Vegetables/agathi-keerai-bunch.jpg',8,1,15.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 15:59:05','2020-08-14 16:11:26',0,'',0),(286,'weight','','','','','','','',1000,7,'catalog/Fruits_Vegetables/Prodect ottu-mangai-ottu-mango- 1 kg.jpg',8,1,85.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 16:22:41','2020-08-14 16:34:59',0,'',0),(287,'Bundle','','','','','','','',1000,7,'catalog/Fruits_Vegetables/SweetPotato-SarkaraiValliKizhangu.jpg',8,1,80.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 16:26:37','2020-08-14 16:30:22',0,'',0),(288,'weight','','','','','','','',1,7,'catalog/Fruits_Vegetables/The Richness Of Ridge Gourd.jpg',0,1,85.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2020-08-14 16:29:04','2020-08-14 16:29:04',0,'',0),(289,'Bundele','','','','','','','',1000,7,'catalog/Fruits_Vegetables/sweet-corn -1pcs.jpg',8,1,20.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 16:32:20','2020-08-14 17:04:10',0,'',0),(290,'bunch ','','','','','','','',1000,7,'catalog/Fruits_Vegetables/raw-banana-vazhaikkai - 1Piece.jpg',8,1,12.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 16:50:32','2020-08-14 16:50:32',0,'',0),(291,'weight','','','','','','','',1000,7,'catalog/Fruits_Vegetables/Bottle GourdSuraikkai-1 kg  11.jpg',0,1,40.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2020-08-14 16:50:35','2020-08-14 16:50:35',0,'',0),(292,'Bundle','','','','','','','',1000,7,'catalog/Fruits_Vegetables/mushroom-button.jpg',8,1,50.0000,0,0,'2020-08-14',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 16:53:53','2020-08-14 16:53:53',0,'',0),(293,'Weight','','','','','','','',1000,7,'catalog/Fruits_Vegetables/noolkol -1 kg.jpg',8,1,60.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 16:55:24','2020-08-14 16:55:24',0,'',0),(294,'weight','','','','','','','',1000,7,'catalog/Fruits_Vegetables/coconut.jpg',8,1,30.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2020-08-14 17:02:54','2020-08-14 17:02:54',0,'',0),(295,'weight','','','','','','','',1000,7,'catalog/Fruits_Vegetables/MARAVALLI KIZHANGU VEG.jpg',8,1,60.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-14 17:13:53','2020-08-14 17:17:50',0,'',0),(296,'packet','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fruit-strawberry.jpg',8,1,70.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 17:18:20','2020-08-14 17:41:41',0,'',0),(297,'Bunch','','','','','','','',1000,7,'catalog/Fruits_Vegetables/fruit-kirni.jpg',8,1,40.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-14 17:24:24','2020-08-14 17:24:24',0,'',0),(298,'weight','','','','','','','',1000,7,'catalog/Fruits_Vegetables/BANGANAPALLI MANGO.jpg',8,1,140.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-14 17:29:09','2020-08-14 17:29:09',0,'',0),(299,'weight','','','','','','','',1000,7,'catalog/Fruits_Vegetables/mosambi-sathukudi.jpg',0,1,40.0000,0,0,'2020-08-14',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,14,'2020-08-14 17:32:27','2020-08-14 17:40:59',0,'',0),(300,'Bunch','','','','','','','',1000,7,'catalog/Fruits_Vegetables/pineapple.jpg',8,1,45.0000,0,0,'2020-08-14',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-14 17:34:07','2020-08-14 17:44:55',0,'',0),(301,'piece','','','','','','','',1000,7,'catalog/Fruits_Vegetables/q111.jpg',8,1,35.0000,0,0,'2020-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2020-08-14 17:38:53','2020-08-14 17:39:49',0,'',0),(302,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Tata Sampann High Protein Urad Dal - 1 Kg.jpg',8,1,128.0000,0,0,'2020-08-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 10:57:32','2020-08-17 10:57:32',0,'',0),(303,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/tata-sampann-high-protien-moong-dal-500g.jpg',8,1,75.0000,0,0,'2020-08-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 11:12:07','2020-08-17 11:23:34',0,'',0),(304,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/safal-frozen-french-fries-400g.jpg',8,1,76.0000,0,0,'2020-08-17',400.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 11:33:44','2020-08-17 11:33:44',0,'',0),(305,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/tata-sampann-hp-toor-dall-1-kg-500g.jpg',8,1,125.0000,0,0,'2020-08-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-17 11:45:22','2020-08-17 11:45:22',0,'',0),(306,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/safal-frozen-sweet-ocrn - 200g.jpg',8,1,33.0000,0,0,'2020-08-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,14,'2020-08-17 11:47:51','2020-08-17 12:12:16',0,'',0),(307,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/SAFAL FROZEN JACKFRUIT 300G.jpg',0,1,40.0000,0,0,'2020-08-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-17 11:50:02','2020-08-17 11:50:02',0,'',0),(308,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/SAFAL FROZEN JACKFRUIT 300G.jpg',8,1,40.0000,0,0,'2020-08-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-17 12:02:37','2020-08-18 17:28:04',0,'',0),(309,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/tata-sampann-hp-toor-dall-1-kg-500g.jpg',8,1,125.0000,0,0,'2020-08-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2020-08-17 12:06:28','2020-08-17 12:06:28',0,'',0),(310,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/safal-Frozen-green-peas-200g.jpg',8,1,95.0000,0,0,'2020-08-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 12:06:48','2020-08-17 12:06:48',0,'',0),(315,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/jeyyam-gram-flour.jpg',8,1,24.0000,0,0,'2020-08-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 12:33:34','2020-08-17 12:33:34',0,'',0),(312,'weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/verkadalai-500g-200g.jpg',8,1,80.0000,0,0,'2020-08-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-17 12:25:11','2020-08-17 12:25:11',0,'',0),(313,'weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/kambu-500g-200gm.jpg',8,1,49.0000,0,0,'2020-08-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 12:26:27','2020-08-17 12:26:27',0,'',0),(314,'weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/raasted-peanuts-200g.jpg',0,1,45.0000,0,0,'2020-08-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-17 12:26:47','2020-08-17 12:26:47',0,'',0),(316,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/jeyyam-gold-plus-gram- flour-500g.jpg',8,1,62.0000,0,0,'2020-08-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2020-08-17 12:46:50','2020-08-17 12:46:50',0,'',0),(317,'weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/green-gram.jpg',8,1,35.0000,0,0,'2020-08-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2020-08-17 12:48:28','2020-08-17 12:48:28',0,'',0),(318,'weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/GREEN PEAS 200 GM.jpg',8,1,55.0000,0,0,'2020-08-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2020-08-17 12:53:11','2020-08-17 12:54:57',0,'',0),(319,'Weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/fried-gram.jpg',8,1,49.0000,0,0,'2020-08-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-17 13:07:00','2020-08-17 13:07:00',0,'',0),(320,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/udhaiyam- toor- dhall.jpg',8,1,108.0000,0,0,'2020-08-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-17 13:08:28','2020-08-17 13:08:28',0,'',0),(321,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/udhaiyam-orid-dhall.jpg',8,1,155.0000,0,0,'2020-08-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 14:25:49','2020-08-17 14:25:49',0,'',0),(322,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/udhaiyam-orid-dhall.jpg',8,1,175.0000,0,0,'2020-08-17',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-17 14:45:50','2020-08-17 14:45:50',0,'',0),(323,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Udhaiyam-gram-dhall-500g.jpg',8,1,40.0000,0,0,'2020-08-17',500.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 14:56:08','2020-08-17 14:56:08',0,'',0),(324,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/grb-sambar-powder-50g.jpg',8,1,23.0000,0,0,'2020-08-17',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-17 15:11:43','2020-08-17 15:11:43',0,'',0),(325,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/grb-coriander-powder-50g.jpg',8,1,18.0000,0,0,'2020-08-17',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-17 15:23:29','2020-08-17 15:23:29',0,'',0),(326,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ITC MASTERCHEF CHILLI POWDER - 50g.jpg',8,1,10.0000,0,0,'2020-08-17',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 15:29:13','2020-08-17 15:29:13',0,'',0),(327,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-super-sambar-masala-100g.jpg',8,1,40.0000,0,0,'2020-08-17',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 15:32:37','2020-08-17 15:32:37',0,'',0),(333,'bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-asafoetida-powder-50g.png',8,1,69.0000,0,0,'2020-08-17',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 15:55:28','2020-08-17 15:55:28',0,'',0),(332,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ashirvaad-coriander-powder-200g.jpg',8,1,60.0000,0,0,'2020-08-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 15:54:31','2020-08-17 15:54:31',0,'',0),(330,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ITC MASTERCHEF TURMERIC POWDER 100G.jpg',8,1,19.0000,0,0,'2020-08-17',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2020-08-17 15:43:11','2020-08-17 15:43:11',0,'',0),(331,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-rasam-masala-100g.jpg',8,1,40.0000,0,0,'2020-08-17',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 15:43:13','2020-08-17 15:43:13',0,'',0),(334,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/AASHIRVAAD TURMERIC POWDER 200G.jpg',8,1,54.0000,0,0,'2020-08-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2020-08-17 15:59:26','2020-08-22 11:12:49',0,'',0),(335,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mtr-turmeric-powder-100g.jpg',8,1,31.0000,0,0,'2020-08-17',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2020-08-17 16:02:24','2020-08-17 16:03:48',0,'',0),(336,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777 INSTANT PULIYODHARAI MIX - 50G.jpg',8,1,10.0000,0,0,'2020-08-17',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-17 16:12:30','2020-08-18 17:41:11',0,'',0),(337,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777-sambar-powder-100g.jpg',8,1,58.0000,0,0,'2020-08-17',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-17 16:23:46','2020-08-17 16:30:39',0,'',0),(338,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-garam-masala-100g-copy.jpg',8,1,60.0000,0,0,'2020-08-17',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 16:48:58','2020-08-18 17:32:33',0,'',0),(339,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777 Madras-rasam-powder-100-g.jpg',8,1,58.0000,0,0,'2020-08-17',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2020-08-17 16:51:16','2020-08-18 17:30:17',0,'',0),(340,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777-dhall-powder-100g.jpg',8,1,58.0000,0,0,'2020-08-17',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2020-08-17 17:00:15','2020-08-18 17:31:17',0,'',0),(341,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777-kara-kuzhambu-paste-300g.jpg',8,1,75.0000,0,0,'2020-08-17',300.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-17 17:08:15','2020-08-17 17:08:15',0,'',0),(342,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/dabur-hommade-ginger-garlic-paste-200g.jpg',8,1,43.0000,0,0,'2020-08-17',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2020-08-17 17:15:56','2020-08-17 17:15:56',0,'',0),(343,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-asafoetida-powder-silver-40g.jpg',8,1,61.0000,0,0,'2020-08-17',40.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2020-08-17 17:18:53','2020-08-17 17:18:53',0,'',0),(344,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-puliogare-powder-40g.jpg',8,1,10.0000,0,0,'2020-08-17',40.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2020-08-17 17:26:24','2020-08-17 17:26:24',0,'',0),(345,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-mutton-masala-50g.jpg',0,1,27.0000,0,0,'2020-08-17',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2020-08-17 17:32:22','2020-08-17 17:32:22',0,'',0),(346,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-pani-puri-masala-50g.jpg',8,1,28.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 10:04:23','2020-08-18 10:04:23',0,'',0),(347,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-pav-bhaji-masala-50g.jpg',8,1,28.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 10:15:46','2020-08-18 10:15:46',0,'',0),(348,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-kitchen-king-masala.jpg',8,1,28.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 10:26:32','2020-08-18 10:26:32',0,'',0),(349,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-vatha-kulambu-masala-50g.jpg',8,1,20.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 10:37:30','2020-08-18 10:37:30',0,'',0),(350,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/achi-tomato-rice-powder-50g.jpg',8,1,15.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 10:51:15','2020-08-18 10:51:15',0,'',0),(351,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-turmeric-powder.jpg',8,1,20.0000,0,0,'2020-08-18',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 10:59:45','2020-08-18 10:59:45',0,'',0),(352,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-tamarind-rice-powder-50g.jpg',8,1,18.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 11:11:27','2020-08-18 11:11:27',0,'',0),(353,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-sabji-masala-50g.jpg',8,1,29.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 11:25:51','2020-08-18 11:25:51',0,'',0),(354,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-royal-garam-masala.jpg',8,1,29.0000,0,0,'2020-08-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 11:37:46','2020-08-18 11:37:46',0,'',0),(355,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-tandoori-chicken-masala-50g.jpg',8,1,29.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 11:45:22','2020-08-18 11:45:22',0,'',0),(356,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-pepper-powder-50g.jpg',8,1,50.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 11:53:58','2020-08-18 11:53:58',0,'',0),(357,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-rasam-powder.jpg',8,1,26.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 11:56:08','2020-08-18 11:56:08',0,'',0),(358,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi-Kasuri-methi-25g.jpg',8,1,23.0000,0,0,'2020-08-18',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 12:03:36','2020-08-18 12:03:36',0,'',0),(359,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-fried-rice-masala-original.jpg',8,1,10.0000,0,0,'2020-08-18',20.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 12:07:37','2020-08-18 12:10:19',0,'',0),(360,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-panner-butter-masala-50g.jpg',8,1,28.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 12:16:54','2020-08-18 12:16:54',0,'',0),(361,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi-szechuan-fried-rice-masala.jpg',8,1,10.0000,0,0,'2020-08-18',20.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-18 12:19:37','2020-08-18 17:26:24',0,'',0),(362,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-fried-chicken-masala-50g.jpg',8,1,33.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 12:20:26','2020-08-18 12:20:26',0,'',0),(363,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-fish-fry-masala.jpg',8,1,24.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 12:23:38','2020-08-18 12:23:38',0,'',0),(364,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-fennel-powder.jpg',8,1,17.0000,0,0,'2020-08-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 12:26:54','2020-08-18 12:26:54',0,'',0),(365,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-curry-masala-50g.jpg',8,1,23.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 12:34:05','2020-08-18 12:34:05',0,'',0),(366,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-egg-curry-masala.jpg',8,1,29.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2020-08-18 12:34:40','2020-08-18 12:34:40',0,'',0),(367,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-madras-sambar-powder.jpg',8,1,40.0000,0,0,'2020-08-18',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 12:40:49','2020-08-18 12:40:49',0,'',0),(368,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-fish-curry-masala-50g.jpg',8,1,23.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 12:44:28','2020-08-18 12:44:28',0,'',0),(369,'Packet','','','','','','','',1000,7,'catalog/aachi-kashmiri-chilli-powder.jpg',8,1,69.0000,0,0,'2020-08-18',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 12:49:32','2020-08-18 12:49:32',0,'',0),(370,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi Cumin Powder 50g.jpg',8,1,27.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,4,'2020-08-18 12:58:57','2020-08-18 12:58:57',0,'',0),(371,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-iIdly-chilly-powder.jpg',8,1,30.0000,0,0,'2020-08-18',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 13:07:21','2020-08-18 13:07:21',0,'',0),(372,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-sambar-powder.jpg',8,1,75.0000,0,0,'2020-08-18',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-18 13:20:12','2020-08-18 13:20:12',0,'',0),(373,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-chaat-masala-50g.jpg',8,1,26.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 16:26:06','2020-08-18 16:26:06',0,'',0),(374,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-biriyani-masala-50g.jpg',8,1,43.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 16:44:14','2020-08-18 16:44:14',0,'',0),(375,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi-chicken-masala-50g.jpg',8,1,25.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 16:45:24','2020-08-18 16:45:24',0,'',0),(376,'packet','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/aachi-chicken-65-masala.jpg',8,1,52.0000,0,0,'2020-08-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-18 16:46:27','2020-08-18 16:46:27',0,'',0),(377,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aura-cacia-powder-20gm.jpg',8,1,55.0000,0,0,'2020-08-18',20.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,4,'2020-08-18 17:17:16','2020-08-18 17:29:47',0,'',0),(378,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aura-cinnamon-powder.jpg',8,1,16.0000,0,0,'2020-08-18',20.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 17:25:04','2020-08-18 17:25:04',0,'',0),(379,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-tomato-rice-paste.jpg',8,1,50.0000,0,0,'2020-08-18',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 17:55:58','2020-08-18 18:15:25',0,'',0),(380,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Cardamom Powder 20g.jpg',8,1,75.0000,0,0,'2020-08-18',20.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 17:59:35','2020-08-18 17:59:35',0,'',0),(381,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi tamarind rice powder 50g.jpg',8,1,10.0000,0,0,'2020-08-18',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-18 18:30:01','2020-08-18 18:30:01',0,'',0),(382,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-kasuri-methi.jpg',8,1,23.0000,0,0,'2020-08-19',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 10:06:42','2020-08-19 10:06:42',0,'',0),(383,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-tomato-garlic-rice-paste.jpg',8,1,85.0000,0,0,'2020-08-19',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 10:15:24','2020-08-19 10:15:24',0,'',0),(384,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-lemonrice-paste-50gm.jpg',8,1,10.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 10:19:56','2020-08-19 10:19:56',0,'',0),(385,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi rasam powder 100 g.jpg',8,1,55.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 10:20:35','2020-08-19 10:20:35',0,'',0),(386,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-lemon-rice-powder.jpg',8,1,18.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 10:25:22','2020-08-19 10:25:22',0,'',0),(387,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-jaljeera-powder-50g.jpg',8,1,29.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 10:29:09','2020-08-19 10:29:09',0,'',0),(388,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi compounded asafoetida powder 100 g.jpg',8,1,152.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 11:15:06','2020-08-19 11:15:06',0,'',0),(389,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Aachi butter milk kkulambu masala 50g.jpg',8,1,10.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-19 11:23:34','2020-08-19 11:23:34',0,'',0),(390,'bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Mambalam lyers pepper rasam.jpg',8,1,56.0000,0,0,'2020-08-19',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 11:42:57','2020-08-19 11:42:57',0,'',0),(391,'bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Mambalam Iyer vathal kuzhambu mix 200g.jpg',8,1,54.0000,0,0,'2020-08-19',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-19 11:51:52','2020-08-19 11:51:52',0,'',0),(392,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest dry ginger powder 100g.jpg',8,1,65.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 11:55:30','2020-08-19 12:00:10',0,'',0),(393,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest chicken masala 50g.jpg',8,1,38.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 12:31:23','2020-08-19 12:31:23',0,'',0),(394,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest black pepper 50g.jpg',8,1,95.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 12:41:56','2020-08-19 12:41:56',0,'',0),(395,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-ginger-garlic-paste.jpg',8,1,37.0000,0,0,'2020-08-19',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-19 13:13:38','2020-08-19 13:14:54',0,'',0),(396,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aachi-asafoetida-powder.jpg',8,1,96.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-19 14:54:41','2020-08-19 14:54:41',0,'',0),(397,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-egg-curry-masala-50g.jpg',8,1,40.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 14:56:39','2020-08-19 14:56:39',0,'',0),(398,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest masala meat 50g.jpg',8,1,38.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 14:56:54','2020-08-19 14:56:54',0,'',0),(399,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-rajma-masala.jpg',8,1,29.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:06:40','2020-08-19 15:06:40',0,'',0),(400,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest kitchen king masala 50 g.jpg',8,1,33.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-19 15:08:04','2020-08-19 15:09:14',0,'',0),(401,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-sabji-masala-50g.jpg',8,1,28.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:10:59','2020-08-19 15:10:59',0,'',0),(402,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/MTR Chat masala 100g.jpg',8,1,75.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:20:04','2020-08-19 15:20:04',0,'',0),(403,'prcket','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mtr-puliogare-powder-100g.jpg',8,1,49.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:21:20','2020-08-19 15:21:20',0,'',0),(404,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mtr-idly-chutney-powder-100g.jpg',8,1,57.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:28:45','2020-08-19 15:28:45',0,'',0),(405,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mtr-spl-garam-masala-50g.jpg',8,1,42.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:36:31','2020-08-19 15:36:31',0,'',0),(406,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/MTR rasam powder 50 g.jpg',8,1,31.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:38:06','2020-08-19 15:38:06',0,'',0),(407,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mtr-chana-masala-100g.jpg',8,1,74.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:42:50','2020-08-19 15:42:50',0,'',0),(408,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mtr-sambar-powder-50g.jpg',8,1,24.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:54:21','2020-08-19 15:54:21',0,'',0),(409,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mambalam-iyers-puliyodharai-rice-mix.jpg',8,1,54.0000,0,0,'2020-08-19',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 15:59:37','2020-08-19 15:59:37',0,'',0),(410,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/MTR bisibelebath 100g.jpg',8,1,47.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 16:01:48','2020-08-19 16:01:48',0,'',0),(411,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/grb-chilly-powder.jpg',8,1,18.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-19 16:05:31','2020-08-19 16:05:31',0,'',0),(412,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mtr-sambar-powder-50g.jpg',8,1,57.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 16:07:33','2020-08-20 17:28:25',0,'',0),(413,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/GRB  Idly  powder 50 g.jpg',8,1,18.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-19 16:10:36','2020-08-19 16:24:59',0,'',0),(414,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/grb-puliogare-powder.jpg',8,1,39.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-19 16:17:31','2020-08-19 16:17:31',0,'',0),(415,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-briyani-masala-100gm.jpg',8,1,34.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 16:29:20','2020-08-19 16:29:20',0,'',0),(416,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/grb-turmeric-powder.jpg',8,1,10.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-19 16:29:34','2020-08-19 16:29:34',0,'',0),(417,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi chilli chicken masala 50g.jpg',8,1,27.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 16:35:35','2020-08-19 16:35:35',0,'',0),(418,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ajinomoto-umami-taste-enhancerriander-leaves-bunch copy.jpg',8,1,35.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 17:02:51','2020-08-19 17:17:42',0,'',0),(419,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ajinomoto-hapima-crispy-fry-mix-75gm.jpg',8,1,20.0000,0,0,'2020-08-19',75.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 17:16:20','2020-08-19 17:16:20',0,'',0),(420,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ajinomoto-hapima-crispy-fry-mix-75gm.jpg',8,1,10.0000,0,0,'2020-08-19',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 17:29:21','2020-08-19 17:29:21',0,'',0),(421,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi chilli chutney powder 100 g.jpg',8,1,40.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 17:32:54','2020-08-19 17:32:54',0,'',0),(422,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Sakthi chilli chutney powder 100 g.jpg',8,1,40.0000,0,0,'2020-08-19',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-19 17:33:26','2020-08-19 17:33:26',0,'',0),(423,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ajinomoto-hapima-fry-mix-original.jpg',8,1,10.0000,0,0,'2020-08-19',35.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 17:35:31','2020-08-19 17:35:31',0,'',0),(424,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777-ginger-garlic-paste.jpg',8,1,87.0000,0,0,'2020-08-19',300.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-19 17:35:35','2020-08-19 17:35:35',0,'',0),(425,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777-lemon-rice-paste.jpg',8,1,87.0000,0,0,'2020-08-19',300.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-19 17:42:48','2020-08-19 17:42:48',0,'',0),(426,'bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777-tomato-rice-paste.jpg',8,1,85.0000,0,0,'2020-08-19',200.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-19 17:52:42','2020-08-19 17:52:42',0,'',0),(427,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777-puliyodharai-paste.jpg',8,1,108.0000,0,0,'2020-08-19',250.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-19 17:58:50','2020-08-19 17:58:50',0,'',0),(428,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/tt-asafoetida.jpg',8,1,62.0000,0,0,'2020-08-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 09:58:14','2020-08-20 09:58:14',0,'',0),(429,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ssp-special-asafoetida-5g.jpg',8,1,80.0000,0,0,'2020-08-20',5.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 10:09:19','2020-08-20 10:09:19',0,'',0),(430,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ssp-crystal-asafoetida.jpg',8,1,140.0000,0,0,'2020-08-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 10:09:33','2020-08-20 10:09:33',0,'',0),(431,'Bottle','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/ssp-special-asafoetida-5g.jpg',8,1,69.0000,0,0,'2020-08-20',5.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 10:21:37','2020-08-20 10:21:37',0,'',0),(432,'weight','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/cooking-soda.jpg',8,1,6.0000,0,0,'2020-08-20',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 10:34:27','2020-08-20 10:34:27',0,'',0),(433,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-vatha-pulikulambu-powder-50g.jpg',8,1,25.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-20 10:47:16','2020-08-20 10:47:16',0,'',0),(434,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-puliyogare rice-powder-50g.jpg',8,1,23.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-20 11:47:46','2020-08-20 11:47:46',0,'',0),(435,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-mutton-masala-50g.jpg',8,1,25.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-20 12:02:58','2020-08-20 12:02:58',0,'',0),(436,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-malli-powder-100g.jpg',8,1,38.0000,0,0,'2020-08-20',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-20 12:22:47','2020-08-20 12:22:47',0,'',0),(437,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-lemon-bath-powder-50gm.jpg',8,1,18.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-20 12:30:16','2020-08-20 12:30:16',0,'',0),(438,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-kulambu-masala-50g.jpg',8,1,16.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 12:35:25','2020-08-20 12:35:25',0,'',0),(439,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-jeera-powder-50g.jpg',8,1,30.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 12:39:57','2020-08-20 12:39:57',0,'',0),(440,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-dhall-rice-powder-100g.jpg',8,1,37.0000,0,0,'2020-08-20',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 12:45:19','2020-08-20 12:45:19',0,'',0),(441,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-garlic-powder-100g.jpg',8,1,42.0000,0,0,'2020-08-20',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 12:51:43','2020-08-20 12:51:43',0,'',0),(442,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-chilli-powder.jpg',8,1,65.0000,0,0,'2020-08-20',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 13:42:41','2020-08-20 13:42:41',0,'',0),(443,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-chat-masala-50g.jpg',8,1,20.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 13:50:25','2020-08-20 13:50:25',0,'',0),(444,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-channa-masala-50g.jpg',8,1,22.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 13:56:32','2020-08-20 13:56:32',0,'',0),(445,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/sakthi-briyani-masala-50g.jpg',8,1,38.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 14:02:59','2020-08-20 14:02:59',0,'',0),(446,'Packet','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/priya-ginger-garlic-paste-300g.jpg',8,1,22.0000,0,0,'2020-08-20',300.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-20 14:20:42','2020-08-20 14:20:42',0,'',0),(447,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/priya-ginger-garlic-paste-25g.jpg',8,1,5.0000,0,0,'2020-08-20',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-20 14:27:51','2020-08-20 14:27:51',0,'',0),(448,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/mtr-vangi-bhath-powder-100gm.jpg',8,1,49.0000,0,0,'2020-08-20',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 14:36:16','2020-08-20 14:36:16',0,'',0),(449,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/lg-asafoetida-perungaya-katti-100g.jpg',8,1,70.0000,0,0,'2020-08-20',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 14:45:02','2020-08-20 14:45:02',0,'',0),(450,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/lg-asafoetida-powder-50gm.jpg',8,1,70.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 14:50:41','2020-08-20 14:50:41',0,'',0),(451,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/itc-mc-madras-milagu-rasam-powder-50g.jpg',8,1,31.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 15:17:05','2020-08-20 15:17:05',0,'',0),(452,'Packet','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/itc-master-chef-thanjavur-sambar.jpg',8,1,18.0000,0,0,'2020-08-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 15:32:51','2020-08-20 15:32:51',0,'',0),(453,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/itc-master-chef-madurai-kulambu-masala-50g.jpg',8,1,15.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 15:49:44','2020-08-20 15:49:44',0,'',0),(454,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/hapimma-fried-rice-mix-hot-spicyhapimma-fried-rice-mix-hot-spicy.jpg',8,1,10.0000,0,0,'2020-08-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 16:07:13','2020-08-20 16:07:13',0,'',0),(455,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/hapima-fried-rice-mix-original.jpg',8,1,10.0000,0,0,'2020-08-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 16:17:12','2020-08-20 16:17:12',0,'',0),(456,'Packet','','','','','','','',1,6,'catalog/Foodgrains_Oil_Masala/hapima-crispy-fry-mix-nonveggies.jpg',0,1,20.0000,0,0,'2020-08-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 16:25:31','2020-08-20 16:25:31',0,'',0),(457,'Packet','','','','','','','',1000,6,'catalog/Foodgrains_Oil_Masala/everst-meat-masala-50g.jpg',0,1,37.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 16:39:18','2020-08-20 16:39:18',0,'',0),(458,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-white-pepper-50g.jpg',8,1,103.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 16:44:56','2020-08-20 16:44:56',0,'',0),(459,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-tikhalal-powder-100gm.jpg',8,1,28.0000,0,0,'2020-08-20',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 16:58:32','2020-08-20 16:58:32',0,'',0),(460,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-tandoori-chicken-masala-50g.jpg',8,1,38.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 17:19:26','2020-08-20 17:19:26',0,'',0),(461,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-shahi-paneer-masala-50g.jpg',8,1,41.0000,0,0,'2020-08-20',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-20 17:38:44','2020-08-20 17:38:44',0,'',0),(462,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-sambar-powder-100g.jpg',8,1,33.0000,0,0,'2020-08-22',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:04:09','2020-08-22 10:04:09',0,'',0),(463,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-rajma-masala-50gm.jpg',8,1,31.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:16:46','2020-08-22 10:16:46',0,'',0),(464,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/777 Vatha kuzhambu.jpg',8,1,10.0000,0,0,'2020-08-19',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:24:41','2020-08-22 10:24:41',0,'',0),(465,'Packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-pani-puri-50gm.jpg',8,1,31.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:32:30','2020-08-22 10:32:30',0,'',0),(466,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-jaljira-powder.jpg',8,1,26.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:37:59','2020-08-22 10:42:49',0,'',0),(467,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest kasuri methi.jpg',0,1,24.0000,0,0,'2020-08-22',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:43:30','2020-08-22 10:43:30',0,'',0),(468,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-pav-bhaji-50gm.jpg',8,1,35.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:45:35','2020-08-22 10:45:35',0,'',0),(469,'Packet','','','','','','','',1000,7,'catalog/everest-kashmirilal-chill-100g.jpg',8,1,50.0000,0,0,'2020-08-22',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:46:55','2020-08-22 10:46:55',0,'',0),(470,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest garam masala 50gm.jpg',8,1,40.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:48:41','2020-08-22 10:48:41',0,'',0),(471,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-fish-curry-masala.jpg',8,1,37.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:53:33','2020-08-22 10:53:33',0,'',0),(472,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-dry-mango-50gm.jpg',8,1,35.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:56:20','2020-08-22 10:56:20',0,'',0),(473,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest chhole masala  50 gms.jpg',8,1,31.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 10:56:29','2020-08-22 10:56:29',0,'',0),(474,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/Everest chat masala  50g.jpg',8,1,32.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 11:03:57','2020-08-22 11:03:57',0,'',0),(475,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/everest-biriyani-masala-50gm.jpg',8,1,69.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 11:07:07','2020-08-22 11:07:07',0,'',0),(476,'packet','','','','','','','',1000,7,'catalog/Foodgrains_Oil_Masala/aashirvaad-chilli-powder.jpg',8,1,17.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 11:12:44','2020-08-22 11:12:44',0,'',0),(477,'packet','','','','','','','',1000,6,'catalog/Beauty_Hygie/garnier-color-naturals-cream.jpg',8,1,178.0000,0,0,'2020-08-22',100.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 11:36:27','2020-08-22 11:59:32',0,'',0),(478,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Livon hair gain tonic 70ml.jpg',8,1,290.0000,0,0,'2020-08-22',70.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 11:36:34','2020-08-22 12:01:26',0,'',0),(479,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-fructis-long-strong-serum-100ml.jpg',8,1,225.0000,0,0,'2020-08-22',100.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 11:36:45','2020-08-22 17:28:58',0,'',0),(480,'packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/dove-hair-intense-repair-conditioner-180ml.jpg',8,1,187.0000,0,0,'2020-08-22',180.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 11:36:47','2020-08-22 12:03:21',0,'',0),(481,'Packet','','','','','','','',1000,6,'catalog/Beauty_Hygie/dove-shampoo-Hair-fall-rescue-sachet.jpg',8,1,3.0000,0,0,'2020-08-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:13:36','2020-08-22 12:13:36',0,'',0),(482,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Dove daily shine conditioner 180ml.jpg',8,1,0.0000,0,0,'2020-08-22',180.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:17:35','2020-08-22 12:17:35',0,'',0),(483,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/clinic-plus-sachet-strong-long.jpg',8,1,1.0000,0,0,'2020-08-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:18:35','2020-08-22 12:23:57',0,'',0),(484,'packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/dove-dryness-care-conditioner-180ml.jpg',8,1,188.0000,0,0,'2020-08-22',180.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:22:05','2020-08-22 12:22:05',0,'',0),(485,'packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/VVD hibiscus  coconut  oil 75 ml.jpg',8,1,34.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:31:52','2020-08-22 12:31:52',0,'',0),(486,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/tresemme-keratin-smooth-for-straighter-smoother-hair-conditioner-80ml.jpg',8,1,103.0000,0,0,'2020-08-22',80.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 12:34:56','2020-08-22 12:34:56',0,'',0),(487,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/revlon-flex-anti-breakage.jpg',8,1,242.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:37:43','2020-08-22 12:37:43',0,'',0),(488,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Pure derm anti dandruff shampoo.jpg',8,1,63.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:39:55','2020-08-22 12:54:30',0,'',0),(489,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/pure-derm-anti-dandruff-mint-cool-shampoo-7ml.jpg',8,1,3.0000,0,0,'2020-08-22',7.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:41:41','2020-08-22 12:41:41',0,'',0),(490,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/pure-derm-anti-dandruff-anti-hairfall-shampoo-180ml.jpg',8,1,133.0000,0,0,'2020-08-22',180.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:50:39','2020-08-22 12:50:39',0,'',0),(491,'packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/revlon-flex-hydration-daily-moisture-balance-shampoo-400ml.jpg',8,1,250.0000,0,0,'2020-08-22',400.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 12:58:57','2020-08-22 12:58:57',0,'',0),(492,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/himalaya-anti-hair-fall-conditioner-100ml.jpg',8,1,89.0000,0,0,'2020-08-22',100.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 13:01:24','2020-08-22 13:59:47',0,'',0),(493,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Aswini hair oil 400ml.jpg',8,1,238.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 13:01:28','2020-08-22 13:02:37',0,'',0),(494,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-skin-naturalslight-complete-night-cream - 40+18g.jpg',8,1,145.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 13:04:24','2020-08-22 13:04:24',0,'',0),(495,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-men-power-white-anti-pollution-double-action-face-wash-2in1-100g.jpg',8,1,178.0000,0,0,'2020-08-22',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 14:07:29','2020-08-22 14:10:18',0,'',0),(496,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-fructis-long-strong-shampoo-Rs.jpg',8,1,3.0000,0,0,'2020-08-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 14:18:04','2020-08-22 14:18:04',0,'',0),(497,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/loreal-casting-creme-gloss-200-ebony-black-semi-permanent-hair-dye.jpg',8,1,197.0000,0,0,'2020-08-22',72.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 14:28:25','2020-08-22 14:28:25',0,'',0),(498,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-5-light-brown-naturals-cream-hair-color.jpg',0,1,78.0000,0,0,'2020-08-22',29.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 14:40:20','2020-08-22 14:40:20',0,'',0),(499,'packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/l\'oreal-paris-excellence-ereme-hair-color-1black -72ml.jpg',8,1,290.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2020-08-22 14:45:23','2020-08-22 15:29:42',0,'',0),(500,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/dabur-vatika-natural-black-shine-shampoo-80ml.jpg',8,1,29.0000,0,0,'2020-08-22',80.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 14:51:40','2020-08-22 14:51:40',0,'',0),(501,'packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-color-naturals-shade-no-5.jpg',8,1,216.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2020-08-22 14:52:57','2020-08-22 14:52:57',0,'',0),(502,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/parachute-advanced-deep-conditioning-hot-oil-90ml.jpg',8,1,51.0000,0,0,'2020-08-22',90.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 14:59:33','2020-08-22 14:59:33',0,'',0),(503,'packet','','','','','','','',1,7,'catalog/Beauty_Hygie/Garnier color naturals intense red 6.jpg',8,1,223.0000,0,0,'2020-08-22',100.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 14:59:57','2020-08-22 14:59:57',0,'',0),(504,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Streax hair serum 25ml.jpg',8,1,49.0000,0,0,'2020-08-22',25.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:02:57','2020-08-22 15:02:57',0,'',0),(505,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/dove-deep-nourishing-body-wash-190ml.jpg',8,1,94.0000,0,0,'2020-08-22',190.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:06:05','2020-08-22 15:06:05',0,'',0),(506,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/dove-go-fresh-fnourishing-body-wash-190ml.jpg',8,1,97.0000,0,0,'2020-08-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:11:38','2020-08-22 15:11:38',0,'',0),(507,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/loreal-paris-colour-protect-conditioner-coloured-hair-65ml.jpg',8,1,83.0000,0,0,'2020-08-22',65.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:13:47','2020-08-22 15:13:47',0,'',0),(508,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Dove whitening original anti perspirant deo.jpg',8,1,190.0000,0,0,'2020-08-22',169.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:14:25','2020-08-22 15:14:25',0,'',0),(509,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/loreal-paris-total-repair-conditioner-damaged-hair-65ml.jpg',8,1,82.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:26:21','2020-08-22 15:26:21',0,'',0),(510,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/loreal-paris-6-oil-nourish-shampoo-scalp-and-hair-all-types-hair-65ml.jpg',8,1,83.0000,0,0,'2020-08-22',65.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 15:30:50','2020-08-22 15:30:50',0,'',0),(511,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-ultra-blends-deep-nourishing-shampoo-mythic-olive-180ml.jpg',8,1,142.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:37:32','2020-08-22 15:37:32',0,'',0),(512,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-ultrablends-anti-hairfall-shampoo-royal-jelly-lavender-conditioner.jpg',8,1,132.0000,0,0,'2020-08-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:45:28','2020-08-22 15:45:28',0,'',0),(513,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Garnies ultrablends revitalizing shampoo - 5 precious herbs - 75ml.jpg',8,1,57.0000,0,0,'2020-08-22',75.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 15:46:40','2020-08-22 15:46:40',0,'',0),(514,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-ultra-blends-intense-repair-shampo-soy-milk.jpg',8,1,132.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 15:50:53','2020-08-22 15:50:53',0,'',0),(515,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-color-naturals-cream-brown-4.jpg',8,1,36.0000,0,0,'2020-08-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:00:51','2020-08-22 16:00:51',0,'',0),(516,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/Parachute Men Advanced Aniti Hair Fall Hair Cream-50g.jpg',8,1,49.0000,0,0,'2020-08-22',50.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:11:18','2020-08-22 16:11:18',0,'',0),(517,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Garnier ultra blends   anti-hair fall shampoo.jpg',8,1,59.0000,0,0,'2020-08-22',200.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:16:26','2020-08-22 16:16:26',0,'',0),(518,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/garnier-color-naturals-cream-3 darkest-brown.jpg',8,1,178.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:18:59','2020-08-22 16:18:59',0,'',0),(519,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/clinic-plus-strong-long-health-shampoo-40ml.jpg',8,1,10.0000,0,0,'2020-08-22',40.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 16:19:49','2020-08-22 16:19:49',0,'',0),(520,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Gatsby styling wax power &amp; spikes.jpg',8,1,72.0000,0,0,'2020-08-22',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 16:25:29','2020-08-22 17:34:33',0,'',0),(521,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/gatsby-styling-wax-hard-free-25g.jpg',8,1,72.0000,0,0,'2020-08-22',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 16:27:53','2020-08-22 16:27:53',0,'',0),(522,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Dabur vatika pure coconut oil-175ml.jpg',8,1,276.0000,0,0,'2020-08-22',175.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:29:29','2020-08-22 16:29:29',0,'',0),(523,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Gatsby hair styling wax.jpg',8,1,70.0000,0,0,'2020-08-22',25.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:33:03','2020-08-22 16:33:03',0,'',0),(524,'Packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/set-wet-ultimate-hold-gel-50ml.jpg',8,1,48.0000,0,0,'2020-08-22',50.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 16:34:27','2020-08-22 16:34:27',0,'',0),(525,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/gatsby-leather-styling-wax-extreme-and-firm-25g.jpg',8,1,72.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:39:00','2020-08-22 16:39:00',0,'',0),(526,'packet','','','','','','','',1000,7,'catalog/Beauty_Hygie/Set wet hair gel cool hold - 100ml.jpg',8,1,98.0000,0,0,'2020-08-22',100.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:39:20','2020-08-22 16:39:20',0,'',0),(527,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/parachute-advance-aloevera-hai- oil-250ml.jpg',8,1,112.0000,0,0,'2020-08-22',250.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:46:18','2020-08-22 16:46:18',0,'',0),(528,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/vasmol-jh-oil -50ml.jpg',8,1,18.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 16:48:51','2020-08-22 16:48:51',0,'',0),(529,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/tresemme-hairfall-control-shampoo-190ml.jpg',8,1,105.0000,0,0,'2020-08-22',190.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'2020-08-22 16:57:29','2020-08-22 16:57:29',0,'',0),(530,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/tresemme-botanique-shampoo-nourish-and-replenish.jpg',8,1,73.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 17:06:08','2020-08-22 17:06:08',0,'',0),(531,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/head-shoulders-cool-menthol-shampoo-conditioner-180ml.jpg',8,1,163.0000,0,0,'2020-08-22',180.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'2020-08-22 17:09:40','2020-08-22 17:09:40',0,'',0),(532,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/dhathri-dheedhi-hair-fall-control-shampoo-100ml.jpg',8,1,123.0000,0,0,'2020-08-22',100.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 17:16:30','2020-08-22 17:16:30',0,'',0),(533,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/meera-herbal-hairfall-control-hair-oil.jpg',8,1,42.0000,0,0,'2020-08-22',0.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 17:18:56','2020-08-22 17:18:56',0,'',0),(534,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/dhathri-dheedhi-lime-shampoo-100ml.jpg',8,1,128.0000,0,0,'2020-08-22',100.00000000,7,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 17:23:52','2020-08-22 17:23:52',0,'',0),(535,'Bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/dhathri-dheedhi-hair-care-herbal-hampoo-100ml.jpg',8,1,93.0000,0,0,'2020-08-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 17:34:46','2020-08-22 17:34:46',0,'',0),(536,'bottle','','','','','','','',1000,7,'catalog/Beauty_Hygie/Parachute advanced  men after anti dandruff hair cream.jpg',8,1,81.0000,0,0,'2020-08-22',100.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2020-08-22 17:35:48','2020-08-22 17:35:48',0,'',0);
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (35,1,'Fresho Cucumber, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;With high water content and crunchy flesh, Cucumbers have striped, light to dark green coloured skin that is edible.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;\r\n','','Fresho Cucumber, 500 g','',''),(40,1,'MAGGI Roasted Spices - Masala-ae-Magic, 72 G','&lt;p class=&quot;intro&quot;&gt;\r\n	MAGGI Roasted Spices - Masala-ae-Magic, 72 G&lt;/p&gt;\r\n','','MAGGI Roasted Spices - Masala-ae-Magic, 72 G','',''),(28,1,'Tomato Local - Naattu Thakkali','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Local tomatoes are partly sour and partly sweet and contain many seeds inside which are edible. The red colour present in tomatoes is due to lycopene, an anti-oxidant.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','Tomato Local - Naattu Thakkali','Tomato Local - Naattu Thakkali',''),(48,1,'Fresh Onion - Sambhar, 500 G','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Also known as button onions, Sambar Onions are relatively smaller onions with a mild flavour and slightly sweet taste.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Fresh Onion - Sambhar, 500 G','',''),(59,1,'Fresho Drumstick, 250 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Drumsticks have long, dark green bumpy pods running along the length and fleshy pulp inside the pod encasing each seed. These pods have a faint bitter taste combined with slight sweetness.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Drumstick, 250 g','',''),(44,1,'Fresho Yam - Elephant Foot, 500 g','&lt;div&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Yam is an edible starchy tuber. Elephant yams are larger in size and features thick, rough, dark brown to pink skin.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/div&gt;\r\n','','Fresho Yam - Elephant Foot, 500 g','Fresho Yam - Elephant Foot, 500 g',''),(45,1,'Fresho Pidi Karunai, 250 g','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Fresho Pidi Karunai, 250 g','Fresho Pidi Karunai, 250 g',''),(29,1,'Fresho Capsicum - Green, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Leaving a moderately pungent taste on the tongue, Green capsicums, also known as green peppers are bell shaped, medium-sized fruit pods. They have thick and shiny skin with a fleshy texture inside.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','Fresho Capsicum - Green, 500 g','',''),(36,1,'Fresho Carrot - Local, 500 g','&lt;div&gt;\r\n	&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;A popular sweet-tasting root vegetable, Carrots are narrow and cone shaped. They have thick, fleshy, deeply colored root, which grows underground, and feathery green leaves that emerge above the ground. While these greens are fresh tasting and slightly bitter, the carrot roots are crunchy textured with a sweet and minty aromatic taste. Fresho brings you the flavour and richness of the finest crispy and juicy carrots that are locally grown and the best of the region.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Fresho Carrot - Local, 500 g','Fresho Carrot - Local, 500 g',''),(57,1,'Fresho Bitter Gourd ( Karela ) 500 g','&lt;p&gt;&lt;b&gt;Fresho Bitter Gourd ( Karela ) 500 g&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Fresho Bitter Gourd ( Karela ) 500 g','',''),(58,1,'Fresho Snake Gourd, 250 g','&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Snake gourds are true to their name as they have a long, curved shape with light green speckles and a waxy green skin.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Their firm flesh is embedded with seeds and they taste like cucumber and have a slightly bitter taste. The fruits are orange in colour when ripe and pulpy red after complete ripening.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Snake Gourd, 250 g','',''),(46,1,'Fresho Brinjal - Varikatri, 500 g','&lt;div&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;One of the bigger varieties, Brinjal Varikatris are egg- shaped with white-purple stripes on the shiny skin. The creamy flesh is enjoyably bitter tasting with several small, soft edible seeds.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/div&gt;\r\n','','Fresho Brinjal - Varikatri, 500 g','',''),(32,1,'Radish -  Mullangi  White, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Radishes are a root crop with a crunchy texture and a sharp, spicy, hot or sweet taste. They are juicy and sometimes have a pungent smell.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;\r\n','','Radish -  Mullangi  White, 500 g','Radish -  Mullangi  White, 500 g',''),(53,1,'Fresh  Lahsun ( Garlic ) 250 gm','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Fresho Organic products are organically grown and handpicked by expert.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresh  Lahsun ( Garlic ) 250 gm','Fresh  Lahsun ( Garlic ) 250 gm','Fresh  Lahsun ( Garlic ) 250 gm'),(33,1,'Fresho Beans - Haricot, 500 g','&lt;div&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_0&quot; style=&quot;margin: 0px; padding: 1rem 1rem 1.2rem; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); font-family: ProximaNova-Regular; font-size: 14px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div class=&quot;_26MFu  &quot; style=&quot;margin: 0.4rem 0px 0px; padding: 0px; font-size: 1.4rem; color: rgb(102, 102, 102); transition: max-height 0.3s ease-in-out 0s; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px; font-size: 13px; line-height: 18px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;Haricot beans are small, oval, plump and creamy-white with a mild flavour and a smooth, buttery texture.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n','','Fresho Beans - Haricot, 500 g','',''),(34,1,'Fresho Beetroot, 500 g','&lt;div&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;These edible ruby red roots are smooth and bulbous and have the highest sugar content than any other vegetable.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;\r\n&lt;/div&gt;\r\n','','Fresho Beetroot, 500 g','Fresho Beetroot, 500 g',''),(54,1,'Fresh Ginger ( adrak ) 250gm','&lt;p&gt;&lt;div class=&quot;product_table&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;/div&gt;&lt;/p&gt;&lt;div class=&quot;short-description&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 15px; padding: 12px 0px 0px; font-size: 13px; border-top: 1px solid rgb(229, 229, 229); color: rgb(0, 0, 0); font-family: Poppins, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;&quot;&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 14px;&quot;&gt;Variable weight policy: Please note that fresh fruit and vegetables items will be billed based on exact weight during order processing&lt;/p&gt;&lt;/div&gt;','','Fresh Ginger ( adrak ) 250gm','Fresh Ginger ( adrak ) 250gm','Fresh Ginger ( adrak ) 250gm'),(55,1,'Fresh Green Chilly ( Small ) 100 g','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Green chillis are the best kitchen ingredient to bring a dash of spiciness to recipes. The fresh flavour and sharp bite makes them a must in almost all Indian dishes. This particular green chilli variety is big.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Fresh Green Chilly ( Small ) 100 g','Fresh Green Chilly ( Small ) 100 g','Fresh Green Chilly ( Small ) 100 g'),(56,1,'Fresho Amla ( Gooseberry ) 500 gm','&lt;p&gt;Fresho Amla ( Gooseberry ) 500 gm&lt;br&gt;&lt;/p&gt;','','Fresho Amla ( Gooseberry ) 500 gm','',''),(43,1,'Gold Winner Refined - Sunflower Oil, 1 L Pouch','&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Gold Winner Refined Sunflower Oil is the result of the companys commitment to quality, health and hygiene. Every drop of Gold winner not only glistens with quality and hygiene but also assures gourmets delight. It is Trans Fat Free and offers Multi-Health Benefits.&lt;/span&gt;','','Gold Winner Refined - Sunflower Oil, 1 L Pouch','Gold Winner Refined Sunflower Oil is the result of the companys commitment to quality, health and hygiene. Every drop of Gold winner not only glistens with quality and hygiene but also assures gourmets delight. It is Trans Fat Free and offers Multi-Health',''),(261,1,'Cashew Nuts Pieces-1kg','&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;The true fruit of the&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;cashew&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;tree is a kidney– or boxing-glove–shaped drupe that grows at the end of the&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;cashew&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;apple. The drupe develops first on the tree, and then the pedicel expands to become the&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;cashew&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;apple. The true fruit contains a single seed, which is often considered a&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;nut&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;in the culinary sense.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Cashew Nuts Pieces-1kg','Cashew Nuts Pieces-1kg','Cashew Nuts Pieces-1kg','Cashew Nuts Pieces-1kg'),(31,1,'Fresho Colocasia, 250 g','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_0&quot; style=&quot;margin: 0px; padding: 1rem 1rem 1.2rem; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); font-family: ProximaNova-Regular; font-size: 14px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div class=&quot;_26MFu  &quot; style=&quot;margin: 0.4rem 0px 0px; padding: 0px; font-size: 1.4rem; color: rgb(102, 102, 102); transition: max-height 0.3s ease-in-out 0s; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px; font-size: 13px; line-height: 18px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;A stuffy, fleshy underground root, Colocasia is also called \'Taro Root\'. It is oval/globular in shape with a hairy coating on its skin and whitish yellow flesh.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Fresho Colocasia, 250 g','',''),(50,1,'Fresho Beans - Broad, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Fresh broad beans have a delicious earthy flavour that fits well with winter cooking. They have kidney shaped curves that are tender and generally consumed with the pods.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Beans - Broad, 500 g','',''),(51,1,'Fresho Beans - Cowpea, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Tender, crispy and sweet tasting green cowpea beans have a succulent and pale flesh. These long and slender beans contain lime green peas. They are also known as black-eyed peas and lobia.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Beans - Cowpea, 500 g','',''),(52,1,'Fresho Beans - Cluster, 250 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;These narrow long beans, called Cluster beans or Guar, come with tiny pods and are highly nutritious.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Beans - Cluster, 250 g','',''),(49,1,'Fresho Coccinia, 500 g','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;The flesh of Coccinia is crunchy with a mild bitter after taste but the matured ones taste even sweeter. The translucent white flesh with seeds embedded turns red on ripening. They are oval to elongated with thick and light green skin.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;\r\n','','Fresho Coccinia, 500 g','',''),(41,1,'Fresh Onion, 1 kg ','&lt;div&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Onion can fill your kitchen with a thick spicy aroma. It is a common base vegetable in most Indian dishes, thanks to the wonderful flavor that it adds to any dish.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Product image shown is for representation purpose only, the actually product may vary based on season, produce &amp;amp; availability.&lt;/span&gt;&lt;br&gt;&lt;/div&gt;\r\n','','Fresho Onion, 1 kg ','Fresho Onion, 1 kg ',''),(47,1,'Fresho Potato, 1 kg','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Fresho Potatoes are nutrient-dense, non-fattening and have reasonable amount of calories. Include them in your regular meals so that the body receives a good supply of carbohydrates, dietary fibers and essential minerals such as copper, magnesium, and iron. In India, potatoes are probably the second-most consumed vegetables after onions.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;\r\n','','Fresho Potato, 1 kg','Fresho Potato, 1 kg\r\n',''),(60,1,'Fresho Pumpkin - Disco, 250 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;The pumpkins have a smooth, yellowish orange skin with a creamish to orange coloured flesh that has a pleasant squash-like taste. Their flat, edible seeds (pepitas) are tender and mildly sweet.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Pumpkin - Disco, 250 g','',''),(61,1,'Fresho Cauliflower, 1 pc approx. 400 to 600 gm','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Cauliflower is made up of tightly bound clusters of soft, crumbly, sweet cauliflower florets that form a dense head. Resembling a classic tree, the florets are attached to a central edible white trunk which is firm&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Fresho Cauliflower, 1 pc approx. 400 to 600 gm','',''),(62,1,'Fresho Cabbage, 1 pc approx. 500 to 800 gm','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;With a texture of crispness and juiciness the moment you take the first bite, cabbages are sweet and grassy flavoured with dense and smooth leafy layers.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Cabbage, 1 pc approx. 500 to 800 gm','',''),(63,1,'Fresho Cabbage - Red, 500 g','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;It is round, wrapped in purplish red leaf layers. The flavour is more peppery and bold compared to green ones. Its leaves are coarser as they have less water content.&amp;nbsp;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 13px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/h1&gt;','','Fresho Cabbage - Red, 500 g','',''),(64,1,'Fresho Palak, 250 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;With a sweet, nutty and tangent flavour, Palaks are green leafy vegetables that are succulent and spoon shaped.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Palak, 250 g','',''),(65,1,'Fresh Mint Leaves, 100 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Mint leaves are tender herbs with gentle stems and have a distinct pleasant aroma, pleasing taste, cool after-sensation and medicinal qualities.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;They are best used raw or added at the end of cooking in order to maintain their delicate flavour and texture.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Fresh Mint Leaves, 100 g','',''),(66,1,'Fresh Lettuce - Iceberg, 500 g','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;br&gt;Iceberg lettuce is a variety of lettuce with crisp leaves which grows in a spherical head resembling a cabbage. The leaves on the outside tend to be green and the leaves in the center go from pale yellow to nearly whitish as you move closer and closer to the center of the head with the sweetest leaves in the center of the head.&lt;br&gt;&lt;/h1&gt;','','Fresh Lettuce - Iceberg, 500 g','',''),(67,1,'Fresho Spring Onion, 100 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Spring onions come with a crisp texture and sweet flavour.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;They are moist with thin, white flesh and a green stem. The green stems are hollow, bitter and pungent.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Fresho Spring Onion, 100 g','',''),(68,1,'Fresho Amaranthus - Red, 250 g','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;A highly nutritious leafy vegetable, Amaranthus is also known as Chinese spinach. They are available in light purple, green or a bicolour of the two.&amp;nbsp;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 13px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/h1&gt;','','Fresho Amaranthus - Red, 250 g','',''),(69,1,'Fresh Lettuce - Red, 70 to 100 gm (Bunch)','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_0&quot; style=&quot;margin: 0px; padding: 1rem 1rem 1.2rem; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-size: 14px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div class=&quot;_26MFu  &quot; style=&quot;margin: 0.4rem 0px 0px; padding: 0px; font-size: 1.4rem; color: rgb(102, 102, 102); transition: max-height 0.3s ease-in-out 0s; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px; font-size: 13px; line-height: 18px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;With fragile reddish or purplish leaves, Red lettuce has a mild flavour and is less crunchy compared to the green lettuce.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h1&gt;','','Fresh Lettuce - Red, 70 to 100 gm (Bunch)','',''),(70,1,'Fresh Groundnut - Fresh, 500 g','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Fresh groundnut contains a fibrous brown shell with 2-3 small pods inside which offers a nutty and starchy flavour.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Fresh Groundnut - Fresh, 500 g','Fresh Groundnut - Fresh, 500 g','Fresh Groundnut - Fresh, 500 g'),(30,1,'Nandini GoodLife Toned Milk, 1 L Carton','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;Nandini GoodLife Toned Milk, 1 L Carton&lt;/h1&gt;&lt;div class=&quot;VqK9O&quot; style=&quot;margin: 0px; padding: 0px; display: flex; align-items: center; justify-content: space-between; font-family: ProximaNova-Regular; font-size: 14px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;div style=&quot;margin: 0px 0px 20px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/div&gt;&lt;/div&gt;\r\n','','Nandini GoodLife Toned Milk, 1 L Carton','',''),(71,1,'Fresho Tender Coconut - Medium, 1 pc','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 13px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span data-preserver-spaces=&quot;true&quot; style=&quot;margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;Young, fresh and healthy tender coconuts are a pure, tasty and nutritious energy drink that keeps body hydrated round the clock. Tender coconut is the most refreshing drink and best to quench your thirst in the summer.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 13px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span data-preserver-spaces=&quot;true&quot; style=&quot;margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;Tender coconut has antioxidant properties which help to protect the body from free radicals. It helps to lower blood pressure level, prevent kidney stone, and support heart health.&lt;/span&gt;&lt;/p&gt;&lt;/h1&gt;','','Fresho Tender Coconut - Medium, 1 pc','',''),(72,1,'Tadaa Boiled Sweet Corn Kernel - Spice Up With Chat Masala Seasoning, 225 g Tray','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;Fresh harvest sweet corn kernels are hand podded and just boiled to perfection. It comes with a lip-smacking Chat Masala flavouring. Just open the pouch, mix up the seasoning and enjoy a nutrition snack anytime. No refrigiration required.&lt;br&gt;&lt;/h1&gt;','','Tadaa Boiled Sweet Corn Kernel - Spice Up With Chat Masala Seasoning, 225 g Tray','',''),(73,1,'Tadaa Boiled Sweet Corn Kernel - Spice Up With Lemon And Pepper Seasoning, 225 g Tray','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Fresh harvest sweet corn kernels are hand podded and just boiled to perfection. It comes with a lip-smacking Lemon and pepper flavouring. Just open the pouch, mix up the seasoning and enjoy a nutrition snack anytime. No refrigiration required.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Tadaa Boiled Sweet Corn Kernel - Spice Up With Lemon And Pepper Seasoning, 225 g Tray','',''),(74,1,'Tadaa Boiled Sweet Corn Kernel - Spice Up With Cheese And Herbs Seasoning, 225 g Tray','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Fresh harvest sweet corn kernels are hand podded and just boiled to perfection. It comes with a lip-smackingCheese and Herbs flavouring. Just open the pouch, mix up the seasoning and enjoy a nutrition snack anytime. No refrigiration required.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Tadaa Boiled Sweet Corn Kernel - Spice Up With Cheese And Herbs Seasoning, 225 g Tray','',''),(75,1,'Tadaa Boiled Sweet Corn Kernel - Spice Up With Peri-Peri Seasoning, 225 g Tray','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Fresh harvest sweet corn kernels are hand podded and just boiled to perfection. It comes with a lip-smacking Peri-peri flavouring. Just open the pouch, mix up the seasoning and enjoy a nutrition snack anytime. No refrigiration required.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Tadaa Boiled Sweet Corn Kernel - Spice Up With Peri-Peri Seasoning, 225 g Tray','',''),(76,1,'Tadaa Boiled Rajma, 225 g Tray','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Choices grains of kabuli chana have been just boiled to perfection. Now no more cleaning, soaking, boiling or waiting- Be it Rajma masala, toping over nachos or a salad, just open a pack and toss out the dish of your choice in a jiffy.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Tadaa Boiled Rajma, 225 g Tray','',''),(77,1,'Healthy Life Paneer Salad - Tandoor Mayo Dressing, 200 g','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Paneer salad is rich in protein and vitamins, low in carbs. The healthy mix of paneer and vegetables makes this perfect for those following a ketogenic diet. Ideal for those who are health conscious and choose health over everything else. Good choice for those who are following a strict regime in their diet.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Healthy Life Paneer Salad - Tandoor Mayo Dressing, 200 g','',''),(78,1,'Healthy Life Sprouts Salad - Salsa Dressing, 200 g','','','Healthy Life Sprouts Salad - Salsa Dressing, 200 g','',''),(79,1,'Fresh Guava, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Savour the green guavas along with hard, pale yellow edible seeds. The off-white flesh is crunchy and mildly sweet with very good fragrance.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresh Guava, 500 g','',''),(80,1,'Fresho Sapota, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Brown skinned sapotas are smooth to grainy textured, musky-scented and deliciously sweet in taste. The flesh generally contains 2-3 large and inedible black seeds. Fresho sapotas are freshly plucked by our farmers and the best quality is delivered to you.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Sapota, 500 g','',''),(81,1,'Fresho Banana - Yelakki, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Fresh, tiny small sized, directly procured from the farm, this variety is called Yelakki in Bangalore and Elaichi in Mumbai. Despite its small size, they are naturally flavoured, aromatic and sweeter compared to regular bananas. Yelakki bananas are around 3- 4 inches long, and contain a thinner skin and better shelf life than Robusta bananas.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Banana - Yelakki, 500 g','',''),(82,1,'Fresho Orange - Nagpur, Regular, 1 kg','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Freshly picked directly from Nagpur farms, Fresho Nagpur oranges are sweet and bursting with juice. These are simple to peel and section.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 13px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-size: 13px;&quot;&gt;Treat your taste buds with this mouth watering fruit that is sweet and has a distinctive flavour.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/h1&gt;','','Fresho Orange - Nagpur, Regular, 1 kg','',''),(83,1,'Fresho Watermelon - Striped, Large, 1 pc 3.5kg -5 kg','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;With an attractive external surface of pale green stripes on dark green skin, Fresho striped watermelons are sweet, juicy and the best way to beat the summer heat. These are freshly picked for you directly from our farmers.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;The flesh of this fruit is pinkish red with black seeds. Even its thick rind is edible after cooking.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Fresho Watermelon - Striped, Large, 1 pc 3.5kg -5 kg','',''),(84,1,'Fresh Kiwi - Green, 3 pcs','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Kiwis are oval shaped with a brownish outer skin. The flesh is bright green and juicy with tiny, edible black seeds. With its distinct sweet-sour taste and a pleasant smell, it tastes like strawberry and honeydew melon.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresh Kiwi - Green, 3 pcs','Fresh Kiwi - Green, 3 pcs','Fresh Kiwi - Green, 3 pcs'),(85,1,'Fresho Pomegranate, 4 pcs (approx. 800 to 880 g)','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;With ruby color and an intense floral, sweet-tart flavor, the pomegranate delivers both taste and beauty. You can remove the skin and the membranes to get at the delicious fruit with nutty seeds. Fresho Pomegranates are finely sorted and graded to deliver the best tasting pomegranates to you.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Pomegranate, 4 pcs (approx. 800 to 880 g)','',''),(86,1,'Fresho Apple - Red Delicious / Washington, Regular, 2x4 pcs','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Fresho is our brand of fresh fruits and vegetables which are individually handpicked everyday by our experienced and technically competent buyers. Our buying, storing and packaging processes are tailored to ensure that only the fresh, nutrient dense, healthy and delicious produce reaches your doorstep. We guarantee the quality of all Fresho products. If you\'re not satisfied with the freshness of the items, you can hand them back to our Customer Experience Executive (CEE) for a full refund. Royal gala apples are bright red, thin skinned, white fleshed fruits with a mild sweet flavour and are native to New Zealand.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Apple - Red Delicious / Washington, Regular, 2x4 pcs','',''),(87,1,'Fresh Grapes - Sonaka Seedless, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Juicy and snappy, with a beautiful balance of sweet and tart flavour, these grape bunches have a lingering taste.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Do not tire yourselves searching for an unspoiled fruit, we have hand picked and finely packed fresho green seedless grapes which are just a few clicks away.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Fresh Grapes - Sonaka Seedless, 500 g','Fresh Grapes - Sonaka Seedless, 500 g','Fresh Grapes - Sonaka Seedless, 500 g'),(88,1,'Fresho Blueberry - Imported, 125 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Blueberries are very low in calories, soluble dietary fibres minerals and antioxidants.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Fresho Blueberry - Imported, 125 g','',''),(89,1,'Fresho Grapes - Sharad Seedless, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Velvety colored, deliciously sweet and juicy, Fresho black seedless grapes are individually handpicked everyday by our farmers and handled by very few, keeping the freshness intact. These are organically grown black grapes from the best farms.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;These grapes are rich in vitamin C, K and A along with flavonoids and minerals. They help in boosting the immunity and are a healthy snack for your kids.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Fresho Grapes - Sharad Seedless, 500 g','',''),(90,1,'Grocery Budget Basket','&lt;p&gt;Grocery Budget Basket in Hindustan Deal&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Grocery Budget Basket','Grocery Budget Basket\r\n',''),(91,1,'Grocery Regular Basket','&lt;p&gt;Grocery Regular Basket in Hindustan Deal&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Grocery Regular Basket','',''),(92,1,'Homemade Masala Basket','&lt;p&gt;Homemade Masala Basket in Hindustan Deal&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Homemade Masala Basket','',''),(93,1,'Special Biryani Basket','&lt;p&gt;Special Biryani Basket in Hindustan Deal&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Special Biryani Basket','',''),(94,1,'Tata Sampann Toor Dal, 1 kg','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Dals or lentils are a staple in Indian cooking. Every Indian home will see at least one dal dish on the table during lunch and dinner. The unpolished Toor Dal from the house of Tata is a high quality product that is nutrient heavy and used in a variety of preparations in most parts of India. Tata I Shakti Unpolished Toor Dal comes in various quantities. This 1 kg pouch contains Toor dal that has been sources from the best farm lands in the country. It is unpolished and retains its soft outer covering which acts as precious fibre for the system, even as this dal provides essential protein, magnesium, potassium and other minerals to the body.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Tata Sampann Toor Dal, 1 kg','',''),(95,1,'Tata Sampann Moong Dal, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Every grain is 100-per cent laser-sorted and graded to ensure that consumers get no impurities, damaged or weevilled grains.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Tata Sampann Moong Dal, 500 g','',''),(96,1,'Tata Sampann Chana Dal - Unpolished, 500 g','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Every Grain Is 100-Per Cent Laser-Sorted And Graded To Ensure That Consumers Get No Impurities, Damaged Or Weevilled Grains. Indulge in the true flavours of nature with the all-natural Tata I Shakti dal. The range of Tata pulses come with a promise of superior quality and genuine flavours. Tata I Shakti pulses are cultivated in Indian farms and are grown in completely natural conditions to bring to you the purest form of health and nutrition. The Tata channa dal is free from any added chemicals, colour or any other foreign element. The unpolished I Shakti dal is not exposed to the harmful marble powder, oil polish or animal skin touch that are the base polishing elements found in polished pulses. Tata Shakti dal is power packed with nutritional essentials like protein, dietary fibre and carbohydrates. Buy Tata channa dal and take a step ahead towards a healthier lifestyle.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Tata Sampann Chana Dal - Unpolished, 500 g','',''),(42,1,'Fresh Ladies Finger','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Ladies finger is a green vegetable with a tip at the end and a lighter green head, which is inedibe and to be thrown away. It tastes mild and slightly grassy.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','Fresh Ladies Finger','Fresh Ladies Finger','Fresh Ladies Finger'),(97,1,'Aashirvaad Atta - Whole Wheat, 1 kg Pouch','&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Aashirvaad Whole Wheat Flour is finished from the best accepted ingredients that help recover digestion and offer good number of well nutrients to the body. Aashirvaad Whole Grain Atta does not hold any extra preservatives or flavours. 100% full Wheat Chapati Flour and no Maida added.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Aashirvaad Atta - Whole Wheat, 1 kg Pouch','Aashirvaad Whole Wheat Flour is finished from the best accepted ingredients that help recover digestion and offer good number of well nutrients to the body. Aashirvaad Whole Grain Atta does not hold any extra preservatives or flavours. 100% full Wheat C','Aashirvaad Atta - Whole Wheat, 1 kg Pouch'),(98,1,'Aashirvaad Atta - Multigrains, 1 kg Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;From the stable of Indias most trusted Atta brand - Aashirvaad - comes a new variety - Aashirvaad Atta with Multigrains. This all-new variant is designed to provide nourishment for people of all ages and is an integrated mix of six different grains - wheat, soya, channa, oat, maize &amp;amp; psyllium husk - which gives a healthy option for the consumers. Aashirvaad Atta with Multigrains is an excellent source of vitamins which are vital in strengthening immunity and extra protein content to improve body strength. The extra fibre makes your food easier to digest; low content of saturated fat keeps your heart smiling. And above all, it still retains the same great taste.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Aashirvaad Atta - Multigrains, 1 kg Pouch','From the stable of Indias most trusted Atta brand - Aashirvaad - comes a new variety - Aashirvaad Atta with Multigrains. This all-new variant is designed to provide nourishment for people of all ages and is an integrated mix of six different grains - whea',''),(99,1,'Aashirvaad Atta - Whole Wheat, 10 kg Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Aashirvaad whole wheat atta is made of zero per cent maida and 100% atta, which makes it extremely nutritious since its packed with health benefits. This also means more fluffy and soft rotis at home. Aashirvaad Atta is also made from the best grains - heavy on the palm, golden amber in colour and hard in bite. It is grounded using the chakki - grinding process for the perfect balance of colour, taste and nutrition.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Aashirvaad Atta - Whole Wheat, 10 kg Pouch','Aashirvaad whole wheat atta is made of zero per cent maida and 100% atta, which makes it extremely nutritious since its packed with health benefits. This also means more fluffy and soft rotis at home. Aashirvaad Atta is also made from the best grains - he',''),(100,1,'Annapurna Farm Fresh Atta, 1 kg Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Annapurna Atta Is Made From Choicest Of Grains Brought Fresh From The Farms, Cleaned 3 Times And Ground And Packed In The Most Hygienic Conditions To Give You Soft Tasty Rotis That Simply Melt In The Mouth.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Annapurna Farm Fresh Atta, 1 kg Pouch','Annapurna Atta Is Made From Choicest Of Grains Brought Fresh From The Farms, Cleaned 3 Times And Ground And Packed In The Most Hygienic Conditions To Give You Soft Tasty Rotis That Simply Melt In The Mouth.',''),(101,1,'Aachi Mix - Rava Idly, 200 g Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Aachi Rava Idlis Mix is a super quick alternative to the customary rice/daal idlis. Yummy Rava Idly can be prepared by using Aachi Rava Idly Mix.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Aachi Mix - Rava Idly, 200 g Pouch','Aachi Rava Idlis Mix is a super quick alternative to the customary rice/daal idlis. Yummy Rava Idly can be prepared by using Aachi Rava Idly Mix.',''),(102,1,'Double horse Samba Wheat Broken - Fine, 500 g Pouch','&lt;div&gt;Samba Wheat is one of the healthiest grain, its Reduces cholesterol (0% cholesterol) Best for diabetes and people with high sugar level. Wheat is rich in catalytic elements, mineral salts, calcium, magnesium, potassium, sulfur, chlorine, arsenic, silicon, manganese, zinc, iodide, copper, vitamin B, and vitamin E.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Double horse Samba Wheat Broken - Fine, 500 g Pouch','',''),(103,1,'Vegetables Combo Offers 148','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;This combo contains Fresho Palak 500 g + Fresho Ladies Finger 500 g + Fresho Cucumber 1 kg + Fresho Capsicum - Green 500 g + Fresho Bottle Gourd 1 kg.&lt;/span&gt;&lt;br&gt;&lt;/h1&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;With a sweet, nutty and tangent flavour, Palaks are green leafy vegetables that are succulent and spoon-shaped.&lt;/p&gt;&lt;/div&gt;','','Vegetables Combo Offers 148','',''),(104,1,'Vegetables Combo Offers 125','&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;This combo contains Fresho Palak 500 g + Fresho Ladies Finger 500 g + Fresho Cucumber 500 g + Fresho Capsicum - Green 500 g + Fresho Bottle Gourd 1 kg.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;With a sweet, nutty and tangent flavour, Palaks are green leafy vegetables that are succulent and spoon-shaped.&lt;/p&gt;','','Vegetables Combo Offers 125','',''),(105,1,'Vegetables Combo Offers 100','&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;This combo contains Fresho Palak 500 g + Fresho Ladies Finger 500 g + Fresho Cucumber 500 g + Fresho Capsicum - Green 500 g + Fresho Bottle Gourd 500 g.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;With a sweet, nutty and tangent flavour, Palaks are green leafy vegetables that are succulent and spoon-shaped.&lt;/p&gt;','','Vegetables Combo Offers 100','',''),(106,1,'Vegetables Combo Offers 35','&lt;h1 class=&quot;GrE04&quot; style=&quot;margin-bottom: 10px; padding: 0.6rem 0px 0px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; font-size: 1.8rem; color: rgb(34, 34, 34); font-family: ProximaNova-Regular; -webkit-line-clamp: initial; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Fresho Methi 250 g + Coriander Leaves 100 g + Palak 250 g + Curry Leaves 100 g, Combo 4 Items&lt;/span&gt;&lt;/h1&gt;','','Vegetables Combo Offers 35','',''),(107,1,'Vegetables Combo Offers 120','&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;This combo contains Fresho Palak 250 g + Fresho Ladies Finger 500 g + Fresho Cucumber 500 g + Fresho Capsicum - Green 500 g + Fresho Bottle Gourd 1 kg.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;With a sweet, nutty and tangent flavour, Palaks are green leafy vegetables that are succulent and spoon-shaped.&lt;/p&gt;','','Vegetables Combo Offers 120','',''),(108,1,'Double horse Wheat - Samba Broken, 500 g Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Double Horse Wheat - Samba Broken is quite filling as it is high in fiber but low in calories and assists reduce cholesterol and frequently counted on for weight-loss.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Double horse Wheat - Samba Broken, 500 g Pouch','Double Horse Wheat - Samba Broken is quite filling as it is high in fiber but low in calories and assists reduce cholesterol and frequently counted on for weight-loss.',''),(109,1,'Elite Samba Broken Wheat, 500 g Pillow Pouch','&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Cracked wheat is a popular cereal of South India. Popularly known as broken wheat, Dalia is a healthy alternative to whole wheat as it contains the outer bran, which makes it an excellent source of dietary fibre.&lt;/span&gt;','','Elite Samba Broken Wheat, 500 g Pillow Pouch','Cracked wheat is a popular cereal of South India. Popularly known as broken wheat, Dalia is a healthy alternative to whole wheat as it contains the outer bran, which makes it an excellent source of dietary fibre.',''),(110,1,'Elite Whole Wheat Atta, 1 kg Pillow Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Atta flour is made from hard wheat, which has a high gluten content. This means that your flour is probably better for bread than typical all-purpose whole wheat flour from the baking.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Elite Whole Wheat Atta, 1 kg Pillow Pouch','Atta flour is made from hard wheat, which has a high gluten content. This means that your flour is probably better for bread than typical all-purpose whole wheat flour from the baking.',''),(111,1,'Elite Broken Wheat - Fine, 500 g Pillow Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Adding cracked wheat, as well as other whole grains, to your diet in place of low-nutrient fare could provide some protection from serious health conditions.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','Elite Broken Wheat - Fine, 500 g Pillow Pouch','Adding cracked wheat, as well as other whole grains, to your diet in place of low-nutrient fare could provide some protection from serious health conditions.',''),(112,1,'Eastern Podi - Puttu, 500 g Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Eastern Puttu podi can be used to create soft, tasty Puttu with a pleasantly delicious smell. Care for yourself and your family to a tasty breakfast with immediate Puttu Podi.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Eastern Podi - Puttu, 500 g Pouch','Eastern Puttu podi can be used to create soft, tasty Puttu with a pleasantly delicious smell. Care for yourself and your family to a tasty breakfast with immediate Puttu Podi.',''),(113,1,'Eastern Podi - Chemba Puttu, 500 g Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Eastern Chemba Puttu Podi is a broad collection of exotic, traditional rice based breakfast items are especially well-liked in still modern houses. The quality of brown rice powder is used to create wonderfully healthful Chemba Puttu that\'s a pleasure to spread on.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Eastern Podi - Chemba Puttu, 500 g Pouch','Eastern Chemba Puttu Podi is a broad collection of exotic, traditional rice based breakfast items are especially well-liked in still modern houses. The quality of brown rice powder is used to create wonderfully healthful Chemba Puttu that\'s a pleasure to ',''),(114,1,'Pillsbury Atta - Chakki Fresh, 1 kg Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Pillsbury Chakki Fresh Atta Is 100% Complete Wheat Grain Atta With Fibre - Which Is Essential For A Healthy Digestive System - Natural Ingredients For Overall Health And Vitality, Plus Iron, Which Performs As A Carrier Of Oxygen In The Body. The Nutritious Atta Creates Your Cooking Skill A Delight. Since Indian Cooking Use Wheat As One Of Its Main Staple Diets, Pillsbury Chakki Fresh Atta Creates Your Dishes Fresh And Tasty.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Pillsbury Atta - Chakki Fresh, 1 kg Pouch','Pillsbury Chakki Fresh Atta Is 100% Complete Wheat Grain Atta With Fibre - Which Is Essential For A Healthy Digestive System - Natural Ingredients For Overall Health And Vitality, Plus Iron, Which Performs As A Carrier Of Oxygen In The Body. The Nutritiou',''),(115,1,'Pillsbury Atta - Chakki Fresh, 5 kg Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Pillsbury Chakki Fresh Atta is 100 percent whole wheat grain atta with fibre - which is important for a healthy digestive system - natural ingredient for overall health and vitality, plus iron, which acts as a carrier of oxygen in the body. It provides consumers with a deliciously soft rotis.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Pillsbury Atta - Chakki Fresh, 5 kg Pouch','Pillsbury Chakki Fresh Atta is 100 percent whole wheat grain atta with fibre - which is important for a healthy digestive system - natural ingredient for overall health and vitality, plus iron, which acts as a carrier of oxygen in the body. It provides co',''),(116,1,'Pillsbury Atta - Chakki Fresh, 10 kg Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Pillsbury Chakki Fresh Atta is 100 percent whole wheat grain atta with fibre - which is important for a healthy digestive system - natural ingredient for overall health and vitality, plus iron, which acts as a carrier of oxygen in the body. It provides consumers with a deliciously soft rotis.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Pillsbury Atta - Chakki Fresh, 10 kg Pouch','Pillsbury Chakki Fresh Atta is 100 percent whole wheat grain atta with fibre - which is important for a healthy digestive system - natural ingredient for overall health and vitality, plus iron, which acts as a carrier of oxygen in the body. It provides co',''),(117,1,'Pillsbury Atta - Multigrain, 5 kg Pouch','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ProximaNova-Regular;&quot;&gt;Multigrain Atta from Pillsbury is a first-of-its-kind, an exclusive blend of seven grains that are especially blended to supply all-around fitness benefits. It is also a key part in certain type of snacks like halwa. Pillsbury Multigrain Atta promises your family additional nutrition each day.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;&quot;&gt;&lt;/p&gt;','','Pillsbury Atta - Multigrain, 5 kg Pouch','Multigrain Atta from Pillsbury is a first-of-its-kind, an exclusive blend of seven grains that are especially blended to supply all-around fitness benefits. It is also a key part in certain type of snacks like halwa. Pillsbury Multigrain Atta promises you',''),(156,1,'Black Pepper 50G','&lt;p&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;Black pepper&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;(Piper nigrum) is a flowering vine in the family Piperaceae, cultivated for its fruit, known as a&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;peppercorn&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;, which is usually dried and used as a spice and seasoning.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Black Pepper 50G','Black Pepper 50G','Black Pepper 50G','Black Pepper 50G'),(157,1,'Cardamom (Alakay) 100 G','&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Cardamom, sometimes cardamon or cardamum, is a spice made from the seeds of several plants in the genera Elettaria and Amomum in the family Zingiberaceae. Both genera are native to the Indian subcontinent and Indonesia&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Cardamom (Alakay) 100 G','Cardamom (Alakay) 100 G','Cardamom (Alakay) 100 G','Cardamom (Alakay) 100 G'),(118,1,'Premium Goat Curry Cut  500 Grams','&lt;div&gt;We at Fleshkart, make sure that you get what you wanted with strict adherence to your requirements. Red Meat that we deliver to your address is completely fresh. Every product is packed using high-quality paper boxes with a silver layer from inside to make sure that it remains fresh until it’s delivered to your doorstep.&lt;/div&gt;','','Premium Goat Curry Cut  500 Grams','Premium Goat Curry Cut  500 Grams',''),(119,1,'Premium Mutton Boneless 500 Grams','&lt;p style=&quot;box-sizing: inherit; margin-bottom: 35px; color: rgb(113, 113, 113); font-family: Karla, sans-serif; font-size: 15px; line-height: 23px;&quot;&gt;We at Fleshkart, make sure that you get what you wanted with strict adherence to your requirements. Boneless Mutton that we deliver to your address is completely fresh. Every product is packed using high-quality paper boxes with a silver layer from inside to make sure that it remains fresh until it’s delivered to your doorstep.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Premium Mutton Boneless 500 Grams','Premium Mutton Boneless 500 Grams',''),(120,1,'Premium Goat Lever (Kaleji) – Net Wt. 250 Grams','&lt;p&gt;&lt;div class=&quot;wrps_related_products_area&quot; style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; position: relative; clear: both; color: rgb(78, 78, 78); font-family: &amp;quot;PT Sans&amp;quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;/div&gt;&lt;/p&gt;&lt;div class=&quot;woocommerce-tabs wc-tabs-wrapper kadal-custom-tabs&quot; style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; clear: left; color: rgb(78, 78, 78); font-family: &amp;quot;PT Sans&amp;quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;div class=&quot;woocommerce-Tabs-panel woocommerce-Tabs-panel--descriptions panel entry-content wc-tab&quot; id=&quot;tab-descriptions&quot; style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; background-color: rgb(255, 255, 255); border: 1px solid transparent; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 1px; display: block;&quot;&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; font-size: 16px; text-align: justify;&quot;&gt;Mutton Liver is one of the most nutrient dense foods which contains a large amount of high quality protein which ha all sorts of B vitamins and iron, balanced quantity of Vitamin A has many trace elements and minerals including copper, zinc, chromium, phosphorous and selenium, essential fatty acids EPA, DHA and AA, as well as the powerful antioxidant CoQ.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;','','Premium Goat Lever (Kaleji) – Net Wt. 250 Grams','Premium Goat Lever (Kaleji) – Net Wt. 250 Grams',''),(122,1,'Rohu Fish Curry Cut – With Head – Net Weight 400 Grams','&lt;p style=&quot;box-sizing: inherit; margin-bottom: 35px; color: rgb(113, 113, 113); font-family: Karla, sans-serif; font-size: 15px; line-height: 23px;&quot;&gt;We at Fleshkart, make sure that you get what you wanted with strict adherence to your requirements. Rohu Fish that we deliver to your address is completely fresh. Every product is packed using high-quality paper boxes with a silver layer from inside to make sure that it remains fresh until it’s delivered to your doorstep.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Rohu Fish Curry Cut – With Head – Net Weight 400 Grams','Rohu Fish Curry Cut – With Head – Net Weight 400 Grams\r\n',''),(123,1,'Fresh Prawns C – Small Size(30-35 Pieces) – 500 Grams','&lt;p style=&quot;box-sizing: inherit; margin-bottom: 35px; color: rgb(113, 113, 113); font-family: Karla, sans-serif; font-size: 15px; line-height: 23px;&quot;&gt;We at Fleshkart, make sure that you get what you wanted with strict adherence to your requirements. Prawns that we deliver to your address is completely fresh. Every product is packed using high-quality paper boxes with a silver layer from inside to make sure that it remains fresh until it’s delivered to your doorstep.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Fresh Prawns C – Small Size(30-35 Pieces) – 500 Grams','Fresh Prawns C – Small Size(30-35 Pieces) – 500 Grams\r\n',''),(124,1,'Country Chicken Curry Cut Without Skin','&lt;section id=&quot;main&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(78, 78, 78); font-family: &amp;quot;PT Sans&amp;quot;; font-size: 14px;&quot;&gt;&lt;div class=&quot;container default&quot; style=&quot;padding-top: 0px; padding-bottom: 0px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;div itemscope=&quot;&quot; itemtype=&quot;http://schema.org/Product&quot; id=&quot;product-365&quot; class=&quot;post-365 product type-product status-publish has-post-thumbnail product_cat-country product_tag-country-chicken-online product_tag-fresh-country-chicken-online product_tag-fresh-nattukozhi-online product_tag-online-country-chicken product_tag-online-fresh-nattukozhi product_tag-online-nattukozhi pa_cut-type-withskin pa_cut-type-withoutskin first instock sale taxable shipping-taxable purchasable product-type-variable&quot; style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;div class=&quot;woocommerce-tabs wc-tabs-wrapper kadal-custom-tabs&quot; style=&quot;padding: 0px; margin: 0px; clear: left;&quot;&gt;&lt;div class=&quot;woocommerce-Tabs-panel woocommerce-Tabs-panel--descriptions panel entry-content wc-tab&quot; id=&quot;tab-descriptions&quot; style=&quot;padding: 0px; margin: 0px 0px 20px; border-radius: 4px;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 10px; font-size: 16px; text-align: justify;&quot;&gt;Country chicken is the healthiest chicken than broiler chicken. Its has an essential nutrients to develop your bones and muscles even stronger. Country chicken contain vitamin B6 that regulates the consumption of chicken which is an essential in maintaining your blood vessels. Country chicken facilitates the conversion of body fats, proteins and carbohydrates which helps in optimizing blood sugar regulation. Consuming country chicken protects you against Alzheimer’s disease and age-related cognitive decline. If you are in a normal diet then it’s yummy to prepare and have country chicken curry and country chicken fry.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;','','Country Chicken Curry Cut Without Skin','Country Chicken Curry Cut Without Skin\r\n',''),(126,1,'Fresh Beef – 500 Grams','&lt;p style=&quot;margin-bottom: 15px; color: rgb(51, 51, 51); font-family: Montserrat, sans-serif; font-size: 15px;&quot;&gt;Westco Foods’ Wholesale Beef Trimmings put the yummy in the leftovers.&lt;/p&gt;&lt;ul style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Montserrat, sans-serif; font-size: 15px;&quot;&gt;&lt;li&gt;&lt;a href=&quot;https://www.westcofoods.com/&quot; style=&quot;color: rgb(214, 21, 35);&quot;&gt;Westco Foods’&lt;/a&gt;&amp;nbsp;Beef Trimmings is imported from Uruguay.&lt;/li&gt;&lt;li&gt;Beef Trimmings packaging weighs 60lbs.&lt;/li&gt;&lt;li&gt;Beef Trimmings are pieces of meat remaining after steaks, roasts, and other cuts are removed.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(51, 51, 51); font-family: Montserrat, sans-serif; font-size: 15px;&quot;&gt;Beef Trimmings is a customer favourite and has so many preparation methods that you’re sure to create amazing menus.&amp;nbsp;Often used to make ground beef, Beef Trimmings make an amazing stew flavoured with pepper, paprika, curry powder, and parsley. Pair with rice, vegetables, and an unlimited number of toppings from mushrooms to onions to shredded cheese. Top Rated Local® Restaurant wholesale supplier Westco Foods recommends de-thawing before preparing. Beef Trimmings make great stir-fry meat or roast beef. Use Beef Trimmings in special ethnic dishes such as Japan’s Sukiyaki, a traditional dish where the Beef Trimmings are cooked by dipping them in hot liquid. Pair with noodles, and you’ll soon have a restaurant favourite. Don’t miss out on Beef Trimmings by Westco Foods, Trinidad’s best wholesale food supplier.&amp;nbsp;&lt;a href=&quot;https://www.westcofoods.com/my-account/&quot; style=&quot;color: rgb(214, 21, 35);&quot;&gt;Order today!&lt;/a&gt;&lt;/p&gt;&lt;ul style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Montserrat, sans-serif; font-size: 15px;&quot;&gt;&lt;li&gt;Guaranteed delivery within 24 hours of order!&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;https://www.westcofoods.com/shop/&quot; style=&quot;color: rgb(214, 21, 35);&quot;&gt;Online ordering available!&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&amp;nbsp;Get your meats cut to order today!&lt;/li&gt;&lt;/ul&gt;','','Fresh Beef – 500 Grams','Fresh Beef – 500 Grams',''),(128,1,'Country Chicken With Skin','&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;font color=&quot;#4e4e4e&quot; face=&quot;PT Sans&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Country chicken is the healthiest chicken than broiler chicken. Its has an essential nutrients to develop your bones and muscles even stronger. Country chicken contain vitamin B6 that regulates the consumption of chicken which is an essential in maintaining your blood vessels. Country chicken facilitates the conversion of body fats, proteins and carbohydrates which helps in optimizing blood sugar regulation. Consuming country chicken protects you against Alzheimer’s disease and age-related cognitive decline. If you are in a normal diet then it’s yummy to prepare and have country chicken curry and country chicken fry.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;','','Country Chicken With Skin','Country Chicken With Skin\r\n',''),(130,1,'Regular Egg','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Fresh Table eggs are hygienically processed and securely filled for keeping these free from any contamination and impurity. It has high dietary content, protein, smell and rich taste. These are one of nature\'s most wholesome and cost-effective foods. You can bake enjoyable cakes, cookies, scones etc. with eggs; try your hand over at family pasta as well. It twisted boiled, sunny-side up, deviled or evens the Indian method curry eggs can be finished in so many unique tasty ways.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Regular Egg','Regular Egg',''),(129,1,'IVN Sengalpattu Rice','&lt;p&gt;25 KG,10 KG, 5 KG Pouch Rice being a rich and remarkable mix of tradition and royalty optimizes the spirit of a distinctive and incredible India. It is longer than most other types of rice. This rice is special from other rice essentially due to the aroma and length post cooking.&lt;/p&gt;','','IVN Sengalpattu Rice 25 KG','IVN Sengalpattu Rice 25 KG',''),(127,1,'Broiler Chicken Curry Cut Without Skin','&lt;div&gt;Chicken is healthier without the fatty skin. Fresho skinless chicken pieces provide immense value for restaurants, catering, outdoor grilling and family meals, as it has no extra hormones or steroids and it is effortless to cook.&lt;/div&gt;&lt;div&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-size: 12px; background-color: rgb(229, 234, 227);&quot;&gt;&lt;/div&gt;','','Broiler Chicken Curry Cut Without Skin','Broiler Chicken Curry Cut Without Skin',''),(125,1,'Broiler Chicken With Skin','&lt;div&gt;Chicken is healthier without the fatty skin. Fresho skinless chicken pieces provide immense value for restaurants, catering, outdoor grilling and family meals, as it has no extra hormones or steroids and it is effortless to cook.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Broiler Chicken  With Skin','Broiler Chicken  With Skin',''),(131,1,'Country Chicken Egg','&lt;p&gt;&lt;div class=&quot;_3ezVU&quot; id=&quot;about_1&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 1rem 1rem 1.2rem; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; display: flex; align-items: stretch; justify-content: center; flex-direction: column; border-bottom: 1px solid rgb(238, 238, 238); color: rgb(0, 0, 0); font-family: ProximaNova-Regular; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 13px; color: rgb(102, 102, 102);&quot;&gt;Fresh Table eggs are hygienically processed and securely filled for keeping these free from any contamination and impurity. It has high dietary content, protein, smell and rich taste. These are one of nature\'s most wholesome and cost-effective foods. You can bake enjoyable cakes, cookies, scones etc. with eggs; try your hand over at family pasta as well. It twisted boiled, sunny-side up, deviled or evens the Indian method curry eggs can be finished in so many unique tasty ways.&lt;/span&gt;&lt;div class=&quot;_3LyVz&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; justify-content: space-between; display: flex; align-items: center; font-size: 1.6rem; cursor: pointer; color: rgb(68, 68, 68);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/p&gt;','','Country Chicken Egg','Country Chicken Egg',''),(132,1,'Avm Coconut Oil 1 LTR Pouch','&lt;p style=&quot;outline: 0px; margin-bottom: 10px; font-size: 15px; padding-top: 0px; color: rgb(93, 93, 93); font-family: &amp;quot;Open Sans&amp;quot;;&quot;&gt;&lt;span data-sheets-value=&quot;[null,2,&amp;quot;The People Once Experienced The Difference Vouch For The Quality It Stands For. And The Excellent Words From Their Mouth Spread Unstopped Like The Fragrance Of Pure Coconut Oil.&amp;quot;]&quot; data-sheets-userformat=&quot;[null,null,513,[null,0],null,null,null,null,null,null,null,null,0]&quot; style=&quot;outline: 0px; font-size: 13px; font-family: arial, sans, sans-serif;&quot;&gt;The People Once Experienced The Difference Vouch For The Quality It Stands For. And The Excellen