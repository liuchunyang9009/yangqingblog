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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `zt_blog` */

insert  into `zt_blog`(`id`,`title`,`content`,`pic`,`author`,`read_num`,`description`,`parent_categroy_id`,`categroy_id`,`create_time`,`uodate_time`) values (1,'IP要突破2000+了','&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28px; text-indent: 28px; white-space: normal;&quot;&gt;很久都没有更新网站了，现在得空看了下网站怎么样了，没有想到，百度权重4,PR3,访问IP也在上升，一年的时间没有更新，看来一次性做好一个网站很有必要，这回一劳永逸了 。。。。不过，我还是得更新模板，要不然损失好些老朋友呢&lt;/span&gt;&lt;img src=&quot;http://yangqing.com/Public/vendor/umeditor/php/upload/20160603/14649446131411.jpg&quot; _src=&quot;http://yangqing.com/Public/vendor/umeditor/php/upload/20160603/14649446131411.jpg&quot;/&gt;&lt;/p&gt;','upload/2016-06-03/5751482fae8eb.jpg','杨青',0,'  很久都没有更新网站了，现在得空看了下网站怎么样了，没有想到，百度权重4,PR3,访问IP也在上升，一年的时间没有更新，看来一次性做好一个网站很有必要，这回一劳永逸了 。。hahaha。。不过，我还是得更新模板，要不然损失好些老朋友呢\r\n              ',1,2,1464944632,0),(2,'【孕期日记】生活本该如此','&lt;ul class=&quot;infos&quot; style=&quot;margin: 20px 30px 20px 0px; padding: 0px; list-style: none; overflow: hidden; line-height: 28px; font-size: 14px; text-indent: 2em; color: rgb(102, 102, 102); font-family: 宋体, Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;p style=&quot;margin-top: 0px; padding: 0px;&quot;&gt;这是第一篇2015年的生活日记，我的这个博客也因为孕期给耽搁了不少，要不然每个月都能出一两套模板，或者定时更新一些技术文章，群里面也很少参与讨论。现在因为这个即将到来的小家伙，我不得不舍弃一些时间和精力。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; padding: 0px;&quot;&gt;以前说过，女程序员的职业规划，大多数在婚姻后都选择了家庭。我也不例外，家为主，事业为辅。打理博客和做网站成了业余的工作。现在逛母婴论坛，参与活动，比我自己的博客还勤快。昨天也因为攒积分兑换玩具和尿布的事情，发动了一些我能肯定他们能帮忙的朋友，来帮我注册攒积分。当天更新积分后我就兑换了1700个积分。有不少朋友还召集了身边其他人来帮忙，真是感动无比。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; padding: 0px;&quot;&gt;以前每个月拿固定工资任性挥霍的日子不在了，换来了生活的柴米油盐，迎接一个新的生命，又会过渡到另外一种生活状态，不再计较是否是名牌，兴许对自己越来越抠抠搜搜，越来越喜欢打折、免费的商品...&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; padding: 0px;&quot;&gt;其实生活本该如此！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; padding: 0px;&quot;&gt;PS：如果你也愿意帮我攒积分，请拿出你的手机，加微信公众号“帮宝适”选择第一个官方认证的帮宝适，然后点击“成长乐园”中的“新会员注册”，关键的一步就是填写我的注册邀请码 8X40C750 接下来的步骤就随你自己了，地址信息可以不用真实的，但你周围如果有其他朋友需要，可以送他们哦~！&lt;/p&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','upload/2016-06-03/57514d72c15e3.jpg','刘春阳',0,'这是第一篇2015年的生活日记，我的这个博客也因为孕期给耽搁了不少，要不然每个月都能出一两套模板，或者定时更新一些技术文章，群里面也很少参与讨论。现在因为这个即将到来的小家伙，我不得不舍弃一些时间和精力。',1,3,1464946034,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
