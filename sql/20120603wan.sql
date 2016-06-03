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
  `parent_categroy_id` int(11) NOT NULL DEFAULT '0' COMMENT '父类ID',
  `categroy_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `uodate_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `zt_blog` */

insert  into `zt_blog`(`id`,`title`,`content`,`pic`,`author`,`read_num`,`description`,`parent_categroy_id`,`categroy_id`,`create_time`,`uodate_time`) values (3,'帝国cms首页、自定义页面如何实现分页','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;&quot;&gt;帝国cms首页以及自定义页面如何实现分页，添加如下js代码即可&lt;/span&gt;&lt;img src=&quot;http://yangqingblog.com/Public/vendor/umeditor/php/upload/20160603/14649539452798.png&quot; _src=&quot;http://yangqingblog.com/Public/vendor/umeditor/php/upload/20160603/14649539452798.png&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;1、添加代码：&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;!doctype html&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;html&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;head&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;meta charset=&amp;quot;gb2312&amp;quot;&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;title&amp;gt;www.yangqq.com&amp;lt;/title&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;meta name=&amp;quot;keywords&amp;quot; content=&amp;quot;&amp;quot; /&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;meta name=&amp;quot;description&amp;quot; content=&amp;quot;&amp;quot; /&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(255, 0, 0);&quot;&gt;&amp;lt;script src=&amp;quot;page.js&amp;quot;&amp;gt;&amp;lt;/script&amp;gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;/head&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;body&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(255, 0, 0);&quot;&gt;&amp;lt;ul id=&amp;quot;list&amp;quot; style=&amp;quot;display:none;&amp;quot;&amp;gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(255, 0, 0);&quot;&gt;[e:loop={&amp;#39;selfinfo&amp;#39;,10,0,0}]&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(255, 0, 0);&quot;&gt;&amp;lt;li&amp;gt;&amp;lt;a href=&amp;quot;&amp;lt;?=$bqsr[titleurl]?&amp;gt;&amp;quot; title=&amp;quot;&amp;lt;?=$bqr[title]?&amp;gt;&amp;quot; &amp;gt;&amp;lt;/li&amp;gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(255, 0, 0);&quot;&gt;[/e:loop]&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(255, 0, 0);&quot;&gt;&amp;lt;/ul&amp;gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(255, 0, 0);&quot;&gt;&amp;lt;ul id=&amp;quot;list2&amp;quot;&amp;gt;&amp;lt;/ul&amp;gt;&amp;lt;script src=&amp;quot;page2.js&amp;quot;&amp;gt;&amp;lt;/script&amp;gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;/body&amp;gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&amp;lt;/html&amp;gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','upload/2016-06-03/57516cc7530c8.png','姐大',0,' \r\n              帝国cms首页以及自定义页面如何实现分页，添加如下js代码即可帝国cms首页以及自定义页面如何实现分页，添加如下js代码即可\r\n\r\n1、添加代码：\r\n\r\n&lt;!doctype html&gt;\r\n\r\n&lt;html&gt;\r\n\r\n&lt;head&gt;\r\n\r\n&lt;meta charset=&quot;gb2312&quot;&gt;\r\n\r\n&lt;title&gt;www.yangqq.com&lt;/title&gt;\r\n\r\n&lt;meta name=&quot;keywords&quot; content=&quot;&quot; /&gt;\r\n\r\n&lt;meta name=&quot;description&quot; content=&quot;&quot; /&gt;\r\n\r\n&lt;script src=&quot;page.js&quot;&gt;&lt;/script&gt;\r\n\r\n&lt;/head&gt;\r\n\r\n&lt;body&gt;\r\n\r\n&lt;ul id=&quot;list&quot; style=&quot',7,11,1464954055,0),(4,'【已评选】给我模板PSD源文件，我给你设计HTML！','&lt;ul class=&quot;infos&quot; style=&quot;margin: 20px 30px 20px 0px; padding: 0px; list-style: none; overflow: hidden; line-height: 28px; font-size: 14px; text-indent: 2em; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;参加条件：只要你有PSD模板（原创）即可参与评选活动&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;活动内容：集思广益，各位爱好设计的小伙伴们，拿出你们最得意的作品，曾经设计过的，或者正在设计中的PSD源文件，并且愿意参加本活动，本站将评选出前三名优秀的博客设计模板，免费写出相应的Html页面！&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;活动时间：截止时间为2015年3月31日&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;参与步骤：只要在有限活动时间内，打包你的PSD设计图，（有详细的设计思路更好）投稿到邮箱 dancesmiling@qq.com 即可！&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;本站声明：&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;1、此次活动解释权归本站所有&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;2、请保证原创作品&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;3、评选出的优秀psd，设计出的html模板将会在本站提供展示！均保留原创设计者的版权&lt;/p&gt;&lt;/ul&gt;&lt;ul class=&quot;infos&quot; style=&quot;margin: 20px 30px 20px 0px; padding: 0px; list-style: none; overflow: hidden; line-height: 28px; font-size: 14px; text-indent: 2em; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;&quot;&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 5px; padding: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 14px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;由于参赛人数较少，且大多数给的是企业模板，不符合参加要求，本站最终评选出一个优秀作品，作者窦耀宇。作品《&lt;a href=&quot;http://www.yangqq.com/download/div/2015-04-10/746.html&quot; target=&quot;_blank&quot; style=&quot;margin: 0px; padding: 0px; text-decoration: none; color: rgb(51, 51, 51);&quot;&gt;柠檬绿兔小白个人博客&lt;/a&gt;》&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','upload/2016-06-03/5751710287370.jpg','哇哈哈',0,' \r\n                  参加条件：只要你有PSD模板（原创）即可参与评选活动\r\n\r\n    活动内容：集思广益，各位爱好设计的小伙伴们，拿出你们最得意的作品，曾经设计过的，或者正在设计中的PSD源文件，并且愿意参加本活动，本站将评选出前三名优秀的博客设计模板，免费写出相应的Html页面！\r\n\r\n    活动时间：截止时间为2015年3月31日\r\n\r\n    参与步骤：只要在有限活动时间内，打包你的PSD设计图，（有详细的设计思路更好）投稿到邮箱 dancesmiling@qq.com 即可！ \r\n\r\n    本站声明：\r\n\r\n    1、此次活动解释权归本站所有\r\n\r\n    2、请保证原创作品\r\n\r\n    3、评选出的优秀psd，设计出的html模板将会在本站提供展示！均保留原创设计者的版权\r\n\r\n     \r\n\r\n    \r\n\r\n\r\n',7,11,1464955138,0);

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

/*Table structure for table `zt_comment` */

DROP TABLE IF EXISTS `zt_comment`;

CREATE TABLE `zt_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `zt_doing` */

insert  into `zt_doing`(`id`,`content`,`pic`,`create_time`,`upate_time`) values (2,'生活的坑都是自己挖的！譬如，听别人讲话，听到最后，耳朵里只会记住两类话：最愿意听的和最不愿意听的。然后，喜欢听的未必化成快乐，但不喜欢听的一定化成了痛苦，其他的都化成了风。','upload/2016-06-03/57510c0e7c962.jpg',1464847022,0),(3,'有一天当你发现疏远和拉黑的可能是曾经最聊得来的朋友；背后指责你说你不好的可能是你过去最亲密的伙伴；出手阻碍你的或许是你当初的合伙人；你才会明白，这个世界没有什么是不变的，这个时代，因为利益会有许多人做出许多你想不到的事。沙里淘金后，你才知道原来身边一直对你好的人有多珍贵。','upload/2016-06-03/575108bf20eb7.jpg',1464928447,0),(4,'汉语版：圣诞快乐！ 闵南语：心蛋快裸！ 江西版：生蛋快落！ 英文版：哈皮克瑞死么死！ 俄语版：买个萝卜切吧切吧炖了吧 韩语版：空起哇 撒起哇 哭死米塔 日文版：锅你得洗哇 碗你得洗哇 盆你得洗哇 锅碗盆你得洗哇～','upload/2016-06-03/575108d0571d8.jpg',1464928464,0),(5,'时隔多年，本来以为已经豪不介怀，当真正的真相被揭开，却再也找不着可以原谅的理由','upload/2016-06-03/575108e1569ec.jpg',1464928481,0);

/*Table structure for table `zt_user` */

DROP TABLE IF EXISTS `zt_user`;

CREATE TABLE `zt_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱',
  `nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '昵称',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zt_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
