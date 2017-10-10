/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : fotos

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-09-19 21:59:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES ('1', 'B&N', '2017-09-20 00:18:47', '2017-09-20 00:18:47');
INSERT INTO `categorias` VALUES ('2', 'Color', '2017-09-20 00:18:56', '2017-09-20 00:18:56');

-- ----------------------------
-- Table structure for fotos
-- ----------------------------
DROP TABLE IF EXISTS `fotos`;
CREATE TABLE `fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `photo_dir` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
-- Records of fotos
-- ----------------------------
INSERT INTO `fotos` VALUES ('1', '1', 'tit bac.jpg', 'b5c3c1bb-363a-49fe-9e84-ba48a0e5fba9', '2017-09-20 00:26:02', '2017-09-20 00:44:11');
INSERT INTO `fotos` VALUES ('2', '1', 'tit bac1.jpg', '9627e4c8-e1fa-48bb-9e52-6428a0349afa', '2017-09-20 00:34:22', '2017-09-20 00:34:22');
INSERT INTO `fotos` VALUES ('3', '1', 'tit bac2.jpg', 'a68fc37a-599c-4b11-9240-a3dd438a4a67', '2017-09-20 00:34:50', '2017-09-20 00:34:50');
INSERT INTO `fotos` VALUES ('4', '1', 'titulo.jpg', '8e9ffa16-d96a-4fe2-ac4e-16140281736e', '2017-09-20 00:35:11', '2017-09-20 00:35:11');
INSERT INTO `fotos` VALUES ('5', '2', 'titulo1.jpg', 'deb6ba23-277c-4fc7-93bd-7cab3301366f', '2017-09-20 00:35:34', '2017-09-20 00:35:34');
SET FOREIGN_KEY_CHECKS=1;
