/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm0oip9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm0oip9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm0oip9`;

/*Table structure for table `baosunshenbao` */

DROP TABLE IF EXISTS `baosunshenbao`;

CREATE TABLE `baosunshenbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `baosunshijian` datetime DEFAULT NULL COMMENT '报损时间',
  `baosunshuliang` int(11) DEFAULT NULL COMMENT '报损数量',
  `yuanyinshuoming` longtext COMMENT '原因说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618225968429 DEFAULT CHARSET=utf8 COMMENT='报损申报';

/*Data for the table `baosunshenbao` */

insert  into `baosunshenbao`(`id`,`addtime`,`gonghao`,`xingming`,`yaopinbianhao`,`yaopinmingcheng`,`pinpai`,`baosunshijian`,`baosunshuliang`,`yuanyinshuoming`) values (71,'2021-04-12 19:06:09','工号1','姓名1','药品编号1','药品名称1','品牌1','2021-04-12 19:06:09',1,'原因说明1'),(72,'2021-04-12 19:06:09','工号2','姓名2','药品编号2','药品名称2','品牌2','2021-04-12 19:06:09',2,'原因说明2'),(73,'2021-04-12 19:06:09','工号3','姓名3','药品编号3','药品名称3','品牌3','2021-04-12 19:06:09',3,'原因说明3'),(74,'2021-04-12 19:06:09','工号4','姓名4','药品编号4','药品名称4','品牌4','2021-04-12 19:06:09',4,'原因说明4'),(75,'2021-04-12 19:06:09','工号5','姓名5','药品编号5','药品名称5','品牌5','2021-04-12 19:06:09',5,'原因说明5'),(76,'2021-04-12 19:06:09','工号6','姓名6','药品编号6','药品名称6','品牌6','2021-04-12 19:06:09',6,'原因说明6'),(1618225968428,'2021-04-12 19:12:48','1','1','1618225770145','药品测试','XX品牌','2021-04-12 19:12:36',50,'报损测试');

/*Table structure for table `chukujilu` */

DROP TABLE IF EXISTS `chukujilu`;

CREATE TABLE `chukujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `chukushuoming` longtext COMMENT '出库说明',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618225930641 DEFAULT CHARSET=utf8 COMMENT='出库记录';

/*Data for the table `chukujilu` */

insert  into `chukujilu`(`id`,`addtime`,`shuliang`,`chukushuoming`,`yaopinbianhao`,`yaopinmingcheng`,`leibie`,`pinpai`,`shengchanchangjia`,`gonghao`,`xingming`,`chukushijian`) values (41,'2021-04-12 19:06:09',1,'出库说明1','药品编号1','药品名称1','类别1','品牌1','生产厂家1','工号1','姓名1','2021-04-12 19:06:09'),(42,'2021-04-12 19:06:09',2,'出库说明2','药品编号2','药品名称2','类别2','品牌2','生产厂家2','工号2','姓名2','2021-04-12 19:06:09'),(43,'2021-04-12 19:06:09',3,'出库说明3','药品编号3','药品名称3','类别3','品牌3','生产厂家3','工号3','姓名3','2021-04-12 19:06:09'),(44,'2021-04-12 19:06:09',4,'出库说明4','药品编号4','药品名称4','类别4','品牌4','生产厂家4','工号4','姓名4','2021-04-12 19:06:09'),(45,'2021-04-12 19:06:09',5,'出库说明5','药品编号5','药品名称5','类别5','品牌5','生产厂家5','工号5','姓名5','2021-04-12 19:06:09'),(46,'2021-04-12 19:06:09',6,'出库说明6','药品编号6','药品名称6','类别6','品牌6','生产厂家6','工号6','姓名6','2021-04-12 19:06:09'),(1618225930640,'2021-04-12 19:12:10',400,'出库测试','1618225770145','药品测试','养生','XX品牌','XX厂家','1','1','2021-04-12 19:12:00');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm0oip9/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm0oip9/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm0oip9/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `rukujilu` */

DROP TABLE IF EXISTS `rukujilu`;

CREATE TABLE `rukujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `rukushuoming` longtext COMMENT '入库说明',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618225916284 DEFAULT CHARSET=utf8 COMMENT='入库记录';

/*Data for the table `rukujilu` */

insert  into `rukujilu`(`id`,`addtime`,`shuliang`,`rukushuoming`,`yaopinbianhao`,`yaopinmingcheng`,`leibie`,`pinpai`,`shengchanchangjia`,`gonghao`,`xingming`,`rukushijian`) values (31,'2021-04-12 19:06:09',1,'入库说明1','药品编号1','药品名称1','类别1','品牌1','生产厂家1','工号1','姓名1','2021-04-12 19:06:09'),(32,'2021-04-12 19:06:09',2,'入库说明2','药品编号2','药品名称2','类别2','品牌2','生产厂家2','工号2','姓名2','2021-04-12 19:06:09'),(33,'2021-04-12 19:06:09',3,'入库说明3','药品编号3','药品名称3','类别3','品牌3','生产厂家3','工号3','姓名3','2021-04-12 19:06:09'),(34,'2021-04-12 19:06:09',4,'入库说明4','药品编号4','药品名称4','类别4','品牌4','生产厂家4','工号4','姓名4','2021-04-12 19:06:09'),(35,'2021-04-12 19:06:09',5,'入库说明5','药品编号5','药品名称5','类别5','品牌5','生产厂家5','工号5','姓名5','2021-04-12 19:06:09'),(36,'2021-04-12 19:06:09',6,'入库说明6','药品编号6','药品名称6','类别6','品牌6','生产厂家6','工号6','姓名6','2021-04-12 19:06:09'),(1618225916283,'2021-04-12 19:11:55',500,'入库测试','1618225770145','药品测试','养生','XX品牌','XX厂家','1','1','2021-04-12 19:11:42');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','x3wvd7jx2ks0frbrrw2hv71ounyznqjp','2021-04-12 19:07:11','2021-04-12 20:13:28'),(2,1618225869898,'1','xiaoshouyuan','销售员','77ql8la88vnsam2l9rx0ojr91hzqxi5j','2021-04-12 19:11:15','2021-04-12 20:11:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-12 19:06:09');

/*Table structure for table `xiaoshoujilu` */

DROP TABLE IF EXISTS `xiaoshoujilu`;

CREATE TABLE `xiaoshoujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `xiaoshoushuoming` longtext COMMENT '销售说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618225952245 DEFAULT CHARSET=utf8 COMMENT='销售记录';

/*Data for the table `xiaoshoujilu` */

insert  into `xiaoshoujilu`(`id`,`addtime`,`gonghao`,`xingming`,`yaopinbianhao`,`yaopinmingcheng`,`leibie`,`pinpai`,`shengchanchangjia`,`shuliang`,`jiage`,`zongjia`,`xiaoshoushuoming`) values (51,'2021-04-12 19:06:09','工号1','姓名1','药品编号1','药品名称1','类别1','品牌1','生产厂家1',1,1,1,'销售说明1'),(52,'2021-04-12 19:06:09','工号2','姓名2','药品编号2','药品名称2','类别2','品牌2','生产厂家2',2,2,2,'销售说明2'),(53,'2021-04-12 19:06:09','工号3','姓名3','药品编号3','药品名称3','类别3','品牌3','生产厂家3',3,3,3,'销售说明3'),(54,'2021-04-12 19:06:09','工号4','姓名4','药品编号4','药品名称4','类别4','品牌4','生产厂家4',4,4,4,'销售说明4'),(55,'2021-04-12 19:06:09','工号5','姓名5','药品编号5','药品名称5','类别5','品牌5','生产厂家5',5,5,5,'销售说明5'),(56,'2021-04-12 19:06:09','工号6','姓名6','药品编号6','药品名称6','类别6','品牌6','生产厂家6',6,6,6,'销售说明6'),(1618225952244,'2021-04-12 19:12:31','1','1','1618225770145','药品测试','养生','XX品牌','XX厂家',30,50,1500,'销售测试');

/*Table structure for table `xiaoshouyuan` */

DROP TABLE IF EXISTS `xiaoshouyuan`;

CREATE TABLE `xiaoshouyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618225869899 DEFAULT CHARSET=utf8 COMMENT='销售员';

/*Data for the table `xiaoshouyuan` */

insert  into `xiaoshouyuan`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-12 19:06:09','销售员1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm0oip9/upload/xiaoshouyuan_zhaopian1.jpg'),(12,'2021-04-12 19:06:09','销售员2','123456','姓名2','女','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm0oip9/upload/xiaoshouyuan_zhaopian2.jpg'),(14,'2021-04-12 19:06:09','销售员4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm0oip9/upload/xiaoshouyuan_zhaopian4.jpg'),(15,'2021-04-12 19:06:09','销售员5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm0oip9/upload/xiaoshouyuan_zhaopian5.jpg'),(16,'2021-04-12 19:06:09','销售员6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm0oip9/upload/xiaoshouyuan_zhaopian6.jpg'),(1618225869898,'2021-04-12 19:11:09','1','1','1','男','12345678900',NULL,'440582199905125833','http://localhost:8080/ssm0oip9/upload/1618225884843.jpg');

/*Table structure for table `yaopinfenlei` */

DROP TABLE IF EXISTS `yaopinfenlei`;

CREATE TABLE `yaopinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618225762554 DEFAULT CHARSET=utf8 COMMENT='药品分类';

/*Data for the table `yaopinfenlei` */

insert  into `yaopinfenlei`(`id`,`addtime`,`leibie`) values (61,'2021-04-12 19:06:09','类别1'),(62,'2021-04-12 19:06:09','类别2'),(63,'2021-04-12 19:06:09','类别3'),(64,'2021-04-12 19:06:09','类别4'),(65,'2021-04-12 19:06:09','类别5'),(66,'2021-04-12 19:06:09','类别6'),(1618225762553,'2021-04-12 19:09:22','养生');

/*Table structure for table `yaopinxinxi` */

DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `guoqishijian` date DEFAULT NULL COMMENT '过期时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618225819081 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopinxinxi` */

insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`leibie`,`pinpai`,`shengchanchangjia`,`shuliang`,`jiage`,`guoqishijian`,`tupian`) values (21,'2021-04-12 19:06:09','药品编号1','药品名称1','类别1','品牌1','生产厂家1',1,1,'2021-04-12','http://localhost:8080/ssm0oip9/upload/yaopinxinxi_tupian1.jpg'),(22,'2021-04-12 19:06:09','药品编号2','药品名称2','类别2','品牌2','生产厂家2',2,2,'2021-04-12','http://localhost:8080/ssm0oip9/upload/yaopinxinxi_tupian2.jpg'),(23,'2021-04-12 19:06:09','药品编号3','药品名称3','类别3','品牌3','生产厂家3',3,3,'2021-04-12','http://localhost:8080/ssm0oip9/upload/yaopinxinxi_tupian3.jpg'),(24,'2021-04-12 19:06:09','药品编号4','药品名称4','类别4','品牌4','生产厂家4',4,4,'2021-04-12','http://localhost:8080/ssm0oip9/upload/yaopinxinxi_tupian4.jpg'),(25,'2021-04-12 19:06:09','药品编号5','药品名称5','类别5','品牌5','生产厂家5',5,5,'2021-04-12','http://localhost:8080/ssm0oip9/upload/yaopinxinxi_tupian5.jpg'),(26,'2021-04-12 19:06:09','药品编号6','药品名称6','类别6','品牌6','生产厂家6',6,6,'2021-04-12','http://localhost:8080/ssm0oip9/upload/yaopinxinxi_tupian6.jpg'),(1618225803484,'2021-04-12 19:10:03','1618225770145','药品测试','养生','XX品牌','XX厂家',570,50,'2021-04-23','http://localhost:8080/ssm0oip9/upload/1618225802185.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
