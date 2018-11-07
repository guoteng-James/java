/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : db_classmanage

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-07-03 12:04:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_notice`
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `content` text NOT NULL,
  `createTime` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
INSERT INTO `tb_notice` VALUES ('28', '放假', '各位同学，马上放假了，收拾好东西！不要遗漏了！', '2017-12-23 14:43:48');
INSERT INTO `tb_notice` VALUES ('34', '时光不老，我们不散！', '时光不老，我们不散——年华不尽，我们不分<br/>时光不老，我们不散——年发未生,我们不离<br/>时光不老，我们不散——岁月不逝，我们不弃', '2017-12-23 17:08:46');

-- ----------------------------
-- Table structure for `tb_photo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_photo`;
CREATE TABLE `tb_photo` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Pname` varchar(45) CHARACTER SET gb2312 NOT NULL,
  `remarks` varchar(45) CHARACTER SET gb2312 NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_photo
-- ----------------------------
INSERT INTO `tb_photo` VALUES ('12', '201712231652229108.jpg', '看！那是一只考拉！！！');
INSERT INTO `tb_photo` VALUES ('13', '201712231652521332.png', '红领巾有木有！');
INSERT INTO `tb_photo` VALUES ('14', '201712231653149103.jpg', '三只企鹅');
INSERT INTO `tb_photo` VALUES ('15', '201712231653317069.jpg', '这是章鱼');
INSERT INTO `tb_photo` VALUES ('16', '201712231654093177.jpg', '花儿朵朵开');
INSERT INTO `tb_photo` VALUES ('17', '201712231654401375.jpg', '夕阳下的城堡');
INSERT INTO `tb_photo` VALUES ('18', '201712231655107260.png', '嗯！没有图片');

-- ----------------------------
-- Table structure for `tb_student`
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Sname` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Wjm_pwd` varchar(45) NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `Number` varchar(45) NOT NULL,
  `Telephone` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Dormitory` varchar(45) NOT NULL,
  `Manager` int(10) unsigned NOT NULL,
  `Sphoto` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('1', '我是超级管理员', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '男', '000', '12345678910', '韶关', '无', '1', '201806151142593975.png');
INSERT INTO `tb_student` VALUES ('2', '赵丽', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '女', '002', '18965148961', '广州', 'AA111', '2', '201712190102395144.jpg');
INSERT INTO `tb_student` VALUES ('3', '钱三', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '男', '003', '15948561857', '北京', 'QQ333', '3', '201712190031351362.jpg');
INSERT INTO `tb_student` VALUES ('4', '孙芸', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '女', '004', '18962176514', '云南', 'SY666', '3', '201807031200421549.jpg');
INSERT INTO `tb_student` VALUES ('5', '李羸', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '男', '005', '17859645189', '湖南', 'LL111', '3', '201712190032047438.jpg');
INSERT INTO `tb_student` VALUES ('6', '周蕾', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '女', '006', '15987456188', '哈尔滨', 'ZL123', '3', '201712190032157471.jpg');
INSERT INTO `tb_student` VALUES ('7', 'ABC', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '男', '001', '12345678910', '韶关', 'AA000', '2', '201712231658043088.jpg');
INSERT INTO `tb_student` VALUES ('8', '孙孙', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '女', '007', '0000000', '韶关', 'SS001', '3', '201712231659549961.jpg');
INSERT INTO `tb_student` VALUES ('9', '尚裳䵼', '601f1889667efaebb33b8c12572835da3f027f78', '123123', '女', '008', '8888888', '北京', 'SS123', '3', '201712231702558532.jpg');

-- ----------------------------
-- Table structure for `tb_who_login`
-- ----------------------------
DROP TABLE IF EXISTS `tb_who_login`;
CREATE TABLE `tb_who_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `login_system` varchar(255) DEFAULT NULL,
  `login_browser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_who_login
-- ----------------------------
INSERT INTO `tb_who_login` VALUES ('1', '000', '2018-05-22 09:29:59', '113.66.248.154', 'Windows 98', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('2', '000', '2018-06-06 11:27:43', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('3', '000', '2018-06-06 11:31:59', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('4', '001', '2018-06-06 11:34:10', '119.131.105.240', 'Windows 98', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('5', '000', '2018-06-12 11:13:09', '119.129.120.111', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('6', '000', '2018-06-12 11:22:59', '119.129.120.111', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('7', '000', '2018-06-12 02:04:07', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('8', '009', '2018-06-12 02:09:54', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('9', '000', '2018-06-12 02:13:59', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('10', '000', '2018-06-12 02:27:14', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('11', '000', '2018-06-12 02:58:19', '119.129.120.111', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('12', '000', '2018-06-15 11:42:45', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('13', '000', '2018-07-03 09:46:00', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('14', '000', '2018-07-03 09:49:34', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('15', '000', '2018-07-03 09:49:57', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('16', '000', '2018-07-03 11:57:28', '127.0.0.1', 'Windows 7', 'Chrome');
INSERT INTO `tb_who_login` VALUES ('17', '000', '2018-07-03 11:57:43', '127.0.0.1', 'Windows 7', 'Chrome');
