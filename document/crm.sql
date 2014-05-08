-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.11 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 crm 的数据库结构
DROP DATABASE IF EXISTS `crm`;
CREATE DATABASE IF NOT EXISTS `crm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `crm`;


-- 导出  表 crm.c_discuss_detail 结构
DROP TABLE IF EXISTS `c_discuss_detail`;
CREATE TABLE IF NOT EXISTS `c_discuss_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `discuss_main_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 crm.c_discuss_main 结构
DROP TABLE IF EXISTS `c_discuss_main`;
CREATE TABLE IF NOT EXISTS `c_discuss_main` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `theme` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  `create_user_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 crm.c_group_info 结构
DROP TABLE IF EXISTS `c_group_info`;
CREATE TABLE IF NOT EXISTS `c_group_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `leader_id` bigint(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `leader_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 crm.c_log_info 结构
DROP TABLE IF EXISTS `c_log_info`;
CREATE TABLE IF NOT EXISTS `c_log_info` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `op_user_id` bigint(20) DEFAULT NULL,
  `op_user_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 crm.c_project_info 结构
DROP TABLE IF EXISTS `c_project_info`;
CREATE TABLE IF NOT EXISTS `c_project_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  `create_user_name` varchar(40) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 crm.c_user_info 结构
DROP TABLE IF EXISTS `c_user_info`;
CREATE TABLE IF NOT EXISTS `c_user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `roles` varchar(100) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
