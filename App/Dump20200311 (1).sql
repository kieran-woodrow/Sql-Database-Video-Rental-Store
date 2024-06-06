CREATE DATABASE  IF NOT EXISTS `u19304308_VIDEOSTORE` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `u19304308_VIDEOSTORE`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: wheatley.cs.up.ac.za    Database: u19304308_VIDEOSTORE
-- ------------------------------------------------------
-- Server version	5.6.38-log

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Title` varchar(5) NOT NULL,
  `PhysicalAddress` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Ruben','Silverberg','Dr','5952 Aliquam St'),(2,'Maryan','Mayson','Ms','2311 Eu St'),(3,'Miquel','Couchesne','Mr','5273 Porttitor St'),(4,'Aja','Carlberg','Mr','422 Sit St'),(5,'Katya','Silverberg','Ms','4294 Lorem St'),(6,'Rafaela','Starner','Ms','3631 Mi St'),(7,'Kala','Huff','Mr','140 Lobortis St'),(8,'Hermilla','Clara','Dr','158 Laoreet St'),(9,'Miquel','Couchesne','Mr','6663 Odio St'),(10,'Jesusa','Tharrington','Mr','120 Donec St'),(11,'Joette','Streater','Ms','327 Praesent St'),(12,'Sanjuanita','Muff','Prof','4224 Duis St'),(13,'Miquel','Couchesne','Mr','175 Donec St'),(14,'Joey','Mysliwc','Mr','279 Ace St'),(15,'Samantha','Stengel','Ms','232 Quisque St');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_Movies`
--

DROP TABLE IF EXISTS `Customer_Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_Movies` (
  `MID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `DateBorrowed` date NOT NULL,
  KEY `MID_idx` (`MID`),
  KEY `CID_idx` (`CID`),
  CONSTRAINT `CID` FOREIGN KEY (`CID`) REFERENCES `Customer` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `MID` FOREIGN KEY (`MID`) REFERENCES `Movies` (`MovieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_Movies`
--

LOCK TABLES `Customer_Movies` WRITE;
/*!40000 ALTER TABLE `Customer_Movies` DISABLE KEYS */;
INSERT INTO `Customer_Movies` VALUES (1,1,'2019-12-29'),(2,3,'2020-02-10'),(3,2,'2020-02-05'),(4,7,'2020-02-10'),(6,8,'2020-02-05'),(8,1,'2019-12-29'),(9,5,'2019-12-29'),(10,8,'2020-02-05'),(11,5,'2019-12-29');
/*!40000 ALTER TABLE `Customer_Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_Series`
--

DROP TABLE IF EXISTS `Customer_Series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_Series` (
  `CustID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `DAteBorrowed` date NOT NULL,
  KEY `CustID_idx` (`CustID`),
  KEY `SID_idx` (`SID`),
  CONSTRAINT `CustID` FOREIGN KEY (`CustID`) REFERENCES `Customer` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SID` FOREIGN KEY (`SID`) REFERENCES `Series` (`SeriesID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_Series`
--

LOCK TABLES `Customer_Series` WRITE;
/*!40000 ALTER TABLE `Customer_Series` DISABLE KEYS */;
INSERT INTO `Customer_Series` VALUES (1,1,'2019-12-29'),(2,6,'2020-02-10'),(3,4,'2020-02-15'),(4,5,'2020-02-15'),(4,7,'2020-02-15'),(5,9,'2020-02-16'),(10,3,'2020-02-12');
/*!40000 ALTER TABLE `Customer_Series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movies` (
  `MovieID` int(11) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `YearReleased` int(11) NOT NULL,
  PRIMARY KEY (`MovieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES (1,'Captain Marvel',2019),(2,'Set It Up',2018),(3,'Crazy Rich Asians',2018),(4,'Love Actually',2003),(5,'Clueless',1995),(6,'Love, Simon',2018),(7,'The Dark Knight',2008),(8,'Die Hard',1988),(9,'Avengers: Endgame',2019),(10,'Bad Boys',1995),(11,'Hustlers',2019);
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Series`
--

DROP TABLE IF EXISTS `Series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Series` (
  `SeriesID` int(11) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Seasons` int(11) NOT NULL,
  PRIMARY KEY (`SeriesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Series`
--

LOCK TABLES `Series` WRITE;
/*!40000 ALTER TABLE `Series` DISABLE KEYS */;
INSERT INTO `Series` VALUES (1,'Desparate Housewives',8),(2,'Modern Family',7),(3,'Mr Robot',3),(4,'Law and Order',20),(5,'30 Rock',7),(6,'Friends',10),(7,'Parks and Rdcreation',7),(8,'The Big Bang Theory',6),(9,'Gossip Girl',6);
/*!40000 ALTER TABLE `Series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'u19304308_VIDEOSTORE'
--

--
-- Dumping routines for database 'u19304308_VIDEOSTORE'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-11  9:55:30
