-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.13-rc-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema rgpvresult
--

CREATE DATABASE IF NOT EXISTS rgpvresult;
USE rgpvresult;

--
-- Definition of table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `eno` varchar(12) NOT NULL,
  `name` varchar(45) NOT NULL,
  `CS6001[T]` varchar(2) NOT NULL,
  `CS6002[T]` varchar(2) NOT NULL,
  `CS6003[T]` varchar(2) NOT NULL,
  `CS6004[T]` varchar(2) NOT NULL,
  `CS6005[T]` varchar(2) NOT NULL,
  `CS6002[P]` varchar(2) NOT NULL,
  `CS6003[P]` varchar(2) NOT NULL,
  `CS6004[P]` varchar(2) NOT NULL,
  `CS6006[P]` varchar(2) NOT NULL,
  `CS6007[P]` varchar(2) NOT NULL,
  `CS6008[P]` varchar(2) NOT NULL,
  `SGPA` float NOT NULL,
  `CGPA` float NOT NULL,
  PRIMARY KEY  (`eno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` (`eno`,`name`,`CS6001[T]`,`CS6002[T]`,`CS6003[T]`,`CS6004[T]`,`CS6005[T]`,`CS6002[P]`,`CS6003[P]`,`CS6004[P]`,`CS6006[P]`,`CS6007[P]`,`CS6008[P]`,`SGPA`,`CGPA`) VALUES 
 ('0103CS161082','Jatin Namdev','B','B','B','B','B','B','B','B','B','B','B',8,8.5),
 ('0103cs161094','Lokesh Sarathe','A','A','A','A','A','A+','A+','A+','A+','A+','A+',8.93,8.93),
 ('0103CS161172','Sudhanshu Gour','B','B','C+','B','C','B','B','B+','B','B','B',7.6,7.9);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
