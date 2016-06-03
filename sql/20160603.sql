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

/*Table structure for table `zt_category` */

DROP TABLE IF EXISTS `zt_category`;

CREATE TABLE `zt_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `zt_category` */

insert  into `zt_category`(`id`,`name`,`parent_id`) values (1,'慢生活',0),(2,'日记',1),(3,'欣赏',1),(4,'程序人生',1),(5,'经典语录',1),(7,'学无止境',0),(8,'心得笔记',7),(9,'IP查询',7),(10,'CSS3|Html5',7),(11,'网站建设',7),(12,'JS经典实例',7),(13,'推荐工具',7);

/*Table structure for table `zt_doing` */

DROP TABLE IF EXISTS `zt_doing`;

CREATE TABLE `zt_doing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '内容',
  `pic` varchar(50) NOT NULL DEFAULT '' COMMENT '缩略图',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `upate_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `zt_doing` */

insert  into `zt_doing`(`id`,`content`,`pic`,`create_time`,`upate_time`) values (2,'生活的坑都是自己挖的！譬如，听别人讲话，听到最后，耳朵里只会记住两类话：最愿意听的和最不愿意听的。然后，喜欢听的未必化成快乐，但不喜欢听的一定化成了痛苦，其他的都化成了风。','upload/2016-06-03/57510c0e7c962.jpg',1464847022,0),(3,'有一天当你发现疏远和拉黑的可能是曾经最聊得来的朋友；背后指责你说你不好的可能是你过去最亲密的伙伴；出手阻碍你的或许是你当初的合伙人；你才会明白，这个世界没有什么是不变的，这个时代，因为利益会有许多人做出许多你想不到的事。沙里淘金后，你才知道原来身边一直对你好的人有多珍贵。','upload/2016-06-03/575108bf20eb7.jpg',1464928447,0),(4,'汉语版：圣诞快乐！ 闵南语：心蛋快裸！ 江西版：生蛋快落！ 英文版：哈皮克瑞死么死！ 俄语版：买个萝卜切吧切吧炖了吧 韩语版：空起哇 撒起哇 哭死米塔 日文版：锅你得洗哇 碗你得洗哇 盆你得洗哇 锅碗盆你得洗哇～','upload/2016-06-03/575108d0571d8.jpg',1464928464,0),(5,'时隔多年，本来以为已经豪不介怀，当真正的真相被揭开，却再也找不着可以原谅的理由','upload/2016-06-03/575108e1569ec.jpg',1464928481,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
