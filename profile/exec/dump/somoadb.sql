-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: j10s001.p.ssafy.io    Database: somoadb
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB-1:11.3.2+maria~ubu2204

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
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `device_id` varchar(36) NOT NULL,
  `group_id` int(11) NOT NULL,
  `device_manufacturer` varchar(50) NOT NULL,
  `device_type` varchar(50) NOT NULL,
  `device_model` varchar(50) NOT NULL,
  `device_nickname` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`device_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `device_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_supply`
--

DROP TABLE IF EXISTS `device_supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_supply` (
  `device_supply_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(36) NOT NULL,
  `supply_id` varchar(36) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`device_supply_id`),
  KEY `device_id` (`device_id`),
  CONSTRAINT `device_supply_ibfk_1` FOREIGN KEY (`device_id`) REFERENCES `device` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_supply`
--

LOCK TABLES `device_supply` WRITE;
/*!40000 ALTER TABLE `device_supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'우리집','2024-04-04 00:00:35','2024-04-04 00:00:35'),(2,'우리집','2024-04-04 00:00:35','2024-04-04 00:00:35'),(3,'우리집','2024-04-04 00:00:35','2024-04-04 00:00:35'),(4,'우리집','2024-04-04 00:00:35','2024-04-04 00:00:35'),(5,'우리집','2024-04-04 00:00:35','2024-04-04 00:00:35'),(6,'우리집','2024-04-04 00:00:35','2024-04-04 00:00:35'),(7,'우리집','2024-04-04 00:00:35','2024-04-04 00:00:35'),(8,'우리집','2024-04-04 00:00:35','2024-04-04 00:00:35'),(9,'할머니댁','2024-04-04 00:00:35','2024-04-04 00:00:35'),(10,'DA같이하우스','2024-04-04 00:00:35','2024-04-04 00:00:35');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_supply`
--

DROP TABLE IF EXISTS `group_supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_supply` (
  `group_supply_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `supply_id` varchar(36) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`group_supply_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `group_supply_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_supply`
--

LOCK TABLES `group_supply` WRITE;
/*!40000 ALTER TABLE `group_supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_user` (
  `group_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_alarm` tinyint(1) NOT NULL DEFAULT 1,
  `ordered_num` int(11) NOT NULL,
  `role` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`group_user_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `group_user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `group_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` VALUES (1,1,1,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(2,2,2,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(3,3,3,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(4,4,4,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(5,5,5,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(6,6,6,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(7,7,7,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(8,8,8,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(9,9,1,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(10,10,2,1,1,'관리자','2024-04-04 00:00:35','2024-04-04 00:00:35'),(11,10,1,1,2,'모든 권한','2024-04-04 00:00:35','2024-04-04 00:00:35'),(12,1,3,1,2,'모든 권한','2024-04-04 00:00:35','2024-04-04 00:00:35'),(13,1,4,1,3,'모든 권한','2024-04-04 00:00:35','2024-04-04 00:00:35'),(14,1,5,1,4,'모든 권한','2024-04-04 00:00:35','2024-04-04 00:00:35'),(15,1,6,1,5,'모든 권한','2024-04-04 00:00:35','2024-04-04 00:00:35'),(16,1,7,1,6,'모든 권한','2024-04-04 00:00:35','2024-04-04 00:00:35'),(17,1,8,1,7,'모든 권한','2024-04-04 00:00:35','2024-04-04 00:00:35');
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `supply_id` varchar(36) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_status` varchar(30) NOT NULL COMMENT '주문완료, 배송중, 배송완료, 주문취소',
  `product_name` varchar(500) NOT NULL COMMENT '실제 상품의 이름(ex. 다우니 프리미엄 실내건조)',
  `order_store` varchar(500) NOT NULL COMMENT '쇼핑몰이름(ex. 싸팡, SSAG.COM)',
  `order_store_id` varchar(500) NOT NULL COMMENT '쇼핑몰 측에서 넘겨주는 주문번호',
  `product_img` varchar(500) DEFAULT NULL COMMENT '상품 이미지의 url',
  `order_count` int(11) NOT NULL COMMENT '구매 개수',
  `order_amount` varchar(30) DEFAULT NULL COMMENT 'ex: 1.5L, 3L',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`order_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_barcode` varchar(100) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `product_amount` varchar(30) DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `product_img` varchar(500) DEFAULT NULL,
  `product_type` varchar(500) NOT NULL,
  PRIMARY KEY (`product_barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('1000','한입 실내건조 액체세제','3L',7450,'1000.jpg','washerDetergent'),('1001','다우니 프리미엄 세탁세제 액체형 실내건조 본품, 3L, 2개','6L',32060,'1001.png','washerDetergent'),('1002','퍼실 딥클린 라벤더젤 드럼용 라벤더코튼향 액상세제 본품, 2.7L, 1개','2.7L',14930,'1002.png','washerDetergent'),('1003','비트 진드기 액체세제 일반용 본품, 3L, 1개','3L',8950,'1003.png','washerDetergent'),('1004','탐사 파워워시 액체세제, 2.5L, 4개','10L',10990,'1004.png','washerDetergent'),('1005','AURA 햇살 실내건조 초고농축 섬유유연제 뽀송한 코튼향','5.5L',22900,'1005.png','fabricSoftener'),('1006','탐사 로즈앤 후리지아 섬유유연제 3.1L, 3.1L, 4개입','12.4L',13510,'1006.png','fabricSoftener'),('1007','스너글 초고농축 섬유유연제 허거블 코튼 본품, 4L, 1개','4L',14400,'1007.png','fabricSoftener'),('1008','다우니 엑스퍼트 실내건조 프레시클린 초고농축 섬유유연제 본품, 1.05L, 3개','3.15L',17760,'1008.png','fabricSoftener'),('1009','피니시 식기세척기 세정제 레몬','250ml',6900,'1009.png','dishDetergent'),('1010','자연퐁 스팀워시 식기세척기용 액체 세제 1000ml 1개','1000ml',8200,'1010.png','dishDetergent'),('1011','아이리벳 식기세척기 액체 세제, 600ml, 2개','1200ml',22910,'1011.png','dishDetergent'),('1012','자연퐁 스팀워시 식기세척기용 린스, 500ml, 2개','1000ml',13980,'1012.png','dishRinse'),('1013','베리크린 식기세척기세제 린스 액체형, 린스(액체형) 1L, 2개','2L',11900,'1013.png','dishRinse'),('1014','부케가르니 에코 그린 식기세척기 린스, 1000ml, 1개','1000ml',9900,'1014.png','dishRinse'),('1015','상상그램 삼성 공기청정기 CFX-G100D 호환용 필터, 1개',NULL,17380,'1015.png','replaceableFilter'),('1016','상상그램 LG 퓨리케어 360 공기청정기 호환 필터 플러스, 퓨리케어 360도(헤파플러스)',NULL,15900,'1016.png','replaceableFilter'),('1017','필터왕국 삼성 공기청정기 복합필터, CFX-G100D',NULL,15600,'1017.png','replaceableFilter'),('1018','상상그램 위닉스 타워 Q 공기청정기 호환 필터 플러스, CAF-NK331/CAF-D0S5(헤파플러스), 1개',NULL,15490,'1018.png','replaceableFilter'),('1019','삼성 공기청정기 블루스카이 3000 6000 CFX-G100D 헤파 탈취 일체형 프리미엄 호환 필터, 1개',NULL,12840,'1019.png','replaceableFilter'),('1020','상상그램 LG 엘지 공기청정기 호환 국내산 프리미엄 필터, 퓨리케어 360도(프리미엄)',NULL,28400,'1020.png','replaceableFilter'),('1021','상상그램 위닉스 제로 2.0 공기청정기 호환 필터, CAF-G0S6(제로2.0), 1개',NULL,23800,'1021.png','replaceableFilter');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_nickname` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'rudqntjs','rudqntjs12','경부선','2024-04-04 00:00:35','2024-04-04 00:00:35'),(2,'ghdrlfehd1','ghdrlfehd112','홍길동','2024-04-04 00:00:35','2024-04-04 00:00:35'),(3,'ghdrlfehd2','ghdrlfehd212','홍갈동','2024-04-04 00:00:35','2024-04-04 00:00:35'),(4,'ghdrlfehd3','ghdrlfehd313','홍골동','2024-04-04 00:00:35','2024-04-04 00:00:35'),(5,'ghdrlfehd4','ghdrlfehd414','홍최동','2024-04-04 00:00:35','2024-04-04 00:00:35'),(6,'ghdrlfehd5','ghdrlfehd515','홍복동','2024-04-04 00:00:35','2024-04-04 00:00:35'),(7,'ghdrlfehd6','ghdrlfehd616','홍지동','2024-04-04 00:00:35','2024-04-04 00:00:35'),(8,'ghdrlfehd7','ghdrlfehd717','홍박동','2024-04-04 00:00:35','2024-04-04 00:00:35');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'somoadb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04  9:00:59
