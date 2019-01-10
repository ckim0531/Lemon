-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lemon
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist_photo`
--

DROP TABLE IF EXISTS `artist_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artist_photo` (
  `ar_num` int(11) NOT NULL AUTO_INCREMENT,
  `ar_subject` varchar(200) DEFAULT NULL,
  `ar_content` text,
  `ar_registerdate` date DEFAULT NULL,
  `ar_readcount` int(11) DEFAULT NULL,
  `ar_singer_num` int(11) NOT NULL,
  `ar_photo` text,
  PRIMARY KEY (`ar_num`),
  KEY `ar_singer_num_fk_idx` (`ar_singer_num`),
  CONSTRAINT `ar_singer_num_fk` FOREIGN KEY (`ar_singer_num`) REFERENCES `singer` (`si_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_photo`
--

LOCK TABLES `artist_photo` WRITE;
/*!40000 ALTER TABLE `artist_photo` DISABLE KEYS */;
INSERT INTO `artist_photo` VALUES (1,'아이유1','아\r\n이\r\n유','2018-11-13',0,1,'아이유1.jpg'),(2,'아이유2','아이유2','2018-11-13',0,1,'아이유2.jpg'),(3,'아이유3','아이유3','2018-11-13',0,1,'아이유3.jpg'),(4,'아이유4','아이유4','2018-11-13',0,1,'아이유4.jpg'),(5,'아이유5','아이유5','2018-11-13',0,1,'아이유5.jpg'),(6,'아이유6','아이유6','2018-11-13',0,1,'아이유6.jpg'),(7,'아이유7','아이유7','2018-11-13',0,1,'아이유7.jpg'),(8,'아이유8','아이유8','2018-11-13',0,1,'아이유8.jpg'),(9,'아이유9','아이유9','2018-11-13',0,1,'아이유9.jpg'),(10,'아이유10','아이유10','2018-11-13',0,1,'아이유10.jpg'),(11,'아이유11','아이유11','2018-11-13',0,1,'아이유11.jpg'),(12,'아이유12','아이유12','2018-11-13',0,1,'아이유12.jpg'),(13,'아이유13','아이유13','2018-11-13',0,1,'아이유13.jpg'),(14,'아이유14','아이유14','2018-11-13',0,1,'아이유14.jpg'),(15,'아이유15','아이유15','2018-11-13',0,1,'아이유15.jpg'),(16,'아이유16','아이유16','2018-11-13',0,1,'아이유16.jpg'),(17,'아이유17','아이유17','2018-11-13',0,1,'아이유17.jpg'),(18,'아이유18','아이유18','2018-11-13',0,1,'아이유18.jpg'),(19,'아이유19','아이유19','2018-11-13',0,1,'아이유19.jpg'),(20,'아이유20','아이유20','2018-11-13',0,1,'아이유20.jpg'),(21,'아이유21','아이유21','2018-11-13',0,1,'아이유21.jpg'),(22,'아이유22','아이유22','2018-11-13',0,1,'아이유22.jpg'),(23,'아이유23','아이유23','2018-11-13',0,1,'아이유23.jpg'),(24,'아이유24','아이유24','2018-11-13',0,1,'아이유24.jpg'),(25,'아이유25','아이유25','2018-11-13',0,1,'아이유25.jpg'),(26,'아이유26','아이유26','2018-11-13',0,1,'아이유26.jpg');
/*!40000 ALTER TABLE `artist_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singer`
--

DROP TABLE IF EXISTS `singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `singer` (
  `si_num` int(11) NOT NULL AUTO_INCREMENT,
  `activity_type` varchar(10) NOT NULL,
  `singer_name` varchar(200) DEFAULT NULL,
  `real_name` varchar(200) DEFAULT NULL,
  `debut_year` date DEFAULT NULL,
  `debut_song` varchar(100) DEFAULT NULL,
  `si_agency` varchar(100) DEFAULT NULL,
  `si_picture` varchar(200) DEFAULT NULL,
  `si_genre` text,
  `si_birth` date DEFAULT NULL,
  `si_gender` varchar(5) DEFAULT NULL,
  `group_singer_num` text,
  PRIMARY KEY (`si_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer`
--

LOCK TABLES `singer` WRITE;
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES (1,'솔로','아이유','이지은','2008-09-17','미아','카카오M, 페이브엔터테인먼트','아이유-삐삐.PNG','발라드, 댄스, R&B/Soul','1993-05-15','여성',',,'),(2,'솔로','박명수','','1998-12-15','바보사랑','거성엔터테인먼트','박명수.jpg','발라드, 댄스','1970-08-26','남성',',,'),(3,'그룹','이유 갓지(GOD G) 않은 이유 (박명수, 아이유)','','2015-08-21','레옹','','이유 갓지(GOD G) 않은 이유 (박명수, 아이유).jpg','댄스',NULL,'혼성',',1,2,');
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13 23:03:12
