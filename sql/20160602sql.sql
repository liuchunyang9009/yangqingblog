/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.11 : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blog`;

/*Table structure for table `zt_blog` */

DROP TABLE IF EXISTS `zt_blog`;

CREATE TABLE `zt_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `pic` varchar(50) NOT NULL DEFAULT '' COMMENT '图片',
  `author` varchar(10) NOT NULL DEFAULT '' COMMENT '作者',
  `read_num` int(11) NOT NULL DEFAULT '0' COMMENT '访问次数',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '描述',
  `categroy_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `create_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `uodate_id` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zt_blog` */

/*Table structure for table `zt_category` */

DROP TABLE IF EXISTS `zt_category`;

CREATE TABLE `zt_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zt_category` */

/*Table structure for table `zt_comment` */

DROP TABLE IF EXISTS `zt_comment`;

CREATE TABLE `zt_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usre_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `blog_id` int(11) NOT NULL DEFAULT '0' COMMENT 'blog的id',
  `content` varchar(300) NOT NULL DEFAULT '' COMMENT '内容',
  `top` int(11) NOT NULL DEFAULT '0' COMMENT '顶的次数',
  `id_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 1删除',
  `is_report` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否举报 1举报',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zt_comment` */

/*Table structure for table `zt_doing` */

DROP TABLE IF EXISTS `zt_doing`;

CREATE TABLE `zt_doing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '内容',
  `pic` varchar(50) NOT NULL DEFAULT '' COMMENT '缩略图',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `upate_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zt_doing` */

/*Table structure for table `zt_usre` */

DROP TABLE IF EXISTS `zt_usre`;

CREATE TABLE `zt_usre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱',
  `nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '昵称',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zt_usre` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
