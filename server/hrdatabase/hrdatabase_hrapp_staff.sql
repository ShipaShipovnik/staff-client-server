-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hrdatabase
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `hrapp_staff`
--

DROP TABLE IF EXISTS `hrapp_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hrapp_staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dept_id` int NOT NULL,
  `job_id` int NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `hrapp_staff_dept_id_2d6ee578_fk_hrapp_department_dept_id` (`dept_id`),
  KEY `hrapp_staff_job_id_08aadd06_fk_hrapp_job_job_id` (`job_id`),
  CONSTRAINT `hrapp_staff_dept_id_2d6ee578_fk_hrapp_department_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `hrapp_department` (`dept_id`),
  CONSTRAINT `hrapp_staff_job_id_08aadd06_fk_hrapp_job_job_id` FOREIGN KEY (`job_id`) REFERENCES `hrapp_job` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hrapp_staff`
--

LOCK TABLES `hrapp_staff` WRITE;
/*!40000 ALTER TABLE `hrapp_staff` DISABLE KEYS */;
INSERT INTO `hrapp_staff` VALUES (1,'Дейв Страйдер',13,'23498273847','dave@gmail.com',1,3),(2,'Грант Керли',35,'23422342342','curly@gmail.com',4,3),(3,'Аня',32,'цуацуац','anya@gmail.com',4,2),(4,'Джимми',35,'23498273847','432323y@gmail.com',4,6),(5,'Вриска',13,'34534567','v@gmail.com',1,5);
/*!40000 ALTER TABLE `hrapp_staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25 13:58:26
