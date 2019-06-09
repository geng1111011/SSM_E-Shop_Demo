/*
Navicat MySQL Data Transfer

Source Server         : asd
Source Server Version : 50543
Source Host           : localhost:3306
Source Database       : mvcdatebase

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2019-05-30 13:43:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `adminId` int(20) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(30) NOT NULL,
  `adminPassword` varchar(30) NOT NULL,
  `adminEmail` varchar(50) NOT NULL,
  PRIMARY KEY (`adminId`),
  UNIQUE KEY `admin_name` (`adminName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', 'lee', 'geng', '2944337667@qq.com');
INSERT INTO `admininfo` VALUES ('2', '666', '667', '668');
INSERT INTO `admininfo` VALUES ('4', '667', '667', '668');

-- ----------------------------
-- Table structure for noticetable
-- ----------------------------
DROP TABLE IF EXISTS `noticetable`;
CREATE TABLE `noticetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ncontent` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ntime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of noticetable
-- ----------------------------
INSERT INTO `noticetable` VALUES ('5', '666', '搞事情', '2019-05-28 22:19:58');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `orderId` varchar(30) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `userId` int(20) NOT NULL,
  `productsaleId` int(20) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `product_id` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1000000047968466', '1', '1', '47');
INSERT INTO `orderdetail` VALUES ('1000000270563059', '1', '1', '46');
INSERT INTO `orderdetail` VALUES ('1000000355436038', '1', '1', '43');
INSERT INTO `orderdetail` VALUES ('1000000682692976', '1', '1', '69');
INSERT INTO `orderdetail` VALUES ('1000000690272373', '1', '1', '42');
INSERT INTO `orderdetail` VALUES ('1000000780625926', '1', '3', '55');
INSERT INTO `orderdetail` VALUES ('1000000863260215', '2', '1', '58');
INSERT INTO `orderdetail` VALUES ('1000001067385165', '1', '1', '59');
INSERT INTO `orderdetail` VALUES ('1000001249170606', '1', '1', '39');
INSERT INTO `orderdetail` VALUES ('1000001333421465', '1', '1', '58');
INSERT INTO `orderdetail` VALUES ('1000001645358477', '1', '1', '68');
INSERT INTO `orderdetail` VALUES ('1000001773703271', '3', '1', '60');
INSERT INTO `orderdetail` VALUES ('1000001853611613', '1', '1', '44');
INSERT INTO `orderdetail` VALUES ('1000001861726211', '1', '1', '51');
INSERT INTO `orderdetail` VALUES ('1000001904267890', '1', '2', '54');
INSERT INTO `orderdetail` VALUES ('1000001971890692', '1', '1', '52');
INSERT INTO `orderdetail` VALUES ('1000002139785844', '2', '1', '70');
INSERT INTO `orderdetail` VALUES ('32', '1', '1', '32');

-- ----------------------------
-- Table structure for productinfo
-- ----------------------------
DROP TABLE IF EXISTS `productinfo`;
CREATE TABLE `productinfo` (
  `productId` int(20) NOT NULL AUTO_INCREMENT,
  `productName` varchar(30) NOT NULL,
  `typeId` int(11) NOT NULL,
  `productPrice` decimal(11,2) NOT NULL,
  `productQuantity` int(20) NOT NULL,
  `productArea` varchar(50) DEFAULT NULL,
  `productHotprice` decimal(11,2) DEFAULT NULL,
  `productInfo` varchar(100) DEFAULT NULL,
  `productTime` datetime NOT NULL,
  `productPicture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `type_id` (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productinfo
-- ----------------------------
INSERT INTO `productinfo` VALUES ('1', '至尊宝茅台', '3', '1000.00', '88', '11', '110.00', '46546', '2019-05-22 17:04:23', 'botton1.jpg');
INSERT INTO `productinfo` VALUES ('2', '生命之水', '3', '200.00', '191', null, null, null, '2019-05-19 20:09:52', 'botton2.png');
INSERT INTO `productinfo` VALUES ('3', '三只松鼠1', '4', '200.00', '219', null, null, null, '2019-05-07 20:09:59', 'shu1.jpg');
INSERT INTO `productinfo` VALUES ('4', '三只松鼠2', '4', '250.00', '2000', null, null, null, '2019-05-19 20:10:33', 'shu3.jpg');
INSERT INTO `productinfo` VALUES ('5', '三只松鼠3', '4', '300.00', '190', null, null, null, '2019-05-19 20:10:57', 'shu5.jpg');
INSERT INTO `productinfo` VALUES ('6', '三只松鼠4', '4', '150.00', '120', null, null, null, '2019-05-08 20:11:08', 'shu4.jpg');

-- ----------------------------
-- Table structure for productorder
-- ----------------------------
DROP TABLE IF EXISTS `productorder`;
CREATE TABLE `productorder` (
  `productsaleId` int(20) NOT NULL AUTO_INCREMENT,
  `userId` int(20) NOT NULL,
  `productorderTime` datetime NOT NULL,
  `productReceiver` varchar(30) DEFAULT NULL,
  `productorderAddress` varchar(50) DEFAULT NULL,
  `productorderTel` varchar(20) DEFAULT NULL,
  `productTotal` decimal(11,2) NOT NULL,
  `productorderStatus` varchar(5) NOT NULL,
  PRIMARY KEY (`productsaleId`),
  KEY `user_id` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productorder
-- ----------------------------
INSERT INTO `productorder` VALUES ('37', '1', '2019-05-25 14:19:09', null, null, null, '1200.00', '0');
INSERT INTO `productorder` VALUES ('38', '1', '2019-05-25 14:19:26', null, null, null, '1200.00', '0');
INSERT INTO `productorder` VALUES ('39', '1', '2019-05-25 14:21:18', null, null, null, '1000.00', '0');
INSERT INTO `productorder` VALUES ('40', '1', '2019-05-25 14:21:45', null, null, null, '1000.00', '0');
INSERT INTO `productorder` VALUES ('41', '1', '2019-05-25 14:23:01', null, null, null, '1000.00', '0');
INSERT INTO `productorder` VALUES ('42', '1', '2019-05-25 14:23:43', null, null, null, '1000.00', '0');
INSERT INTO `productorder` VALUES ('43', '1', '2019-05-25 14:25:38', null, null, null, '1000.00', '1');
INSERT INTO `productorder` VALUES ('44', '1', '2019-05-25 14:28:51', null, null, null, '1000.00', '0');
INSERT INTO `productorder` VALUES ('45', '1', '2019-05-25 14:28:55', null, null, null, '1000.00', '0');
INSERT INTO `productorder` VALUES ('46', '1', '2019-05-25 14:33:01', null, null, null, '1000.00', '0');
INSERT INTO `productorder` VALUES ('47', '1', '2019-05-25 14:34:44', null, null, null, '1000.00', '1');
INSERT INTO `productorder` VALUES ('50', '1', '2019-05-25 16:21:27', null, null, null, '3000.00', '1');
INSERT INTO `productorder` VALUES ('51', '1', '2019-05-25 18:11:02', null, null, null, '1000.00', '1');
INSERT INTO `productorder` VALUES ('52', '1', '2019-05-25 21:31:48', null, null, null, '1200.00', '1');
INSERT INTO `productorder` VALUES ('53', '1', '2019-05-25 21:32:18', null, null, null, '1200.00', '1');
INSERT INTO `productorder` VALUES ('58', '1', '2019-05-28 17:09:40', null, null, null, '1200.00', '1');
INSERT INTO `productorder` VALUES ('59', '1', '2019-05-29 22:49:16', '777', '77777', '', '1000.00', '1');
INSERT INTO `productorder` VALUES ('60', '1', '2019-05-29 22:54:52', null, null, null, '200.00', '0');
INSERT INTO `productorder` VALUES ('61', '1', '2019-05-29 22:55:10', null, null, null, '200.00', '0');
INSERT INTO `productorder` VALUES ('62', '1', '2019-05-29 22:55:29', null, null, null, '200.00', '0');
INSERT INTO `productorder` VALUES ('63', '1', '2019-05-29 22:56:17', null, null, null, '200.00', '0');
INSERT INTO `productorder` VALUES ('64', '1', '2019-05-29 22:56:27', null, null, null, '200.00', '0');
INSERT INTO `productorder` VALUES ('65', '1', '2019-05-29 22:57:24', null, null, null, '200.00', '0');
INSERT INTO `productorder` VALUES ('66', '1', '2019-05-29 22:57:45', null, null, null, '200.00', '0');
INSERT INTO `productorder` VALUES ('67', '1', '2019-05-29 22:57:55', null, null, null, '200.00', '0');
INSERT INTO `productorder` VALUES ('68', '1', '2019-05-30 10:51:23', null, null, null, '4000.00', '0');
INSERT INTO `productorder` VALUES ('69', '1', '2019-05-30 10:52:45', '159', '259', '159', '1000.00', '1');
INSERT INTO `productorder` VALUES ('70', '1', '2019-05-30 13:27:36', '1111', '11111111111111', '111111', '200.00', '1');

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) NOT NULL,
  `typeInfo` varchar(30) DEFAULT NULL,
  `typeParent` int(11) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES ('1', '酒类', '酒', '0');
INSERT INTO `producttype` VALUES ('2', '食品', '食品', '0');
INSERT INTO `producttype` VALUES ('3', '中国酒', '酒', '1');
INSERT INTO `producttype` VALUES ('4', '三只松鼠', '食品', '2');

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `carId` int(20) NOT NULL AUTO_INCREMENT,
  `productId` int(20) NOT NULL,
  `productNumber` int(11) NOT NULL,
  `userId` int(20) NOT NULL,
  `carStatus` int(10) NOT NULL,
  PRIMARY KEY (`carId`),
  KEY `user_id` (`userId`),
  KEY `product_id` (`productId`),
  CONSTRAINT `shoppingcar_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `shoppingcar_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `productinfo` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `userPassword` varchar(30) NOT NULL,
  `userNickname` varchar(30) DEFAULT NULL,
  `userHead` varchar(50) DEFAULT NULL,
  `userRealname` varchar(30) DEFAULT NULL,
  `userGender` varchar(5) DEFAULT NULL,
  `userIdcard` varchar(18) DEFAULT NULL,
  `userTime` datetime DEFAULT NULL,
  `userLtime` datetime DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `userAddress` varchar(50) DEFAULT NULL,
  `userTel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '7', '7', '1', '1', '1', '1', '1', '2019-05-17 22:12:03', '2019-05-17 22:12:06', '1', '1', '1');
INSERT INTO `user` VALUES ('9', '灯闵', '123456', null, null, null, null, null, null, null, '1414114@141', null, '15920');
