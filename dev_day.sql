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
INSERT INTO `talks` VALUES (2,1,'Dan Kinchen','Central Florida Tech Association','2008-04-05 10:30:00','2008-04-05 11:00:00','2008-03-21 00:26:27','2008-04-05 13:52:11'),(3,1,'Peter Wright','Social Spark','2008-04-05 11:00:00','2008-04-05 11:30:00','2008-03-21 00:26:27','2008-04-05 13:53:06'),(4,1,'Sunir Shah','Web 2.0 Killed The Internet','2008-04-05 11:30:00','2008-04-05 12:00:00','2008-03-21 00:26:27','2008-04-05 13:53:29'),(5,1,'Trevor Meyer','AJAX Blocks','2008-04-05 12:00:00','2008-04-05 12:30:00','2008-03-21 00:26:27','2008-04-05 14:24:30'),(6,1,'Mike Soule','Profile w/ XDebug & kCacheGrind','2008-04-05 12:30:00','2008-04-05 13:00:00','2008-03-21 00:26:27','2008-04-05 14:55:28'),(9,1,'Robert Dempsey','Demystifying Agile Development w/Scrum','2008-04-05 14:00:00','2008-04-05 14:30:00','2008-03-21 00:26:27','2008-04-05 13:55:32'),(10,1,'Jose deCastro','Jott: Innovation in Telephony','2008-04-05 14:30:00','2008-04-05 15:00:00','2008-03-21 00:26:27','2008-04-05 13:55:56'),(11,1,'Doug Moran','Introduction to Pentaho Open Source Business Intelligence','2008-04-05 15:00:00','2008-04-05 15:30:00','2008-03-21 00:26:27','2008-04-05 13:56:45'),(12,1,'Elliot','Moddding Ubuntu','2008-04-05 15:30:00','2008-04-05 16:00:00','2008-03-21 00:26:27','2008-04-05 14:10:35'),(13,1,'Kevin Murphy','Microformats','2008-04-05 16:00:00','2008-04-05 16:30:00','2008-03-21 00:26:27','2008-04-05 14:05:53'),(14,1,'Will German','15 Minute Standup: Scrum','2008-04-05 16:30:00','2008-04-05 17:00:00','2008-03-21 00:26:27','2008-04-05 14:20:41'),(15,1,'Lincoln Murphy','Paas the rails, Please: Introducing Morph AppSpaces','2008-04-05 17:00:00','2008-04-05 17:30:00','2008-03-21 00:26:27','2008-04-05 13:58:13'),(16,1,'Gregg Pollack','Ranting about the Community','2008-04-05 17:30:00','2008-04-05 18:00:00','2008-03-21 00:26:27','2008-04-05 04:59:12'),(19,2,NULL,NULL,'2008-04-06 10:30:00','2008-04-06 11:00:00','2008-03-21 00:27:04','2008-04-03 10:42:25'),(20,2,'Chad Miller','Ars Longa, Vita Brevis (Art is forever, life is short.) ','2008-04-06 11:00:00','2008-04-06 11:30:00','2008-03-21 00:27:04','2008-04-05 14:51:08'),(21,2,'Derek Bender','CSS 3.0','2008-04-06 11:30:00','2008-04-06 12:00:00','2008-03-21 00:27:04','2008-04-05 14:11:08'),(22,2,'Mike Blake','Creating Object Oriented Designs from Natural Language','2008-04-06 12:00:00','2008-04-06 12:30:00','2008-03-21 00:27:04','2008-04-05 14:07:15'),(23,2,'Ryan Price','Past, Present and Future of Tech in Central Florida','2008-04-06 12:30:00','2008-04-06 13:00:00','2008-03-21 00:27:04','2008-04-05 14:24:05'),(25,2,'Lunch','at Waitiki','2008-04-06 13:00:00','2008-04-06 14:00:00','2008-03-21 00:27:04','2008-04-03 23:23:51'),(26,2,'Craig Finch','Data Analysis w/Python','2008-04-06 14:00:00','2008-04-06 14:30:00','2008-03-21 00:27:04','2008-04-05 14:07:58'),(27,2,'Tim Rosenblatt','Bayes\' Theorem','2008-04-06 14:30:00','2008-04-06 15:00:00','2008-03-21 00:27:04','2008-04-05 14:20:04'),(28,2,'David Rogers','Unit Testing is for Weenies','2008-04-06 15:00:00','2008-04-06 15:30:00','2008-03-21 00:27:04','2008-04-05 14:22:58'),(29,2,'Less Everything','Luvd by Less: Open Source Social Network','2008-04-06 15:30:00','2008-04-06 16:00:00','2008-03-21 00:27:04','2008-04-05 14:43:24'),(30,2,'Benjamin King','IPhone Web Development','2008-04-06 16:00:00','2008-04-06 16:30:00','2008-03-21 00:27:04','2008-04-05 18:43:40'),(31,2,'Less Everything','Partners in Business not Life','2008-04-06 16:30:00','2008-04-06 17:00:00','2008-03-21 00:27:04','2008-04-05 14:43:39'),(32,2,'Less Everything','What is Good UI?','2008-04-06 17:00:00','2008-04-06 17:30:00','2008-03-21 00:27:04','2008-04-05 14:21:22'),(35,1,'Lunch','at Waitiki','2008-04-05 13:00:00','2008-04-05 14:00:00','2008-04-03 10:36:11','2008-04-03 23:24:01'),(36,3,'','.NET Developer Gathering','2008-04-10 14:00:00','2008-04-10 14:30:00','2008-04-03 23:09:28','2008-04-05 16:21:32'),(37,3,'','','2008-04-10 15:00:00','2008-04-10 15:30:00','2008-04-03 23:09:41','2008-04-03 23:17:15'),(38,3,'','','2008-04-10 16:00:00','2008-04-10 16:30:00','2008-04-03 23:09:50','2008-04-05 18:30:54'),(39,3,'Derek Gallo & David Rogers','OrlandoPHP.org','2008-04-10 17:00:00','2008-04-10 17:30:00','2008-04-03 23:09:56','2008-04-05 14:49:58'),(40,3,'','','2008-04-10 14:30:00','2008-04-10 14:00:00','2008-04-03 23:10:15','2008-04-03 23:17:07'),(41,3,'Jamal Fanaian','Symfony','2008-04-10 15:30:00','2008-04-10 15:00:00','2008-04-03 23:10:27','2008-04-05 18:30:44'),(42,3,'notPedro and GregP','Refreshing Refresh <del>Orlando</del> CFL!','2008-04-10 14:30:00','2008-04-10 15:00:00','2008-04-03 23:10:33','2008-04-05 14:32:34'),(43,3,'Craig Finch','Why we use Gento','2008-04-05 11:00:00','2008-04-05 11:30:00','2008-04-03 23:10:59','2008-04-05 14:08:40'),(44,3,'CMS Roundup - Panel Discussion','Kevin','2008-04-05 11:30:00','2008-04-05 12:00:00','2008-04-03 23:11:10','2008-04-05 14:09:57'),(45,3,'','','2008-04-05 12:00:00','2008-04-05 12:30:00','2008-04-03 23:11:23','2008-04-03 23:11:23'),(46,3,'','','2008-04-05 12:30:00','2008-04-05 01:00:00','2008-04-03 23:11:34','2008-04-03 23:11:34'),(47,3,'Lunch','at Waitiki','2008-04-05 13:00:00','2008-04-05 14:00:00','2008-04-03 23:18:43','2008-04-03 23:23:29'),(48,2,'Larry Diehl','Simple Lisp Interpreter in 29 lines of Ruby','2008-04-06 17:30:00','2008-04-06 18:00:00','2008-04-03 23:25:01','2008-04-05 18:43:18'),(49,3,'','','2008-04-10 17:30:00','2008-04-10 18:00:00','2008-04-03 23:26:31','2008-04-03 23:26:57'),(50,3,'Elliot','Distributed Version Control','2008-04-05 16:30:00','2008-04-05 17:00:00','2008-04-05 14:14:23','2008-04-05 14:14:23');
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

