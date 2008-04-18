-- MySQL dump 10.10
--
-- Host: localhost    Database: barcamps_production
-- ------------------------------------------------------
-- Server version	5.0.22-Debian_0ubuntu6.06.2-log

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `starts_at` datetime default NULL,
  `ends_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--


/*!40000 ALTER TABLE `events` DISABLE KEYS */;
LOCK TABLES `events` WRITE;
INSERT INTO `events` VALUES (1,'Slingapours','2008-04-05 10:30:00','2008-04-05 18:00:00','2008-03-21 00:15:28','2008-04-03 23:24:29'),(2,'One Eyed Jacks','2008-04-06 10:30:00','2008-04-06 18:00:00','2008-03-21 00:15:50','2008-04-03 23:24:16'),(3,'Courtyard Discussions','2008-04-05 10:30:00','2008-04-05 06:00:00','2008-04-03 23:08:03','2008-04-03 23:08:03');
UNLOCK TABLES;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

--
-- Table structure for table `schema_info`
--

DROP TABLE IF EXISTS `schema_info`;
CREATE TABLE `schema_info` (
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_info`
--


/*!40000 ALTER TABLE `schema_info` DISABLE KEYS */;
LOCK TABLES `schema_info` WRITE;
INSERT INTO `schema_info` VALUES (2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_info` ENABLE KEYS */;

--
-- Table structure for table `talks`
--

DROP TABLE IF EXISTS `talks`;
CREATE TABLE `talks` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `speaker` varchar(255) default NULL,
  `topic` varchar(255) default NULL,
  `starts_at` datetime default NULL,
  `ends_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `talks`
--


/*!40000 ALTER TABLE `talks` DISABLE KEYS */;
LOCK TABLES `talks` WRITE;
INSERT INTO `talks` VALUES (2,1,'Ryan Price','Podcasting is not about tools -or- Podcasting: RTFM!','2008-04-05 10:30:00','2008-04-05 11:00:00','2008-03-21 00:26:27','2008-04-06 14:31:28'),(3,1,'Greg Rollett','Music, Media, & Money','2008-04-05 11:00:00','2008-04-05 11:30:00','2008-03-21 00:26:27','2008-04-06 13:53:41'),(4,1,'Sunir Shah','Dinner is the new Blog: Be really social with clients','2008-04-05 11:30:00','2008-04-05 12:00:00','2008-03-21 00:26:27','2008-04-06 13:30:02'),(5,1,'pulsepolitics.com','SocialWEB Politics: How to Overthrow the Government Using Twitter + Facebook','2008-04-05 12:00:00','2008-04-05 12:30:00','2008-03-21 00:26:27','2008-04-06 13:54:32'),(6,1,'Mark Campell','New Media: Basic 3D in Flash/wAS2','2008-04-05 12:30:00','2008-04-05 13:00:00','2008-03-21 00:26:27','2008-04-06 14:32:05'),(9,1,'Erik Hersman','Using Social Media in a Time of Crisis','2008-04-05 14:00:00','2008-04-05 14:30:00','2008-03-21 00:26:27','2008-04-06 14:33:03'),(10,1,'Ted Murphy','SocialSpark','2008-04-05 14:30:00','2008-04-05 15:00:00','2008-03-21 00:26:27','2008-04-06 13:31:28'),(11,1,'Gregg Pollack and Jason Seifer','Creating the Rails Envy Podcast','2008-04-05 15:00:00','2008-04-05 15:30:00','2008-03-21 00:26:27','2008-04-06 13:55:12'),(12,1,'Rob Williams','Using Wordpress to Create eNewsletter with Blog','2008-04-05 15:30:00','2008-04-05 16:00:00','2008-03-21 00:26:27','2008-04-06 15:03:09'),(13,1,'Dan Kinchen','Search Engine Optimization Anyone?','2008-04-05 16:00:00','2008-04-05 16:30:00','2008-03-21 00:26:27','2008-04-06 15:07:23'),(14,1,'Tisse','Everybody Arts: Developing the Artistic Vision','2008-04-05 16:30:00','2008-04-05 17:00:00','2008-03-21 00:26:27','2008-04-06 17:33:38'),(15,1,'Danny Sanchez & David Rogens','Video Killed the Radio Star... Will Wordpress kill the Newspaper?','2008-04-05 17:00:00','2008-04-05 17:30:00','2008-03-21 00:26:27','2008-04-06 16:04:03'),(16,1,'Ryan Price','Media in Orlando','2008-04-05 17:30:00','2008-04-05 18:00:00','2008-03-21 00:26:27','2008-04-06 16:04:18'),(19,2,'','','2008-04-06 10:30:00','2008-04-06 11:00:00','2008-03-21 00:27:04','2008-04-03 10:42:25'),(20,2,'Mark Campell','New Media Photoshop Tecnique: Displace Single Column Marquee','2008-04-06 11:00:00','2008-04-06 11:30:00','2008-03-21 00:27:04','2008-04-06 14:34:00'),(21,2,'Alexdesigns','Ecommerce Design, SEO, Analytics','2008-04-06 11:30:00','2008-04-06 12:00:00','2008-03-21 00:27:04','2008-04-06 14:34:32'),(22,2,'','','2008-04-06 12:00:00','2008-04-06 12:30:00','2008-03-21 00:27:04','2008-04-05 14:07:15'),(23,2,'Brian Ashe','Create QTVR-like Objects','2008-04-06 12:30:00','2008-04-06 13:00:00','2008-03-21 00:27:04','2008-04-06 16:03:09'),(25,2,'','','2008-04-06 13:00:00','2008-04-06 14:00:00','2008-03-21 00:27:04','2008-04-03 23:23:51'),(26,2,'','','2008-04-06 14:00:00','2008-04-06 14:30:00','2008-03-21 00:27:04','2008-04-05 14:07:58'),(27,2,'Brad McGonigle','Control your photos with lightroom','2008-04-06 14:30:00','2008-04-06 15:00:00','2008-03-21 00:27:04','2008-04-06 16:07:30'),(28,2,'','How do we use new media to talk to old audiences?','2008-04-06 15:00:00','2008-04-06 15:30:00','2008-03-21 00:27:04','2008-04-06 17:32:40'),(29,2,'Jason Hawkins & Meagan Fisher','Deathwatch by SOLMI','2008-04-06 15:30:00','2008-04-06 16:00:00','2008-03-21 00:27:04','2008-04-06 16:10:45'),(30,2,'','','2008-04-06 16:00:00','2008-04-06 16:30:00','2008-03-21 00:27:04','2008-04-05 18:43:40'),(31,2,'Derek Bender','Running a Successful Blog (and hopefully making $$)','2008-04-06 16:30:00','2008-04-06 17:00:00','2008-03-21 00:27:04','2008-04-06 17:32:05'),(32,2,'','','2008-04-06 17:00:00','2008-04-06 17:30:00','2008-03-21 00:27:04','2008-04-05 14:21:22'),(35,1,'','','2008-04-05 13:00:00','2008-04-05 14:00:00','2008-04-03 10:36:11','2008-04-03 23:24:01'),(36,3,'','','2008-04-10 14:00:00','2008-04-10 14:30:00','2008-04-03 23:09:28','2008-04-05 16:21:32'),(37,3,'','','2008-04-10 15:00:00','2008-04-10 15:30:00','2008-04-03 23:09:41','2008-04-03 23:17:15'),(38,3,'','','2008-04-10 16:00:00','2008-04-10 16:30:00','2008-04-03 23:09:50','2008-04-05 18:30:54'),(39,3,'','','2008-04-10 17:00:00','2008-04-10 17:30:00','2008-04-03 23:09:56','2008-04-05 14:49:58'),(40,3,'','','2008-04-10 14:30:00','2008-04-10 14:00:00','2008-04-03 23:10:15','2008-04-03 23:17:07'),(41,3,'','','2008-04-10 15:30:00','2008-04-10 15:00:00','2008-04-03 23:10:27','2008-04-05 18:30:44'),(42,3,'','','2008-04-10 14:30:00','2008-04-10 15:00:00','2008-04-03 23:10:33','2008-04-05 14:32:34'),(43,3,'','','2008-04-06 11:00:00','2008-04-06 11:30:00','2008-04-03 23:10:59','2008-04-06 15:03:44'),(44,3,'','','2008-04-06 11:30:00','2008-04-06 12:00:00','2008-04-03 23:11:10','2008-04-06 15:03:58'),(45,3,'','Marketing 2.0 Best Practices','2008-04-06 12:00:00','2008-04-06 12:30:00','2008-04-03 23:11:23','2008-04-06 16:02:26'),(46,3,'','','2008-04-06 12:30:00','2008-04-06 01:00:00','2008-04-03 23:11:34','2008-04-06 15:04:14'),(47,3,'','','2008-04-06 13:00:00','2008-04-06 14:00:00','2008-04-03 23:18:43','2008-04-06 15:04:22'),(48,2,'','','2008-04-06 17:30:00','2008-04-06 18:00:00','2008-04-03 23:25:01','2008-04-05 18:43:18'),(49,3,'','','2008-04-10 17:30:00','2008-04-10 18:00:00','2008-04-03 23:26:31','2008-04-03 23:26:57'),(50,3,'','','2008-04-06 16:30:00','2008-04-06 17:00:00','2008-04-05 14:14:23','2008-04-06 15:04:31'),(51,3,'Craig','Open Discussion about dealing with spammers on sites','2008-04-06 10:30:00','2008-04-06 11:00:00','2008-04-06 14:35:46','2008-04-06 14:35:46');
UNLOCK TABLES;
/*!40000 ALTER TABLE `talks` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

