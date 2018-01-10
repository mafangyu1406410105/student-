/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.24-community-nt : Database - asd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`asd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `asd`;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `userpass` varchar(50) NOT NULL,
  `userage` int(11) NOT NULL,
  `usersex` varchar(2) NOT NULL,
  `userdate` varchar(100) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`userid`,`username`,`userpass`,`userage`,`usersex`,`userdate`,`useremail`) values (1,'鹿晗','10010',20,'男','2000-02-06','10010@163.com'),(2,'邓超','10020',25,'男','2005-05-06','10020@163.com'),(3,'陈赫','10030',22,'男','2008-06-08','10030@163.com'),(4,'郑凯','10040',23,'男','2007-04-10','10040@163.com'),(5,'王祖蓝','10050',24,'男','2006-04-12','10050@163.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
