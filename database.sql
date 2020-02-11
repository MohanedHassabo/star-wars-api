/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.1.21-MariaDB : Database - star-wars
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`star-wars` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `star-wars`;

/*Table structure for table `films` */

DROP TABLE IF EXISTS `films`;

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `director` varchar(60) DEFAULT NULL,
  `producer` text,
  `episode_id` int(11) DEFAULT '0',
  `opening_crawl` longtext,
  `release_date` timestamp(3) NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `episode_id` (`episode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `films` */

insert  into `films`(`id`,`title`,`director`,`producer`,`episode_id`,`opening_crawl`,`release_date`,`created`,`edited`) values 
(1,'A New Hope','George Lucas','Gary Kurtz, Rick McCallum',4,'It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire\'s\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire\'s\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....','1977-05-25 00:00:00.000','2014-12-10 14:23:31','2014-12-20 19:49:45'),
(2,'The Empire Strikes Back','Irvin Kershner','Gary Kurtz, Rick McCallum',5,'It is a dark time for the\r\nRebellion. Although the Death\r\nStar has been destroyed,\r\nImperial troops have driven the\r\nRebel forces from their hidden\r\nbase and pursued them across\r\nthe galaxy.\r\n\r\nEvading the dreaded Imperial\r\nStarfleet, a group of freedom\r\nfighters led by Luke Skywalker\r\nhas established a new secret\r\nbase on the remote ice world\r\nof Hoth.\r\n\r\nThe evil lord Darth Vader,\r\nobsessed with finding young\r\nSkywalker, has dispatched\r\nthousands of remote probes into\r\nthe far reaches of space....','1980-05-17 00:00:00.000','2014-12-12 11:26:24','2014-12-15 13:07:53'),
(3,'Return of the Jedi','Richard Marquand','Howard G. Kazanjian, George Lucas, Rick McCallum',6,'Luke Skywalker has returned to\r\nhis home planet of Tatooine in\r\nan attempt to rescue his\r\nfriend Han Solo from the\r\nclutches of the vile gangster\r\nJabba the Hutt.\r\n\r\nLittle does Luke know that the\r\nGALACTIC EMPIRE has secretly\r\nbegun construction on a new\r\narmored space station even\r\nmore powerful than the first\r\ndreaded Death Star.\r\n\r\nWhen completed, this ultimate\r\nweapon will spell certain doom\r\nfor the small band of rebels\r\nstruggling to restore freedom\r\nto the galaxy...','1983-05-25 00:00:00.000','2014-12-18 10:39:33','2014-12-20 09:48:37'),
(4,'The Phantom Menace','George Lucas','Rick McCallum',1,'Turmoil has engulfed the\r\nGalactic Republic. The taxation\r\nof trade routes to outlying star\r\nsystems is in dispute.\r\n\r\nHoping to resolve the matter\r\nwith a blockade of deadly\r\nbattleships, the greedy Trade\r\nFederation has stopped all\r\nshipping to the small planet\r\nof Naboo.\r\n\r\nWhile the Congress of the\r\nRepublic endlessly debates\r\nthis alarming chain of events,\r\nthe Supreme Chancellor has\r\nsecretly dispatched two Jedi\r\nKnights, the guardians of\r\npeace and justice in the\r\ngalaxy, to settle the conflict....','1999-05-19 00:00:00.000','2014-12-19 16:52:55','2014-12-20 10:54:07'),
(5,'Attack of the Clones','George Lucas','Rick McCallum',2,'There is unrest in the Galactic\r\nSenate. Several thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi....','2002-05-16 00:00:00.000','2014-12-20 10:57:57','2014-12-20 20:18:48'),
(6,'Revenge of the Sith','George Lucas','Rick McCallum',3,'War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....','2005-05-19 00:00:00.000','2014-12-20 18:49:38','2014-12-20 20:47:52');

/*Table structure for table `films_characters` */

DROP TABLE IF EXISTS `films_characters`;

CREATE TABLE `films_characters` (
  `film_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`,`people_id`),
  KEY `s3t_characters_films_1` (`people_id`),
  CONSTRAINT `s3t_characters_films_0` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  CONSTRAINT `s3t_characters_films_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `films_characters` */

insert  into `films_characters`(`film_id`,`people_id`) values 
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,12),
(1,13),
(1,14),
(1,15),
(1,16),
(1,18),
(1,19),
(1,81),
(2,1),
(2,2),
(2,3),
(2,4),
(2,5),
(2,10),
(2,13),
(2,14),
(2,18),
(2,20),
(2,21),
(2,22),
(2,23),
(2,24),
(2,25),
(2,26),
(3,1),
(3,2),
(3,3),
(3,4),
(3,5),
(3,10),
(3,13),
(3,14),
(3,16),
(3,18),
(3,20),
(3,21),
(3,22),
(3,25),
(3,27),
(3,28),
(3,29),
(3,30),
(3,31),
(3,45),
(4,2),
(4,3),
(4,10),
(4,11),
(4,16),
(4,20),
(4,21),
(4,32),
(4,33),
(4,34),
(4,35),
(4,36),
(4,37),
(4,38),
(4,39),
(4,40),
(4,41),
(4,42),
(4,43),
(4,44),
(4,46),
(4,47),
(4,48),
(4,49),
(4,50),
(4,51),
(4,52),
(4,53),
(4,54),
(4,55),
(4,56),
(4,57),
(4,58),
(4,59),
(5,2),
(5,3),
(5,6),
(5,7),
(5,10),
(5,11),
(5,20),
(5,21),
(5,22),
(5,33),
(5,35),
(5,36),
(5,40),
(5,43),
(5,46),
(5,51),
(5,52),
(5,53),
(5,58),
(5,59),
(5,60),
(5,61),
(5,62),
(5,63),
(5,64),
(5,65),
(5,66),
(5,67),
(5,68),
(5,69),
(5,70),
(5,71),
(5,72),
(5,73),
(5,74),
(5,75),
(5,76),
(5,77),
(5,78),
(5,82),
(6,1),
(6,2),
(6,3),
(6,4),
(6,5),
(6,6),
(6,7),
(6,10),
(6,11),
(6,12),
(6,13),
(6,20),
(6,21),
(6,33),
(6,35),
(6,46),
(6,51),
(6,52),
(6,53),
(6,54),
(6,55),
(6,56),
(6,58),
(6,63),
(6,64),
(6,67),
(6,68),
(6,75),
(6,78),
(6,79),
(6,80),
(6,81),
(6,82),
(6,83);

/*Table structure for table `films_planets` */

DROP TABLE IF EXISTS `films_planets`;

CREATE TABLE `films_planets` (
  `film_id` int(11) NOT NULL,
  `planet_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`,`planet_id`),
  KEY `s3t_films_planets_films_1` (`planet_id`),
  CONSTRAINT `s3t_films_planets_films_0` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  CONSTRAINT `s3t_films_planets_films_1` FOREIGN KEY (`planet_id`) REFERENCES `planets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `films_planets` */

insert  into `films_planets`(`film_id`,`planet_id`) values 
(1,1),
(1,2),
(1,3),
(2,4),
(2,5),
(2,6),
(2,27),
(3,1),
(3,5),
(3,7),
(3,8),
(3,9),
(4,1),
(4,8),
(4,9),
(5,1),
(5,8),
(5,9),
(5,10),
(5,11),
(6,1),
(6,2),
(6,5),
(6,8),
(6,9),
(6,12),
(6,13),
(6,14),
(6,15),
(6,16),
(6,17),
(6,18),
(6,19);

/*Table structure for table `films_species` */

DROP TABLE IF EXISTS `films_species`;

CREATE TABLE `films_species` (
  `film_id` int(11) NOT NULL,
  `species_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`,`species_id`),
  KEY `s3t_films_species_films_1` (`species_id`),
  CONSTRAINT `s3t_films_species_films_0` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  CONSTRAINT `s3t_films_species_films_1` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `films_species` */

insert  into `films_species`(`film_id`,`species_id`) values 
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(2,1),
(2,2),
(2,3),
(2,6),
(2,7),
(3,1),
(3,2),
(3,3),
(3,5),
(3,6),
(3,8),
(3,9),
(3,10),
(3,15),
(4,1),
(4,2),
(4,6),
(4,11),
(4,12),
(4,13),
(4,14),
(4,15),
(4,16),
(4,17),
(4,18),
(4,19),
(4,20),
(4,21),
(4,22),
(4,23),
(4,24),
(4,25),
(4,26),
(4,27),
(5,1),
(5,2),
(5,6),
(5,12),
(5,13),
(5,15),
(5,28),
(5,29),
(5,30),
(5,31),
(5,32),
(5,33),
(5,34),
(5,35),
(6,1),
(6,2),
(6,3),
(6,6),
(6,15),
(6,19),
(6,20),
(6,23),
(6,24),
(6,25),
(6,26),
(6,27),
(6,28),
(6,29),
(6,30),
(6,33),
(6,34),
(6,35),
(6,36),
(6,37);

/*Table structure for table `films_starships` */

DROP TABLE IF EXISTS `films_starships`;

CREATE TABLE `films_starships` (
  `film_id` int(11) NOT NULL,
  `starship_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`,`starship_id`),
  KEY `s3t_films_starships_films_1` (`starship_id`),
  CONSTRAINT `s3t_films_starships_films_0` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  CONSTRAINT `s3t_films_starships_films_1` FOREIGN KEY (`starship_id`) REFERENCES `starships` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `films_starships` */

insert  into `films_starships`(`film_id`,`starship_id`) values 
(1,2),
(1,3),
(1,5),
(1,9),
(1,10),
(1,11),
(1,12),
(1,13),
(2,3),
(2,10),
(2,11),
(2,12),
(2,15),
(2,17),
(2,21),
(2,22),
(2,23),
(3,2),
(3,3),
(3,10),
(3,11),
(3,12),
(3,15),
(3,17),
(3,22),
(3,23),
(3,27),
(3,28),
(3,29),
(4,31),
(4,32),
(4,39),
(4,40),
(4,41),
(5,21),
(5,32),
(5,39),
(5,43),
(5,47),
(5,48),
(5,49),
(5,52),
(5,58),
(6,2),
(6,32),
(6,48),
(6,59),
(6,61),
(6,63),
(6,64),
(6,65),
(6,66),
(6,68),
(6,74),
(6,75);

/*Table structure for table `films_vehicles` */

DROP TABLE IF EXISTS `films_vehicles`;

CREATE TABLE `films_vehicles` (
  `film_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`,`vehicle_id`),
  KEY `s3t_films_vehicles_films_1` (`vehicle_id`),
  CONSTRAINT `s3t_films_vehicles_films_0` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  CONSTRAINT `s3t_films_vehicles_films_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `films_vehicles` */

insert  into `films_vehicles`(`film_id`,`vehicle_id`) values 
(1,4),
(1,6),
(1,7),
(1,8),
(2,8),
(2,14),
(2,16),
(2,18),
(2,19),
(2,20),
(3,8),
(3,16),
(3,18),
(3,19),
(3,24),
(3,25),
(3,26),
(3,30),
(4,33),
(4,34),
(4,35),
(4,36),
(4,37),
(4,38),
(4,42),
(5,4),
(5,44),
(5,45),
(5,46),
(5,50),
(5,51),
(5,53),
(5,54),
(5,55),
(5,56),
(5,57),
(6,33),
(6,50),
(6,53),
(6,56),
(6,60),
(6,62),
(6,67),
(6,69),
(6,70),
(6,71),
(6,72),
(6,73),
(6,76);

/*Table structure for table `people` */

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `birth_year` varchar(10) DEFAULT NULL,
  `height` smallint(4) NOT NULL DEFAULT '0',
  `mass` float NOT NULL,
  `hair_color` varchar(20) DEFAULT NULL,
  `skin_color` varchar(30) DEFAULT NULL,
  `eye_color` varchar(20) DEFAULT NULL,
  `homeworld` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homeworld` (`homeworld`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `people` */

insert  into `people`(`id`,`name`,`gender`,`birth_year`,`height`,`mass`,`hair_color`,`skin_color`,`eye_color`,`homeworld`,`created`,`edited`) values 
(1,'Luke Skywalker','male','19BBY',172,77,'blond','fair','blue',1,'2014-12-09 13:50:51','2014-12-20 21:17:56'),
(2,'C-3PO','n/a','112BBY',167,75,'n/a','gold','yellow',1,'2014-12-10 15:10:51','2014-12-20 21:17:50'),
(3,'R2-D2','n/a','33BBY',96,32,'n/a','white, blue','red',8,'2014-12-10 15:11:50','2014-12-20 21:17:50'),
(4,'Darth Vader','male','41.9BBY',202,136,'none','white','yellow',1,'2014-12-10 15:18:20','2014-12-20 21:17:50'),
(5,'Leia Organa','female','19BBY',150,49,'brown','light','brown',2,'2014-12-10 15:20:09','2014-12-20 21:17:50'),
(6,'Owen Lars','male','52BBY',178,120,'brown, grey','light','blue',1,'2014-12-10 15:52:14','2014-12-20 21:17:50'),
(7,'Beru Whitesun lars','female','47BBY',165,75,'brown','light','blue',1,'2014-12-10 15:53:41','2014-12-20 21:17:50'),
(8,'R5-D4','n/a','unknown',97,32,'n/a','white, red','red',1,'2014-12-10 15:57:50','2014-12-20 21:17:50'),
(9,'Biggs Darklighter','male','24BBY',183,84,'black','light','brown',1,'2014-12-10 15:59:50','2014-12-20 21:17:50'),
(10,'Obi-Wan Kenobi','male','57BBY',182,77,'auburn, white','fair','blue-gray',20,'2014-12-10 16:16:29','2014-12-20 21:17:50'),
(11,'Anakin Skywalker','male','41.9BBY',188,84,'blond','fair','blue',1,'2014-12-10 16:20:44','2014-12-20 21:17:50'),
(12,'Wilhuff Tarkin','male','64BBY',180,0,'auburn, grey','fair','blue',21,'2014-12-10 16:26:56','2014-12-20 21:17:50'),
(13,'Chewbacca','male','200BBY',228,112,'brown','unknown','blue',14,'2014-12-10 16:42:45','2014-12-20 21:17:50'),
(14,'Han Solo','male','29BBY',180,80,'brown','fair','brown',22,'2014-12-10 16:49:14','2014-12-20 21:17:50'),
(15,'Greedo','male','44BBY',173,74,'n/a','green','black',23,'2014-12-10 17:03:30','2014-12-20 21:17:50'),
(16,'Jabba Desilijic Tiure','hermaphrodite','600BBY',175,1,'n/a','green-tan, brown','orange',24,'2014-12-10 17:11:31','2014-12-20 21:17:50'),
(18,'Wedge Antilles','male','21BBY',170,77,'brown','fair','hazel',22,'2014-12-12 11:08:06','2014-12-20 21:17:50'),
(19,'Jek Tono Porkins','male','unknown',180,110,'brown','fair','blue',26,'2014-12-12 11:16:56','2014-12-20 21:17:50'),
(20,'Yoda','male','896BBY',66,17,'white','green','brown',28,'2014-12-15 12:26:01','2014-12-20 21:17:50'),
(21,'Palpatine','male','82BBY',170,75,'grey','pale','yellow',8,'2014-12-15 12:48:05','2014-12-20 21:17:50'),
(22,'Boba Fett','male','31.5BBY',183,78.2,'black','fair','brown',10,'2014-12-15 12:49:32','2014-12-20 21:17:50'),
(23,'IG-88','none','15BBY',200,140,'none','metal','red',28,'2014-12-15 12:51:10','2014-12-20 21:17:50'),
(24,'Bossk','male','53BBY',190,113,'none','green','red',29,'2014-12-15 12:53:49','2014-12-20 21:17:50'),
(25,'Lando Calrissian','male','31BBY',177,79,'black','dark','brown',30,'2014-12-15 12:56:32','2014-12-20 21:17:50'),
(26,'Lobot','male','37BBY',175,79,'none','light','blue',6,'2014-12-15 13:01:57','2014-12-20 21:17:50'),
(27,'Ackbar','male','41BBY',180,83,'none','brown mottle','orange',31,'2014-12-18 11:07:50','2014-12-20 21:17:50'),
(28,'Mon Mothma','female','48BBY',150,0,'auburn','fair','blue',32,'2014-12-18 11:12:38','2014-12-20 21:17:50'),
(29,'Arvel Crynyd','male','unknown',0,0,'brown','fair','brown',28,'2014-12-18 11:16:33','2014-12-20 21:17:50'),
(30,'Wicket Systri Warrick','male','8BBY',88,20,'brown','brown','brown',7,'2014-12-18 11:21:58','2014-12-20 21:17:50'),
(31,'Nien Nunb','male','unknown',160,68,'none','grey','black',33,'2014-12-18 11:26:18','2014-12-20 21:17:50'),
(32,'Qui-Gon Jinn','male','92BBY',193,89,'brown','fair','blue',28,'2014-12-19 16:54:53','2014-12-20 21:17:50'),
(33,'Nute Gunray','male','unknown',191,90,'none','mottled green','red',18,'2014-12-19 17:05:57','2014-12-20 21:17:50'),
(34,'Finis Valorum','male','91BBY',170,0,'blond','fair','blue',9,'2014-12-19 17:21:45','2014-12-20 21:17:50'),
(35,'Padmé Amidala','female','46BBY',185,45,'brown','light','brown',8,'2014-12-19 17:28:26','2014-12-20 21:17:50'),
(36,'Jar Jar Binks','male','52BBY',196,66,'none','orange','orange',8,'2014-12-19 17:29:32','2014-12-20 21:17:50'),
(37,'Roos Tarpals','male','unknown',224,82,'none','grey','orange',8,'2014-12-19 17:32:56','2014-12-20 21:17:50'),
(38,'Rugor Nass','male','unknown',206,0,'none','green','orange',8,'2014-12-19 17:33:38','2014-12-20 21:17:50'),
(39,'Ric Olié','male','unknown',183,0,'brown','fair','blue',8,'2014-12-19 17:45:01','2014-12-20 21:17:50'),
(40,'Watto','male','unknown',137,0,'black','blue, grey','yellow',34,'2014-12-19 17:48:54','2014-12-20 21:17:50'),
(41,'Sebulba','male','unknown',112,40,'none','grey, red','orange',35,'2014-12-19 17:53:02','2014-12-20 21:17:50'),
(42,'Quarsh Panaka','male','62BBY',183,0,'black','dark','brown',8,'2014-12-19 17:55:43','2014-12-20 21:17:50'),
(43,'Shmi Skywalker','female','72BBY',163,0,'black','fair','brown',1,'2014-12-19 17:57:41','2014-12-20 21:17:50'),
(44,'Darth Maul','male','54BBY',175,80,'none','red','yellow',36,'2014-12-19 18:00:41','2014-12-20 21:17:50'),
(45,'Bib Fortuna','male','unknown',180,0,'none','pale','pink',37,'2014-12-20 09:47:02','2014-12-20 21:17:50'),
(46,'Ayla Secura','female','48BBY',178,55,'none','blue','hazel',37,'2014-12-20 09:48:01','2014-12-20 21:17:50'),
(47,'Ratts Tyerel','male','unknown',79,15,'none','grey, blue','unknown',38,'2014-12-20 09:53:15','2014-12-20 21:17:50'),
(48,'Dud Bolt','male','unknown',94,45,'none','blue, grey','yellow',39,'2014-12-20 09:57:31','2014-12-20 21:17:50'),
(49,'Gasgano','male','unknown',122,0,'none','white, blue','black',40,'2014-12-20 10:02:12','2014-12-20 21:17:50'),
(50,'Ben Quadinaros','male','unknown',163,65,'none','grey, green, yellow','orange',41,'2014-12-20 10:08:33','2014-12-20 21:17:50'),
(51,'Mace Windu','male','72BBY',188,84,'none','dark','brown',42,'2014-12-20 10:12:30','2014-12-20 21:17:50'),
(52,'Ki-Adi-Mundi','male','92BBY',198,82,'white','pale','yellow',43,'2014-12-20 10:15:32','2014-12-20 21:17:50'),
(53,'Kit Fisto','male','unknown',196,87,'none','green','black',44,'2014-12-20 10:18:57','2014-12-20 21:17:50'),
(54,'Eeth Koth','male','unknown',171,0,'black','brown','brown',45,'2014-12-20 10:26:47','2014-12-20 21:17:50'),
(55,'Adi Gallia','female','unknown',184,50,'none','dark','blue',9,'2014-12-20 10:29:11','2014-12-20 21:17:50'),
(56,'Saesee Tiin','male','unknown',188,0,'none','pale','orange',47,'2014-12-20 10:32:11','2014-12-20 21:17:50'),
(57,'Yarael Poof','male','unknown',264,0,'none','white','yellow',48,'2014-12-20 10:34:48','2014-12-20 21:17:50'),
(58,'Plo Koon','male','22BBY',188,80,'none','orange','black',49,'2014-12-20 10:49:19','2014-12-20 21:17:50'),
(59,'Mas Amedda','male','unknown',196,0,'none','blue','blue',50,'2014-12-20 10:53:26','2014-12-20 21:17:50'),
(60,'Gregar Typho','male','unknown',185,85,'black','dark','brown',8,'2014-12-20 11:10:10','2014-12-20 21:17:50'),
(61,'Cordé','female','unknown',157,0,'brown','light','brown',8,'2014-12-20 11:11:39','2014-12-20 21:17:50'),
(62,'Cliegg Lars','male','82BBY',183,0,'brown','fair','blue',1,'2014-12-20 15:59:03','2014-12-20 21:17:50'),
(63,'Poggle the Lesser','male','unknown',183,80,'none','green','yellow',11,'2014-12-20 16:40:43','2014-12-20 21:17:50'),
(64,'Luminara Unduli','female','58BBY',170,56.2,'black','yellow','blue',51,'2014-12-20 16:45:53','2014-12-20 21:17:50'),
(65,'Barriss Offee','female','40BBY',166,50,'black','yellow','blue',51,'2014-12-20 16:46:40','2014-12-20 21:17:50'),
(66,'Dormé','female','unknown',165,0,'brown','light','brown',8,'2014-12-20 16:49:14','2014-12-20 21:17:50'),
(67,'Dooku','male','102BBY',193,80,'white','fair','brown',52,'2014-12-20 16:52:14','2014-12-20 21:17:50'),
(68,'Bail Prestor Organa','male','67BBY',191,0,'black','tan','brown',2,'2014-12-20 16:53:08','2014-12-20 21:17:50'),
(69,'Jango Fett','male','66BBY',183,79,'black','tan','brown',53,'2014-12-20 16:54:41','2014-12-20 21:17:50'),
(70,'Zam Wesell','female','unknown',168,55,'blonde','fair, green, yellow','yellow',54,'2014-12-20 16:57:44','2014-12-20 21:17:50'),
(71,'Dexter Jettster','male','unknown',198,102,'none','brown','yellow',55,'2014-12-20 17:28:27','2014-12-20 21:17:50'),
(72,'Lama Su','male','unknown',229,88,'none','grey','black',10,'2014-12-20 17:30:50','2014-12-20 21:17:50'),
(73,'Taun We','female','unknown',213,0,'none','grey','black',10,'2014-12-20 17:31:21','2014-12-20 21:17:50'),
(74,'Jocasta Nu','female','unknown',167,0,'white','fair','blue',9,'2014-12-20 17:32:51','2014-12-20 21:17:50'),
(75,'R4-P17','female','unknown',96,0,'none','silver, red','red, blue',28,'2014-12-20 17:43:36','2014-12-20 21:17:50'),
(76,'Wat Tambor','male','unknown',193,48,'none','green, grey','unknown',56,'2014-12-20 17:53:52','2014-12-20 21:17:50'),
(77,'San Hill','male','unknown',191,0,'none','grey','gold',57,'2014-12-20 17:58:17','2014-12-20 21:17:50'),
(78,'Shaak Ti','female','unknown',178,57,'none','red, blue, white','black',58,'2014-12-20 18:44:01','2014-12-20 21:17:50'),
(79,'Grievous','male','unknown',216,159,'none','brown, white','green, yellow',59,'2014-12-20 19:43:53','2014-12-20 21:17:50'),
(80,'Tarfful','male','unknown',234,136,'brown','brown','blue',14,'2014-12-20 19:46:34','2014-12-20 21:17:50'),
(81,'Raymus Antilles','male','unknown',188,79,'brown','light','brown',2,'2014-12-20 19:49:35','2014-12-20 21:17:50'),
(82,'Sly Moore','female','unknown',178,48,'none','pale','white',60,'2014-12-20 20:18:37','2014-12-20 21:17:50'),
(83,'Tion Medon','male','unknown',206,80,'none','grey','black',12,'2014-12-20 20:35:04','2014-12-20 21:17:50');

/*Table structure for table `planets` */

DROP TABLE IF EXISTS `planets`;

CREATE TABLE `planets` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `climate` text,
  `rotation_period` int(11) DEFAULT '0',
  `orbital_period` int(11) DEFAULT '0',
  `diameter` int(11) DEFAULT '0',
  `gravity` text,
  `terrain` text,
  `surface_water` varchar(10) DEFAULT NULL,
  `population` bigint(20) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `planets` */

insert  into `planets`(`id`,`name`,`climate`,`rotation_period`,`orbital_period`,`diameter`,`gravity`,`terrain`,`surface_water`,`population`,`created`,`edited`) values 
(1,'Tatooine','arid',23,304,10465,'1 standard','desert','1',200000,'2014-12-09 13:50:49','2014-12-20 20:58:18'),
(2,'Alderaan','temperate',24,364,12500,'1 standard','grasslands, mountains','40',2000000000,'2014-12-10 11:35:48','2014-12-20 20:58:18'),
(3,'Yavin IV','temperate, tropical',24,4818,10200,'1 standard','jungle, rainforests','8',1000,'2014-12-10 11:37:19','2014-12-20 20:58:18'),
(4,'Hoth','frozen',23,549,7200,'1.1 standard','tundra, ice caves, mountain ranges','100',0,'2014-12-10 11:39:13','2014-12-20 20:58:18'),
(5,'Dagobah','murky',23,341,8900,'N/A','swamp, jungles','8',0,'2014-12-10 11:42:22','2014-12-20 20:58:18'),
(6,'Bespin','temperate',12,5110,118000,'1.5 (surface), 1 standard (Cloud City)','gas giant','0',6000000,'2014-12-10 11:43:55','2014-12-20 20:58:18'),
(7,'Endor','temperate',18,402,4900,'0.85 standard','forests, mountains, lakes','8',30000000,'2014-12-10 11:50:29','2014-12-20 20:58:18'),
(8,'Naboo','temperate',26,312,12120,'1 standard','grassy hills, swamps, forests, mountains','12',4500000000,'2014-12-10 11:52:31','2014-12-20 20:58:18'),
(9,'Coruscant','temperate',24,368,12240,'1 standard','cityscape, mountains','unknown',1000000000000,'2014-12-10 11:54:13','2014-12-20 20:58:18'),
(10,'Kamino','temperate',27,463,19720,'1 standard','ocean','100',1000000000,'2014-12-10 12:45:06','2014-12-20 20:58:18'),
(11,'Geonosis','temperate, arid',30,256,11370,'0.9 standard','rock, desert, mountain, barren','5',100000000000,'2014-12-10 12:47:22','2014-12-20 20:58:18'),
(12,'Utapau','temperate, arid, windy',27,351,12900,'1 standard','scrublands, savanna, canyons, sinkholes','0.9',95000000,'2014-12-10 12:49:01','2014-12-20 20:58:18'),
(13,'Mustafar','hot',36,412,4200,'1 standard','volcanoes, lava rivers, mountains, caves','0',20000,'2014-12-10 12:50:16','2014-12-20 20:58:18'),
(14,'Kashyyyk','tropical',26,381,12765,'1 standard','jungle, forests, lakes, rivers','60',45000000,'2014-12-10 13:32:00','2014-12-20 20:58:18'),
(15,'Polis Massa','artificial temperate ',24,590,0,'0.56 standard','airless asteroid','0',1000000,'2014-12-10 13:33:46','2014-12-20 20:58:18'),
(16,'Mygeeto','frigid',12,167,10088,'1 standard','glaciers, mountains, ice canyons','unknown',19000000,'2014-12-10 13:43:39','2014-12-20 20:58:18'),
(17,'Felucia','hot, humid',34,231,9100,'0.75 standard','fungus forests','unknown',8500000,'2014-12-10 13:44:50','2014-12-20 20:58:18'),
(18,'Cato Neimoidia','temperate, moist',25,278,0,'1 standard','mountains, fields, forests, rock arches','unknown',10000000,'2014-12-10 13:46:28','2014-12-20 20:58:18'),
(19,'Saleucami','hot',26,392,14920,'unknown','caves, desert, mountains, volcanoes','unknown',1400000000,'2014-12-10 13:47:46','2014-12-20 20:58:18'),
(20,'Stewjon','temperate',0,0,0,'1 standard','grass','unknown',0,'2014-12-10 16:16:26','2014-12-20 20:58:18'),
(21,'Eriadu','polluted',24,360,13490,'1 standard','cityscape','unknown',22000000000,'2014-12-10 16:26:54','2014-12-20 20:58:18'),
(22,'Corellia','temperate',25,329,11000,'1 standard','plains, urban, hills, forests','70',3000000000,'2014-12-10 16:49:12','2014-12-20 20:58:18'),
(23,'Rodia','hot',29,305,7549,'1 standard','jungles, oceans, urban, swamps','60',1300000000,'2014-12-10 17:03:28','2014-12-20 20:58:18'),
(24,'Nal Hutta','temperate',87,413,12150,'1 standard','urban, oceans, swamps, bogs','unknown',7000000000,'2014-12-10 17:11:29','2014-12-20 20:58:18'),
(25,'Dantooine','temperate',25,378,9830,'1 standard','oceans, savannas, mountains, grasslands','unknown',1000,'2014-12-10 17:23:29','2014-12-20 20:58:18'),
(26,'Bestine IV','temperate',26,680,6400,'unknown','rocky islands, oceans','98',62000000,'2014-12-12 11:16:55','2014-12-20 20:58:18'),
(27,'Ord Mantell','temperate',26,334,14050,'1 standard','plains, seas, mesas','10',4000000000,'2014-12-15 12:23:41','2014-12-20 20:58:18'),
(28,'unknown','unknown',0,0,0,'unknown','unknown','unknown',0,'2014-12-15 12:25:59','2014-12-20 20:58:18'),
(29,'Trandosha','arid',25,371,0,'0.62 standard','mountains, seas, grasslands, deserts','unknown',42000000,'2014-12-15 12:53:47','2014-12-20 20:58:18'),
(30,'Socorro','arid',20,326,0,'1 standard','deserts, mountains','unknown',300000000,'2014-12-15 12:56:31','2014-12-20 20:58:18'),
(31,'Mon Cala','temperate',21,398,11030,'1','oceans, reefs, islands','100',27000000000,'2014-12-18 11:07:01','2014-12-20 20:58:18'),
(32,'Chandrila','temperate',20,368,13500,'1','plains, forests','40',1200000000,'2014-12-18 11:11:51','2014-12-20 20:58:18'),
(33,'Sullust','superheated',20,263,12780,'1','mountains, volcanoes, rocky deserts','5',18500000000,'2014-12-18 11:25:40','2014-12-20 20:58:18'),
(34,'Toydaria','temperate',21,184,7900,'1','swamps, lakes','unknown',11000000,'2014-12-19 17:47:54','2014-12-20 20:58:18'),
(35,'Malastare','arid, temperate, tropical',26,201,18880,'1.56','swamps, deserts, jungles, mountains','unknown',2000000000,'2014-12-19 17:52:13','2014-12-20 20:58:18'),
(36,'Dathomir','temperate',24,491,10480,'0.9','forests, deserts, savannas','unknown',5200,'2014-12-19 18:00:40','2014-12-20 20:58:18'),
(37,'Ryloth','temperate, arid, subartic',30,305,10600,'1','mountains, valleys, deserts, tundra','5',1500000000,'2014-12-20 09:46:25','2014-12-20 20:58:18'),
(38,'Aleen Minor','unknown',0,0,0,'unknown','unknown','unknown',0,'2014-12-20 09:52:23','2014-12-20 20:58:18'),
(39,'Vulpter','temperate, artic',22,391,14900,'1','urban, barren','unknown',421000000,'2014-12-20 09:56:58','2014-12-20 20:58:18'),
(40,'Troiken','unknown',0,0,0,'unknown','desert, tundra, rainforests, mountains','unknown',0,'2014-12-20 10:01:37','2014-12-20 20:58:18'),
(41,'Tund','unknown',48,1770,12190,'unknown','barren, ash','unknown',0,'2014-12-20 10:07:29','2014-12-20 20:58:18'),
(42,'Haruun Kal','temperate',25,383,10120,'0.98','toxic cloudsea, plateaus, volcanoes','unknown',705300,'2014-12-20 10:12:28','2014-12-20 20:58:18'),
(43,'Cerea','temperate',27,386,0,'1','verdant','20',450000000,'2014-12-20 10:14:48','2014-12-20 20:58:18'),
(44,'Glee Anselm','tropical, temperate',33,206,15600,'1','lakes, islands, swamps, seas','80',500000000,'2014-12-20 10:18:26','2014-12-20 20:58:18'),
(45,'Iridonia','unknown',29,413,0,'unknown','rocky canyons, acid pools','unknown',0,'2014-12-20 10:26:05','2014-12-20 20:58:18'),
(46,'Tholoth','unknown',0,0,0,'unknown','unknown','unknown',0,'2014-12-20 10:28:31','2014-12-20 20:58:18'),
(47,'Iktotch','arid, rocky, windy',22,481,0,'1','rocky','unknown',0,'2014-12-20 10:31:32','2014-12-20 20:58:18'),
(48,'Quermia','unknown',0,0,0,'unknown','unknown','unknown',0,'2014-12-20 10:34:08','2014-12-20 20:58:18'),
(49,'Dorin','temperate',22,409,13400,'1','unknown','unknown',0,'2014-12-20 10:48:36','2014-12-20 20:58:18'),
(50,'Champala','temperate',27,318,0,'1','oceans, rainforests, plateaus','unknown',3500000000,'2014-12-20 10:52:51','2014-12-20 20:58:18'),
(51,'Mirial','unknown',0,0,0,'unknown','deserts','unknown',0,'2014-12-20 16:44:46','2014-12-20 20:58:18'),
(52,'Serenno','unknown',0,0,0,'unknown','rainforests, rivers, mountains','unknown',0,'2014-12-20 16:52:13','2014-12-20 20:58:18'),
(53,'Concord Dawn','unknown',0,0,0,'unknown','jungles, forests, deserts','unknown',0,'2014-12-20 16:54:39','2014-12-20 20:58:18'),
(54,'Zolan','unknown',0,0,0,'unknown','unknown','unknown',0,'2014-12-20 16:56:37','2014-12-20 20:58:18'),
(55,'Ojom','frigid',0,0,0,'unknown','oceans, glaciers','100',500000000,'2014-12-20 17:27:41','2014-12-20 20:58:18'),
(56,'Skako','temperate',27,384,0,'1','urban, vines','unknown',500000000000,'2014-12-20 17:50:47','2014-12-20 20:58:18'),
(57,'Muunilinst','temperate',28,412,13800,'1','plains, forests, hills, mountains','25',5000000000,'2014-12-20 17:57:47','2014-12-20 20:58:18'),
(58,'Shili','temperate',0,0,0,'1','cities, savannahs, seas, plains','unknown',0,'2014-12-20 18:43:14','2014-12-20 20:58:18'),
(59,'Kalee','arid, temperate, tropical',23,378,13850,'1','rainforests, cliffs, canyons, seas','unknown',4000000000,'2014-12-20 19:43:51','2014-12-20 20:58:18'),
(60,'Umbara','unknown',0,0,0,'unknown','unknown','unknown',0,'2014-12-20 20:18:36','2014-12-20 20:58:18');

/*Table structure for table `species` */

DROP TABLE IF EXISTS `species`;

CREATE TABLE `species` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `average_height` varchar(10) DEFAULT NULL,
  `average_lifespan` varchar(20) DEFAULT NULL,
  `classification` varchar(50) DEFAULT NULL,
  `designation` varchar(60) DEFAULT NULL,
  `eye_colors` text,
  `hair_colors` text,
  `homeworld` int(11) NOT NULL DEFAULT '0',
  `language` varchar(20) DEFAULT NULL,
  `skin_colors` text,
  `created` timestamp NULL DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homeworld` (`homeworld`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `species` */

insert  into `species`(`id`,`name`,`average_height`,`average_lifespan`,`classification`,`designation`,`eye_colors`,`hair_colors`,`homeworld`,`language`,`skin_colors`,`created`,`edited`) values 
(1,'Human','180','120','mammal','sentient','brown, blue, green, hazel, grey, amber','blonde, brown, black, red',9,'Galactic Basic','caucasian, black, asian, hispanic','2014-12-10 13:52:11','2014-12-20 21:36:42'),
(2,'Droid','n/a','indefinite','artificial','sentient','n/a','n/a',0,'n/a','n/a','2014-12-10 15:16:16','2014-12-20 21:36:42'),
(3,'Wookie','210','400','mammal','sentient','blue, green, yellow, brown, golden, red','black, brown',14,'Shyriiwook','gray','2014-12-10 16:44:31','2014-12-20 21:36:42'),
(4,'Rodian','170','unknown','sentient','reptilian','black','n/a',23,'Galatic Basic','green, blue','2014-12-10 17:05:26','2014-12-20 21:36:42'),
(5,'Hutt','300','1000','gastropod','sentient','yellow, red','n/a',24,'Huttese','green, brown, tan','2014-12-10 17:12:50','2014-12-20 21:36:42'),
(6,'Yoda\'s species','66','900','mammal','sentient','brown, green, yellow','brown, white',28,'Galactic basic','green, yellow','2014-12-15 12:27:22','2014-12-20 21:36:42'),
(7,'Trandoshan','200','unknown','reptile','sentient','yellow, orange','none',29,'Dosh','brown, green','2014-12-15 13:07:47','2014-12-20 21:36:42'),
(8,'Mon Calamari','160','unknown','amphibian','sentient','yellow','none',31,'Mon Calamarian','red, blue, brown, magenta','2014-12-18 11:09:52','2014-12-20 21:36:42'),
(9,'Ewok','100','unknown','mammal','sentient','orange, brown','white, brown, black',7,'Ewokese','brown','2014-12-18 11:22:00','2014-12-20 21:36:42'),
(10,'Sullustan','180','unknown','mammal','sentient','black','none',33,'Sullutese','pale','2014-12-18 11:26:20','2014-12-20 21:36:42'),
(11,'Neimodian','180','unknown','unknown','sentient','red, pink','none',18,'Neimoidia','grey, green','2014-12-19 17:07:31','2014-12-20 21:36:42'),
(12,'Gungan','190','unknown','amphibian','sentient','orange','none',8,'Gungan basic','brown, green','2014-12-19 17:30:37','2014-12-20 21:36:42'),
(13,'Toydarian','120','91','mammal','sentient','yellow','none',34,'Toydarian','blue, green, grey','2014-12-19 17:48:56','2014-12-20 21:36:42'),
(14,'Dug','100','unknown','mammal','sentient','yellow, blue','none',35,'Dugese','brown, purple, grey, red','2014-12-19 17:53:11','2014-12-20 21:36:42'),
(15,'Twi\'lek','200','unknown','mammals','sentient','blue, brown, orange, pink','none',37,'Twi\'leki','orange, yellow, blue, green, pink, purple, tan','2014-12-20 09:48:02','2014-12-20 21:36:42'),
(16,'Aleena','80','79','reptile','sentient','unknown','none',38,'Aleena','blue, gray','2014-12-20 09:53:16','2014-12-20 21:36:42'),
(17,'Vulptereen','100','unknown','unknown','sentient','yellow','none',39,'vulpterish','grey','2014-12-20 09:57:33','2014-12-20 21:36:42'),
(18,'Xexto','125','unknown','unknown','sentient','black','none',40,'Xextese','grey, yellow, purple','2014-12-20 10:02:13','2014-12-20 21:36:42'),
(19,'Toong','200','unknown','unknown','sentient','orange','none',41,'Tundan','grey, green, yellow','2014-12-20 10:08:36','2014-12-20 21:36:42'),
(20,'Cerean','200','unknown','mammal','sentient','hazel','red, blond, black, white',43,'Cerean','pale pink','2014-12-20 10:15:33','2014-12-20 21:36:42'),
(21,'Nautolan','180','70','amphibian','sentient','black','none',44,'Nautila','green, blue, brown, red','2014-12-20 10:18:58','2014-12-20 21:36:42'),
(22,'Zabrak','180','unknown','mammal','sentient','brown, orange','black',45,'Zabraki','pale, brown, red, orange, yellow','2014-12-20 10:26:59','2014-12-20 21:36:42'),
(23,'Tholothian','unknown','unknown','mammal','sentient','blue, indigo','unknown',46,'unknown','dark','2014-12-20 10:29:13','2014-12-20 21:36:42'),
(24,'Iktotchi','180','unknown','unknown','sentient','orange','none',47,'Iktotchese','pink','2014-12-20 10:32:13','2014-12-20 21:36:42'),
(25,'Quermian','240','86','mammal','sentient','yellow','none',48,'Quermian','white','2014-12-20 10:34:50','2014-12-20 21:36:42'),
(26,'Kel Dor','180','70','unknown','sentient','black, silver','none',49,'Kel Dor','peach, orange, red','2014-12-20 10:49:21','2014-12-20 21:36:42'),
(27,'Chagrian','190','unknown','amphibian','sentient','blue','none',50,'Chagria','blue','2014-12-20 10:53:28','2014-12-20 21:36:42'),
(28,'Geonosian','178','unknown','insectoid','sentient','green, hazel','none',11,'Geonosian','green, brown','2014-12-20 16:40:45','2014-12-20 21:36:42'),
(29,'Mirialan','180','unknown','mammal','sentient','blue, green, red, yellow, brown, orange','black, brown',51,'Mirialan','yellow, green','2014-12-20 16:46:48','2014-12-20 21:36:42'),
(30,'Clawdite','180','70','reptilian','sentient','yellow','none',54,'Clawdite','green, yellow','2014-12-20 16:57:46','2014-12-20 21:36:42'),
(31,'Besalisk','178','75','amphibian','sentient','yellow','none',55,'besalisk','brown','2014-12-20 17:28:28','2014-12-20 21:36:42'),
(32,'Kaminoan','220','80','amphibian','sentient','black','none',10,'Kaminoan','grey, blue','2014-12-20 17:31:24','2014-12-20 21:36:42'),
(33,'Skakoan','unknown','unknown','mammal','sentient','unknown','none',56,'Skakoan','grey, green','2014-12-20 17:53:54','2014-12-20 21:36:42'),
(34,'Muun','190','100','mammal','sentient','black','none',57,'Muun','grey, white','2014-12-20 17:58:19','2014-12-20 21:36:42'),
(35,'Togruta','180','94','mammal','sentient','red, orange, yellow, green, blue, black','none',58,'Togruti','red, white, orange, yellow, green, blue','2014-12-20 18:44:03','2014-12-20 21:36:42'),
(36,'Kaleesh','170','80','reptile','sentient','yellow','none',59,'Kaleesh','brown, orange, tan','2014-12-20 19:45:42','2014-12-20 21:36:42'),
(37,'Pau\'an','190','700','mammal','sentient','black','none',12,'Utapese','grey','2014-12-20 20:35:06','2014-12-20 21:36:42');

/*Table structure for table `species_people` */

DROP TABLE IF EXISTS `species_people`;

CREATE TABLE `species_people` (
  `species_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  PRIMARY KEY (`species_id`,`people_id`),
  KEY `s3t_species_people_species_1` (`people_id`),
  CONSTRAINT `s3t_species_people_species_0` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`),
  CONSTRAINT `s3t_species_people_species_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `species_people` */

insert  into `species_people`(`species_id`,`people_id`) values 
(1,66),
(1,67),
(1,68),
(1,74),
(2,2),
(2,3),
(2,8),
(2,23),
(3,13),
(3,80),
(4,15),
(5,16),
(6,20),
(7,24),
(8,27),
(9,30),
(10,31),
(11,33),
(12,36),
(12,37),
(12,38),
(13,40),
(14,41),
(15,45),
(15,46),
(16,47),
(17,48),
(18,49),
(19,50),
(20,52),
(21,53),
(22,44),
(22,54),
(23,55),
(24,56),
(25,57),
(26,58),
(27,59),
(28,63),
(29,64),
(29,65),
(30,70),
(31,71),
(32,72),
(32,73),
(33,76),
(34,77),
(35,78),
(36,79),
(37,83);

/*Table structure for table `starships` */

DROP TABLE IF EXISTS `starships`;

CREATE TABLE `starships` (
  `id` int(11) NOT NULL,
  `starship_class` text,
  `MGLT` varchar(10) DEFAULT NULL,
  `hyperdrive_rating` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `starships` */

insert  into `starships`(`id`,`starship_class`,`MGLT`,`hyperdrive_rating`) values 
(2,'corvette','60','2.0'),
(3,'Star Destroyer','60','2.0'),
(5,'landing craft','70','1.0'),
(9,'Deep Space Mobile Battlestation','10','4.0'),
(10,'Light freighter','75','0.5'),
(11,'assault starfighter','80','1.0'),
(12,'Starfighter','100','1.0'),
(13,'Starfighter','105','1.0'),
(15,'Star dreadnought','40','2.0'),
(17,'Medium transport','20','4.0'),
(21,'Patrol craft','70','3.0'),
(22,'Armed government transport','50','1.0'),
(23,'Escort ship','40','2.0'),
(27,'Star Cruiser','60','1.0'),
(28,'Starfighter','120','1.0'),
(29,'Assault Starfighter','91','2.0'),
(31,'Space cruiser','unknown','2.0'),
(32,'Droid control ship','unknown','2.0'),
(39,'Starfighter','unknown','1.0'),
(40,'yacht','unknown','1.8'),
(41,'Space Transport','unknown','1.5'),
(43,'Diplomatic barge','unknown','0.7'),
(47,'freighter','unknown','unknown'),
(48,'Starfighter','unknown','1.0'),
(49,'yacht','unknown','0.9'),
(52,'assault ship','unknown','0.6'),
(58,'yacht','unknown','1.5'),
(59,'capital ship','unknown','1.5'),
(61,'transport','unknown','1.0'),
(63,'star destroyer','unknown','1.0'),
(64,'yacht','unknown','0.5'),
(65,'starfighter','unknown','1.0'),
(66,'starfighter','100','1.0'),
(68,'cruiser','unknown','1.0'),
(74,'starfighter','unknown','6'),
(75,'starfighter','unknown','1.0');

/*Table structure for table `starships_pilots` */

DROP TABLE IF EXISTS `starships_pilots`;

CREATE TABLE `starships_pilots` (
  `starship_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  PRIMARY KEY (`starship_id`,`people_id`),
  KEY `s3t_starships_pilots_starships_1` (`people_id`),
  CONSTRAINT `s3t_starships_pilots_starships_0` FOREIGN KEY (`starship_id`) REFERENCES `starships` (`id`),
  CONSTRAINT `s3t_starships_pilots_starships_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `starships_pilots` */

insert  into `starships_pilots`(`starship_id`,`people_id`) values 
(10,13),
(10,14),
(10,25),
(10,31),
(12,1),
(12,9),
(12,18),
(12,19),
(13,4),
(21,22),
(22,1),
(22,13),
(22,14),
(28,29),
(39,11),
(39,35),
(39,60),
(40,39),
(41,44),
(48,10),
(48,58),
(49,35),
(59,10),
(59,11),
(64,10),
(64,35),
(65,10),
(65,11),
(74,10),
(74,79);

/*Table structure for table `transports` */

DROP TABLE IF EXISTS `transports`;

CREATE TABLE `transports` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `manufacturer` text,
  `model` text,
  `cargo_capacity` text,
  `consumables` text,
  `cost_in_credits` text,
  `crew` text,
  `length` text,
  `max_atmosphering_speed` text,
  `passengers` text,
  `created` timestamp NULL DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transports` */

insert  into `transports`(`id`,`name`,`manufacturer`,`model`,`cargo_capacity`,`consumables`,`cost_in_credits`,`crew`,`length`,`max_atmosphering_speed`,`passengers`,`created`,`edited`) values 
(2,'CR90 corvette','Corellian Engineering Corporation','CR90 corvette','3000000','1 year','3500000','30-165','150','950','600','2014-12-10 14:20:33','2014-12-20 21:23:49'),
(3,'Star Destroyer','Kuat Drive Yards','Imperial I-class Star Destroyer','36000000','2 years','150000000','47,060','1,600','975','n/a','2014-12-10 15:08:19','2014-12-20 21:23:49'),
(4,'Sand Crawler','Corellia Mining Corporation','Digger Crawler','50000','2 months','150000','46','36.8 ','30','30','2014-12-10 15:36:25','2014-12-20 21:30:21'),
(5,'Sentinel-class landing craft','Sienar Fleet Systems, Cyngus Spaceworks','Sentinel-class landing craft','180000','1 month','240000','5','38','1000','75','2014-12-10 15:48:00','2014-12-20 21:23:49'),
(6,'T-16 skyhopper','Incom Corporation','T-16 skyhopper','50','0','14500','1','10.4 ','1200','1','2014-12-10 16:01:52','2014-12-20 21:30:21'),
(7,'X-34 landspeeder','SoroSuub Corporation','X-34 landspeeder','5','unknown','10550','1','3.4 ','250','1','2014-12-10 16:13:52','2014-12-20 21:30:21'),
(8,'TIE/LN starfighter','Sienar Fleet Systems','Twin Ion Engine/Ln Starfighter','65','2 days','unknown','1','6.4','1200','0','2014-12-10 16:33:52','2014-12-20 21:30:21'),
(9,'Death Star','Imperial Department of Military Research, Sienar Fleet Systems','DS-1 Orbital Battle Station','1000000000000','3 years','1000000000000','342,953','120000','n/a','843,342','2014-12-10 16:36:50','2014-12-20 21:26:24'),
(10,'Millennium Falcon','Corellian Engineering Corporation','YT-1300 light freighter','100000','2 months','100000','4','34.37','1050','6','2014-12-10 16:59:45','2014-12-20 21:23:49'),
(11,'Y-wing','Koensayr Manufacturing','BTL Y-wing','110','1 week','134999','2','14','1000km','0','2014-12-12 11:00:39','2014-12-20 21:23:49'),
(12,'X-wing','Incom Corporation','T-65 X-wing','110','1 week','149999','1','12.5','1050','0','2014-12-12 11:19:05','2014-12-20 21:23:49'),
(13,'TIE Advanced x1','Sienar Fleet Systems','Twin Ion Engine Advanced x1','150','5 days','unknown','1','9.2','1200','0','2014-12-12 11:21:32','2014-12-20 21:23:49'),
(14,'Snowspeeder','Incom corporation','t-47 airspeeder','10','none','unknown','2','4.5','650','0','2014-12-15 12:22:12','2014-12-20 21:30:21'),
(15,'Executor','Kuat Drive Yards, Fondor Shipyards','Executor-class star dreadnought','250000000','6 years','1143350000','279,144','19000','n/a','38000','2014-12-15 12:31:42','2014-12-20 21:23:49'),
(16,'TIE bomber','Sienar Fleet Systems','TIE/sa bomber','none','2 days','unknown','1','7.8','850','0','2014-12-15 12:33:15','2014-12-20 21:30:21'),
(17,'Rebel transport','Gallofree Yards, Inc.','GR-75 medium transport','19000000','6 months','unknown','6','90','650','90','2014-12-15 12:34:52','2014-12-20 21:23:49'),
(18,'AT-AT','Kuat Drive Yards, Imperial Department of Military Research','All Terrain Armored Transport','1000','unknown','unknown','5','20','60','40','2014-12-15 12:38:25','2014-12-20 21:30:21'),
(19,'AT-ST','Kuat Drive Yards, Imperial Department of Military Research','All Terrain Scout Transport','200','none','unknown','2','2','90','0','2014-12-15 12:46:42','2014-12-20 21:30:21'),
(20,'Storm IV Twin-Pod cloud car','Bespin Motors','Storm IV Twin-Pod','10','1 day','75000','2','7','1500','0','2014-12-15 12:58:50','2014-12-20 21:30:21'),
(21,'Slave 1','Kuat Systems Engineering','Firespray-31-class patrol and attack','70000','1 month','unknown','1','21.5','1000','6','2014-12-15 13:00:56','2014-12-20 21:23:49'),
(22,'Imperial shuttle','Sienar Fleet Systems','Lambda-class T-4a shuttle','80000','2 months','240000','6','20','850','20','2014-12-15 13:04:47','2014-12-20 21:23:49'),
(23,'EF76 Nebulon-B escort frigate','Kuat Drive Yards','EF76 Nebulon-B escort frigate','6000000','2 years','8500000','854','300','800','75','2014-12-15 13:06:30','2014-12-20 21:23:49'),
(24,'Sail barge','Ubrikkian Industries Custom Vehicle Division','Modified Luxury Sail Barge','2000000','Live food tanks','285000','26','30','100','500','2014-12-18 10:44:14','2014-12-20 21:30:21'),
(25,'Bantha-II cargo skiff','Ubrikkian Industries','Bantha-II','135000','1 day','8000','5','9.5','250','16','2014-12-18 10:48:03','2014-12-20 21:30:21'),
(26,'TIE/IN interceptor','Sienar Fleet Systems','Twin Ion Engine Interceptor','75','2 days','unknown','1','9.6','1250','0','2014-12-18 10:50:28','2014-12-20 21:30:21'),
(27,'Calamari Cruiser','Mon Calamari shipyards','MC80 Liberty type Star Cruiser','unknown','2 years','104000000','5400','1200','n/a','1200','2014-12-18 10:54:57','2014-12-20 21:23:49'),
(28,'A-wing','Alliance Underground Engineering, Incom Corporation','RZ-1 A-wing Interceptor','40','1 week','175000','1','9.6','1300','0','2014-12-18 11:16:34','2014-12-20 21:23:49'),
(29,'B-wing','Slayn & Korpil','A/SF-01 B-wing starfighter','45','1 week','220000','1','16.9','950','0','2014-12-18 11:18:04','2014-12-20 21:23:49'),
(30,'Imperial Speeder Bike','Aratech Repulsor Company','74-Z speeder bike','4','1 day','8000','1','3','360','1','2014-12-18 11:20:04','2014-12-20 21:30:21'),
(31,'Republic Cruiser','Corellian Engineering Corporation','Consular-class cruiser','unknown','unknown','unknown','9','115','900','16','2014-12-19 17:01:31','2014-12-20 21:23:49'),
(32,'Droid control ship','Hoersch-Kessel Drive, Inc.','Lucrehulk-class Droid Control Ship','4000000000','500 days','unknown','175','3170','n/a','139000','2014-12-19 17:04:06','2014-12-20 21:23:49'),
(33,'Vulture Droid','Haor Chall Engineering, Baktoid Armor Workshop','Vulture-class droid starfighter','0','none','unknown','0','3.5','1200','0','2014-12-19 17:09:53','2014-12-20 21:30:21'),
(34,'Multi-Troop Transport','Baktoid Armor Workshop','Multi-Troop Transport','12000','unknown','138000','4','31','35','112','2014-12-19 17:12:04','2014-12-20 21:30:21'),
(35,'Armored Assault Tank','Baktoid Armor Workshop','Armoured Assault Tank','unknown','unknown','unknown','4','9.75','55','6','2014-12-19 17:13:29','2014-12-20 21:30:21'),
(36,'Single Trooper Aerial Platform','Baktoid Armor Workshop','Single Trooper Aerial Platform','none','none','2500','1','2','400','0','2014-12-19 17:15:09','2014-12-20 21:30:21'),
(37,'C-9979 landing craft','Haor Chall Engineering','C-9979 landing craft','1800000','1 day','200000','140','210','587','284','2014-12-19 17:20:36','2014-12-20 21:30:21'),
(38,'Tribubble bongo','Otoh Gunga Bongameken Cooperative','Tribubble bongo','1600','unknown','unknown','1','15','85','2','2014-12-19 17:37:37','2014-12-20 21:30:21'),
(39,'Naboo fighter','Theed Palace Space Vessel Engineering Corps','N-1 starfighter','65','7 days','200000','1','11','1100','0','2014-12-19 17:39:17','2014-12-20 21:23:49'),
(40,'Naboo Royal Starship','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives','J-type 327 Nubian royal starship','unknown','unknown','unknown','8','76','920','unknown','2014-12-19 17:45:03','2014-12-20 21:23:49'),
(41,'Scimitar','Republic Sienar Systems','Star Courier','2500000','30 days','55000000','1','26.5','1180','6','2014-12-20 09:39:56','2014-12-20 21:23:49'),
(42,'Sith speeder','Razalon','FC-20 speeder bike','2','unknown','4000','1','1.5','180','0','2014-12-20 10:09:56','2014-12-20 21:30:21'),
(43,'J-type diplomatic barge','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives','J-type diplomatic barge','unknown','1 year','2000000','5','39','2000','10','2014-12-20 11:05:51','2014-12-20 21:23:49'),
(44,'Zephyr-G swoop bike','Mobquet Swoops and Speeders','Zephyr-G swoop bike','200','none','5750','1','3.68','350','1','2014-12-20 16:24:16','2014-12-20 21:30:21'),
(45,'Koro-2 Exodrive airspeeder','Desler Gizh Outworld Mobility Corporation','Koro-2 Exodrive airspeeder','80','unknown','unknown','1','6.6','800','1','2014-12-20 17:17:33','2014-12-20 21:30:21'),
(46,'XJ-6 airspeeder','Narglatch AirTech prefabricated kit','XJ-6 airspeeder','unknown','unknown','unknown','1','6.23','720','1','2014-12-20 17:19:19','2014-12-20 21:30:21'),
(47,'AA-9 Coruscant freighter','Botajef Shipyards','Botajef AA-9 Freighter-Liner','unknown','unknown','unknown','unknown','390','unknown','30000','2014-12-20 17:24:23','2014-12-20 21:23:49'),
(48,'Jedi starfighter','Kuat Systems Engineering','Delta-7 Aethersprite-class interceptor','60','7 days','180000','1','8','1150','0','2014-12-20 17:35:23','2014-12-20 21:23:49'),
(49,'H-type Nubian yacht','Theed Palace Space Vessel Engineering Corps','H-type Nubian yacht','unknown','unknown','unknown','4','47.9','8000','unknown','2014-12-20 17:46:46','2014-12-20 21:23:49'),
(50,'LAAT/i','Rothana Heavy Engineering','Low Altitude Assault Transport/infrantry','170','unknown','unknown','6','17.4','620','30','2014-12-20 18:01:21','2014-12-20 21:30:21'),
(51,'LAAT/c','Rothana Heavy Engineering','Low Altitude Assault Transport/carrier','40000','unknown','unknown','1','28.82','620','0','2014-12-20 18:02:46','2014-12-20 21:30:21'),
(52,'Republic Assault ship','Rothana Heavy Engineering','Acclamator I-class assault ship','11250000','2 years','unknown','700','752','unknown','16000','2014-12-20 18:08:42','2014-12-20 21:23:49'),
(53,'AT-TE','Rothana Heavy Engineering, Kuat Drive Yards','All Terrain Tactical Enforcer','10000','21 days','unknown','6','13.2','60','36','2014-12-20 18:10:07','2014-12-20 21:30:21'),
(54,'SPHA','Rothana Heavy Engineering','Self-Propelled Heavy Artillery','500','7 days','unknown','25','140','35','30','2014-12-20 18:12:32','2014-12-20 21:30:21'),
(55,'Flitknot speeder','Huppla Pasa Tisc Shipwrights Collective','Flitknot speeder','unknown','unknown','8000','1','2','634','0','2014-12-20 18:15:20','2014-12-20 21:30:21'),
(56,'Neimoidian shuttle','Haor Chall Engineering','Sheathipede-class transport shuttle','1000','7 days','unknown','2','20','880','6','2014-12-20 18:25:44','2014-12-20 21:30:21'),
(57,'Geonosian starfighter','Huppla Pasa Tisc Shipwrights Collective','Nantex-class territorial defense','unknown','unknown','unknown','1','9.8','20000','0','2014-12-20 18:34:12','2014-12-20 21:30:21'),
(58,'Solar Sailer','Huppla Pasa Tisc Shipwrights Collective','Punworcca 116-class interstellar sloop','240','7 days','35700','3','15.2','1600','11','2014-12-20 18:37:56','2014-12-20 21:23:49'),
(59,'Trade Federation cruiser','Rendili StarDrive, Free Dac Volunteers Engineering corps.','Providence-class carrier/destroyer','50000000','4 years','125000000','600','1088','1050','48247','2014-12-20 19:40:21','2014-12-20 21:23:49'),
(60,'Tsmeu-6 personal wheel bike','Z-Gomot Ternbuell Guppat Corporation','Tsmeu-6 personal wheel bike','10','none','15000','1','3.5','330','1','2014-12-20 19:43:54','2014-12-20 21:30:21'),
(61,'Theta-class T-2c shuttle','Cygnus Spaceworks','Theta-class T-2c shuttle','50000','56 days','1000000','5','18.5','2000','16','2014-12-20 19:48:40','2014-12-20 21:23:49'),
(62,'Emergency Firespeeder','unknown','Fire suppression speeder','unknown','unknown','unknown','2','unknown','unknown','unknown','2014-12-20 19:50:58','2014-12-20 21:30:21'),
(63,'Republic attack cruiser','Kuat Drive Yards, Allanteen Six shipyards','Senator-class Star Destroyer','20000000','2 years','59000000','7400','1137','975','2000','2014-12-20 19:52:56','2014-12-20 21:23:49'),
(64,'Naboo star skiff','Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated','J-type star skiff','unknown','unknown','unknown','3','29.2','1050','3','2014-12-20 19:55:15','2014-12-20 21:23:49'),
(65,'Jedi Interceptor','Kuat Systems Engineering','Eta-2 Actis-class light interceptor','60','2 days','320000','1','5.47','1500','0','2014-12-20 19:56:57','2014-12-20 21:23:49'),
(66,'arc-170','Incom Corporation, Subpro Corporation','Aggressive Reconnaissance-170 starfighte','110','5 days','155000','3','14.5','1000','0','2014-12-20 20:03:48','2014-12-20 21:23:49'),
(67,'Droid tri-fighter','Colla Designs, Phlac-Arphocc Automata Industries','tri-fighter','0','none','20000','1','5.4','1180','0','2014-12-20 20:05:19','2014-12-20 21:30:21'),
(68,'Banking clan frigte','Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries','Munificent-class star frigate','40000000','2 years','57000000','200','825','unknown','unknown','2014-12-20 20:07:11','2014-12-20 21:23:49'),
(69,'Oevvaor jet catamaran','Appazanna Engineering Works','Oevvaor jet catamaran','50','3 days','12125','2','15.1','420','2','2014-12-20 20:20:53','2014-12-20 21:30:21'),
(70,'Raddaugh Gnasp fluttercraft','Appazanna Engineering Works','Raddaugh Gnasp fluttercraft','20','none','14750','2','7','310','0','2014-12-20 20:21:55','2014-12-20 21:30:21'),
(71,'Clone turbo tank','Kuat Drive Yards','HAVw A6 Juggernaut','30000','20 days','350000','20','49.4','160','300','2014-12-20 20:24:45','2014-12-20 21:30:21'),
(72,'Corporate Alliance tank droid','Techno Union','NR-N99 Persuader-class droid enforcer','none','none','49000','0','10.96','100','4','2014-12-20 20:26:55','2014-12-20 21:30:21'),
(73,'Droid gunship','Baktoid Fleet Ordnance, Haor Chall Engineering','HMP droid gunship','0','none','60000','0','12.3','820','0','2014-12-20 20:32:05','2014-12-20 21:30:21'),
(74,'Belbullab-22 starfighter','Feethan Ottraw Scalable Assemblies','Belbullab-22 starfighter','140','7 days','168000','1','6.71','1100','0','2014-12-20 20:38:05','2014-12-20 21:23:49'),
(75,'V-wing','Kuat Systems Engineering','Alpha-3 Nimbus-class V-wing starfighter','60','15 hours','102500','1','7.9','1050','0','2014-12-20 20:43:04','2014-12-20 21:23:49'),
(76,'AT-RT','Kuat Drive Yards','All Terrain Recon Transport','20','1 day','40000','1','3.2','90','0','2014-12-20 20:47:49','2014-12-20 21:30:21');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `USR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USR_NAME` varchar(20) NOT NULL DEFAULT '',
  `USR_DSPNAME` varchar(60) DEFAULT '',
  `USR_PWD` varchar(100) DEFAULT '',
  `USR_EMAIL` varchar(60) DEFAULT '',
  `USR_STATUS` tinyint(1) NOT NULL DEFAULT '0',
  `USR_ADD` tinyint(1) NOT NULL DEFAULT '0',
  `USR_EDIT` tinyint(1) NOT NULL DEFAULT '0',
  `USR_DEL` tinyint(1) NOT NULL DEFAULT '0',
  `USR_VIEW` tinyint(1) NOT NULL DEFAULT '0',
  `USR_SRCH` tinyint(1) NOT NULL DEFAULT '0',
  `USR_AVATAR` varchar(40) DEFAULT 'default.png',
  `USR_CREATED_UID` int(6) NOT NULL DEFAULT '0',
  `USR_CREATED_DATE` timestamp NULL DEFAULT NULL,
  `USR_MODIFIED_UID` int(6) NOT NULL DEFAULT '0',
  `USR_MODIFIED_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`USR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*Table structure for table `user_log` */

DROP TABLE IF EXISTS `user_log`;

CREATE TABLE `user_log` (
  `LOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOG_TYPE` tinyint(2) DEFAULT '0',
  `LOG_UID` smallint(3) DEFAULT '0',
  `LOG_DESC` varchar(255) DEFAULT NULL,
  `LOG_DATE` int(8) DEFAULT '0',
  `LOG_TIME` int(6) DEFAULT '0',
  `LOG_IP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_log` */

/*Table structure for table `vehicles` */

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_class` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vehicles` */

insert  into `vehicles`(`id`,`vehicle_class`) values 
(4,'wheeled'),
(6,'repulsorcraft'),
(7,'repulsorcraft'),
(8,'starfighter'),
(14,'airspeeder'),
(16,'space/planetary bomber'),
(18,'assault walker'),
(19,'walker'),
(20,'repulsorcraft'),
(24,'sail barge'),
(25,'repulsorcraft cargo skiff'),
(26,'starfighter'),
(30,'speeder'),
(33,'starfighter'),
(34,'repulsorcraft'),
(35,'repulsorcraft'),
(36,'repulsorcraft'),
(37,'landing craft'),
(38,'submarine'),
(42,'speeder'),
(44,'repulsorcraft'),
(45,'airspeeder'),
(46,'airspeeder'),
(50,'gunship'),
(51,'gunship'),
(53,'walker'),
(54,'walker'),
(55,'speeder'),
(56,'transport'),
(57,'starfighter'),
(60,'wheeled walker'),
(62,'fire suppression ship'),
(67,'droid starfighter'),
(69,'airspeeder'),
(70,'air speeder'),
(71,'wheeled walker'),
(72,'droid tank'),
(73,'airspeeder'),
(76,'walker');

/*Table structure for table `vehicles_pilots` */

DROP TABLE IF EXISTS `vehicles_pilots`;

CREATE TABLE `vehicles_pilots` (
  `vehicle_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  PRIMARY KEY (`vehicle_id`,`people_id`),
  KEY `s3t_veehicles_pilots_vehicles_1` (`people_id`),
  CONSTRAINT `s3t_veehicles_pilots_vehicles_0` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`),
  CONSTRAINT `s3t_veehicles_pilots_vehicles_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vehicles_pilots` */

insert  into `vehicles_pilots`(`vehicle_id`,`people_id`) values 
(14,1),
(14,18),
(19,13),
(30,1),
(30,5),
(38,10),
(38,32),
(42,44),
(44,11),
(45,70),
(46,11),
(55,67),
(60,79);

/* Procedure structure for procedure `spM_SW_GetLongestOpeningCrawlMovie` */

/*!50003 DROP PROCEDURE IF EXISTS  `spM_SW_GetLongestOpeningCrawlMovie` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spM_SW_GetLongestOpeningCrawlMovie`()
BEGIN
		-- Get Star Wars movie has the longest opening crawl
		SELECT fm.id, fm.title AS `name`, COUNT(DISTINCT people_id) AS no_of_characters, LENGTH(TRIM(opening_crawl)) AS len 
		FROM films fm
		LEFT JOIN films_characters fc ON fm.id = fc.film_id
		GROUP BY fm.id ORDER BY len DESC limit 1; 
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spM_SW_GetPersonAppearedInMostFilms` */

/*!50003 DROP PROCEDURE IF EXISTS  `spM_SW_GetPersonAppearedInMostFilms` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spM_SW_GetPersonAppearedInMostFilms`()
BEGIN
		-- Persons appeared in most of the Star Wars films
		SELECT pp.id, pp.name, COUNT(DISTINCT fc.film_id) AS no_of_film 
		FROM `people` pp 
		LEFT JOIN films_characters fc ON pp.id = fc.people_id
		GROUP BY pp.id HAVING no_of_film=6 ORDER BY no_of_film DESC, pp.id;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spM_SW_GetSpeciesApearedInMostFilms` */

/*!50003 DROP PROCEDURE IF EXISTS  `spM_SW_GetSpeciesApearedInMostFilms` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spM_SW_GetSpeciesApearedInMostFilms`()
BEGIN
	
		-- species appeared in the most number of Star Wars films
		SELECT sp.id, sp.name, COUNT(people_id) AS no_of_characters, COUNT(DISTINCT fc.film_id) AS no_of_film -- COUNT(DISTINCT people_id) AS no_of_characters, 
		FROM species sp
		INNER JOIN films_species fs ON sp.id = fs.species_id
		LEFT JOIN films_characters fc ON fs.film_id = fc.film_id
		GROUP BY sp.id HAVING no_of_film=6 ORDER BY no_of_characters DESC;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spM_SW_GetUserLoginInfo` */

/*!50003 DROP PROCEDURE IF EXISTS  `spM_SW_GetUserLoginInfo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spM_SW_GetUserLoginInfo`(IN USR VARCHAR(100),IN PWD VARCHAR(100))
BEGIN

		SELECT * FROM `user`WHERE (usr_name=USR OR USR_email=USR) AND usr_pwd=PWD AND usr_status=1;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `spM_SW_GetPlanetWithMoreVehiclePilots` */

/*!50003 DROP PROCEDURE IF EXISTS  `spM_SW_GetPlanetWithMoreVehiclePilots` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spM_SW_GetPlanetWithMoreVehiclePilots`()
BEGIN
	
	-- Get Planet in Star Wars universe provided largest number of vehicle pilots
	-- Planet: Earth - Pilots: (12) Han Solo - Human, Yoda - Yodi
	SELECT pt.id, pt.name, COUNT(*) AS no_of_pilots, GROUP_CONCAT(vpd.fulldesc separator ', ') AS pilots
	FROM `planets` pt
	LEFT JOIN (
		SELECT pp.id, pp.`name`, CONCAT(pp.`name`, ' - ', IFNULL(sp.`name`, 'n/a')) AS fulldesc, pp.`homeworld`, IFNULL(sp.`name`, 'n/a') AS species 
		FROM people pp
		INNER JOIN vehicles_pilots vp ON pp.id= vp.people_id
		LEFT JOIN species sp ON sp.homeworld = pp.homeworld
		GROUP BY pp.id, pp.homeworld
	) vpd ON pt.id = vpd.homeworld 
	GROUP BY pt.id ORDER BY no_of_pilots DESC LIMIT 1; 

	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
