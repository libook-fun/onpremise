-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: libook
-- ------------------------------------------------------
-- Server version	5.6.46

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
-- Table structure for table `t_book`
--

DROP TABLE IF EXISTS `t_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` varchar(36) NOT NULL COMMENT '书籍业务ID',
  `name` varchar(20) DEFAULT NULL COMMENT '书籍名',
  `category_id` varchar(36) DEFAULT NULL COMMENT '书籍分类业务ID',
  `state` int(5) DEFAULT '0' COMMENT '书籍状态',
  `author` varchar(20) DEFAULT NULL COMMENT '书籍作者',
  `description` varchar(200) DEFAULT NULL COMMENT '书籍描述',
  `active_chapter_id` varchar(36) DEFAULT NULL COMMENT '书籍活跃章节业务ID',
  `is_subbook` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可以作为丛书',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '书籍创建时间',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '书籍更新时间',
  PRIMARY KEY (`id`,`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book`
--

LOCK TABLES `t_book` WRITE;
/*!40000 ALTER TABLE `t_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_book_category`
--

DROP TABLE IF EXISTS `t_book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_book_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(36) NOT NULL COMMENT '书籍分类业务ID',
  `name` varchar(20) DEFAULT NULL COMMENT '书籍分类名',
  `state` int(5) DEFAULT '0' COMMENT '书籍分类状态',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '书籍分类创建时间',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '书籍分类更新时间',
  PRIMARY KEY (`id`,`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book_category`
--

LOCK TABLES `t_book_category` WRITE;
/*!40000 ALTER TABLE `t_book_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_book_chapter`
--

DROP TABLE IF EXISTS `t_book_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_book_chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_id` varchar(36) NOT NULL COMMENT '章节业务ID',
  `name` varchar(20) DEFAULT NULL COMMENT '章节名',
  `book_id` varchar(36) DEFAULT NULL COMMENT '章节所属书籍业务ID',
  `index` int(11) DEFAULT NULL COMMENT '章节排序索引号',
  `state` int(5) DEFAULT '0' COMMENT '章节状态',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '章节创建时间',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '章节更新时间',
  PRIMARY KEY (`id`,`chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book_chapter`
--

LOCK TABLES `t_book_chapter` WRITE;
/*!40000 ALTER TABLE `t_book_chapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_book_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_book_exhibition`
--

DROP TABLE IF EXISTS `t_book_exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_book_exhibition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exhibition_id` varchar(36) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '展位名',
  `state` int(5) DEFAULT '0' COMMENT '展位状态',
  `active_recommender_id` varchar(36) DEFAULT NULL COMMENT '展位最新推荐业务ID',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '展位创建时间',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '展位更新时间',
  PRIMARY KEY (`id`,`exhibition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book_exhibition`
--

LOCK TABLES `t_book_exhibition` WRITE;
/*!40000 ALTER TABLE `t_book_exhibition` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_book_exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_book_recommender`
--

DROP TABLE IF EXISTS `t_book_recommender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_book_recommender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recommender_id` varchar(36) NOT NULL COMMENT '推荐业务ID',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '推荐名',
  `book_id` varchar(36) DEFAULT NULL COMMENT '推荐书籍业务ID',
  `state` int(5) DEFAULT '0' COMMENT '推荐状态 0-未激活 1-激活',
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '推荐描述',
  `type` int(5) DEFAULT '0' COMMENT '推荐类型 10-首页banner位 11-首页编辑位 1-首页普通位 0-自定义展位',
  `exhibition_id` varchar(36) DEFAULT NULL COMMENT '推荐展位业务ID type==0 有效',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '推荐创建时间',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '推荐更新时间',
  PRIMARY KEY (`id`,`recommender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book_recommender`
--

LOCK TABLES `t_book_recommender` WRITE;
/*!40000 ALTER TABLE `t_book_recommender` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_book_recommender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_book_subbook`
--

DROP TABLE IF EXISTS `tr_book_subbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tr_book_subbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bind_id` varchar(36) NOT NULL COMMENT '绑定业务ID',
  `book_id` varchar(36) NOT NULL COMMENT '绑定丛书书籍业务ID',
  `parent_id` varchar(36) NOT NULL COMMENT '绑定主书书籍业务ID',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '绑定名',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '绑定创建时间',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '绑定更新时间',
  PRIMARY KEY (`id`,`bind_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_book_subbook`
--

LOCK TABLES `tr_book_subbook` WRITE;
/*!40000 ALTER TABLE `tr_book_subbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_book_subbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_book_subbook_view`
--

DROP TABLE IF EXISTS `v_book_subbook_view`;
/*!50001 DROP VIEW IF EXISTS `v_book_subbook_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_book_subbook_view` AS SELECT 
 1 AS `bind_id`,
 1 AS `parent_id`,
 1 AS `book_id`,
 1 AS `bind_name`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `name`,
 1 AS `category_id`,
 1 AS `state`,
 1 AS `author`,
 1 AS `description`,
 1 AS `active_chapter_id`,
 1 AS `is_subbook`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'libook'
--

--
-- Final view structure for view `v_book_subbook_view`
--

/*!50001 DROP VIEW IF EXISTS `v_book_subbook_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_book_subbook_view` AS select `tr_book_subbook`.`bind_id` AS `bind_id`,`tr_book_subbook`.`parent_id` AS `parent_id`,`t_book`.`book_id` AS `book_id`,`tr_book_subbook`.`name` AS `bind_name`,`tr_book_subbook`.`created_at` AS `created_at`,`tr_book_subbook`.`updated_at` AS `updated_at`,`t_book`.`name` AS `name`,`t_book`.`category_id` AS `category_id`,`t_book`.`state` AS `state`,`t_book`.`author` AS `author`,`t_book`.`description` AS `description`,`t_book`.`active_chapter_id` AS `active_chapter_id`,`t_book`.`is_subbook` AS `is_subbook` from (`t_book` left join `tr_book_subbook` on((`t_book`.`book_id` = `tr_book_subbook`.`book_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-10 13:26:26
