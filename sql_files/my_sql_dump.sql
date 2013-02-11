-- MySQL dump 10.13  Distrib 5.1.66, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: adedicated
-- ------------------------------------------------------
-- Server version	5.1.66

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
-- Table structure for table `bf_activities`
--

DROP TABLE IF EXISTS `bf_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_activities` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` tinyint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_activities`
--

LOCK TABLES `bf_activities` WRITE;
/*!40000 ALTER TABLE `bf_activities` DISABLE KEYS */;
INSERT INTO `bf_activities` VALUES (1,1,'logged in from: 23.24.173.62','users','2013-02-11 16:38:23',0),(2,1,'logged out from: 23.24.173.62','users','2013-02-11 16:38:51',0),(3,1,'logged in from: 173.9.132.155','users','2013-02-11 17:39:04',0),(4,1,'logged out from: 173.9.132.155','users','2013-02-11 17:41:50',0),(5,1,'logged in from: 173.9.132.155','users','2013-02-11 17:52:46',0),(6,1,'App settings saved from: 173.9.132.155','core','2013-02-11 17:53:41',0),(7,1,'logged in from: 173.9.132.155','users','2013-02-11 17:54:18',0);
/*!40000 ALTER TABLE `bf_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_campaigns`
--

DROP TABLE IF EXISTS `bf_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaigns_rt_ticket_id` int(11) NOT NULL,
  `campaigns_customerid` int(11) NOT NULL,
  `campaigns_event_start` datetime NOT NULL,
  `campaigns_event_type_id` int(11) NOT NULL,
  `campaigns_status` varchar(10) NOT NULL,
  `campaigns_priority` int(11) NOT NULL,
  `campaigns_subject` varchar(140) NOT NULL,
  `campaigns_update` varchar(140) NOT NULL,
  `campaigns_owner` varchar(25) NOT NULL DEFAULT 'SOC',
  `campaigns_eta` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_campaigns`
--

LOCK TABLES `bf_campaigns` WRITE;
/*!40000 ALTER TABLE `bf_campaigns` DISABLE KEYS */;
INSERT INTO `bf_campaigns` VALUES (1,888888,1,'2013-02-05 16:12:57',1,'New',2,'Testing the Subject Entry Field','Testing the Update Entry Field','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-05 16:13:49'),(2,888777,1,'2013-02-05 16:12:57',1,'Working',6,'Another Subject Entry Field Test','Testing the Update Entry Field again','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-06 01:26:40'),(3,888888,1,'2013-02-06 18:01:59',1,'Waiting',2,'I\'ve been waiting...','Waiting is yellow too.','SOC','2013-02-07 18:03:14',0,'2013-02-05 18:03:38','2013-02-05 18:03:23'),(4,888888,1,'2013-02-05 18:04:43',1,'Working',3,'Working on the railroad','All the live long day','SOC','2013-02-16 18:05:27',0,'2013-02-08 18:05:33','2013-02-13 18:05:38'),(5,888555,4,'2013-02-06 02:10:12',2,'Waiting',8,'dsffasdfv fasfadsfasd  sdfasd','sad dsfasdf adsf adsf ','SOC','2002-10-12 00:00:00',0,'2013-02-06 02:10:52','2013-02-06 02:10:52'),(6,888888,1,'2013-02-05 16:12:57',1,'New',2,'Testing the Subject Entry Field','Testing the Update Entry Field','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-05 16:13:49'),(7,888777,1,'2013-02-05 16:12:57',1,'Working',6,'Another Subject Entry Field Test','Testing the Update Entry Field again','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-06 01:26:40'),(8,888888,1,'2013-02-06 18:01:59',1,'Waiting',2,'I\'ve been waiting...','Waiting is yellow too.','SOC','2013-02-07 18:03:14',0,'2013-02-05 18:03:38','2013-02-05 18:03:23'),(9,888888,1,'2013-02-05 18:04:43',1,'Working',3,'Working on the railroad','All the live long day','SOC','2013-02-16 18:05:27',0,'2013-02-08 18:05:33','2013-02-13 18:05:38'),(10,888777,1,'2013-02-05 16:12:57',1,'Working',6,'Another Subject Entry Field Test','Testing the Update Entry Field again','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-06 01:26:40'),(11,888888,1,'2013-02-05 16:12:57',1,'New',2,'Testing the Subject Entry Field','Testing the Update Entry Field','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-05 16:13:49'),(12,888888,1,'2013-02-05 18:04:43',1,'Working',3,'Working on the railroad','All the live long day','SOC','2013-02-16 18:05:27',0,'2013-02-08 18:05:33','2013-02-13 18:05:38'),(13,888888,1,'2013-02-05 16:12:57',1,'New',2,'Testing the Subject Entry Field','Testing the Update Entry Field','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-05 16:13:49'),(14,888888,1,'2013-02-05 16:12:57',1,'New',2,'Testing the Subject Entry Field','Testing the Update Entry Field','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-05 16:13:49'),(15,888777,1,'2013-02-05 16:12:57',1,'Working',6,'Another Subject Entry Field Test','Testing the Update Entry Field again','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-06 01:26:40'),(16,888888,1,'2013-02-05 16:12:57',1,'New',2,'Testing the Subject Entry Field','Testing the Update Entry Field','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-05 16:13:49'),(17,888888,1,'2013-02-06 18:01:59',1,'Waiting',2,'I\'ve been waiting...','Waiting is yellow too.','SOC','2013-02-07 18:03:14',0,'2013-02-05 18:03:38','2013-02-05 18:03:23'),(18,888555,4,'2013-02-06 02:10:12',2,'Waiting',8,'dsffasdfv fasfadsfasd  sdfasd','sad dsfasdf adsf adsf ','SOC','2002-10-12 00:00:00',0,'2013-02-06 02:10:52','2013-02-06 02:10:52'),(19,888888,1,'2013-02-06 18:01:59',1,'Waiting',2,'I\'ve been waiting...','Waiting is yellow too.','SOC','2013-02-07 18:03:14',0,'2013-02-05 18:03:38','2013-02-05 18:03:23'),(20,888888,1,'2013-02-06 18:01:59',1,'Waiting',2,'I\'ve been waiting...','Waiting is yellow too.','SOC','2013-02-07 18:03:14',0,'2013-02-05 18:03:38','2013-02-05 18:03:23'),(21,888888,1,'2013-02-06 18:01:59',1,'Waiting',2,'I\'ve been waiting...','Waiting is yellow too.','SOC','2013-02-07 18:03:14',0,'2013-02-05 18:03:38','2013-02-05 18:03:23'),(22,888777,1,'2013-02-05 16:12:57',1,'Working',6,'Another Subject Entry Field Test','Testing the Update Entry Field again','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-06 01:26:40'),(23,888888,1,'2013-02-05 16:12:57',1,'New',2,'Testing the Subject Entry Field','Testing the Update Entry Field','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-05 16:13:49'),(24,888888,1,'2013-02-06 18:01:59',1,'Waiting',2,'I\'ve been waiting...','Waiting is yellow too.','SOC','2013-02-07 18:03:14',0,'2013-02-05 18:03:38','2013-02-05 18:03:23'),(25,888777,1,'2013-02-05 16:12:57',1,'Working',6,'Another Subject Entry Field Test','Testing the Update Entry Field again','SOC','2013-02-06 16:13:37',0,'2013-02-05 16:13:44','2013-02-06 01:26:40');
/*!40000 ALTER TABLE `bf_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_contact`
--

DROP TABLE IF EXISTS `bf_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email_address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_contact`
--

LOCK TABLES `bf_contact` WRITE;
/*!40000 ALTER TABLE `bf_contact` DISABLE KEYS */;
INSERT INTO `bf_contact` VALUES (1,'Corky Kaericher','corkyk@gmail.com','7542146877','Testing Emailer','tst','2013-02-11 18:21:27');
/*!40000 ALTER TABLE `bf_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_email_queue`
--

DROP TABLE IF EXISTS `bf_email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_email` varchar(128) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `alt_message` text,
  `max_attempts` int(11) NOT NULL DEFAULT '3',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_attempt` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_email_queue`
--

LOCK TABLES `bf_email_queue` WRITE;
/*!40000 ALTER TABLE `bf_email_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_login_attempts`
--

DROP TABLE IF EXISTS `bf_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_login_attempts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) NOT NULL,
  `login` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_login_attempts`
--

LOCK TABLES `bf_login_attempts` WRITE;
/*!40000 ALTER TABLE `bf_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_permissions`
--

DROP TABLE IF EXISTS `bf_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') DEFAULT 'active',
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_permissions`
--

LOCK TABLES `bf_permissions` WRITE;
/*!40000 ALTER TABLE `bf_permissions` DISABLE KEYS */;
INSERT INTO `bf_permissions` VALUES (2,'Site.Content.View','Allow users to view the Content Context','active'),(3,'Site.Reports.View','Allow users to view the Reports Context','active'),(4,'Site.Settings.View','Allow users to view the Settings Context','active'),(5,'Site.Developer.View','Allow users to view the Developer Context','active'),(6,'Bonfire.Roles.Manage','Allow users to manage the user Roles','active'),(7,'Bonfire.Users.Manage','Allow users to manage the site Users','active'),(8,'Bonfire.Users.View','Allow users access to the User Settings','active'),(9,'Bonfire.Users.Add','Allow users to add new Users','active'),(10,'Bonfire.Database.Manage','Allow users to manage the Database settings','active'),(11,'Bonfire.Emailer.Manage','Allow users to manage the Emailer settings','active'),(12,'Bonfire.Logs.View','Allow users access to the Log details','active'),(13,'Bonfire.Logs.Manage','Allow users to manage the Log files','active'),(14,'Bonfire.Emailer.View','Allow users access to the Emailer settings','active'),(15,'Site.Signin.Offline','Allow users to login to the site when the site is offline','active'),(16,'Bonfire.Permissions.View','Allow access to view the Permissions menu unders Settings Context','active'),(17,'Bonfire.Permissions.Manage','Allow access to manage the Permissions in the system','active'),(18,'Bonfire.Roles.Delete','Allow users to delete user Roles','active'),(19,'Bonfire.Modules.Add','Allow creation of modules with the builder.','active'),(20,'Bonfire.Modules.Delete','Allow deletion of modules.','active'),(21,'Permissions.Administrator.Manage','To manage the access control permissions for the Administrator role.','active'),(22,'Permissions.Editor.Manage','To manage the access control permissions for the Editor role.','active'),(50,'Bonfire.Roles.Add','To add New Roles','active'),(24,'Permissions.User.Manage','To manage the access control permissions for the User role.','active'),(25,'Permissions.Developer.Manage','To manage the access control permissions for the Developer role.','active'),(49,'Bonfire.Profiler.View','To view the Console Profiler Bar.','active'),(27,'Activities.Own.View','To view the users own activity logs','active'),(28,'Activities.Own.Delete','To delete the users own activity logs','active'),(29,'Activities.User.View','To view the user activity logs','active'),(30,'Activities.User.Delete','To delete the user activity logs, except own','active'),(31,'Activities.Module.View','To view the module activity logs','active'),(32,'Activities.Module.Delete','To delete the module activity logs','active'),(33,'Activities.Date.View','To view the users own activity logs','active'),(34,'Activities.Date.Delete','To delete the dated activity logs','active'),(35,'Bonfire.UI.Manage','Manage the Bonfire UI settings','active'),(36,'Bonfire.Settings.View','To view the site settings page.','active'),(37,'Bonfire.Settings.Manage','To manage the site settings.','active'),(38,'Bonfire.Activities.View','To view the Activities menu.','active'),(39,'Bonfire.Database.View','To view the Database menu.','active'),(40,'Bonfire.Migrations.View','To view the Migrations menu.','active'),(41,'Bonfire.Builder.View','To view the Modulebuilder menu.','active'),(42,'Bonfire.Roles.View','To view the Roles menu.','active'),(43,'Bonfire.Sysinfo.View','To view the System Information page.','active'),(44,'Bonfire.Translate.Manage','To manage the Language Translation.','active'),(45,'Bonfire.Translate.View','To view the Language Translate menu.','active'),(46,'Bonfire.UI.View','To view the UI/Keyboard Shortcut menu.','active');
/*!40000 ALTER TABLE `bf_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_role_permissions`
--

DROP TABLE IF EXISTS `bf_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_role_permissions`
--

LOCK TABLES `bf_role_permissions` WRITE;
/*!40000 ALTER TABLE `bf_role_permissions` DISABLE KEYS */;
INSERT INTO `bf_role_permissions` VALUES (1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,24),(1,25),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,49),(1,50),(2,2),(2,3),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(6,19),(6,20),(6,21),(6,22),(6,24),(6,25),(6,27),(6,28),(6,29),(6,30),(6,31),(6,32),(6,33),(6,34),(6,35),(6,36),(6,37),(6,38),(6,39),(6,40),(6,41),(6,42),(6,43),(6,44),(6,45),(6,46),(6,49),(6,50);
/*!40000 ALTER TABLE `bf_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_roles`
--

DROP TABLE IF EXISTS `bf_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `default_context` varchar(255) NOT NULL DEFAULT 'content',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_roles`
--

LOCK TABLES `bf_roles` WRITE;
/*!40000 ALTER TABLE `bf_roles` DISABLE KEYS */;
INSERT INTO `bf_roles` VALUES (1,'Administrator','Has full control over every aspect of the site.',0,0,'',0,'content'),(2,'Editor','Can handle day-to-day management, but does not have full power.',0,1,'',0,'content'),(4,'User','This is the default user with access to login.',1,0,'',0,'content'),(6,'Developer','Developers typically are the only ones that can access the developer tools. Otherwise identical to Administrators, at least until the site is handed off.',0,1,'',0,'content');
/*!40000 ALTER TABLE `bf_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_schema_version`
--

DROP TABLE IF EXISTS `bf_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_schema_version` (
  `type` varchar(40) NOT NULL,
  `version` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_schema_version`
--

LOCK TABLES `bf_schema_version` WRITE;
/*!40000 ALTER TABLE `bf_schema_version` DISABLE KEYS */;
INSERT INTO `bf_schema_version` VALUES ('core',37),('app_',0);
/*!40000 ALTER TABLE `bf_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_sessions`
--

DROP TABLE IF EXISTS `bf_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_sessions`
--

LOCK TABLES `bf_sessions` WRITE;
/*!40000 ALTER TABLE `bf_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_settings`
--

DROP TABLE IF EXISTS `bf_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_settings` (
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `unique - name` (`name`),
  KEY `index - name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_settings`
--

LOCK TABLES `bf_settings` WRITE;
/*!40000 ALTER TABLE `bf_settings` DISABLE KEYS */;
INSERT INTO `bf_settings` VALUES ('site.title','core','PLX MitMan 1.0'),('site.system_email','core','admin@adedicated.com'),('site.status','core','1'),('site.list_limit','core','25'),('site.show_profiler','core','1'),('site.show_front_profiler','core','1'),('updates.do_check','core','1'),('updates.bleeding_edge','core','1'),('auth.allow_register','core','0'),('auth.login_type','core','username'),('auth.use_usernames','core','1'),('auth.allow_remember','core','1'),('auth.remember_length','core','1209600'),('auth.do_login_redirect','core','1'),('auth.use_extended_profile','core','0'),('sender_email','email','admin@adedicated.com'),('protocol','email','mail'),('mailpath','email','/usr/sbin/sendmail'),('smtp_host','email',''),('smtp_user','email',''),('smtp_pass','email',''),('smtp_port','email',''),('smtp_timeout','email',''),('mailtype','email','text'),('site.languages','core','a:3:{i:0;s:7:\"english\";i:1;s:10:\"portuguese\";i:2;s:7:\"persian\";}'),('auth.allow_name_change','core','0'),('auth.name_change_frequency','core','1'),('auth.name_change_limit','core','1'),('auth.password_min_length','core','8'),('auth.password_force_numbers','core','1'),('auth.password_force_symbols','core','1'),('auth.password_force_mixed_case','core','1'),('form_save','core.ui','ctrl+s/⌘+s'),('goto_content','core.ui','alt+c'),('auth.user_activation_method','core','2'),('auth.password_show_labels','core','1'),('password_iterations','users','8');
/*!40000 ALTER TABLE `bf_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_user_cookies`
--

DROP TABLE IF EXISTS `bf_user_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_user_cookies` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL,
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_user_cookies`
--

LOCK TABLES `bf_user_cookies` WRITE;
/*!40000 ALTER TABLE `bf_user_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_user_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_user_meta`
--

DROP TABLE IF EXISTS `bf_user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_user_meta` (
  `meta_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text,
  PRIMARY KEY (`meta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_user_meta`
--

LOCK TABLES `bf_user_meta` WRITE;
/*!40000 ALTER TABLE `bf_user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_users`
--

DROP TABLE IF EXISTS `bf_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(120) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password_hash` char(60) NOT NULL,
  `reset_hash` varchar(40) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_message` varchar(255) DEFAULT NULL,
  `reset_by` int(10) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT '',
  `display_name_changed` date DEFAULT NULL,
  `timezone` char(4) NOT NULL DEFAULT 'UM6',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activate_hash` varchar(40) NOT NULL DEFAULT '',
  `password_iterations` int(4) NOT NULL,
  `force_password_reset` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_users`
--

LOCK TABLES `bf_users` WRITE;
/*!40000 ALTER TABLE `bf_users` DISABLE KEYS */;
INSERT INTO `bf_users` VALUES (1,1,'admin@adedicated.com','admin','$2a$08$iQben7vsQimpp3SM9zYrIuAeEYeNS.sJFUN2WTD8i2YJ8GLeM.WB2','','2013-02-11 17:54:18','173.9.132.155','2013-02-11 16:35:57',0,0,NULL,0,'admin',NULL,'UM6','english',1,'',8,0);
/*!40000 ALTER TABLE `bf_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-11 21:33:07
