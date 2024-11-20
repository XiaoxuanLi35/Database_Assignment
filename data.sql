-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: data
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album_artists`
--

DROP TABLE IF EXISTS `album_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_artists` (
  `album_id` int NOT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`album_id`,`artist_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `album_artists_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `album_artists_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_artists`
--

LOCK TABLES `album_artists` WRITE;
/*!40000 ALTER TABLE `album_artists` DISABLE KEYS */;
INSERT INTO `album_artists` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `album_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_songs`
--

DROP TABLE IF EXISTS `album_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_songs` (
  `album_id` int NOT NULL,
  `song_id` int NOT NULL,
  PRIMARY KEY (`album_id`,`song_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `album_songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `album_songs_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_songs`
--

LOCK TABLES `album_songs` WRITE;
/*!40000 ALTER TABLE `album_songs` DISABLE KEYS */;
INSERT INTO `album_songs` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `album_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` int NOT NULL,
  `album_title` varchar(256) NOT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Pet Sounds','1966-05-16'),(2,'Abbey Road','1969-09-26'),(3,'Album A','1971-09-26'),(4,'Album B','1972-03-06'),(5,'Album C','2012-05-09');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL,
  `artist_name` varchar(128) NOT NULL,
  `genre` varchar(64) DEFAULT NULL,
  `debut_year` year DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'The Beach Boys','Rock',1966),(2,'The Beatles','Rock',1969),(3,'Artist A','Metal',1970),(4,'Artist B','Classic',1971),(5,'Artist C','Trance',2011);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concert_artists`
--

DROP TABLE IF EXISTS `concert_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concert_artists` (
  `concert_id` int NOT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`concert_id`,`artist_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `concert_artists_ibfk_1` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`concert_id`),
  CONSTRAINT `concert_artists_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concert_artists`
--

LOCK TABLES `concert_artists` WRITE;
/*!40000 ALTER TABLE `concert_artists` DISABLE KEYS */;
INSERT INTO `concert_artists` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `concert_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concert_songs`
--

DROP TABLE IF EXISTS `concert_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concert_songs` (
  `concert_id` int NOT NULL,
  `song_id` int NOT NULL,
  PRIMARY KEY (`concert_id`,`song_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `concert_songs_ibfk_1` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`concert_id`),
  CONSTRAINT `concert_songs_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concert_songs`
--

LOCK TABLES `concert_songs` WRITE;
/*!40000 ALTER TABLE `concert_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `concert_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concerts`
--

DROP TABLE IF EXISTS `concerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concerts` (
  `concert_id` int NOT NULL,
  `concert_title` varchar(256) DEFAULT NULL,
  `location` varchar(256) DEFAULT NULL,
  `date_of_concert` date DEFAULT NULL,
  PRIMARY KEY (`concert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concerts`
--

LOCK TABLES `concerts` WRITE;
/*!40000 ALTER TABLE `concerts` DISABLE KEYS */;
INSERT INTO `concerts` VALUES (1,'The Beach Boys 2024','OLG Stage','2024-11-17'),(2,'The Fab Four: USA Meets The Beatles!','Atlanta Symphony Hall','2024-11-22'),(3,'Concert 1','S','2024-11-20'),(4,'Concert 2','L','2024-11-21'),(5,'Concert 3','T','2024-11-22');
/*!40000 ALTER TABLE `concerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fans`
--

DROP TABLE IF EXISTS `fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fans` (
  `fan_id` int NOT NULL,
  `fan_name` varchar(128) DEFAULT NULL,
  `fan_email` varchar(128) DEFAULT NULL,
  `age` tinyint DEFAULT NULL,
  PRIMARY KEY (`fan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fans`
--

LOCK TABLES `fans` WRITE;
/*!40000 ALTER TABLE `fans` DISABLE KEYS */;
INSERT INTO `fans` VALUES (1,'John Doe','johndoe@example.com',25),(2,'Jane Doe','janedoe@example.com',30),(3,'Amy Smith','amy@example.com',21),(4,'Danny Scott','danny@example.com',19),(5,'Woody Allen','woody@example.com',20);
/*!40000 ALTER TABLE `fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` int NOT NULL,
  `song_title` varchar(128) DEFAULT NULL,
  `length` double DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Sloop John B',2.97,'1965-12-29'),(2,'Come Together',4.3,'1969-10-06'),(3,'Heart',3,'1971-07-06'),(4,'Sword',5.5,'1973-11-03'),(5,'Fish',1,'2011-10-24');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_fans`
--

DROP TABLE IF EXISTS `ticket_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_fans` (
  `ticket_id` int NOT NULL,
  `fan_id` int NOT NULL,
  PRIMARY KEY (`ticket_id`,`fan_id`),
  KEY `fan_id` (`fan_id`),
  CONSTRAINT `ticket_fans_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`),
  CONSTRAINT `ticket_fans_ibfk_2` FOREIGN KEY (`fan_id`) REFERENCES `fans` (`fan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_fans`
--

LOCK TABLES `ticket_fans` WRITE;
/*!40000 ALTER TABLE `ticket_fans` DISABLE KEYS */;
INSERT INTO `ticket_fans` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `ticket_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `ticket_id` int NOT NULL,
  `concert_id` int DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `ticket_price` double DEFAULT NULL,
  `seat_zone` varchar(16) DEFAULT NULL,
  `seat_number` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `concert_id` (`concert_id`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`concert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,1,'2024-10-01',40.35,'A','A1'),(2,2,'2024-11-01',35,'B','B2'),(3,3,'2023-09-08',65,'C','C3'),(4,4,'2024-07-12',98,'D','D4'),(5,5,'2024-05-09',121,'E','E5');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-20 16:13:31
