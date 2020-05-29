
-- MySQL dump 10.13  Distrib 5.7.19, for windos10(64)
--
--   Database: Net
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `Movie`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(255) DEFAULT NULL,
  `release_time` datetime DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `type` int(3) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `actors` varchar(255) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

BEGIN;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'猪猪侠的奇幻冒险','2020-05-29','猪猪侠的奇幻冒险',1,'zzx','zzx',10,'www.zzx.com',9.8),(2,'明日','2020-05-29','猪猪侠的奇幻冒险',2,'zzx','zzx',10,'www.zzx.com',9),(3,'后天','2020-05-29','猪猪侠的奇幻冒险',3,'zzx','zzx',10,'www.zzx.com',9);
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Record`
--

DROP TABLE IF EXISTS `Record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `watch_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `Record`
--

BEGIN;
/*!40000 ALTER TABLE `Record` DISABLE KEYS */;
INSERT INTO `Record` VALUES (1,1,1,'2019-05-6'),(2,1,2,'2019-05-6'),(3,1,3,'2019-05-6');
/*!40000 ALTER TABLE `Record` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `userName` varchar(255) DEFAULT NULL,
                        `userImg` varchar(11) NOT NULL,
                        `openId` varchar(255) DEFAULT NULL,
                        `sessionKey` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `User`
--

BEGIN;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'zzx','www.zzx.com','zzx','zzx');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Comment`
--
DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comment` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `user_id` int(11) DEFAULT NULL,
                        `movie_id` int(11) DEFAULT NULL,
                        `content` varchar(255) DEFAULT NULL,
                        `likes` int(11) DEFAULT NULL,
                        `create_time` DATETIME DEFAULT NULL,
                        `score` double DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

BEGIN;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
INSERT INTO `Comment` VALUES (1,1,1,'zzx',10,'2019-06-02',9.8),(2,1,2,'zzx',10,'2019-06-02',9.8),(3,1,3,'zzx',10,'2019-06-02',9.8);
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Reply`
--
DROP TABLE IF EXISTS `Reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reply` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `comment_id` int(11) DEFAULT NULL,
                           `from_id` int(11) DEFAULT NULL,
                           `from_name` varchar(255) DEFAULT NULL,
                           `from_avatar` varchar(255) DEFAULT NULL,
                           `to_id` int(11) DEFAULT NULL,
                           `to_name` varchar(255) DEFAULT NULL,
                           `to_avatar` varchar(255) DEFAULT NULL,
                           `content` varchar(255) DEFAULT NULL,
                           `favor` int(11) DEFAULT NULL,
                           `create_time` DATETIME DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

BEGIN;
/*!40000 ALTER TABLE `Reply` DISABLE KEYS */;
INSERT INTO `Reply` VALUES (1,1,1,'zzx','zzx',1,'zzx','zzx','zzx',1,'2019-06-02');
/*!40000 ALTER TABLE `Reply` ENABLE KEYS */;
COMMIT;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-28 23:44:42
SET FOREIGN_KEY_CHECKS = 1;