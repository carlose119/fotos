/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : fotos

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-10-10 16:41:15
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
-- Records of fotos
-- ----------------------------
INSERT INTO `fotos` VALUES ('13', '1', 'las-modelos-mas-ricos-del-mundo-adriana-lima.jpg', '064484a0-6d04-40d5-a449-29c94676a1fb', '2017-10-10 20:10:29', '2017-10-10 20:10:29');
INSERT INTO `fotos` VALUES ('14', '1', 'wallpapers-top-modelos-1900x120059.jpg', '23bf96ae-c5bf-4fbf-87ba-74e05c064dc0', '2017-10-10 20:10:39', '2017-10-10 20:10:39');
INSERT INTO `fotos` VALUES ('15', '1', '00100_0001006469_2_play-off.jpg', 'd218358f-0ba4-4b5d-9829-14b876a28460', '2017-10-10 20:11:53', '2017-10-10 20:11:53');
INSERT INTO `fotos` VALUES ('16', '1', 'fifa-14-goodison-park-everton.jpg', '32231d31-b5b3-41b9-a6f3-25e14946176d', '2017-10-10 20:12:02', '2017-10-10 20:12:02');
INSERT INTO `fotos` VALUES ('17', '1', 'imgpsh_fullsize.png', '94fd241c-16ab-4bae-81ea-a4c956936cdc', '2017-10-10 20:12:12', '2017-10-10 20:12:12');
INSERT INTO `fotos` VALUES ('18', '2', '00100_0001006469_2_play-off.jpg', 'cc640666-33ef-4efc-876d-f8c739694bab', '2017-10-10 20:12:23', '2017-10-10 20:12:23');
INSERT INTO `fotos` VALUES ('19', '2', 'fifa-14-goodison-park-everton.jpg', '14ea58e8-077c-4b77-b49c-f51f27eeefa3', '2017-10-10 20:12:32', '2017-10-10 20:12:32');
INSERT INTO `fotos` VALUES ('20', '2', 'imgpsh_fullsize.png', 'a30d4652-2ed6-46db-97df-cc525872b20b', '2017-10-10 20:12:41', '2017-10-10 20:12:41');
INSERT INTO `fotos` VALUES ('21', '2', 'las-modelos-mas-ricos-del-mundo-adriana-lima.jpg', 'ecaae752-cd05-4643-9d6b-5168c84dc8f4', '2017-10-10 20:12:50', '2017-10-10 20:12:50');
INSERT INTO `fotos` VALUES ('22', '2', 'wallpapers-top-modelos-1900x120059.jpg', 'd3fefa9f-4bbe-4b96-8e6e-1a0d8d3f89fe', '2017-10-10 20:12:58', '2017-10-10 20:12:58');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '$2y$10$oMJIwehHLB9aATyeMJlj6unXMztGK1lDA5oL8J9S9QWn6UXz7Odlq', '1', '2017-10-10 20:23:50', '2017-10-10 20:36:27');
SET FOREIGN_KEY_CHECKS=1;
