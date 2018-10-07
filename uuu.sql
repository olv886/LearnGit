/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - db_user
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_user` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_user`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博客类型',
  `title` varchar(200) NOT NULL COMMENT '博客题目',
  `summary` varchar(400) DEFAULT NULL COMMENT '博客摘要',
  `releaseDate` datetime DEFAULT NULL COMMENT '发布日期',
  `clickHit` int(11) DEFAULT NULL COMMENT '评论次数',
  `replyHit` int(11) DEFAULT NULL COMMENT '回复次数',
  `content` longtext,
  `keyWord` varchar(200) DEFAULT NULL COMMENT '关键字',
  `type_id` int(11) DEFAULT NULL COMMENT '外键关联博客类别',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`summary`,`releaseDate`,`clickHit`,`replyHit`,`content`,`keyWord`,`type_id`) values (2,'222','\n        \n        Go ahead222222222…\n    \n    ','2018-10-02 22:15:01',0,0,'\n        \n        Go ahead222222222…\n    \n    ','22222',3),(13,'123','<span style=\"color: rgb(34, 34, 34); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;;\">要让tab','2018-10-05 14:19:44',0,0,'<span style=\"color: rgb(34, 34, 34); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;;\">要让table的宽度固定我们可以给table元素设置table-layout:fixed;样式，但这样表格的宽度问题是解决了，但是里面的内容并不会自动换行。我们还需要给td设置word-break: break-all; word-wrap:break-word;即可完美解决。如下图：</span><span style=\"color: rgb(34, 34, 34); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;;\">要让table的宽度固定我们可以给table元素设置table-layout:fixed;样式，但这样表格的宽度问题是解决了，但是里面的内容并不会自动换行。我们还需要给td设置word-break: break-all; word-wrap:break-word;即可完美解决。如下图：</span><span style=\"color: rgb(34, 34, 34); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;;\">要让table的宽度固定我们可以给table元素设置table-layout:fixed;样式，但这样表格的宽度问题是解决了，但是里面的内容并不会自动换行。我们还需要给td设置word-break: break-all; word-wrap:break-word;即可完美解决。如下图：</span>','34;3421;432;14;31',6),(14,'456','VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVGo ahead…09999999999999999999999999999999999999999999999999999','2018-10-05 14:21:25',0,0,'VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVGo ahead…099999999999999999999999999999999999999999999999999999977gjkg\n    <div>Go ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgGo ahead…099999999999999999999999999999999999999999999999999999977gjkgvv</div>','werterw',8),(15,'fdsg','\n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd</div><di','2018-10-05 16:19:04',0,0,'\n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd</div><div>dsffffffffffffffffffffffffffffffffffffffffffffffffggggggggggggggggggggggggggs</div><div>dsgfsd</div>','dsfgsdfdfsdddfgsdsfsd',4),(16,'fdsg','\n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd</div><di','2018-10-05 16:19:22',0,0,'\n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd</div><div>dsffffffffffffffffffffffffffffffffffffffffffffffffggggggggggggggggggggggggggs</div><div>dsgfsd</div>','dsfgsdfdfsdddfgsdsfsd',4),(17,'fdsg00','\n        \n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd','2018-10-05 17:10:19',0,0,'\n        \n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd</div><div>dsffffffffffffffffffffffffffffffffffffffffffffffffggggggggggggggggggggggggggs</div><div>dsgfsd</div>\n    ','dsfgsdfdfsdddfgsdsfsd',1),(18,'fdsg00','\n        \n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd','2018-10-05 17:12:40',0,0,'\n        \n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd</div><div>dsffffffffffffffffffffffffffffffffffffffffffffffffggggggggggggggggggggggggggs</div><div>dsgfsd</div>\n    ','dsfgsdfdfsdddfgsdsfsd',1),(19,'fdsg','\n        \n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd','2018-10-05 17:19:51',0,0,'\n        \n        Go ahead…gggggggggggggggggggggggggg<div>sddddddddddddddddddddddddddddddddddddddddd</div><div>dsffffffffffffffffffffffffffffffffffffffffffffffffggggggggggggggggggggggggggs</div><div>dsgfsd</div>\n    ','dsfgsdfdfsdddfgsdsfsd',6),(20,'nihoa','\n        \n        Go ahead…sdafassdna sdafas&nbsp;','2018-10-05 17:31:31',0,0,'\n        \n        Go ahead…sdafassdna sdafas&nbsp;','ff f;ff;fff;ff',6),(22,'nihoa','萨达','2018-10-05 17:33:37',0,0,'萨达','ff f;ff;fff;ff',3),(24,'nihoa','萨达大发送到','2018-10-05 17:34:16',0,0,'萨达大发送到','ff f;ff;fff;ff',3),(25,'222','\n        \n        Go ahead222222222…\n    \n    ','2018-10-05 17:39:16',0,0,'\n        \n        Go ahead222222222…\n    \n    ','22222',8),(26,'222','\n        \n        Go ahead222222222…解决解决军军','2018-10-05 17:42:54',0,0,'\n        \n        Go ahead222222222…解决解决军军','22222',8),(27,'222','\n        \n        Go ahead222222222…dfgfdsf发给打广告的双方各从吧发','2018-10-05 23:38:10',0,0,'\n        \n        Go ahead222222222…dfgfdsf发给打广告的双方各从吧发','22222',1),(28,'222','\n        \n        Go ahead222222222…\n    \n    ','2018-10-05 23:44:35',0,0,'\n        \n        Go ahead222222222…\n    \n    ','22222',3);

/*Table structure for table `t_blogger` */

DROP TABLE IF EXISTS `t_blogger`;

CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博主id',
  `username` varchar(50) NOT NULL COMMENT '博主姓名',
  `password` varchar(100) NOT NULL COMMENT '博主密码',
  `profile` text COMMENT '博主信息',
  `nickname` varchar(50) DEFAULT NULL COMMENT '博主昵称',
  `sign` varchar(100) DEFAULT NULL COMMENT '博主签名',
  `imagename` varchar(100) DEFAULT NULL COMMENT '博主头像路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogger` */

insert  into `t_blogger`(`id`,`username`,`password`,`profile`,`nickname`,`sign`,`imagename`) values (1,'admin','123123',NULL,NULL,NULL,NULL);

/*Table structure for table `t_blogtype` */

DROP TABLE IF EXISTS `t_blogtype`;

CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博客id',
  `type_name` varchar(30) DEFAULT NULL COMMENT '博客类别',
  `order_num` int(11) DEFAULT NULL COMMENT '博客排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogtype` */

insert  into `t_blogtype`(`id`,`type_name`,`order_num`) values (1,'Java基础',13),(3,'更新mysql',10),(4,'新增',34),(6,'sdf',54),(8,'sdfq',12),(10,'区块链',123);

/*Table structure for table `t_friend` */

DROP TABLE IF EXISTS `t_friend`;

CREATE TABLE `t_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `friendname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_friend` */

insert  into `t_friend`(`id`,`username`,`friendname`) values (1,'admin','alice'),(2,'admin','ali');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`age`,`sex`,`phone`,`email`,`usertype`) values (1,'admin','123456',12,'男','13322221111','11@qq.com',0),(4,'bob','123456',NULL,NULL,NULL,NULL,1),(5,'ali','123',NULL,'','','',0),(6,'alice','123456',12,'女','12323123','123@qq.com',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
