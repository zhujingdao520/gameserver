/*
SQLyog v10.2 
MySQL - 5.0.90-community-nt : Database - eunitdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eunitdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eunitdb`;

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL auto_increment,
  `version` bigint(20) unsigned zerofill NOT NULL default '00000000000000000000',
  `header` varchar(100) NOT NULL,
  `body` blob NOT NULL,
  `processed` enum('not','active','done') NOT NULL default 'not',
  `producer_id` bigint(20) default NULL,
  `update_time` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `processed` (`processed`)
) ENGINE=MyISAM AUTO_INCREMENT=417 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`version`,`header`,`body`,`processed`,`producer_id`,`update_time`) values (414,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:59:51'),(415,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 15:16:33'),(416,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 15:21:01'),(413,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:57:26'),(412,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:56:40'),(410,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:51:19'),(411,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:55:21'),(409,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:49:24'),(405,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:40:05'),(406,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:40:28'),(407,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:45:30'),(408,00000000000000000000,'header2222','<body>Text</body>','not',1,'2014-03-20 14:48:13'),(404,00000000000000000000,'header121212','<body>Text</body>','not',1,'2014-03-20 14:38:39'),(403,00000000000000000000,'header','<body>Text</body>','not',1,'2014-03-19 15:09:31'),(402,00000000000000000012,'header','<body>Text</body>','not',1,'2014-03-18 17:39:27'),(401,00000000000000000000,'header','<body>Text</body>','not',1,'2014-03-18 15:47:45');

/*Table structure for table `property` */

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `id` bigint(20) NOT NULL auto_increment,
  `message_id` bigint(20) NOT NULL,
  `key` varchar(100) default NULL,
  `value` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `message` (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1201 DEFAULT CHARSET=utf8;

/*Data for the table `property` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(128) default NULL COMMENT '名字',
  `job` tinyint(4) default NULL COMMENT '职业',
  `sex` tinyint(4) default NULL,
  `platform` tinyint(4) default NULL COMMENT '平台',
  `create_time` int(11) default NULL,
  `scene_id` int(11) default NULL,
  `scene_key` int(11) default NULL,
  `scene_x` int(11) default NULL,
  `scene_y` int(11) default NULL,
  `last_scene_id` int(11) default NULL,
  `last_scene_key` int(11) default NULL,
  `last_scene_x` int(11) default NULL,
  `last_scene_y` int(11) default NULL,
  `level` int(11) default NULL,
  `exp` int(11) default NULL,
  `coin` int(11) default NULL,
  `gold` int(11) default NULL,
  `vip_level` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`job`,`sex`,`platform`,`create_time`,`scene_id`,`scene_key`,`scene_x`,`scene_y`,`last_scene_id`,`last_scene_key`,`last_scene_x`,`last_scene_y`,`level`,`exp`,`coin`,`gold`,`vip_level`) values (1,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(2,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(3,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(4,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(5,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(6,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(7,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(8,'test',1,1,1,2147483647,1,1,20,20,0,0,0,1,1,0,0,0,0),(9,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(10,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(11,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(12,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(13,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(14,'test',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(15,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(16,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(17,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(18,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(19,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(20,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(21,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(22,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(23,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(24,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(25,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(26,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(27,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(28,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(29,'test2',1,1,0,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(30,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(31,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(32,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(33,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(34,'test3',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(35,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(36,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(37,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(38,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(39,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(40,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(41,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(42,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(43,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(44,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(45,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(46,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(47,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(48,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(49,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(50,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(51,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(52,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(53,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(54,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(55,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0),(56,'test2',1,1,1,2147483647,1,1,20,20,0,0,0,0,1,1,0,0,0);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `level` int(11) default NULL,
  `exp` int(11) default NULL,
  `coin` int(11) default NULL,
  `gold` int(11) default NULL,
  `vip_level` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`user_id`,`level`,`exp`,`coin`,`gold`,`vip_level`) values (1,1,1,1,0,0,0),(2,6,1,1,0,0,0),(3,7,1,1,0,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
