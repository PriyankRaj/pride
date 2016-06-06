-- MySQL dump 10.13  Distrib 5.5.46, for Win32 (x86)
--
-- Host: localhost    Database: shiva_dev
-- ------------------------------------------------------
-- Server version	5.5.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `async_mail_attachment`
--

DROP TABLE IF EXISTS `async_mail_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `async_mail_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_name` varchar(255) NOT NULL,
  `content` longblob NOT NULL,
  `inline` bit(1) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `attachments_idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gxoa1ld7rnmu0kexyvr2wje56` (`message_id`),
  CONSTRAINT `FK_gxoa1ld7rnmu0kexyvr2wje56` FOREIGN KEY (`message_id`) REFERENCES `async_mail_mess` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `async_mail_attachment`
--

LOCK TABLES `async_mail_attachment` WRITE;
/*!40000 ALTER TABLE `async_mail_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `async_mail_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `async_mail_bcc`
--

DROP TABLE IF EXISTS `async_mail_bcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `async_mail_bcc` (
  `message_id` bigint(20) NOT NULL,
  `bcc_string` varchar(256) DEFAULT NULL,
  `bcc_idx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `async_mail_bcc`
--

LOCK TABLES `async_mail_bcc` WRITE;
/*!40000 ALTER TABLE `async_mail_bcc` DISABLE KEYS */;
/*!40000 ALTER TABLE `async_mail_bcc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `async_mail_cc`
--

DROP TABLE IF EXISTS `async_mail_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `async_mail_cc` (
  `message_id` bigint(20) NOT NULL,
  `cc_string` varchar(256) DEFAULT NULL,
  `cc_idx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `async_mail_cc`
--

LOCK TABLES `async_mail_cc` WRITE;
/*!40000 ALTER TABLE `async_mail_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `async_mail_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `async_mail_header`
--

DROP TABLE IF EXISTS `async_mail_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `async_mail_header` (
  `message_id` bigint(20) NOT NULL,
  `header_name` varchar(255) DEFAULT NULL,
  `header_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `async_mail_header`
--

LOCK TABLES `async_mail_header` WRITE;
/*!40000 ALTER TABLE `async_mail_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `async_mail_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `async_mail_mess`
--

DROP TABLE IF EXISTS `async_mail_mess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `async_mail_mess` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `attempt_interval` bigint(20) NOT NULL,
  `attempts_count` int(11) NOT NULL,
  `begin_date` datetime NOT NULL,
  `create_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `envelope_from` varchar(256) DEFAULT NULL,
  `from_column` varchar(256) DEFAULT NULL,
  `html` bit(1) NOT NULL,
  `last_attempt_date` datetime DEFAULT NULL,
  `mark_delete` bit(1) NOT NULL,
  `max_attempts_count` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `reply_to` varchar(256) DEFAULT NULL,
  `sent_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `subject` varchar(988) NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `async_mail_mess`
--

LOCK TABLES `async_mail_mess` WRITE;
/*!40000 ALTER TABLE `async_mail_mess` DISABLE KEYS */;
/*!40000 ALTER TABLE `async_mail_mess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `async_mail_to`
--

DROP TABLE IF EXISTS `async_mail_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `async_mail_to` (
  `message_id` bigint(20) NOT NULL,
  `to_string` varchar(256) DEFAULT NULL,
  `to_idx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `async_mail_to`
--

LOCK TABLES `async_mail_to` WRITE;
/*!40000 ALTER TABLE `async_mail_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `async_mail_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `micr` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES (1,0,NULL,NULL,NULL,NULL,NULL),(2,0,'PriyankRaj',NULL,NULL,NULL,NULL),(3,0,'Raj',NULL,NULL,NULL,NULL),(4,0,NULL,NULL,NULL,NULL,NULL),(5,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `bank_account_id` bigint(20) DEFAULT NULL,
  `company_configuration_id` bigint(20) DEFAULT NULL,
  `company_master_package_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_niu8sfil2gxywcru9ah3r4ec5` (`name`),
  KEY `FK_ot4e982hqbqetxp14qfaivi6w` (`bank_account_id`),
  KEY `FK_jqqdotllqnikdj2wfeqla9h31` (`company_configuration_id`),
  KEY `FK_3acfb51fwakg829bvyc6r8gri` (`company_master_package_id`),
  CONSTRAINT `FK_3acfb51fwakg829bvyc6r8gri` FOREIGN KEY (`company_master_package_id`) REFERENCES `company_master_package` (`id`),
  CONSTRAINT `FK_jqqdotllqnikdj2wfeqla9h31` FOREIGN KEY (`company_configuration_id`) REFERENCES `company_configuration` (`id`),
  CONSTRAINT `FK_ot4e982hqbqetxp14qfaivi6w` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,0,1,1,1,'HROS',NULL),(2,0,4,2,2,'Ocean Plus',NULL),(3,0,5,3,3,'Iken Personics',NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_configuration`
--

DROP TABLE IF EXISTS `company_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_configuration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `leave_limit` tinyblob NOT NULL,
  `leave_types` tinyblob NOT NULL,
  `use_leaves_and_holiday_as_working_days` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_configuration`
--

LOCK TABLES `company_configuration` WRITE;
/*!40000 ALTER TABLE `company_configuration` DISABLE KEYS */;
INSERT INTO `company_configuration` VALUES (1,0,'¬í\0ur\0[IMº`&vê²¥\0\0xp\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0<','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Casualt\0Sickt\0Annualt\0	Maternity',''),(2,0,'¬í\0ur\0[IMº`&vê²¥\0\0xp\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0<','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Casualt\0Sickt\0Annualt\0	Maternity',''),(3,0,'¬í\0ur\0[IMº`&vê²¥\0\0xp\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0<','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Casualt\0Sickt\0Annualt\0	Maternity','');
/*!40000 ALTER TABLE `company_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_master_package`
--

DROP TABLE IF EXISTS `company_master_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_master_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `advance_consider` bit(1) NOT NULL,
  `advance_fix` double NOT NULL,
  `advance_is_negative` bit(1) NOT NULL,
  `advance_per` double NOT NULL,
  `advance_use_fix` bit(1) NOT NULL,
  `basic_consider` bit(1) NOT NULL,
  `basic_fix` double NOT NULL,
  `basic_is_negative` bit(1) NOT NULL,
  `basic_per` double NOT NULL,
  `basic_use_fix` bit(1) NOT NULL,
  `children_education_allow_consider` bit(1) NOT NULL,
  `children_education_allow_fix` double NOT NULL,
  `children_education_allow_is_negative` bit(1) NOT NULL,
  `children_education_allow_per` double NOT NULL,
  `children_education_allow_use_fix` bit(1) NOT NULL,
  `cities` tinyblob NOT NULL,
  `city_comp_allow_consider` bit(1) NOT NULL,
  `city_comp_allow_fix` double NOT NULL,
  `city_comp_allow_is_negative` bit(1) NOT NULL,
  `city_comp_allow_per` double NOT NULL,
  `city_comp_allow_use_fix` bit(1) NOT NULL,
  `compensation_types` tinyblob NOT NULL,
  `ctc_consider` bit(1) NOT NULL,
  `ctc_fix` double NOT NULL,
  `ctc_is_negative` bit(1) NOT NULL,
  `ctc_per` double NOT NULL,
  `ctc_use_fix` bit(1) NOT NULL,
  `custom1consider` bit(1) NOT NULL,
  `custom1fix` double NOT NULL,
  `custom1is_negative` bit(1) NOT NULL,
  `custom1label` varchar(255) NOT NULL,
  `custom1per` double NOT NULL,
  `custom1use_fix` bit(1) NOT NULL,
  `custom2consider` bit(1) NOT NULL,
  `custom2fix` double NOT NULL,
  `custom2is_negative` bit(1) NOT NULL,
  `custom2label` varchar(255) NOT NULL,
  `custom2per` double NOT NULL,
  `custom2use_fix` bit(1) NOT NULL,
  `da_consider` bit(1) NOT NULL,
  `da_fix` double NOT NULL,
  `da_is_negative` bit(1) NOT NULL,
  `da_per` double NOT NULL,
  `da_use_fix` bit(1) NOT NULL,
  `departments` tinyblob NOT NULL,
  `employment_types` tinyblob NOT NULL,
  `esi_consider` bit(1) NOT NULL,
  `esi_fix` double NOT NULL,
  `esi_is_negative` bit(1) NOT NULL,
  `esi_per` double NOT NULL,
  `esi_use_fix` bit(1) NOT NULL,
  `food_coupon_consider` bit(1) NOT NULL,
  `food_coupon_fix` double NOT NULL,
  `food_coupon_is_negative` bit(1) NOT NULL,
  `food_coupon_per` double NOT NULL,
  `food_coupon_use_fix` bit(1) NOT NULL,
  `granularity` tinyblob NOT NULL,
  `hra_consider` bit(1) NOT NULL,
  `hra_fix` double NOT NULL,
  `hra_is_negative` bit(1) NOT NULL,
  `hra_per` double NOT NULL,
  `hra_use_fix` bit(1) NOT NULL,
  `incentive_consider` bit(1) NOT NULL,
  `incentive_label` varchar(255) NOT NULL,
  `job_titles` tinyblob NOT NULL,
  `loan_consider` bit(1) NOT NULL,
  `loan_fix` double NOT NULL,
  `loan_is_negative` bit(1) NOT NULL,
  `loan_per` double NOT NULL,
  `loan_use_fix` bit(1) NOT NULL,
  `ltc_consider` bit(1) NOT NULL,
  `ltc_fix` double NOT NULL,
  `ltc_is_negative` bit(1) NOT NULL,
  `ltc_per` double NOT NULL,
  `ltc_use_fix` bit(1) NOT NULL,
  `medical_reimb_consider` bit(1) NOT NULL,
  `medical_reimb_fix` double NOT NULL,
  `medical_reimb_is_negative` bit(1) NOT NULL,
  `medical_reimb_per` double NOT NULL,
  `medical_reimb_use_fix` bit(1) NOT NULL,
  `mobile_allow_consider` bit(1) NOT NULL,
  `mobile_allow_fix` double NOT NULL,
  `mobile_allow_is_negative` bit(1) NOT NULL,
  `mobile_allow_per` double NOT NULL,
  `mobile_allow_use_fix` bit(1) NOT NULL,
  `monthly_gross_consider` bit(1) NOT NULL,
  `monthly_gross_fix` double NOT NULL,
  `monthly_gross_is_negative` bit(1) NOT NULL,
  `monthly_gross_per` double NOT NULL,
  `monthly_gross_use_fix` bit(1) NOT NULL,
  `pension_fund_consider` bit(1) NOT NULL,
  `pension_fund_fix` double NOT NULL,
  `pension_fund_is_negative` bit(1) NOT NULL,
  `pension_fund_per` double NOT NULL,
  `pension_fund_use_fix` bit(1) NOT NULL,
  `pf_consider` bit(1) NOT NULL,
  `pf_fix` double NOT NULL,
  `pf_is_negative` bit(1) NOT NULL,
  `pf_per` double NOT NULL,
  `pf_use_fix` bit(1) NOT NULL,
  `refreshment_consider` bit(1) NOT NULL,
  `refreshment_fix` double NOT NULL,
  `refreshment_is_negative` bit(1) NOT NULL,
  `refreshment_per` double NOT NULL,
  `refreshment_use_fix` bit(1) NOT NULL,
  `sp_allow_consider` bit(1) NOT NULL,
  `sp_allow_fix` double NOT NULL,
  `sp_allow_is_negative` bit(1) NOT NULL,
  `sp_allow_per` double NOT NULL,
  `sp_allow_use_fix` bit(1) NOT NULL,
  `states` tinyblob NOT NULL,
  `trans_allow_consider` bit(1) NOT NULL,
  `trans_allow_fix` double NOT NULL,
  `trans_allow_is_negative` bit(1) NOT NULL,
  `trans_allow_per` double NOT NULL,
  `trans_allow_use_fix` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_master_package`
--

LOCK TABLES `company_master_package` WRITE;
/*!40000 ALTER TABLE `company_master_package` DISABLE KEYS */;
INSERT INTO `company_master_package` VALUES (1,0,'\0',0,'',0,'\0','',0,'\0',40,'\0','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Mumbait\0Punet\0Channai','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Timehourt\0	Day basis','',0,'\0',0,'\0','\0',0,'\0','Custom-1',0,'\0','\0',0,'\0','Custom-2',0,'\0','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0\nTechnologyt\0Salest\0HR and Admint\0\nOperations','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0	probationt\0	Permanent','',0,'',12,'\0','',24000,'\0',0,'','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Biweeklyt\0Monthly','',0,'\0',40,'\0','','Incentives','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0	Developert\0\rSr. Developert\0	Architecht\0VPt\0CTO','\0',0,'',0,'\0','\0',0,'\0',0,'\0','',18000,'\0',0,'','\0',0,'\0',0,'\0','',0,'\0',0,'\0','\0',0,'',0,'\0','',0,'',12,'\0','\0',0,'\0',0,'\0','',0,'\0',120,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0\nMaharastrat\0	Tamilnadu','',9600,'\0',0,''),(2,1,'\0',0,'',0,'\0','',0,'\0',40,'\0','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Mumbait\0Punet\0Channai','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Timehourt\0	Day basis','',0,'\0',0,'\0','\0',0,'\0','Custom-1',0,'\0','\0',0,'\0','Custom-2',0,'\0','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0OPt\0Audit & Compliancet\0ITt\0Salest\0	Retention','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0	probationt\0	Permanent','',0,'',12,'\0','',24000,'\0',0,'','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Biweeklyt\0Monthly','',0,'\0',40,'\0','','Incentives','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0HODt\0Head - Accounts & Financet\0\nIT Managert\0Server Admint\0IT Executivet\0Auditort\0MISt\0Team Leadert\0\nTeam Coacht\0CSRt\0Trainer','\0',0,'',0,'\0','\0',0,'\0',0,'\0','',18000,'\0',0,'','\0',0,'\0',0,'\0','',0,'\0',0,'\0','\0',0,'',0,'\0','',0,'',12,'\0','\0',0,'\0',0,'\0','',0,'\0',120,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0\nMaharastrat\0	Tamilnadu','',9600,'\0',0,''),(3,1,'\0',0,'',0,'\0','',0,'\0',40,'\0','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Mumbait\0Punet\0Channai','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Timehourt\0	Day basis','',0,'\0',0,'\0','\0',0,'\0','Custom-1',0,'\0','\0',0,'\0','Custom-2',0,'\0','\0',0,'\0',0,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0OPt\0Audit & Compliancet\0ITt\0Salest\0	Retention','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0	probationt\0	Permanent','',0,'',12,'\0','',24000,'\0',0,'','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0Biweeklyt\0Monthly','',0,'\0',40,'\0','','Incentives','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0HODt\0Head - Accounts & Financet\0\nIT Managert\0Server Admint\0IT Executivet\0Auditort\0MISt\0Team Leadert\0\nTeam Coacht\0CSRt\0Trainer','\0',0,'',0,'\0','\0',0,'\0',0,'\0','',18000,'\0',0,'','\0',0,'\0',0,'\0','',0,'\0',0,'\0','\0',0,'',0,'\0','',0,'',12,'\0','\0',0,'\0',0,'\0','',0,'\0',120,'\0','¬í\0ur\0[Ljava.lang.String;­ÒVçé{G\0\0xp\0\0\0t\0\nMaharastrat\0	Tamilnadu','',9600,'\0',0,'');
/*!40000 ALTER TABLE `company_master_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bank_account_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `ei_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `emergency_number` varchar(255) DEFAULT NULL,
  `emp_id` bigint(20) DEFAULT NULL,
  `hr_manager_id` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  `kyc_address` bit(1) NOT NULL,
  `last_update` datetime NOT NULL,
  `legal_name` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `wk_manager_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fopic1oh5oln2khj8eat6ino0` (`email`),
  UNIQUE KEY `UK_ji21v0iidcj8eitico13grtl7` (`pan`),
  KEY `FK_7ai6kh90viie22hv8pj44u2en` (`bank_account_id`),
  KEY `FK_k20labyfxi4i3ftuv4yv5age9` (`company_id`),
  KEY `FK_1qfn398u7hmegkfk52fy0xfhf` (`ei_id`),
  KEY `FK_p0qw73v7jwaff4dqc80hpfs9k` (`emp_id`),
  KEY `FK_6v9eenyir9cfvmvyr8unwokh7` (`hr_manager_id`),
  KEY `FK_g7qankoq1rmx659577950lq7i` (`wk_manager_id`),
  CONSTRAINT `FK_g7qankoq1rmx659577950lq7i` FOREIGN KEY (`wk_manager_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_1qfn398u7hmegkfk52fy0xfhf` FOREIGN KEY (`ei_id`) REFERENCES `employee_investment` (`id`),
  CONSTRAINT `FK_6v9eenyir9cfvmvyr8unwokh7` FOREIGN KEY (`hr_manager_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_7ai6kh90viie22hv8pj44u2en` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_account` (`id`),
  CONSTRAINT `FK_k20labyfxi4i3ftuv4yv5age9` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_p0qw73v7jwaff4dqc80hpfs9k` FOREIGN KEY (`emp_id`) REFERENCES `employee_master_package` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'Address 22',2,1,NULL,'1986-02-28 00:00:00',5,'priyank@hams.co.in',NULL,5,NULL,'\0','\0','2016-06-06 18:13:01','Priyank','BKLPK9999C',NULL),(2,1,'Address 11',2,1,NULL,'1993-01-24 00:00:00',6,'raj@hams.co.in',NULL,6,1,'\0','\0','2016-06-06 18:13:01','Raj','MHBPK9999K',1),(3,0,'Address 11',2,2,NULL,'1993-01-24 00:00:00',3,'mads@oceanplus.hk',NULL,3,NULL,'\0','\0','2016-06-06 18:12:54','Madhavi Karra','MADHV9999K',NULL),(4,0,'Address 11',2,3,NULL,'1993-01-24 00:00:00',4,'rupali.indulkar@ikenpersonics.com',NULL,4,NULL,'\0','\0','2016-06-06 18:12:56','Rupali Indulkar','RUPAL9999I',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendance`
--

DROP TABLE IF EXISTS `employee_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_attendance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `e_id` bigint(20) NOT NULL,
  `is_late` bit(1) NOT NULL,
  `present` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_e_id` (`date`,`e_id`),
  KEY `FK_1q1oah2p10qrm7iqdq9wf4aky` (`e_id`),
  CONSTRAINT `FK_1q1oah2p10qrm7iqdq9wf4aky` FOREIGN KEY (`e_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance`
--

LOCK TABLES `employee_attendance` WRITE;
/*!40000 ALTER TABLE `employee_attendance` DISABLE KEYS */;
INSERT INTO `employee_attendance` VALUES (1,0,'2016-05-07 00:00:00',3,'\0',0),(2,0,'2016-05-08 00:00:00',3,'\0',0),(3,0,'2016-05-09 00:00:00',3,'\0',0),(4,0,'2016-05-10 00:00:00',3,'\0',0),(5,0,'2016-05-11 00:00:00',3,'\0',0),(6,0,'2016-05-12 00:00:00',3,'\0',0),(7,0,'2016-05-13 00:00:00',3,'\0',0),(8,0,'2016-05-14 00:00:00',3,'\0',0),(9,0,'2016-05-15 00:00:00',3,'\0',0),(10,0,'2016-05-16 00:00:00',3,'\0',0),(11,0,'2016-05-17 00:00:00',3,'\0',0),(12,0,'2016-05-18 00:00:00',3,'\0',0),(13,0,'2016-05-19 00:00:00',3,'\0',0),(14,0,'2016-05-20 00:00:00',3,'\0',0),(15,0,'2016-05-21 00:00:00',3,'\0',0),(16,0,'2016-05-22 00:00:00',3,'\0',0),(17,0,'2016-05-23 00:00:00',3,'\0',0),(18,0,'2016-05-24 00:00:00',3,'\0',0),(19,0,'2016-05-25 00:00:00',3,'\0',0),(20,0,'2016-05-26 00:00:00',3,'\0',0),(21,0,'2016-05-27 00:00:00',3,'\0',0),(22,0,'2016-05-28 00:00:00',3,'\0',0),(23,0,'2016-05-29 00:00:00',3,'\0',0),(24,0,'2016-05-30 00:00:00',3,'\0',0),(25,0,'2016-05-31 00:00:00',3,'\0',0),(26,0,'2016-06-01 00:00:00',3,'\0',0),(27,0,'2016-06-02 00:00:00',3,'\0',0),(28,0,'2016-06-03 00:00:00',3,'\0',0),(29,0,'2016-06-04 00:00:00',3,'\0',0),(30,0,'2016-06-05 00:00:00',3,'\0',0),(31,0,'2016-06-06 00:00:00',3,'\0',0),(32,0,'2016-05-07 00:00:00',4,'\0',0),(33,0,'2016-05-08 00:00:00',4,'\0',0),(34,0,'2016-05-09 00:00:00',4,'\0',0),(35,0,'2016-05-10 00:00:00',4,'\0',0),(36,0,'2016-05-11 00:00:00',4,'\0',0),(37,0,'2016-05-12 00:00:00',4,'\0',0),(38,0,'2016-05-13 00:00:00',4,'\0',0),(39,0,'2016-05-14 00:00:00',4,'\0',0),(40,0,'2016-05-15 00:00:00',4,'\0',0),(41,0,'2016-05-16 00:00:00',4,'\0',0),(42,0,'2016-05-17 00:00:00',4,'\0',0),(43,0,'2016-05-18 00:00:00',4,'\0',0),(44,0,'2016-05-19 00:00:00',4,'\0',0),(45,0,'2016-05-20 00:00:00',4,'\0',0),(46,0,'2016-05-21 00:00:00',4,'\0',0),(47,0,'2016-05-22 00:00:00',4,'\0',0),(48,0,'2016-05-23 00:00:00',4,'\0',0),(49,0,'2016-05-24 00:00:00',4,'\0',0),(50,0,'2016-05-25 00:00:00',4,'\0',0),(51,0,'2016-05-26 00:00:00',4,'\0',0),(52,0,'2016-05-27 00:00:00',4,'\0',0),(53,0,'2016-05-28 00:00:00',4,'\0',0),(54,0,'2016-05-29 00:00:00',4,'\0',0),(55,0,'2016-05-30 00:00:00',4,'\0',0),(56,0,'2016-05-31 00:00:00',4,'\0',0),(57,0,'2016-06-01 00:00:00',4,'\0',0),(58,0,'2016-06-02 00:00:00',4,'\0',0),(59,0,'2016-06-03 00:00:00',4,'\0',0),(60,0,'2016-06-04 00:00:00',4,'\0',0),(61,0,'2016-06-05 00:00:00',4,'\0',0),(62,0,'2016-06-06 00:00:00',4,'\0',0),(63,0,'2016-05-07 00:00:00',2,'\0',0),(64,0,'2016-05-08 00:00:00',2,'\0',0),(65,0,'2016-05-09 00:00:00',2,'\0',0),(66,0,'2016-05-10 00:00:00',2,'\0',0),(67,0,'2016-05-11 00:00:00',2,'\0',0),(68,0,'2016-05-12 00:00:00',2,'\0',0),(69,0,'2016-05-13 00:00:00',2,'\0',0),(70,0,'2016-05-14 00:00:00',2,'\0',0),(71,0,'2016-05-15 00:00:00',2,'\0',0),(72,0,'2016-05-16 00:00:00',2,'\0',0),(73,0,'2016-05-17 00:00:00',2,'\0',0),(74,0,'2016-05-18 00:00:00',2,'\0',0),(75,0,'2016-05-19 00:00:00',2,'\0',0),(76,0,'2016-05-20 00:00:00',2,'\0',0),(77,0,'2016-05-21 00:00:00',2,'\0',0),(78,0,'2016-05-22 00:00:00',2,'\0',0),(79,0,'2016-05-23 00:00:00',2,'\0',0),(80,0,'2016-05-24 00:00:00',2,'\0',0),(81,0,'2016-05-25 00:00:00',2,'\0',0),(82,0,'2016-05-26 00:00:00',2,'\0',0),(83,0,'2016-05-27 00:00:00',2,'\0',0),(84,0,'2016-05-28 00:00:00',2,'\0',0),(85,0,'2016-05-29 00:00:00',2,'\0',0),(86,0,'2016-05-30 00:00:00',2,'\0',0),(87,0,'2016-05-31 00:00:00',2,'\0',0),(88,0,'2016-06-01 00:00:00',2,'\0',0),(89,0,'2016-06-02 00:00:00',2,'\0',0),(90,0,'2016-06-03 00:00:00',2,'\0',0),(91,0,'2016-06-04 00:00:00',2,'\0',0),(92,0,'2016-06-05 00:00:00',2,'\0',0),(93,0,'2016-06-06 00:00:00',2,'\0',0),(94,0,'2016-05-07 00:00:00',1,'\0',0),(95,0,'2016-05-08 00:00:00',1,'\0',0),(96,0,'2016-05-09 00:00:00',1,'\0',0),(97,0,'2016-05-10 00:00:00',1,'\0',0),(98,0,'2016-05-11 00:00:00',1,'\0',0),(99,0,'2016-05-12 00:00:00',1,'\0',0),(100,0,'2016-05-13 00:00:00',1,'\0',0),(101,0,'2016-05-14 00:00:00',1,'\0',0),(102,0,'2016-05-15 00:00:00',1,'\0',0),(103,0,'2016-05-16 00:00:00',1,'\0',0),(104,0,'2016-05-17 00:00:00',1,'\0',0),(105,0,'2016-05-18 00:00:00',1,'\0',0),(106,0,'2016-05-19 00:00:00',1,'\0',0),(107,0,'2016-05-20 00:00:00',1,'\0',0),(108,0,'2016-05-21 00:00:00',1,'\0',0),(109,0,'2016-05-22 00:00:00',1,'\0',0),(110,0,'2016-05-23 00:00:00',1,'\0',0),(111,0,'2016-05-24 00:00:00',1,'\0',0),(112,0,'2016-05-25 00:00:00',1,'\0',0),(113,0,'2016-05-26 00:00:00',1,'\0',0),(114,0,'2016-05-27 00:00:00',1,'\0',0),(115,0,'2016-05-28 00:00:00',1,'\0',0),(116,0,'2016-05-29 00:00:00',1,'\0',0),(117,0,'2016-05-30 00:00:00',1,'\0',0),(118,0,'2016-05-31 00:00:00',1,'\0',0),(119,0,'2016-06-01 00:00:00',1,'\0',0),(120,0,'2016-06-02 00:00:00',1,'\0',0),(121,0,'2016-06-03 00:00:00',1,'\0',0),(122,0,'2016-06-04 00:00:00',1,'\0',0),(123,0,'2016-06-05 00:00:00',1,'\0',0),(124,0,'2016-06-06 00:00:00',1,'\0',0);
/*!40000 ALTER TABLE `employee_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_investment`
--

DROP TABLE IF EXISTS `employee_investment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_investment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `interest_on_housting_property_loan` double NOT NULL,
  `interest_on_housting_property_loan_documents_available` bit(1) NOT NULL,
  `n80ddmedical_expenses_disability` double NOT NULL,
  `n80ddmedical_expenses_disability_documents_available` bit(1) NOT NULL,
  `n80dhealth_insurance` double NOT NULL,
  `n80dhealth_insurance_documents_available` bit(1) NOT NULL,
  `n80ttasaving_bank_interest` double NOT NULL,
  `n80ttasaving_bank_interest_documents_available` bit(1) NOT NULL,
  `n80umedical_expenses_server_disability` double NOT NULL,
  `n80umedical_expenses_server_disability_documents_available` bit(1) NOT NULL,
  `n80c` double NOT NULL,
  `n80c_documents_available` bit(1) NOT NULL,
  `n80ccd` double NOT NULL,
  `n80ccd_documents_available` bit(1) NOT NULL,
  `transport_allowance` double NOT NULL,
  `transport_allowance_documents_available` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_investment`
--

LOCK TABLES `employee_investment` WRITE;
/*!40000 ALTER TABLE `employee_investment` DISABLE KEYS */;
INSERT INTO `employee_investment` VALUES (1,0,0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0'),(2,0,0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0'),(3,0,0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0'),(4,0,0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',0,'\0'),(5,0,100000,'\0',0,'\0',0,'\0',0,'\0',0,'\0',10000,'\0',10000,'\0',0,'\0'),(6,0,0,'\0',0,'\0',0,'\0',0,'\0',0,'\0',10000,'\0',10000,'\0',0,'\0');
/*!40000 ALTER TABLE `employee_investment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leaves`
--

DROP TABLE IF EXISTS `employee_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leaves` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `approver_id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `is_approved` bit(1) NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `lwp` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_employee_id` (`date`,`employee_id`),
  KEY `FK_ib7nqr1jugulqh307uin2el3r` (`approver_id`),
  KEY `FK_o6dyprvaslqjlmyhbj53b24nl` (`employee_id`),
  CONSTRAINT `FK_o6dyprvaslqjlmyhbj53b24nl` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_ib7nqr1jugulqh307uin2el3r` FOREIGN KEY (`approver_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leaves`
--

LOCK TABLES `employee_leaves` WRITE;
/*!40000 ALTER TABLE `employee_leaves` DISABLE KEYS */;
INSERT INTO `employee_leaves` VALUES (1,0,1,'2016-04-29 00:00:00',2,'\0','Casual','\0'),(2,0,1,'2016-04-27 00:00:00',2,'\0','Casual','\0');
/*!40000 ALTER TABLE `employee_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_master_package`
--

DROP TABLE IF EXISTS `employee_master_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_master_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `basic` double NOT NULL,
  `children_education_allow` double NOT NULL,
  `city` varchar(255) NOT NULL,
  `city_comp_allow` double NOT NULL,
  `compensation_type` varchar(255) NOT NULL,
  `ctc` double DEFAULT NULL,
  `custom1` double NOT NULL,
  `custom2` double NOT NULL,
  `da` double NOT NULL,
  `date_of_joining` datetime DEFAULT NULL,
  `date_of_leaving` datetime DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `employment_type` varchar(255) NOT NULL,
  `esi` double NOT NULL,
  `food_coupon` double NOT NULL,
  `hra` double NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `ltc` double NOT NULL,
  `medical_reimb` double NOT NULL,
  `mobile_allow` double NOT NULL,
  `monthly_gross` double DEFAULT NULL,
  `pension_fund` double NOT NULL,
  `pf` double NOT NULL,
  `refreshment` double NOT NULL,
  `sp_allow` double NOT NULL,
  `state` varchar(255) NOT NULL,
  `trans_allow` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_master_package`
--

LOCK TABLES `employee_master_package` WRITE;
/*!40000 ALTER TABLE `employee_master_package` DISABLE KEYS */;
INSERT INTO `employee_master_package` VALUES (1,0,0,0,'',0,'',0,0,0,0,NULL,NULL,'','',0,0,0,'',0,0,0,0,0,0,0,0,'',0),(2,0,0,0,'',0,'',0,0,0,0,NULL,NULL,'','',0,0,0,'',0,0,0,0,0,0,0,0,'',0),(3,0,0,0,'',0,'',0,0,0,0,NULL,NULL,'','',0,0,0,'',0,0,0,0,0,0,0,0,'',0),(4,0,0,0,'',0,'',0,0,0,0,NULL,NULL,'','',0,0,0,'',0,0,0,0,0,0,0,0,'',0),(5,0,10000,0,'MUMBAI',3000,'Monthly',49800,0,0,0,'2016-02-01 00:00:00',NULL,'Technology','FullTime',0,0,5000,'Architech',10000,15000,1000,4150,0,0,0,5000,'MAHARASTRA',800),(6,0,15000,0,'BENGALURU',0,'Monthly',35000,0,0,0,'2016-02-01 00:00:00',NULL,'Technology','FullTime',0,0,10000,'Sr. Developer',0,0,2000,2916.6666666666665,0,0,0,7200,'KARNATAKA',800);
/*!40000 ALTER TABLE `employee_master_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_monthly_leave_aggregation`
--

DROP TABLE IF EXISTS `employee_monthly_leave_aggregation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_monthly_leave_aggregation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `c_id` bigint(20) NOT NULL,
  `close` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `e_id` bigint(20) NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `open` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mqe1crjh3uv7j4rvcyq4o8j8o` (`c_id`),
  KEY `FK_kdynuxoha3ab2cxagaot7hy1p` (`e_id`),
  CONSTRAINT `FK_kdynuxoha3ab2cxagaot7hy1p` FOREIGN KEY (`e_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_mqe1crjh3uv7j4rvcyq4o8j8o` FOREIGN KEY (`c_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_monthly_leave_aggregation`
--

LOCK TABLES `employee_monthly_leave_aggregation` WRITE;
/*!40000 ALTER TABLE `employee_monthly_leave_aggregation` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_monthly_leave_aggregation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_payout`
--

DROP TABLE IF EXISTS `employee_payout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_payout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `adjustment_days` int(11) NOT NULL,
  `advance` double NOT NULL,
  `agreed_pay` double NOT NULL,
  `basic` double NOT NULL,
  `children_education_allow` double NOT NULL,
  `city` varchar(255) NOT NULL,
  `city_comp_allow` double NOT NULL,
  `custom1` double NOT NULL,
  `custom2` double NOT NULL,
  `da` double NOT NULL,
  `date` datetime NOT NULL,
  `effective_days` int(11) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `esi` double NOT NULL,
  `food_coupon` double NOT NULL,
  `forcetds` double NOT NULL,
  `gross_pay` double NOT NULL,
  `hra` double NOT NULL,
  `incentive` double NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `loan` double NOT NULL,
  `ltc` double NOT NULL,
  `medical_reimb` double NOT NULL,
  `mobile_allow` double NOT NULL,
  `month` int(11) NOT NULL,
  `net_pay` double NOT NULL,
  `other` double NOT NULL,
  `pension_fund` double NOT NULL,
  `pf` double NOT NULL,
  `present_days` int(11) NOT NULL,
  `prof_tax` double NOT NULL,
  `refreshment` double NOT NULL,
  `sp_allow` double NOT NULL,
  `tds` double NOT NULL,
  `total_deduction` double NOT NULL,
  `trans_allow` double NOT NULL,
  `working_days` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qdaxhnjqys7pgdv202ssdsrfv` (`employee_id`),
  CONSTRAINT `FK_qdaxhnjqys7pgdv202ssdsrfv` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_payout`
--

LOCK TABLES `employee_payout` WRITE;
/*!40000 ALTER TABLE `employee_payout` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_payout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_time_sheet`
--

DROP TABLE IF EXISTS `employee_time_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_time_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `end_time` datetime NOT NULL,
  `start_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7clgp1alxq2dxrvyfbt82ov1a` (`employee_id`),
  CONSTRAINT `FK_7clgp1alxq2dxrvyfbt82ov1a` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_time_sheet`
--

LOCK TABLES `employee_time_sheet` WRITE;
/*!40000 ALTER TABLE `employee_time_sheet` DISABLE KEYS */;
INSERT INTO `employee_time_sheet` VALUES (1,0,'2016-02-24 00:00:00',1,'2016-02-24 18:00:00','2016-02-24 09:00:00');
/*!40000 ALTER TABLE `employee_time_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_tax_slab`
--

DROP TABLE IF EXISTS `income_tax_slab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income_tax_slab` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `lower_age` int(11) NOT NULL,
  `lower_income` int(11) NOT NULL,
  `offset` int(11) NOT NULL,
  `resident` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tax_per` int(11) NOT NULL,
  `upper_age` int(11) NOT NULL,
  `upper_income` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_tax_slab`
--

LOCK TABLES `income_tax_slab` WRITE;
/*!40000 ALTER TABLE `income_tax_slab` DISABLE KEYS */;
INSERT INTO `income_tax_slab` VALUES (1,0,'Male',0,0,0,'India','Individual',0,60,250000),(2,0,'Male',0,250001,0,'India','Individual',10,60,500000),(3,0,'Male',0,500001,25000,'India','Individual',20,60,1000000),(4,0,'Male',0,1000001,125000,'India','Individual',30,60,1000000000),(5,0,'Male',60,0,0,'India','Individual',0,80,300000),(6,0,'Male',60,300001,0,'India','Individual',10,80,500000),(7,0,'Male',60,500001,20000,'India','Individual',20,80,1000000),(8,0,'Male',60,1000001,120000,'India','Individual',30,80,1000000000),(9,0,'Male',80,0,0,'India','Individual',0,180,500000),(10,0,'Male',80,500001,0,'India','Individual',20,180,1000000),(11,0,'Male',80,1000001,100000,'India','Individual',30,180,1000000000);
/*!40000 ALTER TABLE `income_tax_slab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_tax_surcharge`
--

DROP TABLE IF EXISTS `income_tax_surcharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income_tax_surcharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `education_cess_per` int(11) NOT NULL,
  `secondary_and_higher_education_cess_per` int(11) NOT NULL,
  `surcharge_limit` int(11) NOT NULL,
  `surcharge_per` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_tax_surcharge`
--

LOCK TABLES `income_tax_surcharge` WRITE;
/*!40000 ALTER TABLE `income_tax_surcharge` DISABLE KEYS */;
INSERT INTO `income_tax_surcharge` VALUES (1,0,2,1,10000000,10);
/*!40000 ALTER TABLE `income_tax_surcharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_limit`
--

DROP TABLE IF EXISTS `investment_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investment_limit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `interest_on_housting_property_loan` double NOT NULL,
  `n80ddmedical_expenses_disability` double NOT NULL,
  `n80dhealth_insurance` double NOT NULL,
  `n80ttasaving_bank_interest` double NOT NULL,
  `n80umedical_expenses_server_disability` double NOT NULL,
  `n80c` double NOT NULL,
  `n80ccd` double NOT NULL,
  `transport_allowance` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_limit`
--

LOCK TABLES `investment_limit` WRITE;
/*!40000 ALTER TABLE `investment_limit` DISABLE KEYS */;
/*!40000 ALTER TABLE `investment_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc`
--

DROP TABLE IF EXISTS `kyc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kyc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` mediumblob,
  `address_available` bit(1) NOT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `pan` mediumblob,
  `pan_available` bit(1) NOT NULL,
  `pan_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mi1ji9jcxjsygj96q8supihxi` (`employee_id`),
  CONSTRAINT `FK_mi1ji9jcxjsygj96q8supihxi` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc`
--

LOCK TABLES `kyc` WRITE;
/*!40000 ALTER TABLE `kyc` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves_calender`
--

DROP TABLE IF EXISTS `leaves_calender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaves_calender` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `fullday` bit(1) NOT NULL,
  `optional` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_thb2o45n6mvltnc9234dwclcb` (`company_id`),
  CONSTRAINT `FK_thb2o45n6mvltnc9234dwclcb` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves_calender`
--

LOCK TABLES `leaves_calender` WRITE;
/*!40000 ALTER TABLE `leaves_calender` DISABLE KEYS */;
INSERT INTO `leaves_calender` VALUES (1,0,1,'2016-02-20 00:00:00','Just like that','\0','\0'),(2,0,1,'2016-02-21 00:00:00','Just like that','\0','\0'),(3,0,1,'2016-04-13 00:00:00','Just like that','\0','\0'),(4,0,1,'2016-04-05 00:00:00','Just like that','\0','\0'),(5,0,1,'2016-04-06 00:00:00','Just like that','\0','\0');
/*!40000 ALTER TABLE `leaves_calender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_account`
--

DROP TABLE IF EXISTS `loan_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `emi` int(11) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `last_transaction_id` bigint(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `tenure_months` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_26pd852irf9b4xa9re6l2o2gx` (`employee_id`),
  KEY `FK_i53nhw6o3birrprbvwbo6my00` (`last_transaction_id`),
  CONSTRAINT `FK_i53nhw6o3birrprbvwbo6my00` FOREIGN KEY (`last_transaction_id`) REFERENCES `loan_transaction` (`id`),
  CONSTRAINT `FK_26pd852irf9b4xa9re6l2o2gx` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_account`
--

LOCK TABLES `loan_account` WRITE;
/*!40000 ALTER TABLE `loan_account` DISABLE KEYS */;
INSERT INTO `loan_account` VALUES (1,0,100000,3333,2,'',1,'2016-02-29 00:00:00',30);
/*!40000 ALTER TABLE `loan_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_transaction`
--

DROP TABLE IF EXISTS `loan_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `close` double NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `txn_amount` double NOT NULL,
  `txn_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gt6n6292d5ovfd9xuk652ldo5` (`employee_id`),
  CONSTRAINT `FK_gt6n6292d5ovfd9xuk652ldo5` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_transaction`
--

LOCK TABLES `loan_transaction` WRITE;
/*!40000 ALTER TABLE `loan_transaction` DISABLE KEYS */;
INSERT INTO `loan_transaction` VALUES (1,0,100000,2,0,-100000,'2016-02-29 00:00:00');
/*!40000 ALTER TABLE `loan_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payout_rules`
--

DROP TABLE IF EXISTS `payout_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payout_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `working_day_calculation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2ro25mnx273sa9shtmwxpkex7` (`company_id`),
  CONSTRAINT `FK_2ro25mnx273sa9shtmwxpkex7` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_rules`
--

LOCK TABLES `payout_rules` WRITE;
/*!40000 ALTER TABLE `payout_rules` DISABLE KEYS */;
INSERT INTO `payout_rules` VALUES (1,0,1,'Leavebased');
/*!40000 ALTER TABLE `payout_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_tax`
--

DROP TABLE IF EXISTS `professional_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional_tax` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `lower_range` int(11) NOT NULL,
  `march_adj` double NOT NULL,
  `payable_tax` double NOT NULL,
  `state` varchar(255) NOT NULL,
  `upper_range` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_tax`
--

LOCK TABLES `professional_tax` WRITE;
/*!40000 ALTER TABLE `professional_tax` DISABLE KEYS */;
INSERT INTO `professional_tax` VALUES (1,0,0,0,0,'MAHARASTRA',2500),(2,0,2500,0,60,'MAHARASTRA',3500),(3,0,3500,0,120,'MAHARASTRA',5000),(4,0,5000,0,175,'MAHARASTRA',10000),(5,0,10000,100,200,'MAHARASTRA',9999999),(6,0,0,0,0,'KARNATAKA',3000),(7,0,3000,0,30,'KARNATAKA',5000),(8,0,5000,0,60,'KARNATAKA',8000),(9,0,8000,0,100,'KARNATAKA',10000),(10,0,10000,0,150,'KARNATAKA',15000),(11,0,15000,0,200,'KARNATAKA',9999999);
/*!40000 ALTER TABLE `professional_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_employee`
--

DROP TABLE IF EXISTS `shiro_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `e_id` bigint(20) NOT NULL,
  `su_id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_57uib236wh7omml65laon2ba2` (`e_id`),
  KEY `FK_1yylqekm7mwr2eciploncrm0w` (`su_id`),
  CONSTRAINT `FK_1yylqekm7mwr2eciploncrm0w` FOREIGN KEY (`su_id`) REFERENCES `shiro_user` (`id`),
  CONSTRAINT `FK_57uib236wh7omml65laon2ba2` FOREIGN KEY (`e_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_employee`
--

LOCK TABLES `shiro_employee` WRITE;
/*!40000 ALTER TABLE `shiro_employee` DISABLE KEYS */;
INSERT INTO `shiro_employee` VALUES (1,0,3,4,'Employer'),(2,0,4,5,'Employer'),(3,0,1,2,'Employee'),(4,0,2,3,'Employee'),(5,0,1,1,'Employer');
/*!40000 ALTER TABLE `shiro_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_role`
--

DROP TABLE IF EXISTS `shiro_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lw6fmfwdi0t4yj2lhitnqwg7b` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_role`
--

LOCK TABLES `shiro_role` WRITE;
/*!40000 ALTER TABLE `shiro_role` DISABLE KEYS */;
INSERT INTO `shiro_role` VALUES (1,2,'ROLE_SUPER'),(2,4,'ROLE_ADMIN'),(3,4,'ROLE_USER');
/*!40000 ALTER TABLE `shiro_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_role_permissions`
--

DROP TABLE IF EXISTS `shiro_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_role_permissions` (
  `shiro_role_id` bigint(20) DEFAULT NULL,
  `permissions_string` varchar(255) DEFAULT NULL,
  KEY `FK_e59mk07m63mbbdcj23gu50ncq` (`shiro_role_id`),
  CONSTRAINT `FK_e59mk07m63mbbdcj23gu50ncq` FOREIGN KEY (`shiro_role_id`) REFERENCES `shiro_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_role_permissions`
--

LOCK TABLES `shiro_role_permissions` WRITE;
/*!40000 ALTER TABLE `shiro_role_permissions` DISABLE KEYS */;
INSERT INTO `shiro_role_permissions` VALUES (1,'*'),(2,'employeeMasterPackage:*'),(2,'assets'),(2,'companyMasterPackage:*'),(2,'me'),(2,'employeeLeaves:*'),(2,'employeeAttendance:*'),(2,'employeePayout:*'),(2,'employee:*'),(3,'assets'),(3,'employeeLeaves:listMy'),(3,'e'),(3,'employeePayout:listEmployee'),(3,'employeeInvestment:*'),(3,'me:viewPayslip'),(3,'employeeLeaves:saveAll');
/*!40000 ALTER TABLE `shiro_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_user`
--

DROP TABLE IF EXISTS `shiro_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_36q32iu69w58sanmqioxbf2g1` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_user`
--

LOCK TABLES `shiro_user` WRITE;
/*!40000 ALTER TABLE `shiro_user` DISABLE KEYS */;
INSERT INTO `shiro_user` VALUES (1,1,'2016-06-06 18:12:50','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',NULL,'suser'),(2,1,'2016-06-06 18:12:50','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',NULL,'priyank@hams.co.in'),(3,1,'2016-06-06 18:12:51','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',NULL,'raj@hams.co.in'),(4,2,'2016-06-06 18:12:55','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',NULL,'mads@oceanplus.hk'),(5,2,'2016-06-06 18:12:56','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',NULL,'rupali.indulkar@ikenpersonics.com');
/*!40000 ALTER TABLE `shiro_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_user_permissions`
--

DROP TABLE IF EXISTS `shiro_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_user_permissions` (
  `shiro_user_id` bigint(20) DEFAULT NULL,
  `permissions_string` varchar(255) DEFAULT NULL,
  KEY `FK_5rrok5vgsofo9fst3l53tkx8m` (`shiro_user_id`),
  CONSTRAINT `FK_5rrok5vgsofo9fst3l53tkx8m` FOREIGN KEY (`shiro_user_id`) REFERENCES `shiro_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_user_permissions`
--

LOCK TABLES `shiro_user_permissions` WRITE;
/*!40000 ALTER TABLE `shiro_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `shiro_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_user_roles`
--

DROP TABLE IF EXISTS `shiro_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_user_roles` (
  `shiro_user_id` bigint(20) NOT NULL,
  `shiro_role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`shiro_user_id`,`shiro_role_id`),
  KEY `FK_gcsy8p8yioss6r3hr8ba2ggtn` (`shiro_role_id`),
  CONSTRAINT `FK_c16m7rr368sdh1l6xkb2001y5` FOREIGN KEY (`shiro_user_id`) REFERENCES `shiro_user` (`id`),
  CONSTRAINT `FK_gcsy8p8yioss6r3hr8ba2ggtn` FOREIGN KEY (`shiro_role_id`) REFERENCES `shiro_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_user_roles`
--

LOCK TABLES `shiro_user_roles` WRITE;
/*!40000 ALTER TABLE `shiro_user_roles` DISABLE KEYS */;
INSERT INTO `shiro_user_roles` VALUES (1,1),(2,2),(4,2),(5,2),(3,3),(4,3),(5,3);
/*!40000 ALTER TABLE `shiro_user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-06 18:19:23
