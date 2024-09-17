CREATE DATABASE  IF NOT EXISTS `university_sql_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `university_sql_schema`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: university_sql_schema
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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `courses_id` int NOT NULL AUTO_INCREMENT,
  `courses_name` varchar(45) NOT NULL,
  `courses_credits` int NOT NULL,
  `courses_professors_id` int NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `courses_id_UNIQUE` (`courses_id`),
  KEY `courses_professors_id_idx` (`courses_professors_id`),
  KEY `courses_name` (`courses_name`),
  CONSTRAINT `courses_professors_id` FOREIGN KEY (`courses_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Análisis Matemático',6,1),(2,'Física',1,2),(3,'Geología',0,3),(4,'Biología',4,4),(5,'Seguridad Informática',3,5),(6,'Fundamentos de la Ingeniería Industrial',3,6),(7,'Química I',5,7),(8,'Teoría de la Información',5,8),(9,'Matemáticas II',1,9),(10,'Circuitos Eléctricos',6,10),(11,'Termodinámica',0,11),(12,'Bases de Datos',2,12),(13,'Robótica',3,13),(14,'Química II',3,14),(15,'Electrónica Analógica y Digital',1,15),(16,'Fisica II',1,2),(17,'Estructuras de Datos y Algoritmos',3,5),(18,'Optimización de Procesos',6,6),(19,'Química Experimental',1,7),(20,'Comunicación Inalámbrica',1,8),(21,'Álgebra I',3,9),(22,'Microcontroladores',5,10),(23,'Dinámica de Máquinas',2,11),(24,'Inteligencia Artificial',3,12),(25,'Resistencia de Materiales',2,13),(26,'Química industrial',0,14),(27,'Electromagnetismo',2,15),(28,'Control de Calidad',3,6),(29,'Electroquímica',3,7),(30,'Seguridad en Redes',5,8),(31,'Algebra II',4,9);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_notes` decimal(4,2) DEFAULT NULL,
  `grades_students_id` int NOT NULL,
  `grades_courses_id` int NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  UNIQUE KEY `unique_student_course` (`grades_students_id`,`grades_courses_id`),
  KEY `grades_note` (`grades_notes`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,9.51,66,20),(2,4.46,49,1),(3,3.66,44,2),(4,0.34,2,18),(5,8.71,44,25),(6,8.45,50,19),(7,6.11,8,14),(8,3.23,44,29),(9,7.26,57,28),(10,4.50,6,29),(11,2.79,11,21),(12,3.65,36,25),(13,7.29,23,17),(14,1.35,26,3),(15,7.41,80,7),(16,0.36,63,19),(17,2.92,45,21),(18,2.29,53,9),(19,8.39,63,24),(20,7.56,26,22),(21,3.19,47,19),(22,2.20,27,8),(23,7.26,22,1),(24,3.27,14,19),(25,3.60,26,8),(26,6.59,45,26),(27,2.89,37,30),(28,8.09,47,27),(29,9.57,18,7),(30,1.19,42,16),(31,4.14,88,13),(32,2.18,38,23),(33,1.90,47,17),(34,6.00,93,27),(35,5.64,13,12),(36,1.47,46,31),(37,4.94,23,22),(38,5.55,25,25),(39,3.84,34,17),(40,2.63,14,24),(41,5.42,23,3),(42,8.83,67,23),(43,1.82,20,14),(44,1.82,62,19),(45,7.23,85,2),(46,5.81,8,4),(47,2.92,88,26),(48,7.19,21,5),(49,3.24,69,23),(50,5.29,66,30),(51,0.06,83,18),(52,6.74,88,3),(53,8.14,79,7),(54,5.57,7,21),(55,5.57,77,5),(56,6.50,47,4),(57,6.32,18,18),(58,1.82,31,5),(59,7.32,61,19),(60,4.10,55,11),(61,8.78,36,15),(62,2.00,95,11),(63,6.27,43,10),(64,8.20,10,7),(65,7.49,41,10),(66,5.28,85,24),(67,5.24,84,27),(68,5.95,12,10),(69,7.57,92,5),(70,1.84,31,12),(71,3.81,96,21),(72,0.59,31,26),(73,9.35,90,1),(74,6.41,5,8),(75,4.07,69,4),(76,7.80,46,4),(77,6.76,79,6),(78,6.92,47,26),(79,1.57,24,29),(80,6.58,70,2),(81,6.71,42,13),(82,5.86,47,12),(83,8.86,61,27),(84,5.63,65,8),(85,8.16,62,5),(86,2.34,9,26),(87,0.16,66,21),(88,7.04,63,26),(89,0.97,16,26),(90,1.34,69,9),(91,3.29,16,6),(92,2.36,20,27),(93,0.47,60,8),(94,7.56,68,18),(95,5.10,40,6),(96,9.82,4,26),(97,5.13,25,3),(98,6.40,26,28),(99,1.12,9,22),(100,1.30,5,2),(101,1.88,16,2),(102,8.07,73,18),(103,1.57,80,1),(104,5.54,15,18),(105,4.32,77,20),(106,7.34,44,19),(107,4.69,57,31),(108,6.14,35,13),(109,3.84,98,17),(110,4.33,3,9),(111,8.70,17,26),(112,0.18,100,8),(113,3.58,67,5),(114,3.93,27,25),(115,4.39,20,20),(116,0.11,68,8),(117,3.78,88,1),(118,2.41,44,14),(119,4.19,65,17),(120,1.85,7,18),(121,2.91,3,26),(122,0.10,21,12),(123,1.40,37,3),(124,3.41,81,11),(125,0.38,45,23),(126,6.37,22,9),(127,1.91,66,24),(128,7.45,10,6),(129,3.99,32,2),(130,9.41,25,7),(131,6.93,57,2),(132,0.46,31,10),(133,8.15,62,15),(134,9.26,89,17),(135,1.84,95,6),(136,1.21,100,30),(137,4.66,86,5),(138,8.77,1,21),(139,6.87,94,15),(140,8.12,65,26),(141,5.11,45,17),(142,5.14,96,11),(143,3.85,80,31),(144,8.94,1,6),(145,0.34,60,9),(146,7.18,91,13),(147,7.42,5,18),(148,9.96,88,12),(149,2.29,44,30),(150,0.93,94,26),(151,1.91,46,16),(152,3.14,65,12),(153,8.20,77,25),(154,5.41,25,28),(155,3.60,84,14),(156,4.24,8,13),(157,9.11,58,21),(158,8.89,43,7),(159,2.05,90,3),(160,8.35,12,11),(161,6.20,24,19),(162,8.33,25,26),(163,2.18,68,30),(164,1.11,27,16),(165,7.04,49,18),(166,2.84,20,10),(167,5.57,3,22),(168,7.93,62,9),(169,9.29,29,15),(170,1.61,60,21),(171,6.87,20,17),(172,9.30,51,6),(173,5.63,67,21),(174,9.60,10,4),(175,1.85,1,28),(176,2.96,73,31),(177,2.35,14,20),(178,7.59,47,31),(179,8.03,54,21),(180,8.68,41,4),(181,0.84,76,17),(182,4.96,15,24),(183,5.15,89,27),(184,4.76,93,13),(185,7.86,98,31),(186,1.11,9,18),(187,8.54,69,14),(188,5.86,90,16),(189,9.94,59,12),(190,8.45,94,16),(191,9.11,100,25),(192,0.10,77,19),(193,6.41,31,13),(194,4.55,91,22),(195,8.40,7,22),(196,0.67,12,15),(197,2.42,96,22),(198,4.07,22,8),(199,9.56,43,5),(200,0.21,3,8),(201,0.67,50,7),(202,6.71,38,22),(203,7.39,60,28),(204,6.53,51,23),(205,6.84,71,19),(206,2.47,20,21),(207,4.49,1,22),(208,8.66,99,18),(209,3.74,51,22),(210,7.25,87,5),(211,1.15,92,17),(212,0.93,71,8),(213,1.39,68,24),(214,6.31,52,31),(215,0.09,4,15),(216,8.68,42,9),(217,8.81,4,30),(218,9.80,45,29),(219,6.34,40,1),(220,9.57,28,12),(221,2.10,78,23),(222,3.63,39,17),(223,8.38,60,11),(224,8.78,52,22),(225,7.27,56,9),(226,4.03,29,26),(227,3.28,76,12),(228,8.48,47,13),(229,5.34,90,5),(230,9.70,32,30),(231,9.84,98,6),(232,2.44,45,22),(233,5.95,87,16),(234,5.33,62,25),(235,2.27,7,5),(236,8.89,59,4),(237,2.22,42,25),(238,5.22,56,3),(239,5.59,1,1),(240,5.30,19,9),(241,2.29,25,21),(242,0.20,91,2),(243,2.37,63,17),(244,4.89,67,30),(245,7.52,69,28),(246,5.24,16,18),(247,3.37,82,10),(248,9.27,57,6),(249,3.73,30,5),(250,8.13,30,10),(251,0.85,70,7),(252,2.49,37,31),(253,4.51,61,20),(254,7.90,48,1),(255,4.94,35,19),(256,4.62,32,31),(257,3.13,83,26),(258,3.93,22,3),(259,1.67,29,8),(260,1.63,57,9),(261,8.81,17,7),(262,5.45,58,31),(263,8.34,22,30),(264,2.31,4,5),(265,3.72,63,4),(266,9.63,38,25),(267,5.32,43,9),(268,2.11,56,15),(269,9.51,21,20),(270,9.25,5,12),(271,3.48,20,30),(272,7.64,27,7),(273,1.50,9,29),(274,1.41,7,25),(275,8.01,97,20),(276,3.03,64,5),(277,8.12,55,22),(278,1.13,20,19),(279,8.45,27,3),(280,8.37,1,31),(281,2.04,44,9),(282,6.70,88,9),(283,8.29,14,26),(284,6.21,50,2),(285,4.28,88,8),(286,1.95,15,12),(287,0.71,92,23),(288,0.35,12,27),(289,5.76,37,9),(290,8.25,13,24),(291,2.95,8,19),(292,9.39,50,5),(293,3.07,9,15),(294,7.46,9,25),(295,0.54,50,20),(296,2.40,92,22),(297,7.24,72,6),(298,3.07,14,7),(299,2.98,49,23),(300,0.89,91,21),(301,1.13,54,16),(302,8.73,13,25),(303,1.24,15,2),(304,8.99,69,13),(305,6.56,2,19),(306,3.73,29,29),(307,7.62,20,26),(308,3.51,66,1),(309,0.76,55,28),(310,4.65,62,16),(311,7.49,44,13),(312,1.68,81,29),(313,1.68,35,16),(314,7.24,72,11),(315,8.51,53,13),(316,6.40,27,22),(317,3.63,64,3),(318,0.30,71,1),(319,2.55,55,27),(320,1.64,18,28),(321,5.90,48,23),(322,3.62,35,10),(323,2.47,45,2),(324,1.46,11,31),(325,2.36,8,28),(326,4.37,87,9),(327,3.19,50,26),(328,5.09,69,19),(329,3.41,4,18),(330,9.13,52,27),(331,6.83,18,2),(332,9.04,75,16),(333,5.83,15,15),(334,7.10,49,5),(335,0.81,45,3),(336,4.15,99,15),(337,6.70,66,25),(338,0.16,87,2),(339,6.07,26,27),(340,6.80,63,5),(341,6.91,82,22),(342,1.97,79,23),(343,3.93,31,9),(344,5.81,5,14),(345,2.79,19,10),(346,2.46,21,29),(347,3.63,81,15),(348,4.57,75,19),(349,4.65,8,15),(350,4.91,10,13),(351,7.25,97,5),(352,4.99,75,14),(353,0.19,7,16),(354,9.22,58,12),(355,7.33,100,2),(356,6.55,18,17),(357,6.55,2,11),(358,2.72,16,7),(359,5.06,18,1),(360,4.35,86,2),(361,7.34,35,4),(362,3.13,83,22),(363,4.55,39,4),(364,4.77,77,26),(365,0.57,24,6),(366,9.62,30,16),(367,6.25,28,27),(368,2.21,76,5),(369,6.38,44,16),(370,2.27,67,16),(371,9.18,85,12),(372,4.85,57,7),(373,7.15,72,18),(374,2.40,49,20),(375,2.89,37,10),(376,0.49,52,16),(377,3.46,70,11),(378,2.48,32,24),(379,6.45,100,21),(380,2.85,91,23),(381,1.11,23,6),(382,4.52,47,6),(383,3.70,40,20),(384,0.86,50,8),(385,4.97,23,7),(386,2.63,65,31),(387,1.60,89,2),(388,4.90,21,21),(389,7.78,6,18),(390,3.67,98,21),(391,0.69,6,22),(392,3.76,82,19),(393,1.90,84,8),(394,8.81,25,4),(395,7.39,31,24),(396,1.93,99,21),(397,5.66,23,14),(398,4.89,99,19),(399,4.34,19,5),(400,6.39,27,14),(401,6.04,4,28),(402,1.64,10,12),(403,8.24,69,2),(404,8.07,58,25),(405,1.95,66,3),(406,4.58,42,11),(407,8.41,13,3),(408,8.07,97,23),(409,8.25,8,7),(410,2.53,15,8),(411,0.62,36,31),(412,1.29,40,29),(413,6.26,84,5),(414,3.87,51,15),(415,7.06,34,29),(416,1.56,90,9),(417,9.45,71,3),(418,5.88,30,27),(419,9.70,53,8),(420,9.67,2,28),(421,1.66,76,14),(422,8.62,58,19),(423,0.61,99,17),(424,8.43,51,9),(425,1.98,74,30),(426,4.21,78,11),(427,4.01,52,7),(428,1.35,3,5),(429,1.78,3,24),(430,4.05,96,17),(431,6.71,32,14),(432,9.49,80,5),(433,9.22,52,25),(434,6.04,99,30),(435,5.43,66,17),(436,6.20,55,3),(437,1.61,62,2),(438,6.12,82,21),(439,7.62,58,17),(440,0.82,42,8),(441,0.13,50,17),(442,8.83,36,26),(443,7.67,5,7),(444,5.75,34,28),(445,6.72,99,8),(446,9.41,31,29),(447,8.54,65,22),(448,1.28,81,4),(449,6.36,90,31),(450,5.02,50,6),(451,9.62,78,25),(452,5.19,30,8),(453,8.38,3,31),(454,9.53,56,21),(455,3.22,6,6),(456,9.32,14,22),(457,7.41,21,15),(458,0.60,50,15),(459,1.63,5,25),(460,8.53,2,26),(461,4.68,95,19),(462,4.32,91,11),(463,5.94,60,7),(464,1.62,48,15),(465,5.38,12,14),(466,5.29,91,27),(467,3.22,78,8),(468,5.03,60,12),(469,9.78,56,5),(470,1.25,21,1),(471,9.71,39,23),(472,7.09,35,11),(473,8.91,26,9),(474,6.19,59,23),(475,3.16,34,30),(476,4.44,74,17),(477,6.70,86,24),(478,1.15,64,1),(479,5.61,89,15),(480,0.33,72,28),(481,6.62,59,20),(482,3.14,28,28),(483,9.10,72,7),(484,9.22,56,6),(485,6.94,18,8),(486,2.68,56,19),(487,2.81,28,8),(488,3.32,54,24),(489,3.31,35,28),(490,8.36,19,20),(491,0.94,80,8),(492,0.65,9,2),(493,2.95,26,4),(494,3.46,74,27),(495,9.25,39,24),(496,0.87,51,20),(497,2.01,47,24),(498,2.10,75,28),(499,4.94,41,18),(500,7.55,6,12);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `professors_id` int NOT NULL AUTO_INCREMENT,
  `professors_name` varchar(45) NOT NULL,
  `professors_lastname_one` varchar(45) NOT NULL,
  `professors_lastname_two` varchar(45) NOT NULL,
  `professors_specialty` varchar(45) NOT NULL,
  `professors_email` varchar(45) NOT NULL,
  `professors_mobile` varchar(15) NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE KEY `professors_id_UNIQUE` (`professors_id`),
  UNIQUE KEY `professors_email_UNIQUE` (`professors_email`),
  KEY `professors_name` (`professors_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (1,'Yolanda','Gutiérrez','Fernández','Matemáticas','yolanda@university.com','555-555-5555'),(2,'Carmen','Martín','Muñoz','Física','carmen@university.com','555-555-5555'),(3,'Andrés','Alonso','Fernández','Geología','andres@university.com','555-555-5555'),(4,'Carlos','Sánchez','Diez','Biología','carlos@university.com','555-555-5555'),(5,'Mariola','Aranburu','García','Informática','mariola@university.com','555-555-5555'),(6,'Luis','Olabarria','Simón','Ingeniería Industrial','luis@university.com','555-555-5555'),(7,'Lucia','Gutiérrez','Nieto','Química','lucia@university.com','555-555-5555'),(8,'Nekane','Pérez','Rodríguez','Telecomunicaciones','nekane@university.com','555-555-5555'),(9,'Maria','Tajes','Buendia','Matemáticas','maria@university.com','555-555-5555'),(10,'Julio','Simón','Ojeda','Electrónica','julio@university.com','555-555-5555'),(11,'Jon','Calle','Rojo','Ingeniería Mecánica','jon@university.com','555-555-5555'),(12,'Laura','Elizo','Serrano','Informática','laura@university.com','555-555-5555'),(13,'Cristina','Alonso','García','Ingeniería Mecánica','cristina@university.com','555-555-5555'),(14,'Marta','Iglesias','Gomez','Química','marta@university.com','555-555-5555'),(15,'Pedro','Izquierdo','Sánchez','Electrónica','pedro@university.com','555-555-5555');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(45) NOT NULL,
  `students_lastname_one` varchar(45) NOT NULL,
  `students_lastname_two` varchar(45) NOT NULL,
  `students_email` varchar(45) NOT NULL,
  `students_mobile` varchar(15) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `studentes_id_UNIQUE` (`students_id`),
  UNIQUE KEY `students_email_UNIQUE` (`students_email`),
  KEY `students_name` (`students_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Juan','Pérez','García','student1@student.com','555 555 5555'),(2,'María','Gómez','Rodríguez','student2@student.com','555 555 5555'),(3,'Pedro','Sánchez','Fernández','student3@student.com','555 555 5555'),(4,'Ana','López','Martínez','student4@student.com','555 555 5555'),(5,'Luis','Díaz','González','student5@student.com','555 555 5555'),(6,'Carmen','Torres','Jiménez','student6@student.com','555 555 5555'),(7,'Carlos','Romero','Pérez','student7@student.com','555 555 5555'),(8,'Laura','Rubio','Morales','student8@student.com','555 555 5555'),(9,'Miguel','Castro','Ortega','student9@student.com','555 555 5555'),(10,'Lucía','Molina','Torres','student10@student.com','555 555 5555'),(11,'Javier','Suárez','Herrera','student11@student.com','555 555 5555'),(12,'Marta','Marín','Moreno','student12@student.com','555 555 5555'),(13,'Antonio','Ruiz','López','student13@student.com','555 555 5555'),(14,'Paula','Gil','Navarro','student14@student.com','555 555 5555'),(15,'Sergio','Iglesias','García','student15@student.com','555 555 5555'),(16,'Elena','Flores','Gómez','student16@student.com','555 555 5555'),(17,'Manuel','Cortés','Díaz','student17@student.com','555 555 5555'),(18,'Patricia','Medina','Romero','student18@student.com','555 555 5555'),(19,'David','Vargas','Jiménez','student19@student.com','555 555 5555'),(20,'Cristina','Núñez','Gutiérrez','student20@student.com','555 555 5555'),(21,'Raúl','Delgado','Castillo','student21@student.com','555 555 5555'),(22,'Isabel','León','Pérez','student22@student.com','555 555 5555'),(23,'Fernando','Santos','Ramos','student23@student.com','555 555 5555'),(24,'Sara','Herrera','Romero','student24@student.com','555 555 5555'),(25,'Alberto','Lozano','Martín','student25@student.com','555 555 5555'),(26,'Rosa','Molina','Morales','student26@student.com','555 555 5555'),(27,'Alejandro','Ortega','González','student27@student.com','555 555 5555'),(28,'Natalia','Vázquez','Fernández','student28@student.com','555 555 5555'),(29,'Francisco','Ríos','Ortega','student29@student.com','555 555 5555'),(30,'Adriana','Moreno','Pérez','student30@student.com','555 555 5555'),(31,'Álvaro','Ortega','Suárez','student31@student.com','555 555 5555'),(32,'Teresa','Gutiérrez','Ruiz','student32@student.com','555 555 5555'),(33,'Daniel','Garrido','Martínez','student33@student.com','555 555 5555'),(34,'Beatriz','Cabrera','Fernández','student34@student.com','555 555 5555'),(35,'Pablo','Pastor','Navarro','student35@student.com','555 555 5555'),(36,'Susana','Nieto','Romero','student36@student.com','555 555 5555'),(37,'Ignacio','Carrillo','Lozano','student37@student.com','555 555 5555'),(38,'Eva','Lara','Torres','student38@student.com','555 555 5555'),(39,'Roberto','Peña','Fernández','student39@student.com','555 555 5555'),(40,'Claudia','Fuentes','García','student40@student.com','555 555 5555'),(41,'Tomás','Ramos','López','student41@student.com','555 555 5555'),(42,'Julia','Castro','García','student42@student.com','555 555 5555'),(43,'Esteban','Solís','Moreno','student43@student.com','555 555 5555'),(44,'Gloria','Alonso','Jiménez','student44@student.com','555 555 5555'),(45,'Hugo','Escudero','González','student45@student.com','555 555 5555'),(46,'Alicia','Márquez','Ortiz','student46@student.com','555 555 5555'),(47,'Ángel','Vega','Pérez','student47@student.com','555 555 5555'),(48,'Olga','Prieto','Fernández','student48@student.com','555 555 5555'),(49,'Gustavo','Ortega','Díaz','student49@student.com','555 555 5555'),(50,'Noelia','Hernández','García','student50@student.com','555 555 5555'),(51,'Joaquín','Sánchez','Herrera','student51@student.com','555 555 5555'),(52,'Marcos','Medina','Navarro','student52@student.com','555 555 5555'),(53,'Eva','Salazar','Ruiz','student53@student.com','555 555 5555'),(54,'Victor','Ortiz','Moreno','student54@student.com','555 555 5555'),(55,'Sofía','Delgado','Ramírez','student55@student.com','555 555 5555'),(56,'Ramón','Romero','Fernández','student56@student.com','555 555 5555'),(57,'Mercedes','Castro','García','student57@student.com','555 555 5555'),(58,'Gonzalo','López','Jiménez','student58@student.com','555 555 5555'),(59,'Irene','Rubio','Torres','student59@student.com','555 555 5555'),(60,'Rodrigo','Fernández','Pérez','student60@student.com','555 555 5555'),(61,'Blanca','Hernández','Ortiz','student61@student.com','555 555 5555'),(62,'Óscar','Vargas','Pérez','student62@student.com','555 555 5555'),(63,'Lorena','Iglesias','Ramírez','student63@student.com','555 555 5555'),(64,'Diego','Gil','Fernández','student64@student.com','555 555 5555'),(65,'Verónica','Ríos','Herrera','student65@student.com','555 555 5555'),(66,'Ricardo','Martín','Díaz','student66@student.com','555 555 5555'),(67,'Bárbara','Molina','Ortega','student67@student.com','555 555 5555'),(68,'Cristian','Marín','Fernández','student68@student.com','555 555 5555'),(69,'Silvia','Lozano','Navarro','student69@student.com','555 555 5555'),(70,'Héctor','Suárez','López','student70@student.com','555 555 5555'),(71,'Clara','Rubio','Jiménez','student71@student.com','555 555 5555'),(72,'Mariano','León','Herrera','student72@student.com','555 555 5555'),(73,'Violeta','Rodríguez','Ruiz','student73@student.com','555 555 5555'),(74,'Eduardo','Castillo','Fernández','student74@student.com','555 555 5555'),(75,'Ruth','Cortés','Ortega','student75@student.com','555 555 5555'),(76,'Felipe','Ruiz','Pérez','student76@student.com','555 555 5555'),(77,'Lourdes','Roldán','Morales','student77@student.com','555 555 5555'),(78,'Ricardo','Arroyo','Sánchez','student78@student.com','555 555 5555'),(79,'Verónica','Ramírez','Gómez','student79@student.com','555 555 5555'),(80,'Luis','García','Martínez','student80@student.com','555 555 5555'),(81,'Rocío','Castro','Navarro','student81@student.com','555 555 5555'),(82,'Adrián','Vega','López','student82@student.com','555 555 5555'),(83,'Natalia','Alonso','Herrera','student83@student.com','555 555 5555'),(84,'Antonio','Montes','García','student84@student.com','555 555 5555'),(85,'Julia','Suárez','Romero','student85@student.com','555 555 5555'),(86,'Ángel','Sánchez','Ríos','student86@student.com','555 555 5555'),(87,'María','Torres','Castro','student87@student.com','555 555 5555'),(88,'Rubén','Reyes','Díaz','student88@student.com','555 555 5555'),(89,'Helena','Gómez','Pérez','student89@student.com','555 555 5555'),(90,'Jorge','Paredes','López','student90@student.com','555 555 5555'),(91,'Claudia','Pérez','Iglesias','student91@student.com','555 555 5555'),(92,'Andrés','Gutiérrez','Ramos','student92@student.com','555 555 5555'),(93,'Gabriela','González','Martínez','student93@student.com','555 555 5555'),(94,'Emilio','García','Gómez','student94@student.com','555 555 5555'),(95,'Paula','Morales','Navarro','student95@student.com','555 555 5555'),(96,'Óscar','Ferrer','López','student96@student.com','555 555 5555'),(97,'Inés','Castro','Ríos','student97@student.com','555 555 5555'),(98,'Carlos','Gómez','Suárez','student98@student.com','555 555 5555'),(99,'Marina','García','Romero','student99@student.com','555 555 5555'),(100,'Samuel','González','Ríos','student100@student.com','555 555 5555');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'university_sql_schema'
--

--
-- Dumping routines for database 'university_sql_schema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-17 22:44:36
