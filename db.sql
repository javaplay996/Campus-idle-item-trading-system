/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanxianzhiwupinjiaoyi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanxianzhiwupinjiaoyi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanxianzhiwupinjiaoyi`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-02-18 14:14:35','2023-02-18 14:14:35','2023-02-18 14:14:35'),(2,2,'收货人2','17703786902','地址2',1,'2023-02-18 14:14:35','2023-02-18 14:14:35','2023-02-18 14:14:35'),(3,1,'收货人3','17703786903','地址3',2,'2023-02-18 14:14:35','2023-02-18 14:54:56','2023-02-18 14:14:35'),(4,1,'收货人4','17703786904','地址4',1,'2023-02-18 14:14:35','2023-02-18 14:14:35','2023-02-18 14:14:35'),(5,1,'收货人5','17703786905','地址5',1,'2023-02-18 14:14:35','2023-02-18 14:54:49','2023-02-18 14:14:35');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '闲置物品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (7,'shangpin_types','闲置物品类型',1,'闲置物品类型1',NULL,NULL,'2023-02-18 14:13:19'),(8,'shangpin_types','闲置物品类型',2,'闲置物品类型2',NULL,NULL,'2023-02-18 14:13:19'),(9,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2023-02-18 14:13:19'),(10,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2023-02-18 14:13:19'),(11,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2023-02-18 14:13:19'),(12,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2023-02-18 14:13:19'),(13,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2023-02-18 14:13:19'),(18,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-02-18 14:13:19'),(19,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-02-18 14:13:19'),(20,'shangpin_order_types','订单类型',1,'已支付',NULL,NULL,'2023-02-18 14:13:19'),(21,'shangpin_order_types','订单类型',2,'退款',NULL,NULL,'2023-02-18 14:13:19'),(22,'shangpin_order_types','订单类型',3,'已发货',NULL,NULL,'2023-02-18 14:13:19'),(23,'shangpin_order_types','订单类型',4,'已收货',NULL,NULL,'2023-02-18 14:13:19'),(24,'shangpin_order_types','订单类型',5,'已评价',NULL,NULL,'2023-02-18 14:13:19'),(25,'shangpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2023-02-18 14:13:19'),(26,'news_types','资讯类型',1,'资讯类型1',NULL,NULL,'2023-02-18 14:13:19'),(27,'news_types','资讯类型',2,'资讯类型2',NULL,NULL,'2023-02-18 14:13:19'),(28,'sex_types','性别类型',1,'男',NULL,NULL,'2023-02-18 14:13:19'),(29,'sex_types','性别类型',2,'女',NULL,NULL,'2023-02-18 14:13:19');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-02-18 14:14:35','公告详情1','2023-02-18 14:14:35'),(2,'公告标题2',1,'upload/news2.jpg','2023-02-18 14:14:35','公告详情2','2023-02-18 14:14:35'),(3,'公告标题3',1,'upload/news3.jpg','2023-02-18 14:14:35','公告详情3','2023-02-18 14:14:35'),(4,'公告标题4',1,'upload/news4.jpg','2023-02-18 14:14:35','公告详情4','2023-02-18 14:14:35'),(5,'公告标题5',2,'upload/news5.jpg','2023-02-18 14:14:35','公告详情5','2023-02-18 14:14:35');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',2,'504.72','商家简介1',1,'2023-02-18 14:14:35'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',2,'931.45','商家简介2',1,'2023-02-18 14:14:35'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',1,'840.99','商家简介3',1,'2023-02-18 14:14:35');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '闲置物品名称 Search111',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '闲置物品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '闲置物品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '闲置物品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '闲置物品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='闲置物品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangxia_types`,`shangpin_delete`,`shangpin_content`,`create_time`) values (1,1,'闲置物品名称1','upload/shangpin1.jpg',2,101,'830.43','420.05',111,1,1,'闲置物品简介1','2023-02-18 14:14:35'),(2,2,'闲置物品名称2','upload/shangpin2.jpg',2,101,'941.09','277.58',170,1,1,'闲置物品简介2','2023-02-18 14:14:35'),(3,2,'闲置物品名称3','upload/shangpin3.jpg',1,103,'893.64','367.77',426,1,1,'闲置物品简介3','2023-02-18 14:14:35'),(4,3,'闲置物品名称4','upload/shangpin4.jpg',1,103,'893.37','444.53',270,1,1,'闲置物品简介4','2023-02-18 14:14:35'),(5,2,'闲置物品名称5','upload/shangpin5.jpg',2,105,'849.38','327.02',360,2,1,'闲置物品简介5','2023-02-18 14:14:35');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '闲置物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='闲置物品评论';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评论内容1','2023-02-18 14:14:35','回复信息1','2023-02-18 14:14:35','2023-02-18 14:14:35'),(2,2,2,'评论内容2','2023-02-18 14:14:35','回复信息2','2023-02-18 14:14:35','2023-02-18 14:14:35'),(3,3,2,'评论内容3','2023-02-18 14:14:35','回复信息3','2023-02-18 14:14:35','2023-02-18 14:14:35'),(4,4,2,'评论内容4','2023-02-18 14:14:35','回复信息4','2023-02-18 14:14:35','2023-02-18 14:14:35'),(5,5,3,'评论内容5','2023-02-18 14:14:35','回复信息5','2023-02-18 14:14:35','2023-02-18 14:14:35'),(8,2,1,'购买完成可评论111','2023-02-18 14:56:51',NULL,NULL,'2023-02-18 14:56:51');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '闲置物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='闲置物品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (10,'1676703316536',3,4,1,1,'444.53',1,1,'2023-02-18 14:55:17','2023-02-18 14:55:17'),(11,'1676703316536',3,2,1,1,'277.58',5,1,'2023-03-18 14:55:17','2023-02-18 14:55:17'),(12,'1676703316536',3,3,1,1,'367.77',2,1,'2023-02-18 14:55:17','2023-02-18 14:55:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'a1','yonghu','用户','z4rryx9sym073tz153ngrzjkpyp9a5p5','2023-02-18 14:39:07','2023-02-18 15:54:05'),(5,1,'a1','shangjia','商家','hdvc2f32jhooiy1iiewp0t4he51x9rt1','2023-02-18 14:55:32','2023-02-18 15:55:32'),(6,2,'a2','shangjia','商家','5mzf4bu69maupgpmo2r6izz324tvetqi','2023-02-18 14:55:46','2023-02-18 15:55:46'),(7,1,'admin','users','管理员','mjz54vcqra54yhrozwl6095jozm14jcx','2023-02-18 14:56:05','2023-02-18 16:00:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-02-18 14:13:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','99388.21','2023-02-18 14:14:35'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','110.32','2023-02-18 14:14:35'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','271.95','2023-02-18 14:14:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
