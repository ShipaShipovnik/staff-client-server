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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-10-25 09:49:58.392821','1','Продажи',1,'[{\"added\": {}}]',7,1),(2,'2024-10-25 09:50:26.817630','2','Обслуживание',1,'[{\"added\": {}}]',7,1),(3,'2024-10-25 09:50:35.521576','3','Бухгалтерия',1,'[{\"added\": {}}]',7,1),(4,'2024-10-25 09:50:46.569481','1','Бухгалтер',1,'[{\"added\": {}}]',8,1),(5,'2024-10-25 09:50:50.521660','2','Аналитик',1,'[{\"added\": {}}]',8,1),(6,'2024-10-25 09:50:54.337482','3','Администратор',1,'[{\"added\": {}}]',8,1),(7,'2024-10-25 09:50:58.841986','4','Директор',1,'[{\"added\": {}}]',8,1),(8,'2024-10-25 09:51:03.409451','5','Зам-директора',1,'[{\"added\": {}}]',8,1),(9,'2024-10-25 09:51:08.448286','6','Уборщик',1,'[{\"added\": {}}]',8,1),(10,'2024-10-25 09:51:19.257550','7','Бариста',1,'[{\"added\": {}}]',8,1),(11,'2024-10-25 09:52:41.033167','1','Дейв Страйдер',1,'[{\"added\": {}}]',9,1),(12,'2024-10-25 09:52:51.208895','1','Дейв Страйдер',2,'[]',9,1),(13,'2024-10-25 09:54:41.614049','4','Перевозка',1,'[{\"added\": {}}]',7,1),(14,'2024-10-25 09:55:23.943833','2','Грант Керли',1,'[{\"added\": {}}]',9,1),(15,'2024-10-25 09:55:51.301472','3','Аня',1,'[{\"added\": {}}]',9,1),(16,'2024-10-25 09:56:24.875893','4','Джимми',1,'[{\"added\": {}}]',9,1),(17,'2024-10-25 09:56:56.483981','5','Вриска',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25 13:58:25
