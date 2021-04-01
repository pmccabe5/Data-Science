CREATE DATABASE  IF NOT EXISTS `epa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `epa`;-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: epa
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
-- Table structure for table `assignedto`
--

DROP TABLE IF EXISTS `assignedto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignedto` (
  `ProjNo` char(7) NOT NULL DEFAULT '',
  `EmpNo` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProjNo`,`EmpNo`),
  KEY `EmpNo` (`EmpNo`),
  CONSTRAINT `assignedto_ibfk_1` FOREIGN KEY (`ProjNo`) REFERENCES `project` (`ProjNo`),
  CONSTRAINT `assignedto_ibfk_2` FOREIGN KEY (`EmpNo`) REFERENCES `employee` (`EmpNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignedto`
--

LOCK TABLES `assignedto` WRITE;
/*!40000 ALTER TABLE `assignedto` DISABLE KEYS */;
INSERT INTO `assignedto` VALUES ('COMP453',101),('COMP354',103),('COMP353',104),('COMP453',104),('COMP231',106),('COMP278',106),('COMP353',106),('COMP354',106),('COMP231',107),('COMP353',107),('COMP278',110),('COMP354',110),('COMP354',112),('COMP453',112);
/*!40000 ALTER TABLE `assignedto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmpNo` int NOT NULL,
  `EmpName` varchar(20) NOT NULL,
  PRIMARY KEY (`EmpNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (101,'Jones'),(103,'Smith'),(104,'Clark'),(106,'Byron'),(107,'Evans'),(110,'Drew'),(112,'Smith');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `ProjNo` char(7) NOT NULL DEFAULT '',
  `ProjName` varchar(20) NOT NULL,
  `Supervisor` int DEFAULT NULL,
  PRIMARY KEY (`ProjNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('COMP231','Mobile App',107),('COMP278','Web Service',110),('COMP353','Database',104),('COMP354','OS',110),('COMP453','Database',101);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23 11:23:26
