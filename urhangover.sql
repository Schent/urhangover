-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: urhangover
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add customer',7,'add_customer'),(20,'Can change customer',7,'change_customer'),(21,'Can delete customer',7,'delete_customer'),(22,'Can add bar',8,'add_bar'),(23,'Can change bar',8,'change_bar'),(24,'Can delete bar',8,'delete_bar'),(25,'Can add cart',9,'add_cart'),(26,'Can change cart',9,'change_cart'),(27,'Can delete cart',9,'delete_cart'),(28,'Can add order',10,'add_order'),(29,'Can change order',10,'change_order'),(30,'Can delete order',10,'delete_order'),(34,'Can add package',12,'add_package'),(35,'Can change package',12,'change_package'),(36,'Can delete package',12,'delete_package');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bar_bar`
--

DROP TABLE IF EXISTS `bar_bar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bar_bar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `district` varchar(100) NOT NULL,
  `tablenum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bar_bar`
--

LOCK TABLES `bar_bar` WRITE;
/*!40000 ALTER TABLE `bar_bar` DISABLE KEYS */;
INSERT INTO `bar_bar` VALUES (1,'Bakupub','HUAYKWANG',10),(2,'The resort Club','HUAYKWANG',10),(3,'Route66 Club','HUAYKWANG',10),(4,'Slim ','HUAYKWANG',10),(5,'Snop','RATCHADA',10),(6,'Mulligan\'s Irish Pub','PHANAKORN',10),(7,'Maggie Chooâ€™s','SILOM',10),(8,'365N Pub','LADPHRAO',10),(9,'Full moon Bar','LADPHRAO',10),(10,'Saxophone','CHATUCHAK',10),(11,'Rock Pub','CHATUCHAK',10),(12,'WP wine pub','CHATUCHAK',10),(13,'The pool Pub & restaurant','BANGKHEN',10),(14,'We Bar','BANGKHEN',10),(15,'Jabalah garden view & restaurant','BANGKHEN',10),(16,'Honeymoon','BANGKHEN',10),(17,'Parlour Restaurant and Bar','BANGKAPI',10),(18,'Levels Club','WATTHANA',10),(19,'Safehouse','WATTHANA',10),(20,'Wip168','WATTHANA',10),(21,'Falabella','PHATUMWAN',10);
/*!40000 ALTER TABLE `bar_bar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bar_package`
--

DROP TABLE IF EXISTS `bar_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bar_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bar_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bar_package`
--

LOCK TABLES `bar_package` WRITE;
/*!40000 ALTER TABLE `bar_package` DISABLE KEYS */;
INSERT INTO `bar_package` VALUES (1,1,'unlimited drink all night',699),(2,1,'3 bottle chang',210),(3,1,'3 bottle sigha',189),(4,1,'5 bottle chang',310),(5,1,'1 red label+5 mix',950),(6,1,'1 black label+ 5 mix',1400),(7,2,'3 bottle chang',220),(8,2,'3 bottle sigha',200),(9,2,'1 sangsom+ 5 mix',600),(10,2,'1 black label+ 5 mix',1550),(11,3,'5 bottle chang',380),(12,3,'5 bottle leo',400),(13,3,'1 red label+ 5 mix',999),(14,3,'1 black label+ 5mix',1499),(15,3,'1 sangsom+ 5mix',799),(16,4,'free',0),(17,5,'free',0),(18,6,'free',0),(19,7,'free',0),(20,8,'free',0),(21,9,'free',0),(22,10,'free',0),(23,11,'free',0),(24,12,'free',0),(25,13,'free',0),(26,14,'free',0),(27,15,'free',0),(28,16,'free',0),(29,17,'free',0),(30,18,'free',0),(31,19,'free',0),(32,20,'free',0),(33,21,'free',0);
/*!40000 ALTER TABLE `bar_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(8,'bar','bar'),(12,'bar','package'),(5,'contenttypes','contenttype'),(9,'ordering','cart'),(10,'ordering','order'),(6,'sessions','session'),(7,'usermanage','customer');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-11-20 18:35:27.910340'),(2,'auth','0001_initial','2016-11-20 18:35:37.078775'),(3,'admin','0001_initial','2016-11-20 18:35:39.202033'),(4,'admin','0002_logentry_remove_auto_add','2016-11-20 18:35:39.391963'),(5,'contenttypes','0002_remove_content_type_name','2016-11-20 18:35:40.554916'),(6,'auth','0002_alter_permission_name_max_length','2016-11-20 18:35:40.667039'),(7,'auth','0003_alter_user_email_max_length','2016-11-20 18:35:40.778996'),(8,'auth','0004_alter_user_username_opts','2016-11-20 18:35:40.820150'),(9,'auth','0005_alter_user_last_login_null','2016-11-20 18:35:41.449907'),(10,'auth','0006_require_contenttypes_0002','2016-11-20 18:35:41.493881'),(11,'auth','0007_alter_validators_add_error_messages','2016-11-20 18:35:41.551373'),(12,'auth','0008_alter_user_username_max_length','2016-11-20 18:35:41.884981'),(13,'sessions','0001_initial','2016-11-20 18:35:42.544609'),(14,'usermanage','0001_initial','2016-11-20 18:35:42.893611'),(15,'usermanage','0002_auto_20161120_1819','2016-11-20 18:35:43.002798'),(18,'bar','0001_initial','2016-11-24 04:53:08.243641'),(20,'bar','0002_package','2016-11-26 12:22:14.180880'),(25,'ordering','0001_initial','2016-11-27 00:01:57.137841'),(26,'ordering','0002_auto_20161127_0409','2016-11-27 04:09:35.750673');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('asqvrfrz792m86a1fut1yszqsdm5w9m4','Yzg4Nzg2M2UxYTk5MTY5NWQxODA4NGU4NWY1YzE4ZTUzMGRhNTYzYzp7Im9yZGVyX2lkIjo3MywidXNlciI6ImNwZWt1In0=','2016-12-11 16:06:40.399560'),('exllyi7x1orlhy9ll6iy2wqkaeteclo3','NWFkZjljNmEyMTY4NjgxMzhmOWE3ZTA4MGRkYmZmZDZmNWU4OTYwNTp7Im9yZGVyX2lkIjo3NywidXNlciI6InN1cGVydGFtIn0=','2016-12-11 17:14:05.526550'),('f50jkdplbbypv2vvye4zls5vxeys68r5','YWM4NTgzMTliOWRjYzljMjM1NjExOWQxYTA5YjQ3NTQyMmZiOTZkOTp7fQ==','2016-12-10 21:35:04.526133'),('g6t4g2wulo16xsiclgeemp8whg2m74t8','YzcyNmI2OWJhMWJjNzk2ZjhiZjFkMDljMzA0MTIzMmZlNTg2OTRiNTp7InVzZXIiOiJzY2hlbnQiLCJvcmRlcl9pZCI6NjB9','2016-12-11 12:25:09.036608'),('gskumgl9g4423a538cw9ekk9ps1gkq98','ODk2ODdmMjBmYjgxZTRkNTMyM2YzYjNhOGZiYjBkODhlODgwMzY3Yjp7InVzZXIiOiJzYWRmYXNkZiIsIm1lc3NhZ2UiOiJpbnZhbGlkIHVzZXJuYW1lIG9yIHBhYXdvcmQifQ==','2016-12-05 07:08:18.218946'),('lm6tc72womstponveihe0andvoxh5hkt','YmFiNTJjMzQ4NGE5N2NjZTZjMGExM2JlZmVjZTBhOGExYzc2ZjkwMzp7InVzZXIiOiJzY2hlbnQiLCJvcmRlcl9pZCI6Njd9','2016-12-11 15:33:37.148653'),('o8mq19xaz7p1o18009lylevlznd3ukok','MDBiMGE1YmE0YTY1YWE5MWU3MTA1MmRlZTdhNjhmZjQ4YzRkMmMyMDp7InVzZXIiOiJoaGhlYXJ0Iiwib3JkZXJfaWQiOjUzfQ==','2016-12-11 11:45:56.289937'),('r0gsefmdrk8m6ijrjcpkcdxdcj88hv3r','MTRlOTE4YTgxY2U3ZGQ1NjUwN2ViNjU2ZTlmMmUwNmRhY2U4NmYwMjp7InVzZXIiOiJhc2Rmc2RmYXNkZiJ9','2016-12-04 23:51:41.484874'),('w77e7c5hthwpmxl8905dv7l0ga07u94n','YzkxZjQ0YWFiNWNkOTAxOWY0YTEwN2RkMTNiMWYzODZjOGE2MTI1Mzp7InVzZXIiOiJzdXBlcnRhbSIsIm9yZGVyX2lkIjo3Mn0=','2016-12-11 15:53:43.995816'),('wej4y33y695nortwh3p1g2k0ph17fv8l','MDU0MDRmOTU3NjljNmE3ODI1OTZkZGQ0ZGJmOTk4Mzc3YjhmNTRkMTp7InVzZXIiOiIiLCJtZXNzYWdlIjoidXNlcm5hbWUgYWxyZWFkeSB1c2VkIn0=','2016-12-05 07:03:06.366009');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordering_cart`
--

DROP TABLE IF EXISTS `ordering_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordering_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `package_id_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ordering_cart_package_id_id_f404a5cf_uniq` (`package_id_id`),
  CONSTRAINT `ordering_cart_package_id_id_f404a5cf_fk_bar_package_id` FOREIGN KEY (`package_id_id`) REFERENCES `bar_package` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordering_cart`
--

LOCK TABLES `ordering_cart` WRITE;
/*!40000 ALTER TABLE `ordering_cart` DISABLE KEYS */;
INSERT INTO `ordering_cart` VALUES (1,30,1,0),(2,30,1,0),(3,30,1,0),(4,30,1,0),(5,30,1,0),(6,30,6,6),(7,31,4,9),(8,31,5,5),(9,32,1,9),(10,33,6,9),(11,34,6,9),(12,35,6,9),(13,36,3,9),(14,37,3,9),(15,38,3,9),(16,48,1,1),(17,49,1,7),(18,50,1,7),(19,51,7,5),(20,51,8,7),(21,52,7,4),(22,52,7,4),(23,53,3,8),(24,53,3,8),(25,54,7,5),(26,54,8,6),(27,55,7,5),(28,55,8,6),(29,56,7,5),(30,56,8,6),(31,57,7,5),(32,57,8,6),(33,58,7,5),(34,58,8,6),(35,59,7,5),(36,59,8,6),(37,60,7,5),(38,60,8,6),(39,61,7,8),(40,61,8,3),(41,62,33,4),(42,63,33,1),(43,64,1,1),(44,65,7,2),(45,66,5,3),(46,67,17,2),(47,68,7,2),(48,69,9,10),(49,70,8,1),(50,70,9,10),(51,71,17,2),(52,72,3,2),(53,73,8,2),(54,74,7,2),(55,75,1,3),(56,76,1,3),(57,77,3,4);
/*!40000 ALTER TABLE `ordering_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordering_order`
--

DROP TABLE IF EXISTS `ordering_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordering_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `bar_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `party_size` int(11) NOT NULL,
  `time` varchar(50) NOT NULL,
  `sumprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordering_order`
--

LOCK TABLES `ordering_order` WRITE;
/*!40000 ALTER TABLE `ordering_order` DISABLE KEYS */;
INSERT INTO `ordering_order` VALUES (1,1,1,'date',3,'time',0),(2,99,1,'27/11/2016',1,'6.30 pm.',0),(3,99,1,'27/11/2016',1,'6.30 pm.',0),(4,99,1,'27/11/2016',1,'6.30 pm.',0),(5,99,1,'27/11/2016',1,'6.30 pm.',0),(6,99,1,'27/11/2016',1,'6.30 pm.',0),(7,99,1,'27/11/2016',1,'6.30 pm.',0),(8,99,1,'27/11/2016',1,'6.30 pm.',0),(9,99,1,'27/11/2016',1,'6.30 pm.',0),(10,99,1,'27/11/2016',1,'6.30 pm.',0),(11,99,1,'27/11/2016',1,'6.30 pm.',0),(12,99,1,'27/11/2016',1,'6.30 pm.',0),(13,99,1,'27/11/2016',1,'6.30 pm.',0),(14,99,1,'27/11/2016',1,'6.30 pm.',0),(15,99,2,'27/11/2016',1,'6.30 pm.',0),(16,99,2,'27/11/2016',1,'6.30 pm.',0),(17,99,2,'27/11/2016',1,'6.30 pm.',0),(18,99,2,'27/11/2016',1,'6.30 pm.',0),(19,99,1,'27/11/2016',1,'6.30 pm.',0),(20,99,1,'27/11/2016',1,'6.30 pm.',0),(21,99,1,'27/11/2016',1,'6.30 pm.',0),(22,99,1,'27/11/2016',1,'6.30 pm.',0),(23,99,1,'27/11/2016',1,'6.30 pm.',0),(24,99,1,'27/11/2016',1,'6.30 pm.',0),(25,99,1,'27/11/2016',1,'6.30 pm.',0),(26,99,1,'27/11/2016',1,'6.30 pm.',0),(27,99,1,'27/11/2016',1,'6.30 pm.',0),(28,99,1,'27/11/2016',1,'6.30 pm.',0),(29,99,1,'27/11/2016',1,'6.30 pm.',0),(30,99,1,'27/11/2016',1,'6.30 pm.',0),(31,99,1,'27/11/2016',1,'6.30 pm.',0),(32,5,1,'27/11/2016',1,'6.30 pm.',0),(33,5,1,'27/11/2016',1,'6.30 pm.',0),(34,5,1,'27/11/2016',1,'6.30 pm.',0),(35,5,1,'27/11/2016',1,'6.30 pm.',0),(36,5,1,'27/11/2016',1,'6.30 pm.',0),(37,5,1,'27/11/2016',1,'6.30 pm.',0),(38,5,1,'27/11/2016',1,'6.30 pm.',0),(39,5,1,'27/11/2016',1,'6.30 pm.',0),(40,5,1,'27/11/2016',1,'6.30 pm.',0),(41,5,1,'27/11/2016',1,'6.30 pm.',0),(42,5,1,'27/11/2016',1,'6.30 pm.',0),(43,5,1,'27/11/2016',1,'6.30 pm.',0),(44,5,4,'27/11/2016',1,'6.30 pm.',0),(45,5,4,'27/11/2016',1,'6.30 pm.',0),(46,5,1,'27/11/2016',1,'6.30 pm.',0),(47,5,1,'27/11/2016',1,'6.30 pm.',0),(48,5,1,'27/11/2016',1,'6.30 pm.',0),(49,2,1,'27/11/2016',1,'6.30 pm.',0),(50,2,1,'27/11/2016',1,'6.30 pm.',0),(51,6,2,'27/11/2016',1,'7.30 pm.',0),(52,2,2,'27/11/2016',1,'6.30 pm.',0),(53,6,1,'27/11/2016',1,'6.30 pm.',0),(54,5,2,'27/11/2016',1,'6.30 pm.',0),(55,5,2,'27/11/2016',1,'6.30 pm.',0),(56,5,2,'27/11/2016',1,'6.30 pm.',0),(57,5,2,'27/11/2016',1,'6.30 pm.',0),(58,5,2,'27/11/2016',1,'6.30 pm.',0),(59,5,2,'27/11/2016',1,'6.30 pm.',0),(60,5,2,'27/11/2016',1,'6.30 pm.',0),(61,5,2,'27/11/2016',1,'6.30 pm.',0),(62,5,21,'27/11/2016',1,'6.30 pm.',0),(63,5,21,'27/11/2016',1,'6.30 pm.',0),(64,5,1,'27/11/2016',1,'6.30 pm.',0),(65,5,2,'27/11/2016',1,'6.30 pm.',0),(66,5,1,'27/11/2016',1,'6.30 pm.',0),(67,5,5,'27/11/2016',1,'6.30 pm.',0),(68,2,2,'27/11/2016',1,'6.30 pm.',0),(69,2,2,'27/11/2016',1,'6.30 pm.',0),(70,2,2,'27/11/2016',1,'6.30 pm.',0),(71,1,5,'27/11/2016',1,'6.30 pm.',0),(72,1,1,'27/11/2016',1,'6.30 pm.',0),(73,2,2,'27/11/2016',1,'6.30 pm.',0),(74,5,2,'27/11/2016',1,'6.30 pm.',0),(75,5,1,'27/11/2016',1,'6.30 pm.',0),(76,5,1,'27/11/2016',1,'6.30 pm.',0),(77,1,1,'27/11/2016',1,'6.30 pm.',0);
/*!40000 ALTER TABLE `ordering_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanage_customer`
--

DROP TABLE IF EXISTS `usermanage_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanage_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanage_customer`
--

LOCK TABLES `usermanage_customer` WRITE;
/*!40000 ALTER TABLE `usermanage_customer` DISABLE KEYS */;
INSERT INTO `usermanage_customer` VALUES (1,'antitham','Ananwattanaporn','supertam','0866625526','086625526','supertam@gmail.com',0),(2,'Kasetsart','Prapiroon','cpeku','1q2w3e4r','045764135','cpeku@gmail.com',0),(3,'testname','testsur','tester','tester1','099999999','tester@gmail.com',0),(4,'nutmos','jobs','nutmos','ihaveapple','0832321234','nm@ku.th',0),(5,'songpon','srisawai','schent','songpon','0820399195','sk.invo@ku.th',0),(6,'Thanapol','heart','hhheart','heart1234','0814513154','heart@ku.th',0);
/*!40000 ALTER TABLE `usermanage_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  0:15:43
