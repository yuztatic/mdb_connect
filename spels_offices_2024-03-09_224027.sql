/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS offices;
CREATE TABLE `offices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO offices(id,code,name,email,created_at,updated_at) VALUES('2','\'Ptooo\'','\'PROVINCIAL TREASURERS OFFICE\'','\'pto@gmail.com\'','\'2024-02-24 12:08:29\'','\'2024-02-24 12:16:18\''),('3','\'ESD\'','\'Examination Services Division\'','\'esd@gmail.com\'','\'2024-02-27 13:28:48\'','\'2024-02-27 13:28:48\''),('4','\'MSD\'','\'Management Services Division\'','\'msd@gmail.com\'','\'2024-02-27 13:29:10\'','\'2024-02-27 13:29:10\''),('5','\'LSD\'','\'Legal Services Division\'','\'legal@csc.gov.php\'','\'0000-00-00 00:00:00\'','\'0000-00-00 00:00:00\''),('6','\'HRD\'','\'Human Resource Division\'','\'hrd@gmail.com\'','\'2024-03-02 14:46:59\'','\'2024-03-02 14:46:59\''),('7','\'OTD\'','\'Office of the Directors\'','\'otd@gmail.com\'','\'2024-03-04 15:26:39\'','\'2024-03-04 15:26:39\'');