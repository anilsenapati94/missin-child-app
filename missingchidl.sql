/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - crimedb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`crimedb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `crimedb`;

/*Table structure for table `authregister` */

DROP TABLE IF EXISTS `authregister`;

CREATE TABLE `authregister` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `authregister` */

insert  into `authregister`(`id`,`username`,`password`,`email`,`mobile`,`address`) values (1,'dyanand','123','dyanandkumar4411@gmail.com','8873384802','ameerpet'),(2,'dyanand','123','f@gmail.com','8873384802','ameerpet'),(3,'dyanand','123','f@gmail.com','8873384802','ameerpet'),(4,'daya','1122','dyanandkumar4411@gmail.com','8873384802','ameerpet'),(5,'dnd','1122','aa@gmail.com','8873384802','ameerpet'),(6,'','','','',''),(7,'admin','1122','f@gmail.com','08873384802','ameerpet'),(8,'','','','','');

/*Table structure for table `images` */

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `name` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `images` */

insert  into `images`(`name`,`description`) values ('raju','He reportedly heads the Indian organised crime syndicate D-Company which he founded in Mumbai in the 1970s. Ibrahim is wanted on the charges of terrorism, murder extortion, targeted killing, drug trafficking and various other cases.He was designated as a global terrorist in 2003 by India and the United States with a reward of US$25 million on his head for his believed role in the 1993 Bombay bombings In 2011, he was named number three on \"The World\'s 10 Most Wanted Fugitives\" by the U.S. Federal Bureau of Investigation and Forbes, though he has since been dropped from both lists.Recently the Pakistani government in order to avoid FATF sanctions listed Dawood and 87 others in the sanction list'),('radha','He was a Saudi Arabian citizen until 1994 and a member of the wealthy bin Laden family Bin Ladens father was Mohammed bin Awad bin Laden a Saudi millionaire from Hadhramaut Yemen and the founder of the construction company Saudi Binladin Group. His mother, Alia Ghanem, was from a secular middle-class family in Latakia, Syria. He was born in Saudi Arabia and studied at university in the country until 1979, when he joined Mujahideen forces in Pakistan fighting against the Soviet Union in Afghanistan'),('hari','user looks suspicious');

/*Table structure for table `inbox` */

DROP TABLE IF EXISTS `inbox`;

CREATE TABLE `inbox` (
  `name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `inbox` */

insert  into `inbox`(`name`,`city`,`landmark`,`remark`,`image`,`username`) values ('test 16','hyd','ameerpet','metro','1.png','dyanand'),('a','h','am','metro','2.png','chotu');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`username`,`password`,`email`,`mobile`,`address`) values (1,'chotu','123','chotu.1000projects@gmail.com','7702177291','hyd'),(2,'moulali','123','moulalicce225@gmail.com','7702177291','15-8-424'),(3,'dyanand','a@112233','sk5572706@gmail.com','8873384802','ameerpet'),(4,'dyanand','1122','a@gmail.com','08873384802','ameerpet'),(5,'','','','','');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`id`,`name`,`city`,`landmark`,`remark`,`image`,`username`) values (28,'test 16','hyd','ameerpet','metro','1.png','dyanand'),(30,'test 21','hyd','jailmode','100','2.png','dyanand'),(31,'test 21','hyd','jailmode','100','2.png','dyanand'),(32,'','','','','2.png','chotu'),(33,'a','h','am','metro','2.png','chotu');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
