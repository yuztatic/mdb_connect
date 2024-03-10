/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS tbl_bhw;
CREATE TABLE `tbl_bhw` (
  `RegCode` varchar(2) NOT NULL,
  `YrSeries` varchar(4) NOT NULL,
  `EligType` varchar(4) NOT NULL,
  `CertNo` varchar(12) NOT NULL,
  `CoEIssueDate` datetime NOT NULL,
  `EffDate` datetime NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `MI` varchar(4) NOT NULL,
  `MName` varchar(30) NOT NULL,
  `ExtName` varchar(5) DEFAULT NULL,
  `MdnName` varchar(30) DEFAULT NULL,
  `Address` varchar(60) NOT NULL,
  `BDate` datetime NOT NULL,
  `BPlace` varchar(30) NOT NULL,
  `Sex` varchar(1) NOT NULL,
  `CivilStat` varchar(30) NOT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Postedby` varchar(10) NOT NULL,
  `PostedDate` datetime NOT NULL,
  `isSpoiled` tinyint(4) NOT NULL DEFAULT 0,
  `SpoiledDate` datetime DEFAULT NULL,
  `isAltered` tinyint(4) NOT NULL DEFAULT 0,
  `AlteredDate` datetime DEFAULT NULL,
  `isCancelled` tinyint(4) NOT NULL DEFAULT 0,
  `CancelledDate` datetime DEFAULT NULL,
  `isClosed` tinyint(4) NOT NULL DEFAULT 0,
  `ClosedDate` datetime DEFAULT NULL,
  `TransRecordID` int(11) DEFAULT 0,
  `GeoCityCode` varchar(6) DEFAULT NULL,
  `GeoBrgyCode` varchar(10) DEFAULT NULL,
  `ServiceFr` datetime DEFAULT NULL,
  `ServiceTo` datetime DEFAULT NULL,
  `ServiceYrs` float DEFAULT 0,
  PRIMARY KEY (`CertNo`,`EligType`,`LName`,`FName`,`MName`,`BDate`,`isSpoiled`,`isAltered`,`isCancelled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO tbl_bhw(RegCode,YrSeries,EligType,CertNo,CoEIssueDate,EffDate,LName,FName,MI,MName,ExtName,MdnName,Address,BDate,BPlace,Sex,CivilStat,Remarks,Postedby,PostedDate,isSpoiled,SpoiledDate,isAltered,AlteredDate,isCancelled,CancelledDate,isClosed,ClosedDate,TransRecordID,GeoCityCode,GeoBrgyCode,ServiceFr,ServiceTo,ServiceYrs) VALUES('\'05\'','\'0001\'','\'3001\'','\'300105120001\'','\'2012-10-12 00:00:00\'','\'2012-10-12 00:00:00\'','\'UMINGA\'','\'VIRGINIA\'','\'T\'','\'TABARA\'','\'\'','\'VELANTE\'','\'P-1 GAHONON, DAET, CAMARINES NORTE\'','\'1975-08-01 00:00:00\'','\'UMINGAN, PANGASINAN\'','\'F\'','\'Married\'','NULL','\'LAO\'','\'2012-10-12 14:57:23\'','0','NULL','0','NULL','0','NULL','1','\'2012-11-05 15:19:45\'','2','\'051603\'','\'0516033025\'','\'2004-01-01 00:00:00\'','\'2012-10-11 00:00:00\'','8'),('\'05\'','\'0002\'','\'3001\'','\'300105120002\'','\'2012-12-05 00:00:00\'','\'2012-12-05 00:00:00\'','\'BERMAS\'','\'LERNA\'','\'C\'','\'CERENO\'','\'\'','\'VILLAN\'','\'P7 BRGY. GUINACUTAN, VINZONS, CAMARINES MORTE\'','\'1970-02-09 00:00:00\'','\'VINZONS, CAMARINES NORTE\'','\'F\'','\'MARRIED\'','NULL','\'LAO\'','\'2012-12-05 16:34:55\'','0','NULL','0','NULL','0','NULL','1','\'2013-01-03 10:05:38\'','3','\'051612\'','\'0516122007\'','\'1993-01-02 00:00:00\'','\'2012-09-11 00:00:00\'','19'),('\'05\'','\'0001\'','\'3001\'','\'300105150001\'','\'2015-09-16 00:00:00\'','\'2015-09-15 00:00:00\'','\'RIEZA\'','\'SUSAN\'','\'M.\'','\'MABEZA\'','\'\'','\'\'','\'P-1 MALACBANG, PARACALE, CAMARINES NORTE\'','\'1975-09-16 00:00:00\'','\'DAET, CAMARINES NORTE\'','\'F\'','\'MARRIED\'','NULL','\'MOLB\'','\'2015-09-16 16:03:32\'','0','NULL','0','NULL','0','NULL','1','\'2015-10-01 08:41:27\'','4','\'051608\'','\'0516088014\'','\'2010-01-01 00:00:00\'','\'2014-12-30 00:00:00\'','5'),('\'05\'','\'0002\'','\'3001\'','\'300105150002\'','\'2015-09-24 00:00:00\'','\'2015-09-24 00:00:00\'','\'RESPONDE\'','\'ELENA\'','\'C.\'','\'CABARLE\'','\'\'','\'\'','\'P-2 BRGY. CAMAMBUGAN, DAET, CAMARINES NORTE\'','\'1975-09-25 00:00:00\'','\'DAET, CAMARINES NORTE\'','\'F\'','\'MARRIED\'','NULL','\'MOLB\'','\'2015-09-24 14:54:44\'','0','NULL','0','NULL','0','NULL','1','\'2015-10-01 08:41:27\'','5','\'051603\'','\'0516033007\'','\'2002-08-16 00:00:00\'','\'2007-08-20 00:00:00\'','5'),('\'05\'','\'0001\'','\'3001\'','\'300105160001\'','\'2016-06-09 00:00:00\'','\'2016-06-09 00:00:00\'','\'BELLO\'','\'ROY\'','\'R.\'','\'RAPSING\'','\'\'','\'\'','\'CAGARA, BALENO, MASBATE\'','\'1978-01-05 00:00:00\'','\'BALENO, MASBATE\'','\'M\'','\'SINGLE\'','NULL','\'MOLB\'','\'2016-06-09 10:16:03\'','0','NULL','0','NULL','0','NULL','1','\'2016-07-01 08:01:22\'','6','\'054102\'','\'0541022004\'','\'2001-04-01 00:00:00\'','\'2009-08-25 00:00:00\'','8'),('\'05\'','\'0001\'','\'3001\'','\'300105180001\'','\'2018-06-29 00:00:00\'','\'2018-06-29 00:00:00\'','\'ESPENILLA\'','\'LIZA\'','\'M.\'','\'MAGDARAOG\'','\'\'','\'\'','\'BALINTONG ST. SAN JACINTO MASBATE\'','\'1978-03-06 00:00:00\'','\'MONREAL MASBATE\'','\'F\'','\'MARRIED\'','NULL','\'MCP5\'','\'2018-06-29 16:37:09\'','0','NULL','0','NULL','0','NULL','1','\'2018-07-02 09:02:53\'','7','\'054119\'','\'0541199016\'','\'2012-01-01 00:00:00\'','\'2016-12-31 00:00:00\'','5'),('\'05\'','\'0001\'','\'3001\'','\'300105220001\'','\'2022-10-20 00:00:00\'','\'2022-10-19 00:00:00\'','\'RODRIGUEZ\'','\'MARY JANE\'','\'B.\'','\'BALINO\'','\'\'','\'BALINO\'','\'SAN RAFAEL, STO. DOMINGO, ALBAY\'','\'1983-03-20 00:00:00\'','\'STO. DOMINGO, ALBAY\'','\'F\'','\'MARRIED\'','NULL','\'jcm\'','\'2022-10-20 08:51:22\'','0','NULL','0','NULL','0','NULL','1','\'2022-11-02 09:04:51\'','8','\'050516\'','\'0505166012\'','\'2016-10-16 00:00:00\'','\'2022-06-17 00:00:00\'','5');