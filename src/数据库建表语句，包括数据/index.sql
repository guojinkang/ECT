/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : haixing

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-08 20:24:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `index`
-- ----------------------------
DROP TABLE IF EXISTS `index`;
CREATE TABLE `index` (
  `index_picture` varchar(20) CHARACTER SET latin1 NOT NULL,
  `index_video` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`index_picture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(12) NOT NULL AUTO_INCREMENT,
  `publish_id` int(12) DEFAULT NULL,
  `user_account_number` varchar(30) DEFAULT NULL,
  `state` int(12) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', 'wang', '2');
INSERT INTO `orders` VALUES ('2', '1', 'wang', '2');
INSERT INTO `orders` VALUES ('3', '1', 'wang', '2');
INSERT INTO `orders` VALUES ('4', '1', 'wang', '2');
INSERT INTO `orders` VALUES ('5', '1', 'wang', '2');
INSERT INTO `orders` VALUES ('6', '1', 'wang', '2');
INSERT INTO `orders` VALUES ('7', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('8', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('9', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('10', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('11', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('12', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('13', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('14', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('15', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('16', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('17', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('18', '1', 'wang', '1');
INSERT INTO `orders` VALUES ('19', '1', 'fff', '1');
INSERT INTO `orders` VALUES ('20', '2', 'fff', '1');

-- ----------------------------
-- Table structure for `publish`
-- ----------------------------
DROP TABLE IF EXISTS `publish`;
CREATE TABLE `publish` (
  `publish_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_account_number` varchar(30) DEFAULT NULL,
  `publish_titile` varchar(60) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `publish_content` text,
  `publish_picture` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `publish_price` float DEFAULT NULL,
  `publish_time` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `pricture2` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `pricture3` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `pricture4` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `type_want` varchar(12) DEFAULT NULL,
  `state` int(12) DEFAULT NULL,
  PRIMARY KEY (`publish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publish
-- ----------------------------
INSERT INTO `publish` VALUES ('2', 'ddd', '2222', '0', '2222', null, '3', '2018-11-22 17:04:15', null, null, null, '帮人', '0');
INSERT INTO `publish` VALUES ('5', 'wang', '123', '1', 'wang发布的', null, '222', '2018-12-07 17:43:41', null, null, null, null, '1');
INSERT INTO `publish` VALUES ('6', 'wang', 'dddd', '1', 'new', null, '123', '2018-12-07 18:44:58', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('7', 'wang', 'wang2', '1', 'text2', null, '63', '2018-12-07 18:47:29', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('8', 'wang', 'dddd', '1', 'wang发布的', null, '0', '2018-12-07 19:28:48', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('9', 'wang', '33', '1', '333', null, '0', '2018-12-08 11:42:46', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('10', 'wang', '33', '1', '66', null, '0', '2018-12-08 11:43:22', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('11', 'wang', 'dddd', '1', 'ffff', null, '0', '2018-12-08 11:45:22', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('12', 'wang', 'dddd', '1', 'wang发布的', null, '0', '2018-12-08 11:46:23', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('13', 'wang', 'dddd', '1', '2222', null, '0', '2018-12-08 11:47:29', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('14', 'wang', '2222', '1', '333', null, '0', '2018-12-08 11:48:34', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('15', 'wang', 'dddd', '1', 'wang发布的', null, '0', '2018-12-08 11:49:45', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('16', 'wang', '2222', '1', 'wang发布的', null, '0', '2018-12-08 11:55:12', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('17', 'wang', 'dddd', '1', 'ddd', null, '0', '2018-12-08 11:58:23', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('18', 'wang', 'dddd', '1', 'ddd', null, '0', '2018-12-08 11:58:56', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('19', 'wang', '', '1', '', null, '0', '2018-12-08 14:22:19', null, null, null, '求人', '0');
INSERT INTO `publish` VALUES ('20', 'wang', 'dddd', '1', 'wang发布的', null, '0', '2018-12-08 14:23:56', null, null, null, '求人', '0');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of type
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_account_number` varchar(30) NOT NULL,
  `user_password` varchar(16) DEFAULT NULL,
  `user_icon` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `user_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `user_introduction` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `user_stid` char(16) DEFAULT NULL,
  `user_major` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `user_email` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `user_point` int(12) DEFAULT '0',
  PRIMARY KEY (`user_account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('ddd', '111', 'images/head/ddd_head', '', null, '', null, '', '0');
INSERT INTO `user` VALUES ('dddd', 'aaa', 'images/head/dddd_hea', '', null, '', null, '', '0');
INSERT INTO `user` VALUES ('fff', 'fff', 'images/fff_head', '', null, '', null, '', '0');
INSERT INTO `user` VALUES ('Fu', '123', null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('sss', 'sss', 'sss_head', '', null, '', null, '', '0');
INSERT INTO `user` VALUES ('wang', '123', 'images/head/wang_head.png', 'images/favicon.ico', 'ffff', null, '333', '777@qq.com', '29330');
