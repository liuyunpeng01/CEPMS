/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.16 : Database - submit
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`submit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `submit`;

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL COMMENT 'url地址',
  `description` varchar(64) NOT NULL COMMENT 'url描述',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`url`,`description`,`gmt_create`,`gmt_modified`) values (1,'permission:ui','页面：权限列表、添加权限、更新权限','2018-12-12 00:08:55','2019-01-19 10:03:55'),(2,'permission:add','功能：添加权限','2018-12-12 00:48:09','2019-01-19 10:03:36'),(6,'permission:delete','功能：删除权限','2018-12-12 21:25:51','2019-01-19 10:03:28'),(7,'permission:update','功能：更新权限','2018-12-12 21:26:03','2019-01-19 10:04:44'),(8,'role:ui','页面：角色列表、添加角色、修改角色','2018-12-12 21:26:11','2019-01-19 10:13:52'),(9,'role:add','功能：添加角色','2018-12-12 21:27:57','2019-01-19 10:14:17'),(10,'role:update','功能：修改角色','2018-12-12 21:28:19','2019-01-19 10:14:33'),(11,'role:delete','功能：删除角色','2018-12-12 21:28:26','2019-01-19 10:15:00'),(13,'faculty:ui','页面：院系列表、添加院系、修改院系','2018-12-14 16:36:07','2019-01-19 11:08:18'),(14,'faculty:add','功能：添加院系','2019-01-13 18:16:22','2019-01-19 11:08:33'),(15,'faculty:update','功能：修改院系','2019-01-13 18:17:53','2019-01-19 11:09:19'),(17,'faculty:delete','功能：删除院系','2019-01-13 18:18:27','2019-01-19 11:10:05'),(19,'major:ui','页面：专业列表、添加专业、修改专业','2019-01-13 18:22:42','2019-01-19 11:10:49'),(20,'major:add','功能：添加专业','2019-01-13 18:26:56','2019-01-19 11:11:02'),(21,'major:update','功能：修改专业','2019-01-13 18:27:11','2019-01-19 11:11:18'),(24,'major:delete','功能：删除专业','2019-01-13 18:29:53','2019-01-19 11:12:23'),(26,'class:ui','页面：班级列表-添加班级-修改班级','2019-01-13 18:39:22','2019-01-19 11:12:55'),(27,'class:add','功能：添加班级','2019-01-13 18:39:32','2019-01-19 11:13:12'),(28,'class:update','功能：修改班级','2019-01-13 18:39:41','2019-01-19 11:13:29'),(30,'class:delete','功能：删除班级','2019-01-13 18:40:12','2019-01-19 11:14:02'),(32,'lession:ui','页面：课程列表-添加课程-修改课程','2019-01-13 18:41:22','2019-01-19 11:14:28'),(33,'lession:add','功能：添加课程','2019-01-13 18:41:30','2019-01-19 11:14:48'),(34,'lession:update','功能：修改课程','2019-01-13 18:41:39','2019-01-19 11:15:02'),(36,'lession:delete','功能：删除课程','2019-01-13 18:42:12','2019-01-19 11:15:33'),(38,'teaching:ui','页面：授权列表-添加授权关系-修改授权关系','2019-01-14 18:34:08','2019-01-19 11:16:14'),(39,'teaching:add','功能：添加权限','2019-01-14 18:34:26','2019-01-19 11:16:29'),(40,'teaching:update','功能：修改权限','2019-01-14 18:34:43','2019-01-19 11:16:41'),(42,'teaching:delete','功能：删除权限关系','2019-01-14 18:35:29','2019-01-19 11:17:05'),(44,'teacher:ui','页面 : 教师列表-添加教师','2019-01-19 11:34:16',NULL),(45,'teacher:add','功能 : 添加教师','2019-01-19 11:34:36',NULL),(46,'teacher:delete','功能 : 删除教师','2019-01-19 11:34:49',NULL),(47,'teacher:update:status','功能 : 设置教师状态','2019-01-19 11:35:26',NULL),(48,'student:update:status','功能 : 设置学生状态','2019-01-19 11:35:39',NULL),(49,'student:delete','功能 : 删除学生','2019-01-19 11:35:54',NULL),(50,'student:add','功能 : 添加学生','2019-01-19 11:36:02',NULL),(51,'student:ui','页面 : 学生列表-添加学生-一键导入学生','2019-01-19 11:36:43',NULL),(52,'student:import','功能 : Excel一键导入学生','2019-01-19 13:51:01',NULL),(53,'user:ui','页面 : 个人信息-密码更改','2019-01-19 16:22:20',NULL),(54,'user:update:info','功能 : 更新个人信息','2019-01-19 16:22:47','2019-01-27 17:16:31'),(56,'student:update:class','功能 : 修改学生所属班级','2019-01-23 13:56:23','2019-01-23 14:01:28'),(57,'user:update:passwd','功能 : 修改个人密码','2019-01-27 17:17:04','2019-01-27 17:21:38'),(58,'work:publish','功能&页面 : 发布作业','2019-01-27 18:27:28','2019-01-30 11:27:41'),(59,'work:recoders','页面 : 作业列表','2019-02-09 17:32:37',NULL),(60,'work:mark','功能 : 评分学生作业','2019-02-26 10:22:49','2019-02-26 10:25:54'),(61,'work:student','学生的作业权限','2019-03-09 13:42:39',NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '角色名称',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`type`,`gmt_create`,`gmt_modified`) values (11,'超级管理员',NULL,'2019-01-13 19:18:04','2019-01-27 17:17:47'),(13,'教师',NULL,'2019-01-13 19:32:56','2019-12-21 14:47:39'),(14,'学生',NULL,'2019-01-13 19:34:43','2019-03-09 13:42:52');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  KEY `role_id` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `sys_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_permission` */

insert  into `sys_role_permission`(`role_id`,`permission_id`) values (11,1),(11,2),(11,6),(11,7),(11,8),(11,9),(11,10),(11,11),(11,13),(11,14),(11,15),(11,17),(11,19),(11,20),(11,21),(11,24),(11,26),(11,27),(11,28),(11,30),(11,32),(11,33),(11,34),(11,36),(11,38),(11,39),(11,40),(11,42),(11,44),(11,45),(11,46),(11,47),(11,48),(11,49),(11,50),(11,51),(11,52),(11,53),(11,56),(11,57),(14,53),(14,54),(14,57),(14,61),(13,1),(13,2),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(13,13),(13,14),(13,15),(13,17),(13,19),(13,20),(13,21),(13,24),(13,26),(13,27),(13,28),(13,30),(13,32),(13,33),(13,34),(13,36),(13,38),(13,39),(13,40),(13,42),(13,44),(13,45),(13,46),(13,47),(13,48),(13,49),(13,50),(13,51),(13,52),(13,53),(13,54),(13,56),(13,57),(13,58),(13,59),(13,60),(13,61);

/*Table structure for table `t_class` */

DROP TABLE IF EXISTS `t_class`;

CREATE TABLE `t_class` (
  `id` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `major_id` int(11) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `year` int(11) NOT NULL DEFAULT '2019' COMMENT '年份',
  PRIMARY KEY (`id`),
  KEY `major_id` (`major_id`),
  CONSTRAINT `t_class_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `t_major` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_class` */

insert  into `t_class`(`id`,`name`,`major_id`,`gmt_create`,`gmt_modified`,`year`) values ('1561aae6321e4d8295b47d7d98c34f14','英语',14,'2019-01-13 20:46:23',NULL,2019),('16237ffba96147979041f7d6fd1c8955','中华文化',17,'2019-01-13 20:46:33',NULL,2019),('4565abfe725e40f6ba371d25b40826a9','软件工程',1,'2019-01-13 20:44:47',NULL,2015),('6502db0718c34198b85fd8dda895ecb9','小说',18,'2019-01-13 20:45:44',NULL,2015),('880d8208e48940cd847d86b363c85c8f','经济学',11,'2019-01-13 20:46:06',NULL,2019),('89a7e5af5a064f0da119cf3286c9666e','马克思主义',4,'2019-01-13 20:44:37',NULL,2015),('95faab6c249c46a58e30e44d95bfa18e','软件工程',1,'2019-01-13 20:44:52',NULL,2018),('96389dd160dd4075ad9f2f378629eb22','自动化',3,'2019-01-13 20:45:03',NULL,2015),('a180472aa6dc42728c5e847863366677','土木工程',12,'2019-01-13 20:46:10',NULL,2019),('a83beef999df43c19c97c923b57ce716','软件工程',1,'2019-01-13 20:45:09',NULL,2017),('c13bd8a285ac49a882100015f8e9901c','小说',18,'2019-01-13 20:45:47',NULL,2018),('d5e63ee944974e858799164dd83e0634','幼儿教育',5,'2019-01-13 20:45:55',NULL,2018),('dec678b845f34f60a5f11b98dddf1818','日语',15,'2019-01-13 20:46:26',NULL,2019),('e47a21103b294c65afb9bb3310fce3b4','中华文化',17,'2019-01-13 20:46:39',NULL,2020),('e7923ad1ba62446b945dd2e4047b4767','学前教育',6,'2019-01-13 20:45:34',NULL,2015),('e7efd724eae1415cb229e7f0fa1f1634','体育',13,'2019-01-13 20:46:19',NULL,2019),('ebb860a4be684d79bece68ed92b814a9','幼儿教育',5,'2019-01-13 20:45:59',NULL,2019);

/*Table structure for table `t_faculty` */

DROP TABLE IF EXISTS `t_faculty`;

CREATE TABLE `t_faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '系院称名',
  `description` varchar(255) NOT NULL COMMENT '述描',
  `gmt_create` datetime NOT NULL COMMENT '建创时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '改修时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `t_faculty` */

insert  into `t_faculty`(`id`,`name`,`description`,`gmt_create`,`gmt_modified`) values (1,'马克思主义学院','2006年，学校升格为本科院校后马列主义教研室更名为社会科学部。2015年，社会科学部更名为马克思主义学院。2016年，马克思主义学院与社会发展学院的思想政治教育专业、法律文秘专业整合组建为现在的马克思主义学院。','2019-01-13 19:43:11','2019-12-22 19:34:35'),(2,'教育学院','当人类已经进入全球化、知识化、信息化的时代，中华民族的伟大复兴将由我们推动，“国将兴、必贵师而重傅，国将衰、必贱师而轻傅”。文明因教育而传承，教育因教师而薪火不息，教育乃国运之所向，民运之所系，作为未来的人民教师，我们“学高、身正、心和、行敏”，立学高身正之志，举民主科学之旗，扬创新教育之帆，脚踏实地，吃苦耐劳，诚实勇敢，全力以赴。','2019-01-13 19:44:52',NULL),(3,'人文学院','人文学院现有汉语言文学、秘书学、网络与新媒体、教育技术学、历史学等5个本科专业和1个文秘专科专业，设有中文系、历史系、新闻传播系和大学语文教学部。','2019-01-13 19:45:49',NULL),(4,'艺术学院','由原音乐学院和美术与设计学院整合组建的专业学院，设音乐与表演系、美术与设计系；现有音乐学、艺术教育（音乐、舞蹈）、美术学、视觉传达设计本科和舞蹈教育专科5个专业；','2019-01-13 19:46:18','2019-12-22 19:34:48'),(5,'经济管理学院','成立于2013年6月。','2019-01-13 19:46:48','2019-12-22 19:34:57'),(6,'农林工程与规划学院','生物与农林工程学院生物科学、园林、水产养殖学三个专业与原物理与电子工程学院水利水电、土木工程两个专业及原经济与管理学院城乡规划专业建成农林工程与规划学院。','2019-01-13 19:47:03','2019-12-22 19:35:10'),(7,'软件学院','学院于2016年6月正式组建成立，由原数学科学学院、信息工程学院、物理与电子工程学院、现代教育技术中心四个部门合并组建而成，学院现有四个教学系部：数学与统计系、物理与电子信息工程系、计算机科学系和大学数学与计算机基础教学部，开设有数学与应用数学、统计学、计算机科学与技术、软件工程、信息工程、自动化、物理学、应用物理学等八个本科专业。','2019-01-13 19:47:47','2019-12-22 19:34:06'),(8,'材料与化学工程学院','成立材料与化学工程学院。','2019-01-13 19:48:22','2019-12-22 19:36:11'),(9,'大健康学院','2016年4月经学校批准“体育系”更名为“体育与健康学院”，完成了“系”改“院”历史突破。','2019-01-13 19:49:02','2019-12-22 19:35:30'),(10,'外国语学院','外语学习','2019-01-13 19:49:29','2019-12-22 19:35:59'),(11,'继续教育学院','继续教育学院是铜仁学院主管各类职业培训和成人教育的职能机构,是“贵州省第九十七国家职业技能鉴定所”、“国家职业资格全国统一鉴定考试报名点”、“铜仁市教育干部培训基地”、“铜仁市中小学教师培训基地”，是铜仁学院大学生就业指导中心、职业培训中心，铜仁市未成年人心理健康辅导总站，铜仁市定点职业技能培训机构。','2019-01-13 19:50:38',NULL),(12,'乌江学院','乌江农林经济学院是铜仁学院与德江县人民政府合作共建的一所二级特色学院。是铜仁学院为贯彻落实《国务院关于加快发展现代职业教育的决定》和习近平总书记的重要指示精神，围绕建设人民满意的现代应用技术大学，推动学校转型发展，立足区域资源优势，密切产教深度融合，培养应用技术人才，服务地方产业发展的发展目标而建立的一所二级特色学院。','2019-01-13 19:50:58',NULL),(13,'国学院','暂无描述','2019-01-13 19:51:52',NULL),(14,'田秋写作学院','暂无描述','2019-01-13 19:52:08',NULL);

/*Table structure for table `t_homework` */

DROP TABLE IF EXISTS `t_homework`;

CREATE TABLE `t_homework` (
  `id` varchar(32) NOT NULL,
  `student_id` int(10) NOT NULL COMMENT '生学',
  `work_id` varchar(32) NOT NULL COMMENT '作业id',
  `score` decimal(5,2) DEFAULT '0.00' COMMENT '数分',
  `annex` varchar(255) DEFAULT NULL COMMENT '件附',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改作业时间',
  `comment` varchar(255) DEFAULT NULL COMMENT '语评',
  `status` int(11) DEFAULT '0' COMMENT '0未交1已交未验收2已验收',
  PRIMARY KEY (`id`),
  KEY `user_id` (`student_id`),
  KEY `job_id` (`work_id`),
  CONSTRAINT `t_homework_ibfk_2` FOREIGN KEY (`work_id`) REFERENCES `t_work` (`id`),
  CONSTRAINT `t_homework_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_homework` */

insert  into `t_homework`(`id`,`student_id`,`work_id`,`score`,`annex`,`gmt_modified`,`comment`,`status`) values ('027a6fac2145440994d4b0444aa2ff80',2019000027,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('02c361a9daf046ee911ea187f02796f1',2019000026,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('0382157666f34ac3b152f59e17727636',2019000011,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('07603c3ab6d14b43b2c07da7d620808b',2019000013,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('08eb640703c84ba69fcca15391fb6f3b',2019000024,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('090bd6a3315f469ab215c403e111ed29',2019000007,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('0f5eb249a4d94ccfbe5d7ab97da9f3ed',2019000019,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('16b6a17230e44d9aa1a3347ecec233ca',2019000007,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('16f0c4c8f0404d679ac085585cb4d557',2019000008,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('22930a7a920f475d9501776330029197',2019000006,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('258c25d9c72a49d78af9efee5ff0fb12',2019000002,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('2c708aeaecf84311981f3c89f4af7e5f',2019000019,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('3016baa50d3243d19a94bfc0adcceba6',2019000025,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('3166fd77c0d945e8911a8a47c4bba793',2019000013,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('337af2dd0e2747528e4726d0cc75b45b',2019000013,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('3ad420cb5b8145fcadf98f2fc2b2380c',2019000008,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('3e8430c989de4da9b8777f17e7d3a5b3',2019000000,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('3ee87fc9daa346c39f59a45010cb2a54',2019000016,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('40643042f43e49e5bcc0ec2fcfd056e6',2019000008,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('4b6a09f36abd40ef992c27cc2b8c6b85',2019000016,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('4bd86b83bca94e11b452093afb0213d7',2019000012,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('51b00768e9c0499e9314757b926c3f84',2019000014,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('5c43dbbe26ef437192755a50be34824e',2019000027,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('603c036c8c9c47c78e94aad3dffaaf29',2019000003,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('62fe868677844762bbf216491dd8d9ca',2019000014,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('633f426ab35740ac8742c38f48c8c245',2019000024,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('6610ba8bcfd6447fae59effdba3192f1',2019000006,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('6753166ceb734c2ea5b8e00cc8c60e58',2019000025,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('6925d9193734498e94e0fb72a4ac2fee',2019000005,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('703a3ef95188481b852d56efe90627c3',2019000018,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('720728183de744cba0fc70bd5194936d',2019000012,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('7684c915bb024b46ac08c162370ab429',2019000018,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('786f7580daf84934bd4f6c561ab91d5c',2019000016,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('79b52921640e4414a1413eec045ebd25',2019000026,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('79e5b8b55a4c42dd8de1b85cd13390ac',2019000017,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('7e557641fec7415b86fb3ff111319b33',2019000017,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('7e763b62783d4e11a23930e30a2a8755',2019000015,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('82d63e11ae5f4cb7a5e0786b48f49aed',2019000015,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('96f2c94be26a417bbf2733a8b1f32e63',2019000006,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('9e966fa4259549f39c5526739baaa495',2019000000,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('a1ace2be0bf9452ebd1fdb3225406077',2019000007,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('a34495c1ef4e4c098230517322c29897',2019000003,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('a7f0fd0b567d4f24bf0391eec1aee736',2019000002,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('a83994be2e2a4162ad52097fb5506a1c',2019000014,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('a992819681674338a911d66c11ade773',2019000020,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('ab6be530d434476597789f452f8c4f4f',2019000003,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('ab8f25fb07dc404d8f0bb2a26691cf84',2019000018,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('ac39dfd64ff3448392e7b7e0853503e8',2019000024,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('b50a78ff521d44419bebb6be7207d6b0',2019000017,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('b5df044a23604d29a44b9d625d7ced63',2019000012,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('b7599d9aa1314b05a822bc313a27124b',2019000027,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('c144ffa3878a4da0a2c42e469ad61401',2019000019,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('c26b8fe97d4d4c90b86c0af05062bfb2',2019000011,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('c52fc3116373448ca09b0302981cc722',2019000002,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('cd337cb488d149d48ecd654a7c49d81e',2019000005,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('cef1979dd15a4b5f9b44d026fd7ba51a',2019000000,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('db9b13eb7cdd44e6b6722b6043e51ebf',2019000009,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('dc650039f5e542639f00ef532c6c1205',2019000011,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('dce4cf9f93de449caf66e2e8d37515c9',2019000026,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('e1185244038a4f5e8dc996847607d213',2019000009,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('e1c3d0db5bbb48dc89d65ff9ab71861a',2019000009,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0),('e2c8427efb0248208f79db41936a11d6',2019000015,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('e63d911b6ed14b43a9de1dc8f68ca3b2',2019000005,'b2d762a251b640728fd51f41e7f5c439',NULL,NULL,NULL,NULL,0),('ef0262be6dee4481befc87483ac2e6a7',2019000025,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('f7c721023c824bb8b4fd082a62a8eada',2019000020,'23f0d8c576cd4af7b18ac92c8a36d9e4','0.00',NULL,NULL,NULL,3),('fbee2011a5354ad6bc5d7df633a3345d',2019000020,'3337d2eef6a14265bdde1160cfe10cc6',NULL,NULL,NULL,NULL,0);

/*Table structure for table `t_lession` */

DROP TABLE IF EXISTS `t_lession`;

CREATE TABLE `t_lession` (
  `id` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '课程名',
  `description` varchar(255) DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_lession` */

insert  into `t_lession`(`id`,`name`,`description`,`gmt_modified`,`gmt_create`) values ('01f9c33849c144c5ad4ba402d8a00ab5','无机化学实验','暂无描述',NULL,'2019-01-13 20:57:36'),('02e6972b01864fdcbda390a794802e09','现代科技概论与知识产权','暂无描述',NULL,'2019-01-13 20:57:16'),('0ac3fc5aed4d446bad9becca0535e8ca','色彩原理','暂无描述',NULL,'2019-01-13 20:59:29'),('18099f9b6fcb49f397bf2d400c83f32c','大学英语（二）','暂无描述',NULL,'2019-01-13 20:53:19'),('330417581d1f4644a76321222a85d268','中国近现代史纲要','暂无描述',NULL,'2019-01-13 20:56:54'),('3448149f9d0b49bb986fe74b7ccca942','多媒体技术','暂无描述',NULL,'2019-01-13 20:55:14'),('3f27d83a278c45dc85d559ee4c382002','HTML5','暂无描述',NULL,'2019-01-13 20:55:51'),('51d6d34c72aa4254b6bf1c957c0047d0','C++语言程序设计','C++','2019-01-23 10:26:48','2019-01-13 20:59:09'),('5256289a80c14933aef360fdb60611ba','ps基础教程','暂无描述',NULL,'2019-01-13 20:59:40'),('54f7682577f641b388a88ae019d6faca','C语言程序设计','暂无描述',NULL,'2019-01-13 20:54:33'),('5a3d5a5c01da44a0a893979e008ee869','艺术概论','暂无描述',NULL,'2019-01-13 20:57:19'),('68944598e3bc461eaf60a602b0dcc080','大学英语（四）','暂无描述',NULL,'2019-01-13 20:53:28'),('72e49506d575476fac3bd92ab215e2f4','高等数学（二）','高数第二册',NULL,'2019-01-13 20:52:32'),('75bcf27e32cc46e2898bfbd6b6d9d827','毛泽东思想','暂无描述',NULL,'2019-01-13 20:55:42'),('7b6b75e211ed4386985719683c6de905','大学体育（一）','暂无描述',NULL,'2019-01-13 20:52:58'),('867d2122e9bd49718da517b47ac6df2f','马克思主义','暂无描述',NULL,'2019-01-13 20:55:37'),('8e89d4138fdf4878a84616a4ed17ca39','儒家经典与智慧','暂无描述',NULL,'2019-01-13 20:57:11'),('93aaa7cdd92a4c4b8784b2573b5f686d','高等数学（一）','高数第一册',NULL,'2019-01-13 20:52:24'),('9826732c6fd74562b38159b6dc388269','老子论','暂无描述',NULL,'2019-01-13 20:55:23'),('9b3a3a7cf03144039ddd57acf52ce340','大学生创新创业教育','暂无描述',NULL,'2019-01-13 20:53:43'),('9d99de7461ba474fa51a180d38d8c2fa','python爬虫基础知识','暂无描述',NULL,'2019-01-13 20:55:05'),('a5723e3fab8c4624acd8848ac1c71182','心理案例分析','暂无描述',NULL,'2019-01-13 20:57:07'),('a9829bc0c34a46908a4bd0ad51a95671','java网站建设','暂无描述',NULL,'2019-01-13 20:54:48'),('ab29e054ff95444db810b9bfbfeb5187','大学英语（三）','暂无描述',NULL,'2019-01-13 20:53:23'),('b198ca3c88754d0eba499218639b9f3a','计算机导论','暂无描述','2019-01-13 20:51:21','2019-01-13 19:38:14'),('bfa253b528e141e3b08c65c4a1645ff4','化工工程制图','暂无描述',NULL,'2019-01-13 20:57:32'),('c8db9cd0354d4ce7aa58ddbf56bc6921','java语言程序设计','暂无描述',NULL,'2019-01-13 20:54:40'),('ce8bfbdce55f42d9a9a138b1beeeb888','诗经','暂无描述',NULL,'2019-01-13 20:55:28'),('d79b48bfd9ad470d8aac8cd98044dcd5','现代市场营销','暂无描述',NULL,'2019-01-13 20:57:27'),('e5a63fe284d0479cb4886d8f6a8c2f17','线性代数','暂无描述',NULL,'2019-01-13 20:53:07'),('e656d090399f4f07adb7e688226824ea','flash制作原理','暂无描述','2019-01-13 23:23:33','2019-01-13 20:59:22'),('ea4a3c427bed44d08486e5c129413bff','数据结构','暂无描述',NULL,'2019-01-13 20:59:15'),('ef94f8dd31ed408da6ae73d513918f08','大学生心理健康教育','暂无描述',NULL,'2019-01-13 20:56:07'),('f7fa6b0f2490415c93ad321add89bdf5','python爬虫实战','暂无描述',NULL,'2019-01-13 20:54:59');

/*Table structure for table `t_login` */

DROP TABLE IF EXISTS `t_login`;

CREATE TABLE `t_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL COMMENT '称昵',
  `password` varchar(32) NOT NULL COMMENT '码密',
  `last_login_time` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1有效0禁止登陆',
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `t_login` */

insert  into `t_login`(`id`,`user_id`,`password`,`last_login_time`,`status`,`role_id`) values (1,1005,'2c76a9fc355f948f858c26403447bb37','2019-12-22 17:18:46',1,13),(2,1006,'2c76a9fc355f948f858c26403447bb37','2019-01-07 13:35:19',1,13),(3,1007,'2c76a9fc355f948f858c26403447bb37','2019-01-14 18:43:49',1,13),(4,1008,'2c76a9fc355f948f858c26403447bb37','2019-01-14 18:43:55',1,13),(7,2019000000,'2c76a9fc355f948f858c26403447bb37','2019-12-21 23:10:39',1,14),(8,2019000002,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(9,2019000003,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(10,2019000004,'2c76a9fc355f948f858c26403447bb37','2019-03-01 14:21:02',1,14),(11,2019000005,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(12,2019000006,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(13,2019000007,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(14,2019000008,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(15,2019000009,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(17,2019000011,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(18,2019000012,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(19,2019000013,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(20,2019000014,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(21,2019000015,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(22,2019000016,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(23,2019000017,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(24,2019000018,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(25,2019000019,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(26,2019000020,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(30,2019000024,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(31,2019000025,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(32,2019000026,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(33,2019000027,'2c76a9fc355f948f858c26403447bb37',NULL,1,14),(50,1000,'2c76a9fc355f948f858c26403447bb37','2019-12-22 20:44:03',1,11);

/*Table structure for table `t_major` */

DROP TABLE IF EXISTS `t_major`;

CREATE TABLE `t_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '业专名称',
  `description` varchar(255) NOT NULL COMMENT '专业描述',
  `faculty_id` int(11) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id` (`faculty_id`),
  CONSTRAINT `t_major_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `t_faculty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `t_major` */

insert  into `t_major`(`id`,`name`,`description`,`faculty_id`,`gmt_create`,`gmt_modified`) values (1,'软件工程','软件开发',7,'2019-01-13 20:23:39',NULL),(2,'计算机科学与技术','计算机科学',7,'2019-01-13 20:24:07',NULL),(3,'自动化','自动化机械设备',7,'2019-01-13 20:24:36',NULL),(4,'马克思主义','学习马克思主义',1,'2019-01-13 20:25:41',NULL),(5,'幼儿教育','幼儿教育相关',2,'2019-01-13 20:26:01',NULL),(6,'学前教育','暂无描述',2,'2019-01-13 20:26:19',NULL),(7,'历史','研究历史',3,'2019-01-13 20:26:48',NULL),(8,'地理','人文地理',3,'2019-01-13 20:27:04',NULL),(9,'音乐','唱歌的',4,'2019-01-13 20:27:24','2019-01-13 23:20:24'),(10,'舞蹈','跳舞的',4,'2019-01-13 20:27:42',NULL),(11,'经济学','暂无描述',5,'2019-01-13 20:28:05',NULL),(12,'土木工程','暂无描述',6,'2019-01-13 20:28:29',NULL),(13,'体育','暂无描述',9,'2019-01-13 20:28:53',NULL),(14,'英语','English',10,'2019-01-13 20:29:11',NULL),(15,'日语','日语',10,'2019-01-13 20:29:24',NULL),(16,'继续教育','暂无描述',11,'2019-01-13 20:29:41',NULL),(17,'中华文化','研究中华美德',13,'2019-01-13 20:30:10',NULL),(18,'小说','小说写作',14,'2019-01-13 20:30:33',NULL);

/*Table structure for table `t_student` */

DROP TABLE IF EXISTS `t_student`;

CREATE TABLE `t_student` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `phone` char(11) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `headshot` varchar(42) DEFAULT NULL,
  `class_id` varchar(32) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `cls_id` (`class_id`),
  CONSTRAINT `t_student_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2019000047 DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`id`,`name`,`phone`,`sex`,`headshot`,`class_id`,`gmt_create`,`gmt_modified`,`email`) values (2019000000,'lyp','13618567912',1,'avatar\\2019000000.jpg','4565abfe725e40f6ba371d25b40826a9','2019-01-15 11:24:42','2019-12-21 20:35:40','2012654381@qq.com'),(2019000002,'张三',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 13:55:35',NULL,NULL),(2019000003,'李四',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 13:56:11',NULL,NULL),(2019000004,'王五',NULL,1,NULL,'95faab6c249c46a58e30e44d95bfa18e','2019-01-15 13:59:24',NULL,NULL),(2019000005,'宋江',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:12:16',NULL,NULL),(2019000006,'吴用',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:12:59',NULL,NULL),(2019000007,'卢俊义',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:08',NULL,NULL),(2019000008,'公孙胜',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:13',NULL,NULL),(2019000009,'林冲',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:20',NULL,NULL),(2019000011,'武松',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:30',NULL,NULL),(2019000012,'张清',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:35',NULL,NULL),(2019000013,'张顺',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:39',NULL,NULL),(2019000014,'阮小五',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:43',NULL,NULL),(2019000015,'阮小二',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:48',NULL,NULL),(2019000016,'石秀',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:52',NULL,NULL),(2019000017,'朱武',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:13:56',NULL,NULL),(2019000018,'鲁智深',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:14:00',NULL,NULL),(2019000019,'陶宗旺',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:14:05',NULL,NULL),(2019000020,'宋万',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:14:10',NULL,NULL),(2019000024,'朱贵',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:14:30',NULL,NULL),(2019000025,'顾大嫂',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:14:35',NULL,NULL),(2019000026,'孙二娘',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:14:39',NULL,NULL),(2019000027,'郁保四',NULL,1,NULL,'4565abfe725e40f6ba371d25b40826a9','2019-01-15 14:14:42',NULL,NULL);

/*Table structure for table `t_teacher` */

DROP TABLE IF EXISTS `t_teacher`;

CREATE TABLE `t_teacher` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `headshot` varchar(43) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8;

/*Data for the table `t_teacher` */

insert  into `t_teacher`(`id`,`name`,`sex`,`phone`,`headshot`,`gmt_create`,`gmt_modified`,`email`) values (1005,'孙悟空',1,'13755437702','avatar\\1005.jpg','2019-01-14 12:44:13','2019-12-20 21:32:39',NULL),(1006,'唐僧',1,'13618567912',NULL,'2019-01-14 13:30:08',NULL,NULL),(1007,'猪八戒',1,'13618567912',NULL,'2019-01-14 13:31:00',NULL,NULL),(1008,'猪悟净',1,'13618567912',NULL,'2019-01-14 13:39:03',NULL,NULL);

/*Table structure for table `t_teaching_lession` */

DROP TABLE IF EXISTS `t_teaching_lession`;

CREATE TABLE `t_teaching_lession` (
  `id` varchar(32) NOT NULL,
  `class_id` varchar(32) NOT NULL COMMENT '级班',
  `lession_id` varchar(32) NOT NULL COMMENT '程课',
  `teacher_id` varchar(64) NOT NULL COMMENT '任课人',
  `status` tinyint(1) DEFAULT '0' COMMENT '课授状态',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cls_id` (`class_id`) USING BTREE,
  KEY `lession_id` (`lession_id`) USING BTREE,
  KEY `user_id` (`teacher_id`) USING BTREE,
  CONSTRAINT `teacher_cls_lession_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`id`),
  CONSTRAINT `teacher_cls_lession_ibfk_2` FOREIGN KEY (`lession_id`) REFERENCES `t_lession` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_teaching_lession` */

insert  into `t_teaching_lession`(`id`,`class_id`,`lession_id`,`teacher_id`,`status`,`gmt_create`,`gmt_modified`) values ('1ab84abca2d845c48875b5aafa9bbb19','4565abfe725e40f6ba371d25b40826a9','51d6d34c72aa4254b6bf1c957c0047d0','1005',1,'2019-01-14 17:38:00',NULL),('39e0e9fb3e4f44bd90b7e79c4e30584e','89a7e5af5a064f0da119cf3286c9666e','330417581d1f4644a76321222a85d268','1006',1,'2019-01-14 17:49:17',NULL),('412cbd42f3b54bd0bd6772250932ee93','6502db0718c34198b85fd8dda895ecb9','9826732c6fd74562b38159b6dc388269','1006',1,'2019-01-14 17:54:29','2019-01-14 18:03:31'),('5dd751dd5e4e4174bab098fc07d56d1d','1561aae6321e4d8295b47d7d98c34f14','68944598e3bc461eaf60a602b0dcc080','1008',1,'2019-01-14 17:51:10',NULL);

/*Table structure for table `t_work` */

DROP TABLE IF EXISTS `t_work`;

CREATE TABLE `t_work` (
  `id` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '业作名称',
  `teacher_id` int(4) NOT NULL,
  `acceptance_time` datetime NOT NULL COMMENT '收验时间',
  `demand` text COMMENT '要求',
  `teaching_lession_id` varchar(32) NOT NULL COMMENT '班级任课id',
  `annex` varchar(255) DEFAULT NULL COMMENT '件附',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `status` int(2) DEFAULT '0' COMMENT '0未完成1间时结束2完成',
  PRIMARY KEY (`id`),
  KEY `t_job_ibfk_1` (`teacher_id`),
  CONSTRAINT `t_work_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `t_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_work` */

insert  into `t_work`(`id`,`name`,`teacher_id`,`acceptance_time`,`demand`,`teaching_lession_id`,`annex`,`gmt_create`,`gmt_modified`,`status`) values ('23f0d8c576cd4af7b18ac92c8a36d9e4','实验一',1005,'2019-12-31 00:00:00','123','1ab84abca2d845c48875b5aafa9bbb19','/teacher/1005/23f0d8c576cd4af7b18ac92c8a36d9e4.zip','2019-12-21 11:40:09',NULL,2),('3337d2eef6a14265bdde1160cfe10cc6','实验三',1005,'2019-12-21 15:15:00','1','1ab84abca2d845c48875b5aafa9bbb19','/teacher/1005/3337d2eef6a14265bdde1160cfe10cc6.zip','2019-12-21 15:11:02',NULL,1),('b2d762a251b640728fd51f41e7f5c439','实验二',1005,'2019-12-31 00:00:00','111','1ab84abca2d845c48875b5aafa9bbb19','/teacher/1005/b2d762a251b640728fd51f41e7f5c439.zip','2019-12-21 15:10:38','2019-12-21 15:56:28',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
