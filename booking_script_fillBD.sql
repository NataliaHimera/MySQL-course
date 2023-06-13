-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_22
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

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
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airlines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_city_id` bigint(20) unsigned NOT NULL,
  `to_city_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `from_city_id` (`from_city_id`),
  KEY `to_city_id` (`to_city_id`),
  CONSTRAINT `airlines_ibfk_1` FOREIGN KEY (`from_city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `airlines_ibfk_2` FOREIGN KEY (`to_city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES (1,'Runolfsdottir-Lebsack',100,48),(2,'Vandervort, Cronin and Barrows',76,60),(3,'Raynor LLC',86,84),(4,'Olson and Sons',30,54),(5,'Dicki-Schiller',13,52),(6,'Larkin and Sons',93,42),(7,'Hodkiewicz-King',71,24),(8,'Harris PLC',38,15),(9,'Hyatt, Paucek and Mante',41,11),(10,'Little-Kozey',7,2),(11,'Beier-Murphy',43,42),(12,'Raynor, Wolf and Barrows',20,20),(13,'Christiansen, Weimann and Hilpert',97,82),(14,'Bailey Ltd',5,56),(15,'Cassin Inc',78,37),(16,'Batz, Halvorson and Kub',38,78),(17,'Christiansen, McClure and Swift',84,14),(18,'Gulgowski LLC',37,70),(19,'Davis Ltd',98,67),(20,'Grady, Romaguera and Dare',23,11),(21,'Schinner-Weber',18,16),(22,'Hodkiewicz-Konopelski',52,89),(23,'Kihn, Price and Von',39,90),(24,'Haley Inc',3,79),(25,'Nitzsche Ltd',100,9),(26,'Sawayn-O\'Connell',80,42),(27,'Yost-Sauer',51,100),(28,'Legros, Crist and Dickinson',62,48),(29,'Ziemann-Braun',82,67),(30,'Kuhn, Krajcik and Kertzmann',3,59),(31,'Rogahn, Stroman and Cartwright',3,41),(32,'Batz-Corwin',37,87),(33,'Swaniawski, Smith and McClure',54,73),(34,'Runte and Sons',56,52),(35,'Wolff-Leffler',40,79),(36,'Boehm, Emmerich and Ferry',62,57),(37,'Borer-Spinka',94,13),(38,'Auer PLC',45,33),(39,'Hettinger, Brekke and Bahringer',3,48),(40,'Koelpin, Lynch and Hickle',11,2),(41,'Grimes, Carroll and Bogisich',56,91),(42,'Rosenbaum Inc',44,6),(43,'Durgan LLC',90,6),(44,'Nicolas Group',54,71),(45,'Kessler-Koelpin',72,56),(46,'Williamson, Flatley and Reichel',30,74),(47,'Cummings-Crist',97,66),(48,'Hilpert-Torp',61,51),(49,'Fisher-Koelpin',38,16),(50,'Wintheiser Group',2,77),(51,'Macejkovic Group',94,63),(52,'Trantow-Harber',34,88),(53,'Kozey, Little and Kessler',76,79),(54,'Herman-Rau',20,78),(55,'Weissnat, Bednar and VonRueden',26,31),(56,'Conn, Hammes and Wilderman',80,82),(57,'Donnelly-Weimann',21,24),(58,'Fadel, Ledner and Cruickshank',88,10),(59,'Hudson, Conn and Stark',29,41),(60,'Hessel-Kunde',80,1);
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `airports_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES (1,'Hegmann, Schuster and Upton',6),(2,'Schulist-Thompson',91),(3,'Senger-Rodriguez',92),(4,'Flatley-Price',63),(5,'Lowe Ltd',9),(6,'Kovacek, Fadel and Bergnaum',25),(7,'Lindgren, Moen and Hills',52),(8,'Williamson, Muller and Schuppe',19),(9,'Konopelski-Stanton',67),(10,'Kerluke Ltd',19),(11,'Jakubowski, Rau and O\'Reilly',92),(12,'Shanahan-McGlynn',33),(13,'Witting, Schmidt and Goodwin',60),(14,'Langworth, Ernser and Goodwin',95),(15,'Lueilwitz, Miller and Kunze',97),(16,'Wilderman PLC',91),(17,'Gutmann-Rau',4),(18,'Kiehn, Mohr and Satterfield',76),(19,'Batz-Lindgren',43),(20,'Ankunding Ltd',77),(21,'King, Fisher and Hansen',41),(22,'Runolfsdottir-Greenfelder',4),(23,'Gibson-Raynor',92),(24,'Bednar, Haley and Jenkins',53),(25,'Jerde-Schumm',38),(26,'Doyle-Moore',38),(27,'Abernathy, Quitzon and Paucek',87),(28,'Schoen Ltd',13),(29,'Leffler-Lehner',56),(30,'Davis-Gusikowski',22),(31,'D\'Amore, Dach and Kuhic',31),(32,'Friesen Group',62),(33,'Hintz-Kutch',13),(34,'Baumbach-Beer',23),(35,'Nienow and Sons',24),(36,'Krajcik-Hamill',21),(37,'Parker, Altenwerth and Balistreri',47),(38,'Kuhlman, Gaylord and Ward',76),(39,'Mayert Ltd',39),(40,'Mitchell, Kautzer and Welch',14),(41,'Schamberger, Reynolds and Konopelski',95),(42,'Mitchell Ltd',31),(43,'Schuster-Rodriguez',46),(44,'Jakubowski PLC',54),(45,'Gaylord-Carroll',25),(46,'Kihn, Kuhlman and Zemlak',42),(47,'Huels and Sons',44),(48,'Robel and Sons',29),(49,'Lubowitz-Stiedemann',18),(50,'Thiel Group',87),(51,'Conn Ltd',6),(52,'Ratke, Koss and Hahn',59),(53,'Prosacco, Bruen and Bechtelar',91),(54,'Vandervort-Brekke',97),(55,'Stoltenberg and Sons',12),(56,'Wolff, Kirlin and Durgan',28),(57,'Von and Sons',35),(58,'Williamson and Sons',98),(59,'Bosco-Mante',40),(60,'Bode-Towne',91);
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airports_airlines`
--

DROP TABLE IF EXISTS `airports_airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports_airlines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `airport_id` bigint(20) unsigned NOT NULL,
  `airline_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `airport_id` (`airport_id`),
  KEY `airline_id` (`airline_id`),
  CONSTRAINT `airports_airlines_ibfk_1` FOREIGN KEY (`airport_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE,
  CONSTRAINT `airports_airlines_ibfk_2` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports_airlines`
--

LOCK TABLES `airports_airlines` WRITE;
/*!40000 ALTER TABLE `airports_airlines` DISABLE KEYS */;
INSERT INTO `airports_airlines` VALUES (1,22,59),(2,4,9),(3,48,1),(4,60,35),(5,5,7),(6,31,58),(7,48,30),(8,44,40),(9,58,39),(10,48,27),(11,55,49),(12,52,53),(13,13,9),(14,37,24),(15,57,60),(16,50,19),(17,58,53),(18,27,46),(19,53,26),(20,20,58),(21,32,51),(22,55,20),(23,20,39),(24,59,17),(25,17,46),(26,44,12),(27,35,35),(28,5,48),(29,43,41),(30,11,40),(31,40,60),(32,58,38),(33,53,25),(34,23,46),(35,51,42),(36,43,23),(37,32,38),(38,42,52),(39,17,41),(40,8,34),(41,27,51),(42,45,1),(43,25,49),(44,48,8),(45,29,58),(46,47,9),(47,58,45),(48,46,50),(49,9,8),(50,35,59),(51,50,18),(52,21,22),(53,56,3),(54,13,12),(55,43,20),(56,45,9),(57,11,29),(58,9,35),(59,18,57),(60,43,47),(61,54,29),(62,55,52),(63,13,41),(64,41,22),(65,49,16),(66,20,38),(67,34,41),(68,59,29),(69,44,12),(70,40,26),(71,32,25),(72,35,42),(73,53,44),(74,17,10),(75,40,59),(76,57,34),(77,27,52),(78,25,40),(79,32,6),(80,2,20),(81,22,21),(82,58,55),(83,2,57),(84,23,45),(85,8,3),(86,11,39),(87,27,45),(88,20,20),(89,29,36),(90,30,8),(91,35,26),(92,41,2),(93,17,6),(94,42,49),(95,11,43),(96,8,32),(97,3,5),(98,27,5),(99,1,50),(100,50,9);
/*!40000 ALTER TABLE `airports_airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Lake Asaview',58),(2,'Prosaccoview',47),(3,'Port Oswaldview',13),(4,'Lennahaven',97),(5,'Starkfort',84),(6,'Port Sandrine',9),(7,'Port Daren',5),(8,'Bahringerside',21),(9,'McCulloughburgh',33),(10,'West Krystinaburgh',74),(11,'Lake Breanne',38),(12,'New Kameron',38),(13,'Ornland',79),(14,'Vicentaside',63),(15,'New Myleschester',6),(16,'Bayerfort',50),(17,'North Mohamedshire',31),(18,'Lake Susiefurt',39),(19,'East Bennyland',25),(20,'Corkeryshire',87),(21,'North Zander',25),(22,'Omershire',75),(23,'Emmerichchester',31),(24,'West Kelliville',27),(25,'Daughertytown',54),(26,'South Toymouth',96),(27,'Kadefort',89),(28,'East Drake',45),(29,'Huelton',83),(30,'Barrowsside',10),(31,'South Madeline',89),(32,'Westonville',40),(33,'Lake Octavia',56),(34,'Felicitystad',2),(35,'Archside',36),(36,'South Karaville',40),(37,'Vellaberg',10),(38,'Lake Monserrate',41),(39,'Haleyberg',60),(40,'Lake Amandaside',43),(41,'East Marquesland',14),(42,'Dachmouth',98),(43,'Bayerchester',81),(44,'Fisherfurt',93),(45,'Missouriville',61),(46,'Port Alexzander',87),(47,'Williamsonfort',43),(48,'East Velva',91),(49,'Kihnhaven',25),(50,'Pattieborough',67),(51,'Carrollborough',77),(52,'Corneliusville',50),(53,'Candidaview',41),(54,'Rippinport',8),(55,'Collinsport',76),(56,'Josefinamouth',95),(57,'North Coltburgh',3),(58,'Lake Felicitashire',65),(59,'East Dagmar',40),(60,'Kaylinfort',86),(61,'Shanelview',74),(62,'Friesenberg',28),(63,'Haliestad',25),(64,'Lynnville',30),(65,'Grimeshaven',29),(66,'East Kaleigh',61),(67,'Haleyview',70),(68,'Jayceside',39),(69,'New Lilaside',1),(70,'South Adityaburgh',29),(71,'Litzychester',82),(72,'Ornview',15),(73,'Molliefort',27),(74,'New Barryhaven',62),(75,'West Giovannibury',7),(76,'New Elisha',87),(77,'North Brannon',48),(78,'Victoriamouth',50),(79,'Hilllport',77),(80,'Taureanfort',73),(81,'West Brooks',17),(82,'Gustside',54),(83,'Coleview',22),(84,'Dibbertfurt',57),(85,'West Mike',61),(86,'Merlinchester',98),(87,'Philipville',52),(88,'Nitzscheton',64),(89,'New Bria',62),(90,'Purdymouth',91),(91,'Zemlakville',49),(92,'Lake Ewald',36),(93,'Lake Keeley',19),(94,'East Dion',74),(95,'New Velma',66),(96,'Borerbury',47),(97,'East Leraland',34),(98,'West Beatricefort',35),(99,'West Coleman',86),(100,'New Sheridan',35);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Japan'),(2,'Svalbard & Jan Mayen Islands'),(3,'Paraguay'),(4,'Saudi Arabia'),(5,'India'),(6,'Nigeria'),(7,'Eritrea'),(8,'Turkey'),(9,'Indonesia'),(10,'Japan'),(11,'Switzerland'),(12,'Heard Island and McDonald Islands'),(13,'Costa Rica'),(14,'Angola'),(15,'Anguilla'),(16,'Antigua and Barbuda'),(17,'Korea'),(18,'Jordan'),(19,'Sweden'),(20,'Botswana'),(21,'Denmark'),(22,'Andorra'),(23,'France'),(24,'Denmark'),(25,'Nauru'),(26,'Syrian Arab Republic'),(27,'Senegal'),(28,'Qatar'),(29,'Botswana'),(30,'Poland'),(31,'Australia'),(32,'Liechtenstein'),(33,'Morocco'),(34,'Macedonia'),(35,'Lithuania'),(36,'Croatia'),(37,'Saint Lucia'),(38,'Benin'),(39,'Ecuador'),(40,'Algeria'),(41,'Guadeloupe'),(42,'Mongolia'),(43,'New Zealand'),(44,'Mauritania'),(45,'Albania'),(46,'Hong Kong'),(47,'Saint Kitts and Nevis'),(48,'Iran'),(49,'Dominican Republic'),(50,'Algeria'),(51,'New Caledonia'),(52,'Tuvalu'),(53,'Grenada'),(54,'Cuba'),(55,'Gibraltar'),(56,'Canada'),(57,'South Georgia and the South Sandwich Islands'),(58,'Saint Martin'),(59,'Serbia'),(60,'Morocco'),(61,'Uganda'),(62,'Sri Lanka'),(63,'Indonesia'),(64,'Maldives'),(65,'Jamaica'),(66,'Bhutan'),(67,'Eritrea'),(68,'Hungary'),(69,'Cocos (Keeling) Islands'),(70,'Tuvalu'),(71,'Anguilla'),(72,'Guinea'),(73,'Azerbaijan'),(74,'Monaco'),(75,'Cayman Islands'),(76,'Saudi Arabia'),(77,'Lesotho'),(78,'Cook Islands'),(79,'Swaziland'),(80,'Turks and Caicos Islands'),(81,'United Arab Emirates'),(82,'Ethiopia'),(83,'Gibraltar'),(84,'Jamaica'),(85,'Croatia'),(86,'Netherlands Antilles'),(87,'Tunisia'),(88,'Marshall Islands'),(89,'Pitcairn Islands'),(90,'Armenia'),(91,'Spain'),(92,'Canada'),(93,'Cambodia'),(94,'Saint Helena'),(95,'Dominica'),(96,'Guatemala'),(97,'Norfolk Island'),(98,'Singapore'),(99,'Albania'),(100,'Saint Pierre and Miquelon');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_booking_requests`
--

DROP TABLE IF EXISTS `flight_booking_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_booking_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_airline_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `date_from` date DEFAULT NULL,
  `date_too` date DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_airline_id`),
  KEY `target_airline_id` (`target_airline_id`),
  CONSTRAINT `flight_booking_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flight_booking_requests_ibfk_2` FOREIGN KEY (`target_airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_booking_requests`
--

LOCK TABLES `flight_booking_requests` WRITE;
/*!40000 ALTER TABLE `flight_booking_requests` DISABLE KEYS */;
INSERT INTO `flight_booking_requests` VALUES (3,8,'declined','1990-04-24 01:33:06','2021-08-21 13:10:29','1999-04-15','2002-10-28'),(3,17,'requested','1975-05-31 18:01:01','2007-12-06 03:24:42','2006-02-12','1993-08-02'),(5,54,'requested','1995-01-11 00:38:17','2010-07-18 23:04:28','1995-10-30','1998-08-31'),(7,20,'declined','2005-04-21 22:56:31','2020-11-01 08:13:03','1989-12-31','2008-02-20'),(11,14,'requested','2006-11-01 19:06:13','1986-10-29 12:27:02','2021-06-21','2014-10-19'),(11,17,'approved','2015-01-14 05:59:59','2016-10-17 23:52:51','1975-07-22','2014-01-25'),(11,32,'approved','2010-11-30 18:20:43','1976-01-08 23:11:46','2008-07-12','2009-05-10'),(13,5,'declined','2000-06-14 20:35:04','1990-12-09 05:17:53','2013-07-28','1983-10-07'),(14,8,'declined','2008-05-17 10:41:03','1993-01-26 20:57:02','2020-03-27','1981-12-06'),(14,57,'approved','1995-06-19 19:06:45','2015-07-20 16:24:00','2016-06-20','1990-02-22'),(17,16,'requested','1982-01-01 06:17:16','1993-07-07 18:50:33','2004-03-15','1991-11-14'),(20,3,'approved','2014-09-25 19:25:23','1990-04-27 06:19:51','1997-05-02','2000-07-13'),(20,20,'declined','1973-06-11 02:59:18','1980-04-20 14:07:07','1994-06-04','1983-08-19'),(21,24,'requested','1985-11-25 01:06:25','1971-04-19 05:15:36','1984-06-12','2014-02-01'),(21,28,'approved','1991-05-31 00:27:02','2013-01-30 23:56:27','2006-12-07','2003-08-24'),(22,25,'approved','1979-11-20 21:49:02','1973-12-27 03:21:02','1984-11-09','1973-07-10'),(22,39,'approved','2002-07-31 06:49:35','2002-02-03 20:06:43','2015-06-15','1993-11-07'),(22,42,'declined','2013-02-10 00:44:19','1974-10-25 09:22:17','2005-04-08','2004-07-15'),(25,4,'declined','1975-02-14 06:06:17','2016-01-05 17:12:53','1997-06-09','2000-06-04'),(27,58,'declined','1996-05-29 18:29:04','1990-03-04 20:01:55','2013-03-04','2010-05-19'),(28,33,'approved','2007-11-19 21:48:58','1980-11-09 07:42:56','1970-10-20','1977-12-20'),(31,23,'approved','1971-06-15 01:58:30','1991-11-11 11:40:08','1986-11-22','1982-08-03'),(31,32,'requested','2014-10-21 19:36:07','1970-04-19 20:43:34','2017-07-12','2009-06-06'),(32,9,'approved','1973-07-14 00:05:51','2000-08-30 06:32:11','2004-01-11','1981-09-13'),(34,51,'declined','2016-07-24 02:39:44','1992-10-02 04:58:13','1997-12-01','1982-04-02'),(35,22,'requested','2008-05-08 17:06:31','1992-10-17 03:32:49','1997-02-28','2013-06-01'),(35,38,'declined','2001-12-18 04:30:49','1972-08-21 23:19:32','2019-04-22','2021-05-18'),(37,14,'declined','1987-12-06 05:48:43','2008-12-10 16:13:14','1973-06-12','1996-04-13'),(39,27,'declined','2003-09-07 10:38:50','2018-04-23 07:34:10','2015-08-21','2007-07-10'),(39,28,'declined','1995-05-02 05:01:23','2014-10-27 21:08:58','2012-05-11','1981-01-18'),(42,6,'approved','2013-07-15 05:28:25','1998-12-13 17:04:52','1977-10-21','1974-06-12'),(44,25,'requested','2019-07-31 10:43:32','2000-10-12 10:38:34','2021-02-05','1984-07-30'),(48,30,'requested','1979-11-23 17:38:22','1972-09-03 13:51:56','2007-07-04','2008-02-29'),(49,25,'approved','2000-02-11 06:04:07','2003-08-26 03:49:35','1989-04-08','2017-06-21'),(49,34,'approved','2013-06-05 06:55:27','1989-11-08 07:04:59','2012-11-26','1977-11-17'),(49,59,'declined','2021-03-15 19:54:29','1974-10-31 06:33:41','1971-05-13','1981-06-19'),(50,21,'approved','2017-01-25 19:14:11','1983-02-17 18:30:22','1973-12-05','1974-06-19'),(51,41,'declined','1980-10-02 04:08:52','1984-07-02 03:03:39','1982-03-01','1999-04-13'),(52,10,'approved','1983-10-31 12:34:40','1999-11-12 15:45:17','1983-07-23','2007-08-08'),(52,60,'declined','1996-01-25 12:35:55','2017-04-22 21:54:30','1994-01-04','2002-09-20'),(53,42,'requested','2004-04-03 01:30:58','1988-08-19 17:21:06','2012-05-06','2021-09-24'),(53,53,'approved','2014-01-31 06:59:00','2013-10-28 23:10:52','2014-05-14','2005-09-14'),(54,10,'approved','1971-05-26 14:29:05','2021-03-15 23:17:36','2002-05-05','1995-06-12'),(54,32,'approved','1979-12-18 14:57:44','1983-06-10 22:58:21','2018-09-12','1981-08-16'),(54,40,'declined','1984-11-08 01:17:02','2019-03-22 20:45:44','2004-11-08','2016-05-25'),(55,44,'approved','1978-09-30 16:30:19','1974-08-20 22:54:34','1982-10-01','2020-08-28'),(57,5,'requested','2018-07-28 06:30:44','1971-10-23 14:37:52','1985-12-30','2006-07-21'),(57,54,'declined','1994-09-04 08:58:36','1982-09-11 12:37:45','2017-01-05','1971-01-20'),(59,15,'declined','2012-10-19 05:32:58','1977-06-23 17:28:33','1999-04-08','1976-11-14'),(59,28,'requested','1975-05-04 15:08:29','2000-03-10 06:22:13','1994-09-06','2017-04-18'),(60,30,'declined','1971-09-10 07:15:28','1989-06-10 15:19:30','1978-07-05','2009-03-31'),(61,26,'approved','1980-11-25 02:46:25','1975-09-24 22:40:48','2021-01-31','2012-07-02'),(63,26,'approved','1989-01-09 23:20:33','2001-12-22 18:16:01','1998-11-23','2004-06-02'),(64,59,'declined','1981-03-07 16:07:43','2000-09-28 23:20:00','2018-04-21','1984-06-06'),(65,15,'approved','1982-03-21 04:56:20','1989-09-15 13:03:23','1985-11-18','2001-08-15'),(66,6,'approved','1972-09-27 03:15:18','2018-05-23 22:01:11','2012-08-22','2015-07-06'),(66,31,'approved','1970-12-26 15:34:39','1986-06-20 20:56:17','2007-01-04','2002-08-19'),(66,41,'declined','1993-03-05 15:05:09','1980-08-16 23:44:41','1974-05-20','1986-03-28'),(67,45,'declined','2017-08-10 03:24:56','2011-09-18 08:34:51','1998-03-19','1991-03-06'),(69,36,'requested','2006-08-10 01:51:41','2018-07-03 13:04:55','1978-11-12','1980-02-06'),(69,47,'declined','1972-09-25 11:21:02','2020-06-23 21:38:34','1972-09-19','1982-10-24'),(71,4,'approved','2018-08-15 20:27:25','1989-12-01 00:24:21','1979-12-09','2000-08-08'),(71,20,'declined','1980-03-04 07:51:09','2021-01-09 08:13:18','1988-09-18','2016-03-28'),(72,36,'declined','1972-12-26 09:10:33','1988-07-27 15:15:23','2007-09-28','1977-12-22'),(74,20,'declined','1985-08-09 07:51:16','2003-01-14 00:12:18','1991-05-24','1990-02-15'),(74,55,'declined','2020-02-02 21:46:11','1972-05-27 17:27:39','2007-07-10','2010-08-02'),(75,45,'requested','1989-02-14 23:02:14','1985-03-08 02:02:35','1985-07-22','1976-09-17'),(76,55,'approved','2013-08-03 00:40:15','2016-04-25 13:18:42','2007-11-09','1985-02-12'),(77,22,'declined','2010-05-28 00:49:46','1990-12-06 05:42:23','2018-10-05','1973-05-12'),(77,26,'approved','2019-08-22 22:44:19','2008-02-09 02:10:36','1995-08-26','2009-09-05'),(77,28,'approved','1984-06-09 22:24:45','2014-01-28 01:11:32','2001-07-30','1984-09-28'),(77,31,'declined','1984-05-10 03:44:07','1993-10-17 12:02:19','2006-12-11','1995-02-23'),(78,27,'approved','1999-04-17 13:25:26','2013-07-13 19:12:00','1995-04-27','2007-03-21'),(78,43,'approved','1993-05-03 14:25:25','1972-06-12 10:13:59','1991-12-18','1986-12-17'),(79,11,'approved','2007-06-25 12:19:36','1971-11-24 13:17:08','2005-02-08','1994-03-31'),(79,28,'requested','1986-03-28 13:51:18','2009-09-03 07:47:32','1983-05-20','2001-12-18'),(80,41,'declined','2021-12-18 04:52:19','2001-07-25 07:24:39','1992-10-13','1979-03-31'),(83,10,'approved','2008-09-24 05:27:19','1983-03-21 23:52:09','1992-04-30','2007-09-01'),(83,32,'requested','1976-08-15 04:06:17','1995-07-22 21:04:49','1997-12-12','2012-08-23'),(85,3,'approved','2003-01-06 01:47:24','2004-04-10 15:19:48','2017-01-22','1983-06-14'),(85,9,'approved','1970-02-22 11:06:21','1981-06-26 02:09:30','1998-12-15','1975-12-20'),(85,12,'approved','1987-09-20 01:01:08','2004-09-05 12:05:12','1987-07-26','1975-11-15'),(88,21,'approved','2009-12-13 18:35:14','1998-09-24 08:14:57','2001-06-28','1987-01-21'),(88,37,'declined','1974-01-24 06:45:01','1979-10-17 14:15:25','1995-11-28','1995-12-07'),(88,49,'declined','1990-12-17 19:32:34','2022-04-05 16:49:36','2012-12-31','1975-10-12'),(91,22,'declined','2015-12-26 00:29:13','2002-08-13 01:01:27','1971-02-26','2015-05-27'),(91,41,'requested','1980-10-04 13:08:08','1972-10-19 13:38:38','2012-01-01','2020-10-09'),(92,21,'requested','1980-04-12 13:02:18','1990-03-19 21:08:33','2017-03-20','2020-02-10'),(92,32,'approved','1980-03-25 06:14:28','1994-09-11 17:01:36','1977-01-30','2005-12-02'),(93,5,'declined','2008-07-25 12:02:06','1977-08-08 16:35:00','1972-03-19','2005-05-15'),(93,30,'approved','1994-01-19 12:33:28','1980-07-02 13:16:17','1997-11-10','1980-01-31'),(94,19,'requested','2020-07-25 23:52:25','1986-09-22 03:12:26','2009-07-17','1975-05-19'),(96,55,'requested','1979-06-17 11:40:11','1973-02-09 19:09:35','1996-09-16','2020-02-09'),(97,4,'approved','1977-10-29 19:05:15','1996-09-12 04:52:17','2002-07-07','1982-09-30'),(97,19,'approved','1983-05-08 05:20:45','1973-08-30 18:58:39','2007-12-04','1971-08-11'),(98,36,'approved','2006-08-14 03:04:44','2011-05-17 00:13:13','2014-10-16','1988-07-22'),(99,12,'declined','2007-11-03 19:22:05','2010-08-22 16:19:21','2005-02-28','2010-01-03'),(99,33,'declined','1992-03-02 03:17:23','1978-11-24 04:02:51','1991-01-04','2022-01-16'),(99,46,'requested','1974-04-27 15:11:54','1999-09-21 22:04:37','2005-04-14','1975-07-14');
/*!40000 ALTER TABLE `flight_booking_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_booking_requests`
--

DROP TABLE IF EXISTS `hotel_booking_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_booking_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_hotel_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `date_from` date DEFAULT NULL,
  `date_too` date DEFAULT NULL,
  `amount` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_hotel_id`),
  KEY `target_hotel_id` (`target_hotel_id`),
  CONSTRAINT `hotel_booking_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hotel_booking_requests_ibfk_2` FOREIGN KEY (`target_hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_booking_requests`
--

LOCK TABLES `hotel_booking_requests` WRITE;
/*!40000 ALTER TABLE `hotel_booking_requests` DISABLE KEYS */;
INSERT INTO `hotel_booking_requests` VALUES (3,88,'declined','1980-06-15 05:55:03','1979-09-19 12:55:20','1975-09-12','1986-04-26',4431),(6,38,'requested','1996-11-20 16:28:25','2020-10-12 12:09:41','1999-01-13','1983-09-03',3941),(7,22,'requested','1972-12-10 22:57:29','1981-02-04 02:19:22','2011-11-29','2013-10-11',259),(7,24,'approved','1981-07-12 13:22:40','2015-10-11 13:29:44','2007-11-16','2017-04-06',3227),(7,40,'declined','1973-01-22 18:19:20','1980-08-03 14:52:28','2002-01-13','1973-01-07',4526),(9,6,'requested','2014-10-31 21:58:31','2021-06-10 19:00:05','1986-11-19','1983-01-21',4644),(9,33,'approved','1975-12-13 16:16:03','1978-05-15 05:06:24','2008-01-24','1999-04-27',1032),(9,76,'declined','1994-01-16 05:24:20','2000-12-22 15:52:43','1981-06-30','1992-03-18',3889),(11,34,'approved','2002-05-27 13:53:43','2016-10-01 16:36:49','1972-08-19','2020-05-30',3826),(11,38,'declined','2015-02-06 16:02:21','1991-09-11 17:01:53','2003-04-06','1998-01-15',493),(13,86,'declined','2016-05-09 20:39:48','2021-10-07 22:59:07','2014-08-07','2003-09-25',879),(14,55,'approved','1982-12-06 12:28:23','1993-09-09 07:01:46','1998-07-16','1997-12-19',630),(16,68,'requested','2001-08-08 20:34:45','1982-11-04 12:13:09','1990-06-17','1971-09-12',1558),(16,92,'declined','1980-02-27 01:00:13','1972-09-05 06:37:43','2018-11-11','2007-08-15',1904),(17,13,'declined','2003-12-23 20:37:24','1990-07-27 11:52:05','2010-07-30','1975-02-28',680),(18,25,'declined','1984-06-17 22:16:26','2014-10-18 22:27:52','2015-11-03','1970-01-17',4779),(18,66,'declined','1979-05-27 10:38:32','1981-05-01 15:05:31','2009-08-13','1986-12-31',1335),(20,8,'requested','1987-10-25 16:43:46','1992-03-27 09:21:16','1996-07-24','1977-05-15',4794),(20,71,'approved','1975-05-15 11:14:38','1996-03-09 14:15:10','1977-03-23','1978-02-27',328),(21,64,'requested','1973-04-17 17:17:21','2016-06-27 19:46:02','1971-04-09','1971-09-10',1591),(21,81,'declined','2017-08-19 04:40:22','1984-10-06 10:34:45','1991-11-30','2011-11-03',462),(22,65,'approved','2002-07-13 23:20:42','2010-02-11 09:28:39','2007-08-05','1978-09-09',3833),(22,85,'approved','1988-05-10 12:51:45','1985-05-19 03:47:28','1975-04-01','2018-04-02',1639),(24,55,'approved','2010-01-21 14:02:19','1997-07-19 15:53:49','1986-03-31','1981-04-16',4972),(26,35,'requested','2021-01-25 05:37:14','2017-05-24 07:06:02','1988-09-01','1970-08-08',4182),(27,25,'approved','2015-09-14 15:03:43','2021-11-23 06:00:46','2021-11-20','2000-09-30',2135),(28,31,'approved','2010-07-11 07:29:51','2012-06-20 21:26:59','1992-07-08','1978-01-26',3097),(29,88,'approved','2019-04-26 00:22:24','2016-11-09 23:13:19','2014-02-03','2012-05-11',4128),(30,39,'requested','2016-01-14 21:49:05','2017-11-12 19:40:06','1982-08-30','2003-07-07',571),(30,47,'requested','2003-10-05 15:08:08','1999-12-22 19:38:38','1993-07-21','1981-05-09',215),(32,1,'approved','1973-03-04 01:06:17','1973-02-21 04:00:57','2007-02-05','2021-07-11',1714),(32,22,'declined','2019-10-08 02:08:28','2017-04-18 01:24:25','1993-12-13','1979-05-12',3441),(35,17,'approved','1995-10-17 11:51:09','2005-06-13 02:43:46','2001-11-22','1975-04-11',2491),(36,18,'approved','1993-03-25 00:31:45','2019-11-18 15:06:15','2000-11-04','2020-01-31',237),(36,81,'declined','1983-07-21 17:48:06','1995-05-22 01:32:25','1992-08-15','1998-09-14',3716),(37,2,'requested','1983-05-03 04:38:04','2001-03-20 23:41:28','2020-04-09','1979-10-20',114),(39,87,'requested','1986-02-21 03:01:15','2010-10-01 20:03:54','2012-10-13','1976-05-13',3621),(40,56,'declined','1987-07-02 12:38:45','2007-04-28 03:48:22','1974-06-25','2004-09-24',3099),(40,63,'requested','1989-08-24 23:44:05','2007-07-07 15:04:35','1993-06-13','1999-01-28',2898),(41,71,'declined','2015-08-19 05:10:44','1971-07-06 15:39:16','2018-11-17','1995-02-13',43),(41,78,'declined','1995-11-28 00:02:40','2016-06-12 09:28:56','1976-04-22','1979-07-26',3858),(41,93,'declined','2005-12-08 07:38:16','2002-12-17 07:18:38','1996-08-06','1998-07-13',1767),(42,19,'declined','2012-08-20 14:30:25','1979-12-25 04:08:16','1978-04-13','2014-01-07',3196),(42,66,'requested','1982-10-21 23:00:10','1977-11-03 12:24:28','1987-03-20','2007-09-06',3857),(42,73,'approved','1980-03-17 07:19:52','2000-03-06 04:56:44','1977-12-29','2010-03-05',3332),(43,65,'approved','1980-02-02 04:47:10','2006-03-16 07:56:33','1989-05-07','2021-10-03',3826),(43,90,'declined','2010-05-09 07:27:41','2017-07-22 15:48:34','1996-01-28','1973-08-20',2670),(44,71,'approved','2016-05-03 07:08:25','1984-01-28 07:23:22','2004-01-03','2010-02-23',4867),(45,18,'requested','2002-12-28 22:51:14','2018-10-05 02:06:31','2010-01-07','1980-10-22',1554),(47,23,'requested','2020-10-11 10:24:18','1972-08-12 00:24:44','2007-01-05','2009-01-16',642),(47,30,'requested','2017-04-14 19:08:01','2001-12-24 17:17:05','2003-03-04','2011-05-12',1936),(47,99,'approved','1997-09-21 03:29:26','1996-06-02 08:36:03','2004-02-06','2004-02-14',3504),(48,6,'approved','2007-10-31 05:02:15','2019-02-18 00:19:33','1972-08-30','2012-02-21',507),(49,53,'requested','1988-03-22 23:58:56','2014-07-15 12:27:40','1994-06-23','1979-10-21',3080),(50,77,'declined','1972-11-29 20:38:25','1990-02-04 08:03:22','1998-10-21','1989-02-24',2983),(50,99,'declined','2013-10-20 13:55:34','2005-01-03 22:50:54','2014-03-11','1994-07-03',4818),(51,6,'approved','1975-06-02 14:53:58','1995-03-24 08:22:10','1992-12-20','2019-08-11',3570),(51,19,'requested','2016-02-26 10:58:46','2000-01-23 09:15:47','2019-11-30','2005-04-12',704),(51,92,'approved','2002-09-08 08:20:18','1986-03-30 19:40:07','2018-02-08','2001-04-02',4333),(55,19,'requested','2013-09-28 04:47:56','2013-05-08 06:14:32','2001-04-17','2009-02-22',2811),(55,28,'requested','2017-08-29 14:28:59','1989-01-07 20:39:49','1975-09-03','1975-07-09',188),(56,59,'declined','1987-02-17 09:34:29','2006-12-27 06:50:10','1991-03-10','2010-06-04',858),(59,1,'declined','1994-02-18 02:59:59','2019-07-09 00:51:50','2009-12-31','1985-10-26',1399),(59,11,'declined','1988-08-06 23:15:27','1976-05-09 10:39:03','2010-12-20','2002-12-24',1264),(60,7,'approved','1984-07-11 21:59:44','1983-03-27 05:10:07','1985-08-21','1970-02-07',3062),(60,16,'requested','2015-08-25 09:43:35','2019-09-12 09:41:57','2007-07-04','1985-11-01',3992),(61,73,'approved','1996-12-02 07:33:57','1992-07-02 23:09:49','2009-05-10','1984-04-28',730),(63,22,'declined','2014-04-04 01:07:10','1990-07-24 01:31:17','2004-11-06','2002-04-22',35),(64,14,'approved','1988-04-29 03:23:27','1992-04-01 01:43:22','1993-10-07','2002-07-15',2387),(67,69,'approved','2005-10-21 08:59:13','2016-11-11 01:50:35','1974-06-21','1986-08-28',4433),(67,86,'approved','1983-04-26 06:32:26','1974-07-15 21:21:57','2018-03-05','2013-01-15',3000),(69,58,'approved','2006-09-27 07:39:19','1992-01-21 23:14:08','2009-03-25','1983-03-16',1438),(71,13,'declined','1974-05-30 20:11:56','1978-02-03 20:54:04','2002-02-06','2008-10-01',3386),(71,78,'declined','2013-04-02 21:15:35','1981-05-14 16:34:17','2010-03-06','1981-09-30',1468),(72,9,'declined','2016-06-29 17:26:55','2002-08-09 01:46:35','2002-07-22','1981-09-26',3506),(72,28,'approved','1999-11-12 12:31:47','1997-07-08 10:33:14','1970-07-29','1996-06-26',2698),(72,69,'declined','2010-07-29 13:12:21','2013-04-01 17:47:21','2009-03-11','1989-05-17',1173),(74,98,'approved','2009-04-08 07:29:15','2018-02-06 17:38:42','2009-03-17','1994-09-28',3333),(77,91,'requested','2015-12-24 19:44:05','1971-06-21 03:53:10','2021-01-24','2021-07-01',2762),(78,72,'requested','1988-12-10 17:28:08','1975-05-14 17:17:40','2000-06-16','1984-04-14',1217),(79,18,'declined','2015-06-25 03:21:20','1980-11-09 16:58:32','2001-12-02','1972-10-03',1486),(80,17,'declined','2003-01-27 03:31:55','1985-10-27 18:32:24','1991-01-31','1978-08-06',342),(81,37,'declined','1977-05-09 21:07:52','1998-11-02 18:46:20','1972-03-05','1991-03-27',2549),(81,64,'declined','1976-09-03 04:21:49','1998-12-03 21:14:42','1978-01-29','2013-04-07',3063),(82,96,'approved','1982-06-07 00:25:29','2017-01-19 16:18:50','2004-01-31','1971-05-29',471),(85,13,'declined','2001-12-04 23:30:02','1990-10-08 13:35:53','2004-06-07','1988-02-03',1755),(86,20,'requested','1996-02-04 00:37:45','1999-09-28 09:00:39','1991-02-13','2009-06-05',4331),(87,26,'requested','2016-05-10 19:01:45','2005-10-13 22:51:02','1982-07-01','1985-09-03',3591),(87,42,'approved','1985-04-12 00:41:17','1996-01-24 13:44:12','1980-09-07','1981-08-15',3238),(92,19,'requested','2005-07-12 07:14:21','2017-01-12 14:11:11','2022-05-16','1994-10-11',2435),(94,13,'requested','2020-06-23 11:07:20','2011-05-23 02:58:45','2006-08-11','1981-11-11',4197),(94,85,'approved','2016-01-29 22:44:18','1996-07-25 19:51:31','1994-02-23','2008-07-12',3923),(96,83,'declined','1999-02-06 09:05:16','1983-08-17 03:44:48','1982-09-08','1998-01-29',4225),(96,87,'requested','2002-11-28 00:24:47','2016-06-22 22:28:41','1993-09-12','2014-10-28',30),(98,20,'requested','2017-09-17 08:27:05','2021-01-18 14:40:25','2007-04-11','1985-09-17',1947),(98,28,'requested','2012-04-28 13:42:47','1993-08-21 07:56:29','1978-08-23','1979-06-23',3200),(98,79,'requested','2008-08-30 14:24:54','2005-07-20 20:31:40','1979-12-16','2000-03-10',1256),(98,84,'requested','2021-08-15 07:56:17','2011-04-07 04:37:14','2009-11-28','1983-01-02',3540);
/*!40000 ALTER TABLE `hotel_booking_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_prices`
--

DROP TABLE IF EXISTS `hotel_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_prices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint(20) unsigned NOT NULL,
  `price_per_night` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `hotel_prices_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_prices`
--

LOCK TABLES `hotel_prices` WRITE;
/*!40000 ALTER TABLE `hotel_prices` DISABLE KEYS */;
INSERT INTO `hotel_prices` VALUES (1,89,4872),(2,81,413),(3,98,1521),(4,41,825),(5,64,4058),(6,24,3025),(7,37,4058),(8,44,3877),(9,90,1869),(10,70,1797),(11,80,142),(12,40,884),(13,79,3792),(14,51,1488),(15,67,2822),(16,91,3283),(17,14,427),(18,39,4804),(19,40,275),(20,88,3720),(21,10,3288),(22,78,3252),(23,98,1275),(24,91,1338),(25,51,4792),(26,56,4898),(27,1,128),(28,72,811),(29,39,2352),(30,43,4676),(31,45,2936),(32,28,916),(33,24,4696),(34,43,3558),(35,68,3822),(36,87,4605),(37,67,184),(38,4,4373),(39,31,4900),(40,56,2710),(41,74,1664),(42,10,3686),(43,96,1776),(44,53,1281),(45,61,3298),(46,63,2007),(47,43,1240),(48,74,2888),(49,1,4150),(50,83,17),(51,61,2891),(52,11,1581),(53,60,2224),(54,59,1663),(55,2,3383),(56,10,4901),(57,14,2104),(58,2,2501),(59,82,119),(60,52,2394),(61,45,441),(62,27,4184),(63,79,699),(64,68,3709),(65,70,4189),(66,47,132),(67,55,1941),(68,36,480),(69,51,2719),(70,86,812),(71,92,2903),(72,24,2467),(73,96,1740),(74,87,577),(75,76,2291),(76,56,4094),(77,49,439),(78,19,2058),(79,30,2647),(80,50,4897),(81,1,2535),(82,90,4886),(83,60,2317),(84,60,975),(85,49,73),(86,61,2659),(87,70,876),(88,62,4761),(89,63,2624),(90,51,3622),(91,14,1068),(92,8,710),(93,78,994),(94,93,4921),(95,76,142),(96,47,603),(97,39,1287),(98,30,3999),(99,82,973),(100,89,2183);
/*!40000 ALTER TABLE `hotel_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_reviews`
--

DROP TABLE IF EXISTS `hotel_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `grade` bigint(20) unsigned NOT NULL,
  `review` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `hotel_reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hotel_reviews_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_reviews`
--

LOCK TABLES `hotel_reviews` WRITE;
/*!40000 ALTER TABLE `hotel_reviews` DISABLE KEYS */;
INSERT INTO `hotel_reviews` VALUES (1,55,53,2,'Dolorem necessitatibus soluta eligendi eos rem et.'),(2,57,54,9,'Illo omnis quo ut pariatur fuga consequuntur nam.'),(3,68,32,7,'Ad sint voluptas dolores et voluptate velit.'),(4,54,31,3,'Nesciunt hic dolores inventore suscipit similique.'),(5,47,62,7,'Rerum nihil expedita et non inventore placeat.'),(6,26,70,9,'Qui maxime saepe quod sit optio voluptas reprehenderit debitis.'),(7,66,2,6,'Dolorem maxime numquam consequatur doloribus.'),(8,16,18,4,'Natus possimus velit aliquam nulla voluptatem eaque.'),(9,99,13,4,'Consequuntur illum consectetur labore.'),(10,47,30,7,'Incidunt facilis et aliquam odio.'),(11,65,25,6,'Autem debitis fugiat sit voluptatem labore assumenda animi soluta.'),(12,26,49,10,'Numquam corrupti aut ratione.'),(13,74,66,6,'Voluptatem minus dolorem et incidunt.'),(14,99,24,7,'Ullam reiciendis iure quod minima omnis in repellat suscipit.'),(15,95,87,7,'Dignissimos et delectus est iste qui.'),(16,30,49,4,'Hic non occaecati sapiente officia libero nemo.'),(17,39,86,3,'Et perspiciatis et sed quidem consectetur eaque excepturi.'),(18,3,6,8,'Inventore qui iste quia et et.'),(19,18,57,8,'Eum dicta adipisci illum soluta voluptatum iure non quaerat.'),(20,36,64,7,'Saepe atque impedit odit id.'),(21,18,62,2,'Fugiat dolorem iusto eos at adipisci.'),(22,33,84,4,'Sit consequatur est et praesentium.'),(23,64,49,9,'Et atque ab deserunt laudantium quas.'),(24,2,62,5,'Labore doloremque eum eveniet reiciendis consequuntur aut.'),(25,61,48,6,'Quos alias rerum ut facere officiis beatae culpa sint.'),(26,91,26,8,'Nihil laudantium quis inventore.'),(27,72,17,2,'Amet quaerat fugiat dolores voluptatibus enim.'),(28,74,46,5,'Culpa numquam doloribus impedit qui natus blanditiis.'),(29,83,73,7,'Aliquam quia molestiae iusto praesentium.'),(30,70,77,8,'Eius ut et rem sit.'),(31,59,99,7,'Modi ut sint quaerat officiis voluptas voluptates veniam.'),(32,26,97,8,'Inventore voluptas officia error veniam accusamus quia.'),(33,84,29,6,'Quo explicabo eligendi voluptatem molestias.'),(34,3,1,10,'Quaerat qui ut expedita et ipsam molestiae voluptatem.'),(35,85,39,4,'Laboriosam dolor consequatur saepe nisi aliquam.'),(36,65,3,7,'Et commodi aut amet delectus dolorem.'),(37,1,98,3,'Ea sequi totam mollitia debitis possimus perferendis beatae.'),(38,87,64,7,'Laboriosam atque maiores eos sunt ea quibusdam veniam.'),(39,46,88,3,'Repellendus iure quisquam impedit libero saepe cumque.'),(40,25,6,2,'Ullam omnis corrupti quia nihil ipsa est.'),(41,36,16,5,'Consequatur sed repudiandae reprehenderit iure.'),(42,31,8,6,'In nesciunt quia est qui consequatur voluptatibus.'),(43,32,5,4,'Accusantium ipsa in vel ipsum fugiat qui recusandae.'),(44,53,14,2,'Quia velit accusantium qui sequi quis quia ex.'),(45,78,22,6,'Provident vel iste praesentium aliquid consequuntur eius.'),(46,91,36,4,'Voluptates consequatur et quidem.'),(47,20,16,6,'Perferendis natus ut aut vel voluptatem delectus provident.'),(48,33,4,8,'Aut quia ducimus non.'),(49,44,36,5,'Accusamus inventore omnis maiores repellendus in cum atque.'),(50,5,29,4,'Laudantium dolorum quod et vitae tempora et.'),(51,74,69,6,'Earum est cupiditate vel sed ut illo.'),(52,31,74,6,'Perspiciatis aut enim ducimus laudantium.'),(53,67,17,4,'Odit deserunt impedit ex molestiae exercitationem dolores qui.'),(54,38,12,10,'Ab est perferendis iure dignissimos id eveniet omnis.'),(55,4,63,2,'Non reprehenderit dolor et maxime cum omnis accusamus.'),(56,18,39,7,'Natus quam deserunt alias quia et illo corrupti.'),(57,78,49,3,'Nulla itaque cum suscipit nihil eaque magnam.'),(58,46,9,6,'Sapiente illo ab et rem laudantium est vel.'),(59,53,99,8,'Delectus quia ut explicabo consequatur esse velit.'),(60,23,30,2,'Sequi voluptatem fugit ab dolorem.'),(61,20,13,10,'Sequi dolor aspernatur blanditiis.'),(62,66,40,1,'Eum consectetur possimus enim voluptatem eum exercitationem quo repudiandae.'),(63,28,98,4,'Sed totam culpa quae distinctio in soluta alias sed.'),(64,43,72,6,'Aut impedit unde vel animi.'),(65,33,48,1,'Iusto placeat accusantium quam expedita qui nulla.'),(66,100,7,7,'Illum veritatis eos adipisci.'),(67,17,30,6,'Qui quis ad aut fugit magnam enim.'),(68,80,83,2,'Velit debitis saepe et aut architecto iure aspernatur.'),(69,47,18,9,'Earum sunt ex aut aperiam est.'),(70,94,50,5,'Dignissimos omnis repellat quisquam.'),(71,80,12,6,'Et repudiandae ullam corporis error pariatur.'),(72,88,57,7,'Dolores nemo reprehenderit aut facilis iusto.'),(73,60,34,2,'Veniam voluptates velit et.'),(74,66,12,5,'Minima explicabo unde quisquam veritatis accusantium incidunt quam.'),(75,32,88,7,'Itaque qui molestiae alias quo ea dolorem voluptatum provident.'),(76,42,52,5,'Doloremque occaecati maiores voluptatibus enim voluptate.'),(77,100,7,6,'Est sed ex dolorem id.'),(78,91,28,2,'Sint quos commodi molestiae tenetur est.'),(79,5,34,3,'Aspernatur praesentium expedita quas magnam totam eveniet.'),(80,99,37,5,'Exercitationem dolorem facere aut vitae eaque.'),(81,81,99,7,'Cum rem aut corporis nihil nihil possimus.'),(82,44,97,8,'Id id perferendis recusandae aut est aspernatur in voluptatem.'),(83,29,24,2,'Nostrum quis voluptatem est aut.'),(84,80,75,10,'Doloremque culpa eum dolorum quo fuga.'),(85,41,74,2,'Aperiam ut unde autem odio temporibus similique aut.'),(86,24,20,2,'Sed voluptatem architecto a beatae sunt ut veritatis.'),(87,85,12,3,'Quia velit est labore.'),(88,77,44,3,'At excepturi in ratione quam aperiam iusto minima et.'),(89,46,42,10,'Dolorem sed voluptas omnis veniam commodi fugiat ut.'),(90,55,77,8,'Quae officia nulla non cumque labore.'),(91,29,97,4,'Corporis ducimus deleniti laboriosam.'),(92,28,29,2,'Ut id rerum saepe est.'),(93,4,19,6,'Tempora consequatur voluptas quae ut.'),(94,57,8,6,'Dolor harum earum voluptas assumenda blanditiis quis dolorem.'),(95,52,56,6,'Eaque fugiat molestias laboriosam numquam nihil.'),(96,45,33,8,'Eligendi quas ea odit et dicta itaque veritatis.'),(97,54,88,4,'Enim quis sed eligendi nam voluptates qui.'),(98,30,82,2,'Qui rem nisi temporibus error omnis quisquam.'),(99,11,9,2,'Quia officiis sed aut dignissimos quia ullam vel voluptates.'),(100,57,52,6,'Expedita natus sunt nihil praesentium consequatur quis vel.');
/*!40000 ALTER TABLE `hotel_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_stars`
--

DROP TABLE IF EXISTS `hotel_stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_stars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stars` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_stars`
--

LOCK TABLES `hotel_stars` WRITE;
/*!40000 ALTER TABLE `hotel_stars` DISABLE KEYS */;
INSERT INTO `hotel_stars` VALUES (1,5),(2,3),(3,1),(4,4),(5,2);
/*!40000 ALTER TABLE `hotel_stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_type`
--

DROP TABLE IF EXISTS `hotel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_type`
--

LOCK TABLES `hotel_type` WRITE;
/*!40000 ALTER TABLE `hotel_type` DISABLE KEYS */;
INSERT INTO `hotel_type` VALUES (1,' hostel'),(2,' guesthouse'),(3,' villa'),(4,'hotel'),(5,' apartments');
/*!40000 ALTER TABLE `hotel_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_type_id` bigint(20) unsigned NOT NULL,
  `hotel_star_id` bigint(20) unsigned NOT NULL,
  `city_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_type_id` (`hotel_type_id`),
  KEY `hotel_star_id` (`hotel_star_id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`hotel_type_id`) REFERENCES `hotel_type` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hotels_ibfk_2` FOREIGN KEY (`hotel_star_id`) REFERENCES `hotel_stars` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hotels_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Lubowitz, Hayes and Kuhn','Repellendus quo harum nemo distinctio minima consequatur eius molestias. Nulla debitis aliquam architecto fugit. Ut fugit quia tempore est autem odit sit. Eligendi repellendus deserunt recusandae distinctio.',2,4,75),(2,'Raynor Inc','Voluptatibus ab ipsa laboriosam ut voluptate facere ut enim. Laudantium culpa similique aspernatur facere dignissimos dignissimos sunt dolores. Qui cumque et voluptatibus voluptatem et. Sit velit sit molestiae explicabo voluptas.',3,4,45),(3,'Gottlieb-Yost','Fugiat vel voluptatem dolores ea recusandae vel. Provident rerum quidem ducimus deserunt itaque at eligendi. In sunt rerum itaque pariatur sunt quaerat velit.',1,2,86),(4,'White Ltd','Alias ea et veniam ut et. Aut hic dolorum quis dolorem nihil laudantium. Beatae consectetur ullam commodi ipsam reprehenderit libero. Fugiat corporis rerum odit sint illo et rerum molestias.',5,3,38),(5,'Daniel, Marquardt and Donnelly','Voluptas numquam qui aut officiis non dolores dolores. Ut qui iusto reprehenderit. Sed est cum provident ipsum nesciunt. Rerum dolore cupiditate magnam voluptas eius.',5,5,98),(6,'Langworth, Jacobson and Fadel','Similique ex aut expedita. Deleniti ut fuga in doloremque maxime numquam non magni. Sit porro id enim quibusdam amet nemo laboriosam. Debitis expedita consectetur autem harum culpa.',5,4,44),(7,'Harber, Jakubowski and Kassulke','Corrupti deserunt eum dolor explicabo laborum. Velit voluptas consequatur blanditiis qui eveniet deserunt ut. Quos sequi velit et ea.',3,5,72),(8,'Littel-Boyer','Consequuntur recusandae dignissimos quia accusantium. Eos temporibus optio debitis expedita officia vero illum sed. Modi iste voluptas mollitia. Id sint sit suscipit autem ut totam quae.',2,3,9),(9,'Bergstrom-Swift','Consectetur non est voluptas totam. Distinctio mollitia iure saepe velit. Aut dolor voluptates dolores non enim aliquid vel. Ex assumenda dolorem veritatis.',4,1,44),(10,'Bartoletti-Daniel','Non laboriosam aut fuga reiciendis optio inventore. Sed eveniet aliquid ut accusamus molestias non aperiam. Adipisci consequuntur odit perspiciatis dolor est quis magni voluptates. Quidem qui vel molestiae similique ut. Id fugit molestiae quaerat laboriosam ab.',4,1,78),(11,'Little-Russel','Recusandae maiores maxime repudiandae occaecati. Totam excepturi adipisci et modi. Repellat rerum ut voluptatum atque.',2,3,55),(12,'Stracke and Sons','Eaque ea assumenda quia sit. Eum eveniet quas aut. Corrupti non vel qui ea quis totam non. Officia maxime non praesentium cumque est enim.',1,5,22),(13,'Prosacco-Collins','Consectetur quaerat accusamus sint iusto quia. Sed occaecati sunt molestiae. Deleniti non quis vitae explicabo quibusdam.',3,5,47),(14,'Heidenreich-Ullrich','Aliquam consequatur sed similique ad id. Omnis accusantium sed ut omnis non nesciunt at. Illum quis magni esse sequi quasi.',3,5,96),(15,'Luettgen-Dooley','Cum dolores in perferendis architecto repellendus pariatur. Culpa molestias quod culpa fugit. Quidem consequatur omnis illum id eum magni et voluptas. Doloremque aperiam aspernatur enim quisquam enim excepturi.',4,4,87),(16,'Willms-Paucek','Necessitatibus et ea inventore saepe autem qui quos. Aut similique ut fuga dolores. Et minus modi architecto aut expedita nihil.',4,4,52),(17,'Larkin, Fritsch and Strosin','Architecto deserunt fuga recusandae. Veniam rerum occaecati deleniti modi numquam et quia. Autem aut et expedita eos magnam.',2,1,35),(18,'Farrell, Bins and Nikolaus','Perspiciatis deleniti a debitis iste eos rerum dolores ullam. Earum perspiciatis et consequatur repudiandae doloribus voluptate quos. Iste temporibus alias non quas voluptas eum. Alias ipsum nesciunt ducimus quis.',5,3,89),(19,'Spencer Inc','Esse possimus dicta et at et consequatur est perspiciatis. Praesentium adipisci soluta labore voluptatem. Aut eum quisquam vitae qui earum.',1,1,98),(20,'Nolan-Tremblay','Hic sed soluta quisquam quo suscipit atque doloribus. Magni cum ipsum maxime laudantium ea reiciendis. Est eius et quasi.',3,5,14),(21,'O\'Hara Ltd','Nihil et et aspernatur harum at. Quasi explicabo reprehenderit debitis eos a. Suscipit at facilis aut maiores voluptas. Voluptatum dolor aliquam ipsum nulla vel voluptas et. Dolorem occaecati quas distinctio tempore officiis.',2,2,56),(22,'Gislason-Kris','Ut eum nulla hic non illo est omnis. Consequuntur aut repellat dolorem maiores quis molestias. Qui aut ab ad. Consequatur velit et quis nihil in explicabo.',4,3,39),(23,'Bayer, Tillman and Krajcik','Aperiam a pariatur voluptatem ut explicabo maiores impedit. Rerum voluptas quia dolorem ut possimus. Ratione voluptas cumque facere. Similique velit facere iure accusamus eos ab iste.',5,5,38),(24,'Collier-Bartoletti','Quo similique veritatis porro optio suscipit vitae velit. Eaque quo hic placeat temporibus fugit rem. Minus temporibus omnis numquam qui illum. Sit ex aut exercitationem dolorem velit laboriosam.',3,2,29),(25,'Pacocha and Sons','Inventore occaecati ratione iure. Maxime accusamus soluta voluptatem neque necessitatibus. Voluptates vero vitae id quidem. Totam ea laboriosam iste consequuntur.',3,1,5),(26,'Kunde, Borer and Lemke','Velit dolore molestiae sint possimus qui repellat facere. Beatae animi modi consequatur voluptas mollitia quisquam doloribus. Incidunt tempore et minima repudiandae modi.',2,5,73),(27,'Collins-Kertzmann','Reprehenderit enim excepturi iste minima sint sunt nihil. Repellat commodi eum unde sint rerum est. Ut cum sit sunt earum. Ad quis debitis suscipit accusamus aut.',4,1,89),(28,'Dibbert-Durgan','Sit libero provident velit dolore veniam aut. Rem illo quis blanditiis dolores totam est et. Rerum porro nam consequatur sit.',1,1,32),(29,'Nitzsche PLC','Perspiciatis et ut omnis qui quam dolorem molestiae. Eligendi placeat sequi sit nam omnis. Fugiat sint enim blanditiis quidem eum ipsam deserunt pariatur.',1,1,50),(30,'Ziemann-Nitzsche','Officiis cum omnis distinctio illo nihil sequi harum. Quis et illum nam. Quaerat consequuntur et qui rem sapiente.',5,3,42),(31,'Williamson, Cassin and Funk','Reprehenderit unde quo eveniet eos similique laboriosam. Autem sed natus soluta corrupti. Sed inventore consequatur necessitatibus dicta.',1,4,71),(32,'Hermann PLC','Esse earum quo totam autem incidunt. Et aut est aperiam. Odit error dolore molestiae praesentium deserunt quia dolores. Occaecati dolorem sit at dolore. Molestias veniam ex libero eligendi blanditiis molestiae.',4,3,13),(33,'Schultz Ltd','Sint quod quia explicabo quia quidem. Et eaque non magni veniam eum qui repudiandae aliquam. Consequatur quam quibusdam dolor ad et. Pariatur non officiis id id quaerat id est deserunt.',1,3,11),(34,'McDermott-Jast','Quae repellat est omnis dolor quia. Eaque voluptate expedita ab placeat fuga molestiae sint. Sequi est incidunt voluptas repellat. Rerum aut ex cupiditate dolorem nisi.',3,5,50),(35,'Breitenberg Ltd','Laudantium qui distinctio dolore sit illum. Rerum enim enim aut quis voluptatem praesentium quam. Provident quibusdam sequi inventore vel ex dicta nesciunt. Occaecati vel quas sunt sunt occaecati unde.',4,2,70),(36,'Greenholt, Ratke and Steuber','Nemo sunt impedit eveniet doloribus nihil et. Natus mollitia saepe at. Architecto omnis voluptates enim accusamus. Iusto fugit iure officia aperiam expedita.',4,4,66),(37,'Marquardt-Dietrich','Consequatur maxime cum et cumque. Nesciunt molestiae rerum non iste vero. Dolor voluptates iusto repellendus facilis consequatur impedit ullam. Ullam omnis maxime autem similique est in id quia.',3,3,83),(38,'Harber-Breitenberg','Aperiam sit quae est eos sed quia. Iure voluptatem quidem est sunt. Eaque qui deleniti rem rerum expedita ut. Voluptatem est unde consequatur distinctio quo voluptatem eum.',2,3,93),(39,'Boehm, Sanford and Altenwerth','Natus accusantium qui officia et. Et illum natus consectetur vitae amet dolorem necessitatibus. Ipsum nemo ipsa sit. Est deleniti voluptate reprehenderit id.',4,3,4),(40,'Trantow Inc','Sint quasi voluptatem doloremque porro ea dolore quis id. Repellat est maxime ut.',1,3,60),(41,'Abshire-Bednar','Deserunt quo ex ea incidunt et illo. Sed et sit ex qui molestias repudiandae.',3,4,38),(42,'Prosacco, Hills and Hamill','Similique blanditiis minima amet fugiat consequuntur. Eveniet in fuga exercitationem delectus. Provident reiciendis quidem odit et expedita quos et.',2,2,93),(43,'Schiller-Schamberger','Maiores molestias sed vero adipisci. Aliquid laboriosam repellendus facilis. Laboriosam voluptas distinctio ea occaecati qui eum aut. Autem non fugiat excepturi.',3,2,46),(44,'Harris-Tillman','Necessitatibus voluptas sint aliquam rerum. Facere animi quos consequuntur cumque quis. Et nobis debitis adipisci natus quos nobis veritatis. Et quis incidunt voluptate.',3,4,43),(45,'Funk, Jones and Lesch','Molestiae laborum est veritatis error sed asperiores consequatur et. At repudiandae magni culpa sint eos sunt corporis. Et qui fugiat et quis nesciunt dignissimos.',1,3,81),(46,'Schneider-Brakus','Minus eveniet voluptates ratione cum aliquid accusamus. Deserunt earum facilis ea atque. Voluptatem facere aut quisquam ea repellat magnam maxime. Est officiis laborum non voluptas.',4,2,45),(47,'Fay Group','Accusamus nesciunt nihil qui debitis quis illum. Nemo vero explicabo quisquam aut quas omnis dolores. Sed maiores provident labore ut. At nemo asperiores aut dolore qui.',2,4,87),(48,'Ruecker Group','Dolorum quas sequi velit corrupti. Eligendi totam itaque aut quo. Saepe explicabo eligendi sed quidem aperiam sit. Voluptatem eveniet non quaerat omnis commodi itaque voluptatum nisi.',1,1,42),(49,'O\'Hara Inc','Laborum dolor et voluptatem. Qui ut rerum voluptates dolorem et. Similique quasi itaque reiciendis.',1,4,96),(50,'Blanda-Bednar','Ullam minima quis sint asperiores dicta amet omnis laudantium. Sapiente omnis ut non velit eius voluptas quo culpa. Sapiente esse amet consequatur libero.',1,5,50),(51,'Kutch Group','Magnam ipsa atque quidem harum. Laudantium atque blanditiis sint cumque alias vero fugiat. Facilis non est et impedit quis aut voluptatem. Amet et quis ad.',4,3,14),(52,'Walter Ltd','Aut dolores nostrum sint modi repudiandae dolor. Quia quae magnam ut explicabo et.',1,5,46),(53,'Davis, Collins and Nicolas','Harum dignissimos accusamus dignissimos quo voluptates corrupti. Ullam veniam possimus facere dolor quidem voluptates. Quia excepturi pariatur aut ut sint.',1,2,82),(54,'Labadie-Cummings','Cumque et nihil sed laborum ut quod aut dolor. Aut blanditiis dolorem molestias. Odio rem incidunt quaerat nesciunt iste eos natus eos. Fugit quidem est quo itaque.',3,5,61),(55,'Hauck LLC','Sed expedita officia asperiores esse voluptas rem. Ut in quod iste officia. Aut doloribus asperiores ea officiis non. At omnis ipsam voluptates ut laboriosam.',5,5,12),(56,'Armstrong, Mante and Beahan','Molestiae hic fugiat vel et voluptatem nesciunt eaque. Aut architecto voluptate consequatur impedit porro. In esse unde temporibus quos.',4,3,38),(57,'Walter Inc','Id cumque voluptatem vitae dolor sit dolor. Magni occaecati quo est corporis et. Exercitationem explicabo quis fuga minus assumenda. Facilis neque sint voluptas dignissimos.',1,5,13),(58,'Waters-Runolfsson','Aliquam sit ut et omnis repudiandae exercitationem. Autem harum accusamus necessitatibus est. Molestias quam qui temporibus asperiores doloribus eos aspernatur. Omnis vitae voluptas sunt est quis consequatur.',1,1,24),(59,'Gutmann Group','Fugiat neque itaque nesciunt minima eligendi porro. Ratione aperiam expedita dolorem dolorum saepe quibusdam sint. Dolorem fugiat aspernatur non adipisci.',3,2,4),(60,'Thompson Ltd','Eum rerum porro rerum impedit quis nulla. Alias est consequatur atque amet impedit dolorum saepe. Sit magni est maiores voluptate. Sed dolores dolorem omnis doloremque doloremque laboriosam eveniet sint.',3,3,1),(61,'White-Schmitt','Dignissimos explicabo qui eius excepturi nesciunt alias. Est autem omnis rerum cum. Qui ratione ratione laudantium quaerat fugiat sed sequi.',5,1,57),(62,'Borer, Baumbach and O\'Hara','Sit est earum occaecati voluptatem. Rem qui ut deleniti quos possimus. Explicabo incidunt et quia labore iure non. Mollitia fugiat deleniti occaecati delectus in sed. Ipsa rerum et vitae dolores.',1,2,43),(63,'Kemmer-Mertz','Iste veritatis eos esse et doloribus corrupti. Iste odio dolorum delectus sit corrupti rerum at est. Non dicta numquam delectus architecto porro. Nesciunt consequuntur eaque id suscipit adipisci quia nostrum.',3,2,71),(64,'Reichert, Towne and Yost','Eius veritatis ducimus fugiat perferendis doloribus nisi. Sint eum non et laudantium dolorem. Quaerat quia recusandae non cumque. Et explicabo qui expedita odio consequuntur laborum.',2,5,51),(65,'Pagac Inc','Velit laborum autem sed autem sunt esse iste. Labore et voluptatem optio rerum dolore iure nostrum. Cum dolorum dolor ullam in numquam vel ut suscipit.',5,5,34),(66,'Marquardt-Johnston','Eum deleniti porro necessitatibus. Veniam numquam saepe alias ipsum. Qui et dicta et autem maxime nihil.',1,3,88),(67,'Pfannerstill, Gottlieb and Walter','Dolores accusantium odio ex aut sit architecto. Et qui voluptas praesentium beatae occaecati laboriosam sunt. Nam ad qui deleniti animi cum delectus. Maxime esse dolorem cum dolorem.',3,4,80),(68,'Wunsch Group','Laboriosam accusamus repudiandae unde mollitia maiores nulla. Sunt vitae esse qui minima quas dolorum nesciunt. Hic animi ipsa occaecati dolorem velit voluptatem eaque. In magni eos enim quia.',3,5,92),(69,'Tromp, VonRueden and Gorczany','Et impedit dolores eaque explicabo. Mollitia rerum reprehenderit consequatur facere eligendi. Ex minima libero iure.',4,2,15),(70,'Goldner-Denesik','Beatae unde et aliquam. Eum voluptatibus deserunt dolores aut sit. Aut aut consequatur ex porro. Ea nam inventore consectetur placeat. Nostrum voluptatem itaque omnis magnam.',5,4,56),(71,'Rohan, Kub and Kozey','Velit nesciunt voluptatibus illo eum. Voluptas quod ipsa ullam id debitis commodi. Expedita eos cupiditate placeat aliquam aut. Quia incidunt ad enim laudantium quas occaecati.',5,4,72),(72,'VonRueden-Nitzsche','In aut id autem. Sapiente porro quia dicta explicabo doloribus possimus. Sit enim et rerum rem et. Sunt laborum voluptatum nesciunt eligendi neque atque quis.',2,4,2),(73,'Labadie-Herzog','Possimus ea eligendi quidem possimus. Iure nesciunt totam id laborum hic ut. Rerum qui quam sint qui delectus. Ea voluptatem illo omnis non fuga dolorem.',5,2,37),(74,'Kassulke and Sons','Omnis nostrum quia quaerat aliquid adipisci similique inventore hic. Accusamus sit blanditiis qui laudantium. Sequi dolores et consectetur corrupti.',3,3,24),(75,'Kris-Crona','Eos quis et ducimus. Rerum asperiores praesentium hic quidem quis. Quaerat saepe sed quam eveniet iure.',1,3,4),(76,'Ankunding Group','Qui porro et quisquam veritatis consequatur laborum nostrum. Facere a fuga tenetur nesciunt non. A illum qui ad occaecati esse optio.',2,3,59),(77,'Abernathy LLC','Tempore eaque ut saepe. Minima culpa aut et eos ea saepe. Dolorum ut adipisci beatae eaque voluptatem aut dolorem. Magnam est sed iure facere tenetur laudantium.',2,5,33),(78,'Stiedemann, Roberts and Johnson','Enim eum asperiores ut laudantium expedita consequatur quod aliquam. Repellat saepe facere sequi aut impedit facere debitis. Soluta velit cupiditate labore. Reprehenderit et voluptatem impedit occaecati.',1,3,13),(79,'Hayes Ltd','Aspernatur laboriosam reprehenderit numquam provident. Perferendis provident sint repudiandae molestiae et blanditiis recusandae.',5,2,40),(80,'Brown, Stamm and Pollich','Vitae amet debitis quibusdam quos. Dolorum provident eos asperiores illo vel. Harum aut soluta voluptas qui ad. Sequi ratione quae laborum ut voluptas nam quae.',1,1,11),(81,'Mann-Jaskolski','Officiis totam sint qui voluptates sed velit. Blanditiis adipisci nobis eos corrupti. Aut iste voluptatem molestias et. Consequatur id velit ad sint.',4,5,74),(82,'Vandervort, Wuckert and Fahey','Id iusto amet dolorum dicta enim atque delectus. Sequi tempora quo ut excepturi dignissimos sunt natus atque. Incidunt quae asperiores praesentium deserunt hic doloremque. Qui minima qui consectetur.',2,2,43),(83,'Torphy, Hoeger and Jacobs','Omnis voluptatum quibusdam voluptates magni. Aut sit ipsum est ab. Ipsum sit aperiam natus aspernatur dolores qui quod harum.',2,1,63),(84,'Murphy, Morissette and Thompson','Laboriosam adipisci in rerum libero suscipit dolore at. Aut accusamus ad sapiente officia. Dicta eaque neque laboriosam optio dicta rem nobis. Qui doloremque nulla vero eos sequi et.',4,3,16),(85,'Crooks LLC','Consequatur perspiciatis amet suscipit. Occaecati quae nisi facere corrupti. Veritatis vitae dolorum qui. Quia culpa repellendus ut ducimus iure reiciendis.',5,4,62),(86,'Botsford LLC','Dolores eos dolorem dolorem quo aut sed. Illum tempore amet a omnis aut dicta dolores. Corrupti et dicta sed et non esse unde. Molestiae ut aliquam aspernatur qui. Dignissimos perferendis deserunt quisquam laudantium.',1,5,12),(87,'Bruen-Schinner','Quae praesentium incidunt labore voluptas sunt molestias. Hic nostrum quia ipsam in delectus.',3,1,4),(88,'Murazik and Sons','Mollitia quos sit hic. Quae consectetur iusto est sit ut praesentium animi. Perspiciatis deleniti quam natus eum et blanditiis aut.',5,2,50),(89,'Tromp-Nienow','Sit eaque nesciunt in perspiciatis. Vel ex maiores facere impedit dolorum rerum tempora. Dolore adipisci ex quaerat assumenda animi tenetur.',1,1,74),(90,'Bahringer PLC','Consequatur corporis doloremque nisi incidunt nostrum aliquid in assumenda. Sunt possimus eveniet repellat quam. Vel et eligendi saepe voluptas. Tenetur non aut molestias sit omnis expedita.',3,2,79),(91,'Kessler, Wilderman and Kovacek','Voluptate maiores ex ut culpa. Et sunt ipsa odit non vel labore. Sit doloremque qui fugit iste. Quo et voluptas omnis ipsam itaque beatae.',3,5,67),(92,'Kemmer-Berge','Et minima nulla exercitationem deserunt ut harum non inventore. Repudiandae eos expedita omnis at nemo. Ipsum eaque quo reiciendis est explicabo accusantium.',2,2,93),(93,'Mayert, Lueilwitz and Lindgren','Quos reiciendis ab rerum eius eos. Sint nulla vel numquam aspernatur in ullam ut. Id et fugit alias facere ut hic. Eligendi neque hic accusamus minima ratione nobis ea.',4,4,100),(94,'Sawayn PLC','Praesentium quia expedita quia maxime autem. Velit unde delectus cupiditate voluptatem. Voluptate ut velit qui quia.',2,2,59),(95,'Kohler Ltd','Doloremque recusandae voluptatem porro magni. Excepturi hic accusamus et eos et vel. Et similique eveniet sunt corporis sed et voluptates a. Ratione illum a voluptas.',3,2,19),(96,'Lind-Dooley','Sunt deleniti id consequatur doloribus officia. Iusto rerum est iusto sit quis quidem. Sint ut doloremque aut molestiae ut.',1,2,15),(97,'Stiedemann, Bartoletti and Crooks','Dicta non dolorem ea. Illum aut ea fugiat deleniti natus deleniti consequuntur. Ab nam et nihil ipsum et. Harum recusandae ipsam quidem inventore.',2,5,34),(98,'Adams-Satterfield','Consequatur sed aperiam voluptatibus vel dignissimos dolores soluta. Qui eveniet consequatur consequatur laborum.',2,5,56),(99,'Russel Inc','Voluptates quod repellat quas molestias. Autem omnis aut ea accusamus animi ut facilis. Maxime similique modi quo provident doloremque repudiandae quo autem.',4,5,72),(100,'Bauch and Sons','Nisi corrupti minus minus maiores asperiores. Non explicabo amet velit animi vero. Expedita dolor aut enim sint reiciendis consequatur. Molestias ipsum non omnis perspiciatis magni.',3,2,97);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels_photo_albums`
--

DROP TABLE IF EXISTS `hotels_photo_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels_photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `hotels_photo_albums_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels_photo_albums`
--

LOCK TABLES `hotels_photo_albums` WRITE;
/*!40000 ALTER TABLE `hotels_photo_albums` DISABLE KEYS */;
INSERT INTO `hotels_photo_albums` VALUES (1,'aspernatur',82),(2,'sequi',66),(3,'consequatur',94),(4,'voluptatem',16),(5,'est',47),(6,'blanditiis',44),(7,'doloribus',51),(8,'iste',53),(9,'aut',50),(10,'nihil',26),(11,'labore',21),(12,'qui',75),(13,'est',3),(14,'et',39),(15,'numquam',12),(16,'voluptas',12),(17,'est',82),(18,'harum',78),(19,'ad',36),(20,'incidunt',44),(21,'nisi',43),(22,'voluptas',93),(23,'aut',85),(24,'qui',80),(25,'quis',97),(26,'saepe',26),(27,'est',84),(28,'similique',29),(29,'totam',100),(30,'rerum',65),(31,'voluptate',14),(32,'ut',81),(33,'eveniet',31),(34,'assumenda',7),(35,'cum',96),(36,'assumenda',77),(37,'accusamus',51),(38,'repellat',47),(39,'nisi',30),(40,'repudiandae',100),(41,'aut',72),(42,'sunt',51),(43,'quos',75),(44,'eligendi',74),(45,'repellat',89),(46,'libero',86),(47,'aperiam',85),(48,'eveniet',70),(49,'quos',64),(50,'qui',20),(51,'nihil',13),(52,'excepturi',7),(53,'expedita',13),(54,'assumenda',98),(55,'et',87),(56,'quo',9),(57,'sit',24),(58,'aut',70),(59,'eos',38),(60,'necessitatibus',23),(61,'tempore',35),(62,'nam',51),(63,'soluta',4),(64,'aut',65),(65,'aperiam',58),(66,'id',100),(67,'molestiae',42),(68,'libero',8),(69,'aut',46),(70,'officia',71),(71,'repudiandae',8),(72,'velit',17),(73,'quisquam',21),(74,'qui',83),(75,'harum',90),(76,'qui',9),(77,'quis',69),(78,'dolorem',75),(79,'ut',79),(80,'ipsam',32),(81,'expedita',95),(82,'ad',92),(83,'ad',39),(84,'dolores',7),(85,'veritatis',90),(86,'quod',25),(87,'fugiat',16),(88,'optio',13),(89,'cumque',95),(90,'consequuntur',53),(91,'harum',36),(92,'reprehenderit',30),(93,'qui',4),(94,'suscipit',39),(95,'dolorem',94),(96,'doloribus',61),(97,'nulla',38),(98,'repellendus',35),(99,'aliquid',69),(100,'natus',84);
/*!40000 ALTER TABLE `hotels_photo_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_photo_album_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_photo_album_id` (`hotel_photo_album_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`hotel_photo_album_id`) REFERENCES `hotels_photo_albums` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (14,2),(33,2),(39,2),(65,2),(11,3),(28,4),(42,4),(49,4),(15,6),(37,6),(45,6),(68,7),(67,9),(98,9),(77,10),(70,11),(23,12),(56,13),(80,13),(55,14),(73,14),(69,15),(79,15),(38,17),(59,17),(8,19),(75,19),(76,19),(31,20),(84,20),(35,22),(47,22),(44,23),(61,25),(19,26),(85,26),(64,27),(97,28),(94,30),(1,32),(53,32),(87,33),(4,36),(62,36),(57,37),(6,40),(18,40),(13,41),(78,41),(2,43),(100,43),(74,45),(3,46),(50,48),(89,49),(90,49),(51,50),(21,53),(27,53),(91,54),(20,55),(29,55),(52,57),(24,58),(30,59),(43,60),(54,62),(88,63),(10,65),(46,65),(82,65),(34,66),(58,66),(83,69),(92,74),(9,75),(26,76),(63,77),(12,80),(40,80),(5,82),(25,82),(41,82),(36,83),(86,83),(22,85),(93,85),(32,86),(71,86),(96,86),(81,88),(17,91),(60,91),(99,93),(7,96),(48,96),(72,97),(66,98),(16,100),(95,100);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_passports`
--

DROP TABLE IF EXISTS `user_passports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_passports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `passport_number` bigint(20) unsigned DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `date_of_expiry` date DEFAULT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `user_passports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_passports_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_passports`
--

LOCK TABLES `user_passports` WRITE;
/*!40000 ALTER TABLE `user_passports` DISABLE KEYS */;
INSERT INTO `user_passports` VALUES (1,16,69705546,'2005-08-27','2011-10-07','1988-08-21','m',74),(2,13,15909607,'1991-03-05','1974-06-06','1995-10-28','f',12),(3,60,30762318,'1989-08-26','1995-08-12','2000-05-20','f',89),(4,67,94488492,'2001-12-12','1996-08-04','1983-08-29','f',8),(5,7,51312885,'1985-09-05','2005-08-18','2018-07-15','f',96),(6,57,75851261,'1972-12-02','1987-05-15','2005-10-23','f',7),(7,86,35206499,'1979-10-06','1983-07-17','2013-10-14','m',17),(8,67,96704290,'1999-06-22','2015-03-25','2009-09-28','f',34),(9,77,92970749,'2006-05-22','1977-09-22','2004-01-11','f',37),(10,96,34892550,'1976-03-15','1971-02-09','1989-07-09','m',39),(11,88,86855783,'1983-04-12','2018-10-25','1993-10-03','f',9),(12,46,90685371,'2014-02-04','1970-09-21','2014-11-20','m',65),(13,2,74723514,'2015-10-11','1991-08-27','1972-04-09','f',21),(14,11,32590957,'1985-06-04','1977-01-28','1975-01-22','m',41),(15,51,64256706,'2008-07-09','1991-02-15','1990-01-19','f',93),(16,30,29395267,'2014-10-27','1974-12-18','1983-08-15','m',67),(17,66,95625555,'1995-12-27','2006-12-16','1995-08-06','f',42),(18,78,70626031,'2016-06-15','1987-04-25','1970-06-08','m',25),(19,30,61561649,'1983-10-21','1988-09-09','1982-06-27','m',45),(20,33,98612896,'2011-12-14','2005-09-11','1976-05-20','m',37),(21,41,70309242,'1999-01-05','2009-08-21','1985-07-26','f',90),(22,44,70316867,'1995-08-19','2012-12-19','2007-06-21','f',26),(23,6,68358803,'1985-02-01','1973-06-24','1991-02-13','m',10),(24,60,17746410,'1985-04-29','2009-07-10','2010-08-21','m',83),(25,46,85794923,'2021-04-15','1988-04-03','1991-09-25','f',55),(26,22,84557253,'1990-04-17','1987-12-15','1987-11-17','m',34),(27,64,49891306,'2012-03-01','2015-05-08','2018-09-13','m',68),(28,98,53352372,'2015-09-27','1973-12-05','2001-09-04','f',66),(29,89,95874135,'1975-02-23','1986-09-24','2009-08-14','f',9),(30,6,62443098,'1982-10-09','1991-02-18','1988-03-11','f',40),(31,1,17107303,'1981-02-18','2013-03-26','1991-01-30','m',35),(32,6,15895554,'1995-10-20','1975-12-09','2009-03-31','m',67),(33,77,52442020,'1978-07-01','2006-04-22','1990-01-06','f',84),(34,91,33491846,'1986-11-03','1977-07-03','2004-12-20','f',7),(35,29,73193673,'1971-06-25','2017-08-19','1986-03-13','f',24),(36,43,80914613,'1993-11-19','1982-02-06','1998-07-09','m',69),(37,14,66616208,'1982-04-07','2010-10-03','1977-11-03','f',86),(38,95,89554646,'1988-09-09','1977-03-05','1984-01-09','f',20),(39,96,61004271,'1993-07-16','1982-04-11','1974-03-19','m',54),(40,3,70470597,'2018-08-18','2003-03-07','2016-03-03','f',42),(41,9,43559621,'2009-12-31','2021-09-30','1990-07-22','m',24),(42,75,33070228,'1984-08-10','1970-08-19','1987-01-17','f',73),(43,92,12851347,'2001-01-12','1990-07-06','1975-12-17','f',73),(44,38,24703129,'1979-12-18','1970-07-30','2020-06-23','f',80),(45,81,11203821,'1996-09-29','2004-04-05','1974-07-14','f',44),(46,20,35305050,'2020-01-24','2005-07-12','1977-10-09','m',81),(47,78,72790449,'1988-07-19','1980-01-28','2018-07-07','f',26),(48,47,68670809,'1980-06-04','2014-05-29','1997-08-06','f',55),(49,9,47305792,'1979-05-19','1982-06-21','2011-05-29','f',38),(50,61,21426979,'1971-11-28','1980-06-22','1982-07-31','m',37),(51,62,59353225,'2008-03-02','2004-07-29','2012-01-04','f',4),(52,6,58447158,'2001-03-09','2019-05-30','1981-09-15','f',76),(53,90,49433772,'2009-12-11','1984-10-11','1985-03-31','f',100),(54,95,66560815,'1975-05-23','1984-02-27','1971-01-03','m',85),(55,54,47301915,'1979-09-13','1976-09-22','1984-06-24','f',97),(56,26,40080490,'2013-01-26','2001-06-09','1993-05-30','m',63),(57,21,85919654,'1986-03-02','1984-07-17','1985-09-24','m',1),(58,35,98599988,'1998-08-11','2018-09-15','2019-08-04','m',12),(59,73,34020918,'1976-10-04','2003-12-14','1990-12-30','f',73),(60,92,71523929,'2014-02-25','1976-06-10','1971-05-13','f',53),(61,16,59584283,'2021-02-10','2017-06-08','2021-10-30','f',11),(62,34,70172250,'1992-07-14','1997-08-15','2020-11-14','f',94),(63,36,86803319,'1989-07-18','2013-09-26','2017-10-27','m',81),(64,49,14854031,'2020-02-23','1982-06-19','1995-07-01','f',45),(65,19,46251131,'1984-08-29','1980-12-06','1990-04-12','m',10),(66,81,30244725,'1993-06-07','2001-12-22','1985-07-09','f',80),(67,13,89369501,'1986-01-09','2005-11-01','2014-08-29','m',87),(68,55,17718898,'2005-07-07','2015-06-21','2020-05-05','m',3),(69,86,15660951,'2016-12-23','2002-12-29','1996-05-15','m',50),(70,87,31447957,'1988-11-12','1976-06-22','2006-02-06','m',40),(71,46,46237763,'1986-11-28','2011-03-22','2006-03-22','f',13),(72,2,92183659,'1990-01-01','2021-02-26','1988-09-16','m',67),(73,13,45462004,'1982-06-09','2017-01-21','2019-09-28','m',37),(74,78,83041792,'1986-04-06','2021-12-02','2008-10-13','m',86),(75,10,78612111,'1978-10-23','1981-12-24','1996-02-08','m',69),(76,38,45743901,'2004-02-22','1992-05-31','2001-11-25','m',26),(77,79,79037492,'2001-10-10','2014-08-10','1981-11-21','m',72),(78,20,75066915,'2001-01-31','1975-08-01','1975-09-21','m',15),(79,52,52017354,'2021-12-12','1994-10-09','2017-09-18','f',68),(80,59,76678751,'1982-02-06','2010-04-24','2009-07-08','f',70),(81,77,58497594,'2003-02-05','1997-04-22','2008-11-16','f',40),(82,50,10306372,'2014-07-11','1972-12-15','2010-06-27','f',90),(83,26,24476378,'2007-11-13','2015-08-30','2021-04-04','m',5),(84,92,29293062,'1991-03-09','1981-11-19','2010-06-02','m',12),(85,54,71745039,'2003-01-08','1986-05-28','2014-03-30','f',79),(86,51,97729883,'1985-10-01','1996-01-22','1979-02-18','m',100),(87,91,33831929,'2005-02-16','2001-11-15','1994-12-21','m',53),(88,66,41291813,'1995-03-28','1999-05-03','2004-10-06','m',4),(89,90,66787048,'1981-02-22','1997-04-12','2001-08-28','f',44),(90,89,99731976,'1990-05-17','1982-09-24','2013-11-29','f',99),(91,12,49469152,'2021-03-21','1973-05-31','1999-08-08','f',27),(92,25,25395752,'1984-07-15','1993-02-12','1987-03-09','m',91),(93,98,93022586,'1977-10-14','1986-05-10','1984-07-28','f',44),(94,6,12680703,'1975-09-28','1989-08-27','2007-08-23','m',50),(95,11,64224407,'1994-08-19','1973-07-30','2013-04-15','m',64),(96,20,96151706,'1977-03-25','2011-10-01','1974-02-12','m',88),(97,4,76900869,'1984-04-23','2019-02-06','2007-07-24','m',69),(98,78,58472312,'2013-01-07','1985-09-15','1995-10-27','f',30),(99,74,39729616,'1981-09-26','1998-10-01','1985-01-25','f',70),(100,41,73116732,'1976-05-05','1996-11-21','1979-01-08','f',28);
/*!40000 ALTER TABLE `user_passports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_lastname_firstname_idx` (`lastname`,`firstname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dorris','Pagac','ischmeler@example.net','315159811dd9426e0f9a9c7830d8c951407095a5',9560043107),(2,'Malcolm','Simonis','gennaro.gutkowski@example.net','03edef7a8ac6d4d4a99fb49e2b5f19a5c00e7927',9642188689),(3,'Paula','Homenick','wyatt92@example.com','04f1358c9bd1718bd98575a7526bd83e3165a0c9',9836083089),(4,'Lonny','Strosin','lspencer@example.org','75e5ee9539de969cfc0640b48714f6811fa533e7',9679082917),(5,'Bobbie','Windler','kuhlman.giovanny@example.net','0ec7b2effa0ca1bb33e16d93ea681852e968c97f',9874883492),(6,'Coleman','Grant','maggie74@example.com','f5f920412b380b94948ac32d7495b16e4d0fb229',9523959951),(7,'Betsy','Thompson','miller.bennett@example.net','4852da4026f9b2a5a84eef7c8cb3fb97ec299345',9772692458),(8,'Annabelle','Daniel','ralph.beier@example.net','9cea4afe58f357414524f7ce48948040f06e3715',9056867569),(9,'Richie','Heidenreich','udicki@example.com','b5875571ec291f78a1bcd2a0a9b186b56dd8cbda',9701893879),(10,'Ambrose','Hodkiewicz','bkohler@example.org','3a952973897a88c8e966c0932a4cf041cca016a6',9944173970),(11,'Cole','Kerluke','enid.howe@example.org','b39df05c2b289ffa53595787924544308525f1e1',9656368337),(12,'Mozelle','Parker','santiago44@example.org','806016c732cb256a78de8b0d57c19913ec160f64',9777511165),(13,'Jeanne','Grant','rosenbaum.aurore@example.org','e5e33b249bb3e49ebc714c082613ce455f1949ab',9791353970),(14,'Lonnie','Nader','euna45@example.org','93170b292b1c1532451aa0e3e1f8f92fcb40908d',9913451963),(15,'Weldon','Kessler','zfarrell@example.net','2beb1a510ee32ed0f63dced28d2585f5f47cc31e',9314414364),(16,'Lisandro','Reynolds','mueller.wilfred@example.com','320ca39cbf3fdd023e1e2d7cc73da2edde0cf1fe',9593158226),(17,'Barton','McGlynn','mmohr@example.com','ab7b9fdec283e212bac370c3b398cdea9d8f118f',9452674572),(18,'German','Hilll','gleichner.vena@example.com','be9aebaa1e103d723536ccda2db7b3fbb1d96cc6',9264229394),(19,'Ernestina','Hoppe','grady.leta@example.com','abc91a6ef15447a790d3003a3f1ce58b8ca85e14',9791053706),(20,'Michaela','Schoen','clair85@example.net','2d54ee9b49f6e157754e3151131225b1bcbf4b27',9525265258),(21,'Emmy','Jast','golson@example.com','71c4b2520087b4ee85076cced6b7b68b8d299dfe',9993123421),(22,'Mortimer','Adams','brandyn29@example.org','d17b921aa69301c94152bd0f04d92b4c0dbb9382',9244501581),(23,'Eino','Davis','odouglas@example.net','900d79edc03843e5f2939f6a52cb71071cfc7538',9941679917),(24,'Murphy','Kovacek','nayeli.schimmel@example.net','b2c1ecb46bb00523f2d7640d531a9745ebeaf036',9334348907),(25,'Verna','Homenick','streich.zachery@example.com','7c3c9779f74134d5fc14d7a55fc1e1b38359f3ea',9584899519),(26,'Ewald','Stark','bo\'reilly@example.com','cd1e964c56ee4ff4613f8cac3e0a990cc20e643d',9932221687),(27,'Jalen','Baumbach','jamar.renner@example.org','4ea40b79a49595095c97651336e9c05c22c1bedd',9458272367),(28,'Lyla','Hand','helen.blick@example.com','e1b9c8370161d02673f5ecf65f11640545e9e206',9662737741),(29,'Henderson','Hickle','lgrady@example.net','00c3de4ba7f4f34860130072a5ac6223261ba28f',9338544838),(30,'Magnolia','Bode','margarette12@example.com','028ac454c27586b1b49f2813cbf534f136f4a04b',9396761332),(31,'Lawson','Bruen','abelardo02@example.org','be9e16b12ab96f101a8dbede4bdb92edf096d3ab',9903344950),(32,'Raleigh','Parisian','jakubowski.reymundo@example.org','a1322a4f969f061581aa7c4507e3cd4f4eb326e4',9130365860),(33,'Nathanael','Wolf','osinski.noel@example.com','cf15659b2d5f79bb387bd25961796a763f1ff209',9411858080),(34,'Sanford','Gerlach','isobel.price@example.net','bfee7094600daba8c48d12acb7e39b9dc0d4c721',9933332326),(35,'Concepcion','Hansen','jalon67@example.com','3b1cffff3b94fd1e1dd3ec27bd00f646a73fce02',9074494531),(36,'Lonny','Koelpin','ttorp@example.com','ee0474e958d878dbca1162b830aca5f84a2d03f0',9206586449),(37,'Sheila','Lesch','frieda42@example.net','97a0fa57493fb8a2c650c2673c09b3c8a3e66289',9731957358),(38,'Ludwig','Zulauf','louie.schaefer@example.com','7bfba94dcf549eecf9c2b0b17979fe079ba057e5',9397848954),(39,'Amelie','Gibson','kkuvalis@example.com','2bd0c68f92124325e6d1122102a423f717e5f9a9',9113754237),(40,'Ernesto','Green','damon.king@example.com','9839ce3412084242eb42c2058e1f45eb64d3a82d',9313201225),(41,'Burnice','Powlowski','yvette38@example.com','bc7192bbe2ec0616fae57465822f5aba1f78e860',9799462514),(42,'Alysha','Schaefer','prosacco.shawn@example.net','6807df4f894a6ca1f280ff75dc0245dc18f2f7f7',9889513607),(43,'Chance','Gorczany','luella15@example.org','c52c24afe3cb710bc0aef92dfe2ac54884c1b1f0',9135765769),(44,'Carol','Bartoletti','elliot45@example.org','dc6d69d5dca29e9bf5dab2e0646a92c060d975dd',9941687457),(45,'Theodore','Ullrich','predovic.lane@example.org','cf28520ae128a276afb6e8d16efbae88a5942778',9670043171),(46,'Roxane','Wintheiser','dibbert.sydnee@example.net','3954000d6a78aa7e80c38536d2710315d37e9ac4',9011142545),(47,'Dallin','Stiedemann','jacinto44@example.net','464e454047454dac6861e581ed607db4a23339ef',9472981303),(48,'Joaquin','McCullough','aylin55@example.com','94d298c21ece6f544d9c819dd1db2e2a5702519f',9409372917),(49,'Benjamin','Heathcote','igerhold@example.com','7fc68b6a934f0b68301ce7b313a9e3185ed037fb',9901384674),(50,'Aimee','Doyle','kuhic.elaina@example.net','566280da3919ede84439826d8655d6b9e76b9ee0',9026285207),(51,'Cruz','Senger','hilma50@example.org','7ba83250cd646c0809427ded5322526f41057fc5',9512651980),(52,'Kimberly','Oberbrunner','madisen51@example.org','701c4efb27766b6617977e88f4f7c05f33931cf5',9151913660),(53,'Annie','Grady','paige.breitenberg@example.org','9102445ec981cb23ed0134d79d60f84df6befc10',9905789467),(54,'Salma','Will','enid.botsford@example.org','8b97a278078266a0e6ca91fc437a6359814eaca8',9798504535),(55,'Solon','Ortiz','anita04@example.com','d7bd8a9400056cc1cb14bffd26b8254cc4fdae69',9095742382),(56,'Sasha','Roberts','parker.mollie@example.net','debf0043a6c2e1b37e0685c265e1f5a67932ff49',9938393694),(57,'Rae','Wolff','rocky99@example.net','2744e1d3a23a971800e3c7d4ec671ffa209d7939',9470985260),(58,'Fatima','Nolan','alba.reichel@example.org','a0fec06876ac39da3ec706f41183fcce18a904bc',9610016512),(59,'Rey','Feest','marielle.robel@example.com','3ada3deae5db749ba26e776dc234cb3ae85ef2a8',9717589557),(60,'Melisa','Mitchell','ivah55@example.net','05edb4ce6bb1f6a48eed81b51828df1f81081b93',9972277285),(61,'Jazmin','Dicki','torrey.legros@example.org','ec3f510c0fe0069a3f6c4544f96cdf0f7cb62165',9484948377),(62,'Alexandra','Hettinger','orn.camila@example.net','bf6b2fb38ba7bcc045e3f3dc8321ebd643f5b936',9717289279),(63,'Arden','Abernathy','eino48@example.org','b08519fd24eebe3658725e339777576c72f76cea',9496838560),(64,'Chanel','Tillman','jessica.greenfelder@example.net','bfd0c6e7fdd28c71a70dc38b2a0078fd1acf7740',9934204512),(65,'Estell','Kshlerin','fstiedemann@example.org','71d3439842d9554a7df88f3339685f1db5a3cabb',9728399200),(66,'Muhammad','Willms','alanis.metz@example.com','a162c14e59d0d6ec290d23c2d32fe5988bba5f26',9698459519),(67,'Lamar','Trantow','mwiegand@example.net','3692ef27a016de2ab69875b3e4a96e13092a9d98',9107789617),(68,'Chadd','Dach','noble.batz@example.org','c3ad5373c74c79fe126d296ac64ce4c5c69c5876',9828175887),(69,'Howard','Kub','bcole@example.org','7cbb9101e213dba5f3f795afd05c4b8f926cf83e',9351420149),(70,'Rowland','Leannon','fboehm@example.org','2b6e2fa39c3658dce670d5c9f8a3f2b86a6947ee',9638011380),(71,'Bridie','O\'Hara','llehner@example.net','ba971d69b4b97c9c568bc068cba5b834e54a6cd2',9276837421),(72,'Bernice','Bode','laverna.schmidt@example.net','9cc595c7f6d04ec8f48ed7a9ab2afdc6f3308fee',9858552235),(73,'Domenico','Nolan','boyer.carolina@example.com','09f4512a7ba56357e4ad18e0818c8f2c91fdf713',9119961324),(74,'Jameson','Kerluke','leonie15@example.net','386c308c7ac5fc1049254ef8db8ade82bc53ab7a',9115888967),(75,'Enos','Shields','camren67@example.net','6f3d2720b20be591519b1617c12b51906079a0fa',9778641250),(76,'Stella','Beahan','lulu73@example.org','37feb81ad5661b69fae1327d2e92ffb180e0cccb',9735062593),(77,'Albin','Balistreri','ecartwright@example.org','61b2e5b4b097618833041723fa497455963378b0',9900339643),(78,'Julie','Purdy','sheridan.pfeffer@example.org','ce1cd95a67115ff047933fa73aefbb791fef0ffe',9827430150),(79,'Adrien','Ratke','lankunding@example.com','658d95178d5bb17438b6c63e2d58bffe2a679cbe',9930568117),(80,'Nina','Reichel','thaddeus.heathcote@example.org','1da2149e71c77387dd7471ffa1ed061e1cff1a89',9957549148),(81,'Brian','Beer','walker30@example.org','bc4cb9bb787b399d8005d643101003347aa5cdc1',9460460210),(82,'Nils','Lowe','destiney57@example.org','1ff9fb127e20d393f3f356c96422e2a8347d808e',9164029809),(83,'Grover','Kirlin','alvis67@example.com','953aca02c80ff7a3a665c612a4f68650fee0f6d6',9071335818),(84,'Darrel','Towne','leonie.howe@example.org','a956bb7271e3fbf88f676a4796f3989e647aaf5d',9017597003),(85,'Vida','Keeling','dessie.waters@example.com','28972b6bbe703430771e46a116525fe57248ad73',9424796935),(86,'Orie','Abernathy','gherman@example.net','f551b28bdd6a0ec80b487285a72ee712c87e6bd5',9317654270),(87,'Philip','Hagenes','botsford.eve@example.net','dd499cdcd8111050ba100d886295103a6e250a2d',9528294086),(88,'Tiffany','Dicki','berry87@example.net','6ec540848a3ca697c7ebb77687ea21379c51e081',9797358259),(89,'Craig','Stoltenberg','pagac.annamae@example.org','8ef4796cc766e7c6c1b85cc4d99c7284850f9a34',9702732387),(90,'Keaton','Marks','felicia.fadel@example.org','bd5ff74fafb8ffc43dba84cce6eb55ed52477ed9',9883515232),(91,'Kaleigh','Bruen','bednar.gerard@example.com','165d9c6176ddc88874d8fa291bd2e365a8791e89',9595130244),(92,'Gerry','Mayert','mwehner@example.com','72d2dd015f3a9fd063e0cafc46574f5fb96a6fe9',9430293266),(93,'Zachery','Hoeger','imani26@example.org','3caa7d2aed06847a5deb44b555afbc432423f7d1',9105697788),(94,'Raheem','Hauck','yquigley@example.net','1547355eba03e58bc1497b764696168c4ebfc5e4',9286329534),(95,'Britney','Schuppe','hollie17@example.net','7020ba9e5e58a16ea0dab53dc37738f396c19466',9359685952),(96,'Rodrigo','Harris','twaters@example.org','0e7959e6e763861b75e3dbddae6dfd7b9c33d33d',9859373203),(97,'Lawrence','Hudson','leland09@example.org','d2f4067cbd0b52368ec7c8b021464f9c30a0ee27',9998174100),(98,'Audreanne','Rohan','ritchie.damaris@example.org','06fd963003d861fcaa78441b9da752ec421f75e5',9286856431),(99,'Belle','Goldner','guy.streich@example.net','da02f77e89e0627f5b660529ca9987178b5893ef',9923225648),(100,'Eryn','Weimann','rhianna.sipes@example.com','06519b2b17f5344779bb943bda5d76ed75c1201c',9750982073);
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

-- Dump completed on 2022-06-24 16:03:56
