-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: phonedb
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `customertable`
--

DROP TABLE IF EXISTS `customertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customertable` (
  `Customer_ID` varchar(10) NOT NULL,
  `Customer_Name` varchar(20) DEFAULT NULL,
  `Customer_Add` varchar(20) DEFAULT NULL,
  `Customer_Tel` varchar(20) DEFAULT NULL,
  `Customer_Email` varchar(20) DEFAULT NULL,
  `Customer_Gender` varchar(15) DEFAULT NULL,
  `Customer_Age` int DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customertable`
--

LOCK TABLES `customertable` WRITE;
/*!40000 ALTER TABLE `customertable` DISABLE KEYS */;
INSERT INTO `customertable` VALUES ('C111','Asher','Bangkok','0912345678','asher@gamil.com','Male',23),('C222','May','Yangon','0987654321','may@gmail.com','Female',20);
/*!40000 ALTER TABLE `customertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydb`
--

DROP TABLE IF EXISTS `mydb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mydb` (
  `id` int NOT NULL,
  `Name` varchar(15) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydb`
--

LOCK TABLES `mydb` WRITE;
/*!40000 ALTER TABLE `mydb` DISABLE KEYS */;
INSERT INTO `mydb` VALUES (1,'May',20);
/*!40000 ALTER TABLE `mydb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonetable`
--

DROP TABLE IF EXISTS `phonetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phonetable` (
  `Phone_ID` varchar(20) NOT NULL,
  `phone_Name` varchar(20) DEFAULT NULL,
  `phone_Type` varchar(20) DEFAULT NULL,
  `phone_Quantity` int DEFAULT NULL,
  `phone_Price` int DEFAULT NULL,
  `Customer_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Phone_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `phonetable_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customertable` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonetable`
--

LOCK TABLES `phonetable` WRITE;
/*!40000 ALTER TABLE `phonetable` DISABLE KEYS */;
INSERT INTO `phonetable` VALUES ('P111','SamSung','GalaxyS',19,4000000,'C111'),('P222','iPhone','iPhone17',2,90000000,'C222');
/*!40000 ALTER TABLE `phonetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertable` (
  `user_ID` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES ('A111','#111#'),('A222','#222#');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-05 21:59:26
