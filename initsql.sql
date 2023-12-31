-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: hw_19
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `homework`
--

DROP TABLE IF EXISTS `homework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homework` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
-- Dumping data for table `homework`
--

LOCK TABLES `homework` WRITE;
/*!40000 ALTER TABLE `homework` DISABLE KEYS */;
INSERT INTO `homework` VALUES (1,'Math Homework','Solving algebraic equations'),(2,'History Assignment','Researching historical events'),(3,'Math Homework','Solving algebraic equations'),(4,'History Assignment','Researching historical events'),(5,'Math Homework','Solving algebraic equations'),(6,'History Assignment','Researching historical events'),(7,'Math Homework','Solving algebraic equations'),(8,'History Assignment','Researching historical events');
/*!40000 ALTER TABLE `homework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `homework_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homework_id` (`homework_id`),
  CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,'Math Lesson','2023-12-09 06:54:37',1),(2,'History Lesson','2023-12-09 06:54:37',2),(3,'Math Lesson','2023-12-11 13:05:05',1),(4,'History Lesson','2023-12-11 13:05:05',2),(5,'Math Lesson','2023-12-11 13:13:36',1),(6,'History Lesson','2023-12-11 13:13:36',2),(7,'Math Lesson','2023-12-11 14:51:01',1),(8,'History Lesson','2023-12-11 14:51:01',2);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessonschedule`
--

DROP TABLE IF EXISTS `lessonschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessonschedule` (
  `lesson_id` int NOT NULL,
  `schedule_id` int NOT NULL,
  PRIMARY KEY (`lesson_id`,`schedule_id`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `lessonschedule_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`),
  CONSTRAINT `lessonschedule_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessonschedule`
--

LOCK TABLES `lessonschedule` WRITE;
/*!40000 ALTER TABLE `lessonschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessonschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lesson_id` (`lesson_id`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'Monday Schedule','2023-12-09 06:54:37',NULL),(2,'Tuesday Schedule','2023-12-09 06:54:37',NULL),(3,'Monday Schedule','2023-12-11 13:05:05',NULL),(4,'Tuesday Schedule','2023-12-11 13:05:05',NULL),(5,'Monday Schedule','2023-12-11 13:13:36',NULL),(6,'Tuesday Schedule','2023-12-11 13:13:36',NULL),(7,'Monday Schedule','2023-12-11 14:51:01',NULL),(8,'Tuesday Schedule','2023-12-11 14:51:01',NULL);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 19:57:29

USE hw_19;

-- Додавання записів в Homework
INSERT INTO Homework (name, description) VALUES
    ('Homework 1', 'Description 1'),
    ('Homework 2', 'Description 2');

-- Додавання записів в Lesson
INSERT INTO Lesson (name, updatedAt, homework_id) VALUES
    ('Lesson 1', NOW(), 1),
    ('Lesson 2', NOW(), 2);

-- Додавання записів в Schedule
INSERT INTO schedule (name, updatedAt, lesson_id) VALUES
    ('Schedule 1', NOW(), 1),
    ('Schedule 2', NOW(), 2);