# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20-0ubuntu0.16.04.1)
# Database: potato
# Generation Time: 2017-11-06 21:06:30 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2017-11-04 10:29:27','2017-11-04 10:29:27','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://192.168.11.100','yes'),
	(2,'home','http://192.168.11.100','yes'),
	(3,'blogname','This Is A Test','yes'),
	(4,'blogdescription','Just another WordPress site','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','derekmyjar@gmail.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','0','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','F j, Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','','yes'),
	(29,'rewrite_rules','','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:0:{}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','twentyseventeen','yes'),
	(41,'stylesheet','twentyseventeen','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','38590','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','0','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','posts','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:9:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}','yes'),
	(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','','yes'),
	(83,'page_for_posts','36','yes'),
	(84,'page_on_front','36','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'initial_db_version','38590','yes'),
	(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(93,'fresh_site','0','yes'),
	(94,'widget_search','a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}}','yes'),
	(95,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}','yes'),
	(100,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(104,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'cron','a:4:{i:1510007371;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1510050618;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510086572;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(110,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.3\";s:7:\"version\";s:5:\"4.8.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1509994478;s:15:\"version_checked\";s:5:\"4.8.3\";s:12:\"translations\";a:0:{}}','no'),
	(111,'auth_key','R]{FO>vzaJlbO+6w2XB6XgIoI+gA.(Vh+|bfdl6||vI4}l9W46?Lr-x?N?}wwDKa','no'),
	(112,'auth_salt','9 ?r)8/mrVa(ChuQnmTON/OUm< 1QG`xs&+|7vix]>{L@>U%! ai:7bYL0jYOE@Z','no'),
	(113,'logged_in_key','(3G95J:=WVtd@UT{}EyVn34^m(BwdGtW@G.f5FblA4_2^$uyLv/zptQk0zP/9YJ{','no'),
	(114,'logged_in_salt','vgRv{YCKH`c[`WSk:Y&|2hb=_v@+}r$`71nc%|}/PVwGmE}PhG!1kr*Lir](d /_','no'),
	(115,'nonce_key','I_Nn-Mtm4WyIrV?ncnU/8w(vvHN<,HFtK<NKB8YH6]40w$k]#}().g9v<| %/Z( ','no'),
	(116,'nonce_salt','5m5&(mZA1nO#%]ipEBJq}&|yXh.5!{k&S|4YrH;/41]b_^eUb1zRvP/8vzpoLOr[','no'),
	(117,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1509994482;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),
	(121,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1510000168;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(122,'_site_transient_timeout_browser_0f568b11a74d5c4fce6dae540063a05a','1510396178','no'),
	(123,'_site_transient_browser_0f568b11a74d5c4fce6dae540063a05a','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"61.0.3163.100\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(126,'can_compress_scripts','1','no'),
	(129,'theme_mods_twentyseventeen','a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:37;s:7:\"panel_2\";i:34;s:7:\"panel_3\";i:36;s:7:\"panel_4\";i:35;s:11:\"custom_logo\";i:39;}','yes'),
	(147,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1510037681','no'),
	(148,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div><div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div>','no'),
	(149,'_site_transient_timeout_community-events-ebf7cb708c8f7c460c4cb41eb8634aa4','1510037682','no'),
	(150,'_site_transient_community-events-ebf7cb708c8f7c460c4cb41eb8634aa4','a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"192.168.11.0\";}s:6:\"events\";a:0:{}}','no'),
	(153,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes'),
	(155,'_site_transient_timeout_theme_roots','1510001968','no'),
	(156,'_site_transient_theme_roots','a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),
	(160,'_transient_timeout_oembed_1c84651ec9aa70c2f295179d6bbe552d','1510086674','no'),
	(161,'_transient_oembed_1c84651ec9aa70c2f295179d6bbe552d','O:8:\"stdClass\":10:{s:7:\"version\";s:3:\"1.0\";s:13:\"provider_name\";s:14:\"This Is A Test\";s:12:\"provider_url\";s:21:\"http://192.168.11.100\";s:11:\"author_name\";s:6:\"potato\";s:10:\"author_url\";s:31:\"http://192.168.11.100/?author=1\";s:5:\"title\";s:4:\"Home\";s:4:\"type\";s:4:\"rich\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:4:\"html\";s:1844:\"<blockquote class=\"wp-embedded-content\"><a href=\"http://192.168.11.100/\">Home</a></blockquote>\n<script type=\'text/javascript\'>\n<!--//--><![CDATA[//><!--\n		!function(a,b){\"use strict\";function c(){if(!e){e=!0;var a,c,d,f,g=-1!==navigator.appVersion.indexOf(\"MSIE 10\"),h=!!navigator.userAgent.match(/Trident.*rv:11\\./),i=b.querySelectorAll(\"iframe.wp-embedded-content\");for(c=0;c<i.length;c++){if(d=i[c],!d.getAttribute(\"data-secret\"))f=Math.random().toString(36).substr(2,10),d.src+=\"#?secret=\"+f,d.setAttribute(\"data-secret\",f);if(g||h)a=d.cloneNode(!0),a.removeAttribute(\"security\"),d.parentNode.replaceChild(a,d)}}}var d=!1,e=!1;if(b.querySelector)if(a.addEventListener)d=!0;if(a.wp=a.wp||{},!a.wp.receiveEmbedMessage)if(a.wp.receiveEmbedMessage=function(c){var d=c.data;if(d.secret||d.message||d.value)if(!/[^a-zA-Z0-9]/.test(d.secret)){var e,f,g,h,i,j=b.querySelectorAll(\'iframe[data-secret=\"\'+d.secret+\'\"]\'),k=b.querySelectorAll(\'blockquote[data-secret=\"\'+d.secret+\'\"]\');for(e=0;e<k.length;e++)k[e].style.display=\"none\";for(e=0;e<j.length;e++)if(f=j[e],c.source===f.contentWindow){if(f.removeAttribute(\"style\"),\"height\"===d.message){if(g=parseInt(d.value,10),g>1e3)g=1e3;else if(~~g<200)g=200;f.height=g}if(\"link\"===d.message)if(h=b.createElement(\"a\"),i=b.createElement(\"a\"),h.href=f.getAttribute(\"src\"),i.href=d.value,i.host===h.host)if(b.activeElement===f)a.top.location.href=d.value}else;}},d)a.addEventListener(\"message\",a.wp.receiveEmbedMessage,!1),b.addEventListener(\"DOMContentLoaded\",c,!1),a.addEventListener(\"load\",c,!1)}(window,document);\n//--><!]]>\n</script><iframe sandbox=\"allow-scripts\" security=\"restricted\" src=\"http://192.168.11.100/?embed=true\" width=\"600\" height=\"338\" title=\"&#8220;Home&#8221; &#8212; This Is A Test\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" class=\"wp-embedded-content\"></iframe>\";}','no'),
	(169,'_transient_is_multi_author','0','yes');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,4,'_customize_draft_post_name','home'),
	(3,5,'_customize_draft_post_name','about'),
	(4,6,'_customize_draft_post_name','contact'),
	(5,7,'_customize_draft_post_name','blog'),
	(6,8,'_customize_draft_post_name','a-homepage-section'),
	(7,10,'_customize_draft_post_name','home'),
	(8,11,'_customize_draft_post_name','about'),
	(9,12,'_customize_draft_post_name','contact'),
	(10,13,'_customize_draft_post_name','blog'),
	(11,14,'_customize_draft_post_name','a-homepage-section'),
	(14,17,'_wp_attached_file','2017/11/espresso.jpg'),
	(15,17,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/espresso.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(16,17,'_starter_content_theme','twentyseventeen'),
	(17,17,'_customize_draft_post_name','espresso'),
	(18,18,'_wp_attached_file','2017/11/sandwich.jpg'),
	(19,18,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/sandwich.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(20,18,'_starter_content_theme','twentyseventeen'),
	(21,18,'_customize_draft_post_name','sandwich'),
	(22,19,'_wp_attached_file','2017/11/coffee.jpg'),
	(23,19,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2017/11/coffee.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(24,19,'_starter_content_theme','twentyseventeen'),
	(25,19,'_customize_draft_post_name','coffee'),
	(28,21,'_wp_attached_file','2017/11/espresso.jpg'),
	(29,21,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/espresso.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(30,21,'_starter_content_theme','twentyseventeen'),
	(31,21,'_customize_draft_post_name','espresso'),
	(32,22,'_wp_attached_file','2017/11/sandwich.jpg'),
	(33,22,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/sandwich.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(34,22,'_starter_content_theme','twentyseventeen'),
	(35,22,'_customize_draft_post_name','sandwich'),
	(36,23,'_wp_attached_file','2017/11/coffee.jpg'),
	(37,23,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2017/11/coffee.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(38,23,'_starter_content_theme','twentyseventeen'),
	(39,23,'_customize_draft_post_name','coffee'),
	(40,24,'_customize_draft_post_name','home'),
	(41,25,'_thumbnail_id','22'),
	(42,25,'_customize_draft_post_name','about'),
	(43,26,'_thumbnail_id','21'),
	(44,26,'_customize_draft_post_name','contact'),
	(45,27,'_thumbnail_id','23'),
	(46,27,'_customize_draft_post_name','blog'),
	(47,28,'_thumbnail_id','21'),
	(48,28,'_customize_draft_post_name','a-homepage-section'),
	(49,30,'_wp_attached_file','2017/11/espresso-1.jpg'),
	(50,30,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/espresso-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(51,30,'_starter_content_theme','twentyseventeen'),
	(53,31,'_wp_attached_file','2017/11/sandwich-1.jpg'),
	(54,31,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/sandwich-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(55,31,'_starter_content_theme','twentyseventeen'),
	(57,32,'_wp_attached_file','2017/11/coffee-1.jpg'),
	(58,32,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/coffee-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(59,32,'_starter_content_theme','twentyseventeen'),
	(62,34,'_thumbnail_id','31'),
	(64,35,'_thumbnail_id','30'),
	(66,36,'_thumbnail_id','32'),
	(68,37,'_thumbnail_id','30'),
	(70,39,'_wp_attached_file','2017/11/logo.png'),
	(71,39,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:128;s:6:\"height\";i:111;s:4:\"file\";s:16:\"2017/11/logo.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(72,45,'_menu_item_type','custom'),
	(73,45,'_menu_item_menu_item_parent','0'),
	(74,45,'_menu_item_object_id','45'),
	(75,45,'_menu_item_object','custom'),
	(76,45,'_menu_item_target',''),
	(77,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(78,45,'_menu_item_xfn',''),
	(79,45,'_menu_item_url','http://192.168.11.100/'),
	(80,46,'_menu_item_type','post_type'),
	(81,46,'_menu_item_menu_item_parent','0'),
	(82,46,'_menu_item_object_id','34'),
	(83,46,'_menu_item_object','page'),
	(84,46,'_menu_item_target',''),
	(85,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(86,46,'_menu_item_xfn',''),
	(87,46,'_menu_item_url',''),
	(88,47,'_menu_item_type','post_type'),
	(89,47,'_menu_item_menu_item_parent','0'),
	(90,47,'_menu_item_object_id','36'),
	(91,47,'_menu_item_object','page'),
	(92,47,'_menu_item_target',''),
	(93,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(94,47,'_menu_item_xfn',''),
	(95,47,'_menu_item_url',''),
	(96,48,'_menu_item_type','post_type'),
	(97,48,'_menu_item_menu_item_parent','0'),
	(98,48,'_menu_item_object_id','35'),
	(99,48,'_menu_item_object','page'),
	(100,48,'_menu_item_target',''),
	(101,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(102,48,'_menu_item_xfn',''),
	(103,48,'_menu_item_url',''),
	(104,49,'_menu_item_type','custom'),
	(105,49,'_menu_item_menu_item_parent','0'),
	(106,49,'_menu_item_object_id','49'),
	(107,49,'_menu_item_object','custom'),
	(108,49,'_menu_item_target',''),
	(109,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(110,49,'_menu_item_xfn',''),
	(111,49,'_menu_item_url','https://www.yelp.com'),
	(112,50,'_menu_item_type','custom'),
	(113,50,'_menu_item_menu_item_parent','0'),
	(114,50,'_menu_item_object_id','50'),
	(115,50,'_menu_item_object','custom'),
	(116,50,'_menu_item_target',''),
	(117,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(118,50,'_menu_item_xfn',''),
	(119,50,'_menu_item_url','https://www.facebook.com/wordpress'),
	(120,51,'_menu_item_type','custom'),
	(121,51,'_menu_item_menu_item_parent','0'),
	(122,51,'_menu_item_object_id','51'),
	(123,51,'_menu_item_object','custom'),
	(124,51,'_menu_item_target',''),
	(125,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(126,51,'_menu_item_xfn',''),
	(127,51,'_menu_item_url','https://twitter.com/wordpress'),
	(128,52,'_menu_item_type','custom'),
	(129,52,'_menu_item_menu_item_parent','0'),
	(130,52,'_menu_item_object_id','52'),
	(131,52,'_menu_item_object','custom'),
	(132,52,'_menu_item_target',''),
	(133,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(134,52,'_menu_item_xfn',''),
	(135,52,'_menu_item_url','https://www.instagram.com/explore/tags/wordcamp/'),
	(136,53,'_menu_item_type','custom'),
	(137,53,'_menu_item_menu_item_parent','0'),
	(138,53,'_menu_item_object_id','53'),
	(139,53,'_menu_item_object','custom'),
	(140,53,'_menu_item_target',''),
	(141,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(142,53,'_menu_item_xfn',''),
	(143,53,'_menu_item_url','mailto:wordpress@example.com'),
	(144,38,'_wp_trash_meta_status','publish'),
	(145,38,'_wp_trash_meta_time','1509994824'),
	(146,54,'_edit_last','1'),
	(147,54,'_edit_lock','1510000116:1'),
	(148,54,'_wp_trash_meta_status','publish'),
	(149,54,'_wp_trash_meta_time','1510000260'),
	(150,54,'_wp_desired_post_slug','54-2'),
	(151,56,'_oembed_4be910c7939d87fe81d66934177a89b8','<blockquote class=\"wp-embedded-content\" data-secret=\"29m7mEZBms\"><a href=\"http://192.168.11.100/\">Home</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://192.168.11.100/?embed=true#?secret=29m7mEZBms\" data-secret=\"29m7mEZBms\" width=\"525\" height=\"296\" title=\"&#8220;Home&#8221; &#8212; This Is A Test\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
	(152,56,'_oembed_time_4be910c7939d87fe81d66934177a89b8','1510000269'),
	(153,56,'_edit_last','1'),
	(155,56,'_edit_lock','1510000227:1'),
	(156,58,'_wp_trash_meta_status','publish'),
	(157,58,'_wp_trash_meta_time','1510000345'),
	(158,59,'_wp_trash_meta_status','publish'),
	(159,59,'_wp_trash_meta_time','1510000354'),
	(160,60,'_edit_last','1'),
	(161,60,'_edit_lock','1510000358:1'),
	(163,62,'_oembed_48f56272dbd25669563a6a8cca70cc8c','{{unknown}}'),
	(164,62,'_edit_last','1'),
	(166,62,'_edit_lock','1510000396:1'),
	(167,64,'_edit_last','1'),
	(169,64,'_edit_lock','1510000546:1');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2017-11-04 10:29:27','2017-11-04 10:29:27','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2017-11-04 10:29:27','2017-11-04 10:29:27','',0,'http://192.168.11.100/?p=1',0,'post','',1),
	(2,1,'2017-11-04 10:29:27','2017-11-04 10:29:27','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://192.168.11.100/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2017-11-04 10:29:27','2017-11-04 10:29:27','',0,'http://192.168.11.100/?page_id=2',0,'page','',0),
	(3,1,'2017-11-04 10:29:38','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2017-11-04 10:29:38','0000-00-00 00:00:00','',0,'http://192.168.11.100/?p=3',0,'post','',0),
	(4,1,'2017-11-04 10:31:21','0000-00-00 00:00:00','Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.','Home','','auto-draft','closed','closed','','','','','2017-11-04 10:30:20','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=4',0,'page','',0),
	(5,1,'2017-11-04 10:31:21','0000-00-00 00:00:00','You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.','About','','auto-draft','closed','closed','','','','','2017-11-04 10:30:20','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=5',0,'page','',0),
	(6,1,'2017-11-04 10:31:21','0000-00-00 00:00:00','This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.','Contact','','auto-draft','closed','closed','','','','','2017-11-04 10:30:20','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=6',0,'page','',0),
	(7,1,'2017-11-04 10:31:21','0000-00-00 00:00:00','','Blog','','auto-draft','closed','closed','','','','','2017-11-04 10:30:20','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=7',0,'page','',0),
	(8,1,'2017-11-04 10:31:21','0000-00-00 00:00:00','This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.','A homepage section','','auto-draft','closed','closed','','','','','2017-11-04 10:30:20','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=8',0,'page','',0),
	(9,1,'2017-11-04 10:31:21','0000-00-00 00:00:00','{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c35df56792a2daa6c17b40859c73a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d9a13a9fe91c5e24d0bb326e30cfff1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4054d93c3b5eecc44d54881352c6ff4e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c35df56792a2daa6c17b40859c73a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4054d93c3b5eecc44d54881352c6ff4e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d9a13a9fe91c5e24d0bb326e30cfff1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.11.100/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 5,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 4,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','auto-draft','closed','closed','','d2787566-83bb-4957-9a23-e3697b4e98d1','','','2017-11-04 10:31:21','2017-11-04 10:31:21','',0,'http://192.168.11.100/?p=9',0,'customize_changeset','',0),
	(10,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.','Home','','auto-draft','closed','closed','','','','','2017-11-04 10:40:16','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=10',0,'page','',0),
	(11,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.','About','','auto-draft','closed','closed','','','','','2017-11-04 10:40:16','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=11',0,'page','',0),
	(12,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.','Contact','','auto-draft','closed','closed','','','','','2017-11-04 10:40:16','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=12',0,'page','',0),
	(13,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','','Blog','','auto-draft','closed','closed','','','','','2017-11-04 10:40:16','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=13',0,'page','',0),
	(14,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.','A homepage section','','auto-draft','closed','closed','','','','','2017-11-04 10:40:16','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=14',0,'page','',0),
	(15,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c35df56792a2daa6c17b40859c73a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d9a13a9fe91c5e24d0bb326e30cfff1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4054d93c3b5eecc44d54881352c6ff4e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c35df56792a2daa6c17b40859c73a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4054d93c3b5eecc44d54881352c6ff4e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d9a13a9fe91c5e24d0bb326e30cfff1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            10,\n            11,\n            12,\n            13,\n            14,\n            17,\n            18,\n            19\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.11.100/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 11,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 13,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 12,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 14,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::custom_logo\": {\n        \"value\": 16,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','auto-draft','closed','closed','','a80ceb76-ac04-4759-8e1e-23a3f6b9fa19','','','2017-11-04 10:48:27','2017-11-04 10:48:27','',0,'http://192.168.11.100/?p=15',0,'customize_changeset','',0),
	(17,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','','Espresso','','auto-draft','open','closed','','','','','2017-11-04 10:48:27','0000-00-00 00:00:00','',0,'http://192.168.11.100/wp-content/uploads/2017/11/espresso.jpg',0,'attachment','image/jpeg',0),
	(18,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','','Sandwich','','auto-draft','open','closed','','','','','2017-11-04 10:48:27','0000-00-00 00:00:00','',0,'http://192.168.11.100/wp-content/uploads/2017/11/sandwich.jpg',0,'attachment','image/jpeg',0),
	(19,1,'2017-11-04 10:48:27','0000-00-00 00:00:00','','Coffee','','auto-draft','open','closed','','','','','2017-11-04 10:48:27','0000-00-00 00:00:00','',0,'http://192.168.11.100/wp-content/uploads/2017/11/coffee.jpg',0,'attachment','image/jpeg',0),
	(21,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','','Espresso','','auto-draft','open','closed','','','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/wp-content/uploads/2017/11/espresso.jpg',0,'attachment','image/jpeg',0),
	(22,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','','Sandwich','','auto-draft','open','closed','','','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/wp-content/uploads/2017/11/sandwich.jpg',0,'attachment','image/jpeg',0),
	(23,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','','Coffee','','auto-draft','open','closed','','','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/wp-content/uploads/2017/11/coffee.jpg',0,'attachment','image/jpeg',0),
	(24,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.','Home','','auto-draft','closed','closed','','','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=24',0,'page','',0),
	(25,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.','About','','auto-draft','closed','closed','','','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=25',0,'page','',0),
	(26,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.','Contact','','auto-draft','closed','closed','','','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=26',0,'page','',0),
	(27,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','','Blog','','auto-draft','closed','closed','','','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=27',0,'page','',0),
	(28,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.','A homepage section','','auto-draft','closed','closed','','','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/?page_id=28',0,'page','',0),
	(29,1,'2017-11-06 18:59:23','0000-00-00 00:00:00','{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c35df56792a2daa6c17b40859c73a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d9a13a9fe91c5e24d0bb326e30cfff1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4054d93c3b5eecc44d54881352c6ff4e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c35df56792a2daa6c17b40859c73a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4054d93c3b5eecc44d54881352c6ff4e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d9a13a9fe91c5e24d0bb326e30cfff1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            21,\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.11.100/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 25,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 27,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 26,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 24,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 27,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 28,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 25,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 27,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','auto-draft','closed','closed','','6ccfcefb-6b9b-440b-84cd-cb71f088b792','','','2017-11-06 18:59:23','0000-00-00 00:00:00','',0,'http://192.168.11.100/?p=29',0,'customize_changeset','',0),
	(30,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Espresso','','inherit','open','closed','','espresso','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/wp-content/uploads/2017/11/espresso-1.jpg',0,'attachment','image/jpeg',0),
	(31,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Sandwich','','inherit','open','closed','','sandwich','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/wp-content/uploads/2017/11/sandwich-1.jpg',0,'attachment','image/jpeg',0),
	(32,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Coffee','','inherit','open','closed','','coffee','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/wp-content/uploads/2017/11/coffee-1.jpg',0,'attachment','image/jpeg',0),
	(33,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.','Home','','publish','closed','closed','','home','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?page_id=33',0,'page','',0),
	(34,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.','About','','publish','closed','closed','','about','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?page_id=34',0,'page','',0),
	(35,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.','Contact','','publish','closed','closed','','contact','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?page_id=35',0,'page','',0),
	(36,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Blog','','publish','closed','closed','','blog','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?page_id=36',0,'page','',0),
	(37,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.','A homepage section','','publish','closed','closed','','a-homepage-section','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?page_id=37',0,'page','',0),
	(38,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c35df56792a2daa6c17b40859c73a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d9a13a9fe91c5e24d0bb326e30cfff1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4054d93c3b5eecc44d54881352c6ff4e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c35df56792a2daa6c17b40859c73a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4054d93c3b5eecc44d54881352c6ff4e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6d9a13a9fe91c5e24d0bb326e30cfff1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Top Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.11.100/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 34,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 36,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 35,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 33,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 36,\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 37,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 34,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::custom_logo\": {\n        \"value\": 39,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','8040051e-7be9-43d4-a7b6-1dc357c914b4','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=38',0,'customize_changeset','',0),
	(39,1,'2017-11-06 18:59:48','2017-11-06 18:59:48','','logo','','inherit','open','closed','','logo','','','2017-11-06 18:59:48','2017-11-06 18:59:48','',0,'http://192.168.11.100/wp-content/uploads/2017/11/logo.png',0,'attachment','image/png',0),
	(40,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.','Home','','inherit','closed','closed','','33-revision-v1','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',33,'http://192.168.11.100/?p=40',0,'revision','',0),
	(41,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.','About','','inherit','closed','closed','','34-revision-v1','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',34,'http://192.168.11.100/?p=41',0,'revision','',0),
	(42,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.','Contact','','inherit','closed','closed','','35-revision-v1','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',35,'http://192.168.11.100/?p=42',0,'revision','',0),
	(43,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Blog','','inherit','closed','closed','','36-revision-v1','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',36,'http://192.168.11.100/?p=43',0,'revision','',0),
	(44,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.','A homepage section','','inherit','closed','closed','','37-revision-v1','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',37,'http://192.168.11.100/?p=44',0,'revision','',0),
	(45,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Home','','publish','closed','closed','','home','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=45',0,'nav_menu_item','',0),
	(46,1,'2017-11-06 19:00:24','2017-11-06 19:00:24',' ','','','publish','closed','closed','','46','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=46',1,'nav_menu_item','',0),
	(47,1,'2017-11-06 19:00:24','2017-11-06 19:00:24',' ','','','publish','closed','closed','','47','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=47',2,'nav_menu_item','',0),
	(48,1,'2017-11-06 19:00:24','2017-11-06 19:00:24',' ','','','publish','closed','closed','','48','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=48',3,'nav_menu_item','',0),
	(49,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Yelp','','publish','closed','closed','','yelp','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=49',0,'nav_menu_item','',0),
	(50,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Facebook','','publish','closed','closed','','facebook','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=50',1,'nav_menu_item','',0),
	(51,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Twitter','','publish','closed','closed','','twitter','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=51',2,'nav_menu_item','',0),
	(52,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Instagram','','publish','closed','closed','','instagram','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=52',3,'nav_menu_item','',0),
	(53,1,'2017-11-06 19:00:24','2017-11-06 19:00:24','','Email','','publish','closed','closed','','email','','','2017-11-06 19:00:24','2017-11-06 19:00:24','',0,'http://192.168.11.100/?p=53',4,'nav_menu_item','',0),
	(54,1,'2017-11-06 20:30:28','2017-11-06 20:30:28','<img class=\"aligncenter size-medium\" src=\"https://i.redd.it/2i7zwa44uspy.gif\" width=\"1100\" height=\"843\" />','','','trash','closed','closed','','54-2__trashed','','','2017-11-06 20:31:00','2017-11-06 20:31:00','',0,'http://192.168.11.100/?page_id=54',0,'page','',0),
	(55,1,'2017-11-06 20:30:28','2017-11-06 20:30:28','<img class=\"aligncenter size-medium\" src=\"https://i.redd.it/2i7zwa44uspy.gif\" width=\"1100\" height=\"843\" />','','','inherit','closed','closed','','54-revision-v1','','','2017-11-06 20:30:28','2017-11-06 20:30:28','',54,'http://192.168.11.100/?p=55',0,'revision','',0),
	(56,1,'2017-11-06 20:31:25','2017-11-06 20:31:25','<img class=\"alignnone size-medium\" src=\"https://i.redd.it/2i7zwa44uspy.gif\" width=\"1100\" height=\"843\" />','','','publish','open','open','','56','','','2017-11-06 20:31:25','2017-11-06 20:31:25','',0,'http://192.168.11.100/?p=56',0,'post','',0),
	(57,1,'2017-11-06 20:31:25','2017-11-06 20:31:25','<img class=\"alignnone size-medium\" src=\"https://i.redd.it/2i7zwa44uspy.gif\" width=\"1100\" height=\"843\" />','','','inherit','closed','closed','','56-revision-v1','','','2017-11-06 20:31:25','2017-11-06 20:31:25','',56,'http://192.168.11.100/?p=57',0,'revision','',0),
	(58,1,'2017-11-06 20:32:25','2017-11-06 20:32:25','{\n    \"page_on_front\": {\n        \"value\": \"36\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','682b76d3-90cc-4614-86b8-e47bc4934712','','','2017-11-06 20:32:25','2017-11-06 20:32:25','',0,'http://192.168.11.100/?p=58',0,'customize_changeset','',0),
	(59,1,'2017-11-06 20:32:34','2017-11-06 20:32:34','{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','4318b313-061a-49a0-a636-0c2c3ceb9018','','','2017-11-06 20:32:34','2017-11-06 20:32:34','',0,'http://192.168.11.100/?p=59',0,'customize_changeset','',0),
	(60,1,'2017-11-06 20:34:53','2017-11-06 20:34:53','<img class=\"alignnone size-medium\" src=\"https://media.discordapp.net/attachments/208436903735853057/351146400341426176/13102014_135121_image_498814.jpg\" width=\"500\" height=\"375\" />','','','publish','open','open','','60','','','2017-11-06 20:34:53','2017-11-06 20:34:53','',0,'http://192.168.11.100/?p=60',0,'post','',0),
	(61,1,'2017-11-06 20:34:53','2017-11-06 20:34:53','<img class=\"alignnone size-medium\" src=\"https://media.discordapp.net/attachments/208436903735853057/351146400341426176/13102014_135121_image_498814.jpg\" width=\"500\" height=\"375\" />','','','inherit','closed','closed','','60-revision-v1','','','2017-11-06 20:34:53','2017-11-06 20:34:53','',60,'http://192.168.11.100/?p=61',0,'revision','',0),
	(62,1,'2017-11-06 20:35:16','2017-11-06 20:35:16','<img class=\"alignnone size-medium\" src=\"https://cdn.discordapp.com/attachments/297636262196805632/375963313999314956/unknown.png\" width=\"666\" height=\"628\" />','','','publish','open','open','','62','','','2017-11-06 20:35:16','2017-11-06 20:35:16','',0,'http://192.168.11.100/?p=62',0,'post','',0),
	(63,1,'2017-11-06 20:35:16','2017-11-06 20:35:16','<img class=\"alignnone size-medium\" src=\"https://cdn.discordapp.com/attachments/297636262196805632/375963313999314956/unknown.png\" width=\"666\" height=\"628\" />','','','inherit','closed','closed','','62-revision-v1','','','2017-11-06 20:35:16','2017-11-06 20:35:16','',62,'http://192.168.11.100/?p=63',0,'revision','',0),
	(64,1,'2017-11-06 20:35:46','2017-11-06 20:35:46','<img class=\"alignnone size-medium\" src=\"https://i.redd.it/bka1gb843z7z.jpg\" width=\"1280\" height=\"1250\" />','','','publish','open','open','','64','','','2017-11-06 20:35:46','2017-11-06 20:35:46','',0,'http://192.168.11.100/?p=64',0,'post','',0),
	(65,1,'2017-11-06 20:35:46','2017-11-06 20:35:46','<img class=\"alignnone size-medium\" src=\"https://i.redd.it/bka1gb843z7z.jpg\" width=\"1280\" height=\"1250\" />','','','inherit','closed','closed','','64-revision-v1','','','2017-11-06 20:35:46','2017-11-06 20:35:46','',64,'http://192.168.11.100/?p=65',0,'revision','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(45,2,0),
	(46,2,0),
	(47,2,0),
	(48,2,0),
	(49,3,0),
	(50,3,0),
	(51,3,0),
	(52,3,0),
	(53,3,0),
	(56,1,0),
	(60,1,0),
	(62,1,0),
	(64,1,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,5),
	(2,2,'nav_menu','',0,4),
	(3,3,'nav_menu','',0,5);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'Top Menu','top-menu',0),
	(3,'Social Links Menu','social-links-menu',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','potato'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'locale',''),
	(11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(12,1,'wp_user_level','10'),
	(13,1,'dismissed_wp_pointers',''),
	(14,1,'show_welcome_panel','1'),
	(15,1,'session_tokens','a:2:{s:64:\"a6f8ab111bdb0276cbaa6770c9634a3c00c0cb5bf8d3de53d613a16b949e0479\";a:4:{s:10:\"expiration\";i:1511000976;s:2:\"ip\";s:12:\"192.168.11.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1509791376;}s:64:\"db2f66b8f55de1636c54a949ae85be20db7706455a89e119b7e6ced52a0f0ce0\";a:4:{s:10:\"expiration\";i:1510167280;s:2:\"ip\";s:12:\"192.168.11.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1509994480;}}'),
	(16,1,'wp_dashboard_quick_press_last_post_id','3'),
	(17,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"192.168.11.0\";}'),
	(18,1,'wp_user-settings','libraryContent=browse'),
	(19,1,'wp_user-settings-time','1509792005');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'potato','$P$BML279jS/tTKd58MA91glNwWQubHue.','potato','derekmyjar@gmail.com','','2017-11-04 10:29:27','',0,'potato');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
