-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: normalization_all
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `categories_4`
--

DROP TABLE IF EXISTS `categories_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_4` (
  `cat_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cat_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_4`
--

LOCK TABLES `categories_4` WRITE;
/*!40000 ALTER TABLE `categories_4` DISABLE KEYS */;
INSERT INTO `categories_4` VALUES ('FURN','Мебель'),('LIGHT','Освещение');
/*!40000 ALTER TABLE `categories_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_3`
--

DROP TABLE IF EXISTS `clients_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_3` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_3`
--

LOCK TABLES `clients_3` WRITE;
/*!40000 ALTER TABLE `clients_3` DISABLE KEYS */;
INSERT INTO `clients_3` VALUES (1,'ООО Ромашка','ул. Ленина 1'),(2,'ИП Петров','ул. Мира 5');
/*!40000 ALTER TABLE `clients_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_1`
--

DROP TABLE IF EXISTS `customers_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_1` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_1`
--

LOCK TABLES `customers_1` WRITE;
/*!40000 ALTER TABLE `customers_1` DISABLE KEYS */;
INSERT INTO `customers_1` VALUES (1,'Иванов Иван','Москва'),(2,'Петров Петр','Казань'),(3,'Сидорова Анна','Москва');
/*!40000 ALTER TABLE `customers_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments_2`
--

DROP TABLE IF EXISTS `departments_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments_2` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_2`
--

LOCK TABLES `departments_2` WRITE;
/*!40000 ALTER TABLE `departments_2` DISABLE KEYS */;
INSERT INTO `departments_2` VALUES (1,'IT','Москва'),(2,'HR','Казань');
/*!40000 ALTER TABLE `departments_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_2`
--

DROP TABLE IF EXISTS `employees_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_2` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `employees_2_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments_2` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_2`
--

LOCK TABLES `employees_2` WRITE;
/*!40000 ALTER TABLE `employees_2` DISABLE KEYS */;
INSERT INTO `employees_2` VALUES (1,'Анна Петрова',1),(2,'Игорь Смирнов',1),(3,'Елена Кузнецова',2);
/*!40000 ALTER TABLE `employees_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_4`
--

DROP TABLE IF EXISTS `items_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_4` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supp_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `cat_code` (`cat_code`),
  KEY `supp_id` (`supp_id`),
  CONSTRAINT `items_4_ibfk_1` FOREIGN KEY (`cat_code`) REFERENCES `categories_4` (`cat_code`),
  CONSTRAINT `items_4_ibfk_2` FOREIGN KEY (`supp_id`) REFERENCES `suppliers_4` (`supp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_4`
--

LOCK TABLES `items_4` WRITE;
/*!40000 ALTER TABLE `items_4` DISABLE KEYS */;
INSERT INTO `items_4` VALUES (1,'Стол','FURN',1,5000.00),(2,'Стул','FURN',1,2000.00),(3,'Стол','FURN',2,5500.00),(4,'Лампа','LIGHT',3,1500.00);
/*!40000 ALTER TABLE `items_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items_3`
--

DROP TABLE IF EXISTS `order_items_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items_3` (
  `order_id` int NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_name`),
  CONSTRAINT `order_items_3_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders_3` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items_3`
--

LOCK TABLES `order_items_3` WRITE;
/*!40000 ALTER TABLE `order_items_3` DISABLE KEYS */;
INSERT INTO `order_items_3` VALUES (1,'Бумага',5000.00),(2,'Ручки',2000.00),(3,'Бумага',3000.00);
/*!40000 ALTER TABLE `order_items_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_3`
--

DROP TABLE IF EXISTS `orders_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_3` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `rep_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `client_id` (`client_id`),
  KEY `rep_id` (`rep_id`),
  CONSTRAINT `orders_3_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients_3` (`client_id`),
  CONSTRAINT `orders_3_ibfk_2` FOREIGN KEY (`rep_id`) REFERENCES `representatives_3` (`rep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_3`
--

LOCK TABLES `orders_3` WRITE;
/*!40000 ALTER TABLE `orders_3` DISABLE KEYS */;
INSERT INTO `orders_3` VALUES (1,1,1),(2,1,1),(3,2,2);
/*!40000 ALTER TABLE `orders_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_1`
--

DROP TABLE IF EXISTS `products_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_1` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_1`
--

LOCK TABLES `products_1` WRITE;
/*!40000 ALTER TABLE `products_1` DISABLE KEYS */;
INSERT INTO `products_1` VALUES (1,'Ноутбук',50000.00),(2,'Мышь',1000.00),(3,'Монитор',15000.00);
/*!40000 ALTER TABLE `products_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_2`
--

DROP TABLE IF EXISTS `projects_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_2` (
  `proj_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_budget` decimal(10,2) DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  PRIMARY KEY (`proj_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `projects_2_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments_2` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_2`
--

LOCK TABLES `projects_2` WRITE;
/*!40000 ALTER TABLE `projects_2` DISABLE KEYS */;
INSERT INTO `projects_2` VALUES (1,'Сайт',100000.00,1),(2,'Найм',50000.00,2);
/*!40000 ALTER TABLE `projects_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representatives_3`
--

DROP TABLE IF EXISTS `representatives_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representatives_3` (
  `rep_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`rep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representatives_3`
--

LOCK TABLES `representatives_3` WRITE;
/*!40000 ALTER TABLE `representatives_3` DISABLE KEYS */;
INSERT INTO `representatives_3` VALUES (1,'Иванов','+79991112233'),(2,'Сидоров','+79994445566');
/*!40000 ALTER TABLE `representatives_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_items_1`
--

DROP TABLE IF EXISTS `sale_items_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_items_1` (
  `sale_id` int NOT NULL,
  `prod_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`prod_id`),
  KEY `prod_id` (`prod_id`),
  CONSTRAINT `sale_items_1_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales_1` (`sale_id`),
  CONSTRAINT `sale_items_1_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `products_1` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_items_1`
--

LOCK TABLES `sale_items_1` WRITE;
/*!40000 ALTER TABLE `sale_items_1` DISABLE KEYS */;
INSERT INTO `sale_items_1` VALUES (1,1,1),(2,2,2),(3,1,1),(4,3,2);
/*!40000 ALTER TABLE `sale_items_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_1`
--

DROP TABLE IF EXISTS `sales_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_1` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `cust_id` (`cust_id`),
  CONSTRAINT `sales_1_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers_1` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_1`
--

LOCK TABLES `sales_1` WRITE;
/*!40000 ALTER TABLE `sales_1` DISABLE KEYS */;
INSERT INTO `sales_1` VALUES (1,1,'2026-10-01'),(2,1,'2026-10-01'),(3,2,'2026-10-02'),(4,3,'2026-10-03');
/*!40000 ALTER TABLE `sales_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers_4`
--

DROP TABLE IF EXISTS `suppliers_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers_4` (
  `supp_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`supp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers_4`
--

LOCK TABLES `suppliers_4` WRITE;
/*!40000 ALTER TABLE `suppliers_4` DISABLE KEYS */;
INSERT INTO `suppliers_4` VALUES (1,'Фабрика 1','Москва'),(2,'Фабрика 2','Казань'),(3,'СветоТорг','Питер');
/*!40000 ALTER TABLE `suppliers_4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-18 21:16:38
