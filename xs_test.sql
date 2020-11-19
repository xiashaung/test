/*
 Navicat Premium Data Transfer

 Source Server         : 本地-5.5
 Source Server Type    : MySQL
 Source Server Version : 50522
 Source Host           : 127.0.0.1:3355
 Source Schema         : fruit

 Target Server Type    : MySQL
 Target Server Version : 50522
 File Encoding         : 65001

 Date: 19/11/2020 13:04:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xs_test
-- ----------------------------
DROP TABLE IF EXISTS `xs_test`;
CREATE TABLE `xs_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of xs_test
-- ----------------------------
BEGIN;
INSERT INTO `xs_test` VALUES (1, '11111', '222222', '2020-11-19 04:44:02', '2020-11-19 04:44:02');
INSERT INTO `xs_test` VALUES (2, '11111', '222222', '2020-11-19 04:45:07', '2020-11-19 04:45:07');
INSERT INTO `xs_test` VALUES (3, '11111', '222222', '2020-11-19 04:45:08', '2020-11-19 04:45:08');
INSERT INTO `xs_test` VALUES (4, '11111', '222222', '2020-11-19 04:45:09', '2020-11-19 04:45:09');
INSERT INTO `xs_test` VALUES (5, '11111', '222222', '2020-11-19 04:45:10', '2020-11-19 04:45:10');
INSERT INTO `xs_test` VALUES (6, '11111', '222222', '2020-11-19 04:45:11', '2020-11-19 04:45:11');
INSERT INTO `xs_test` VALUES (7, '11111', '222222', '2020-11-19 04:45:12', '2020-11-19 04:45:12');
INSERT INTO `xs_test` VALUES (8, '11111', '222222', '2020-11-19 04:45:13', '2020-11-19 04:45:13');
INSERT INTO `xs_test` VALUES (9, '11111', '222222', '2020-11-19 04:45:14', '2020-11-19 04:45:14');
INSERT INTO `xs_test` VALUES (10, '11111', '222222', '2020-11-19 04:45:15', '2020-11-19 04:45:15');
INSERT INTO `xs_test` VALUES (11, '11111', '222222', '2020-11-19 04:45:16', '2020-11-19 04:45:16');
INSERT INTO `xs_test` VALUES (12, '11111', '222222', '2020-11-19 04:45:17', '2020-11-19 04:45:17');
INSERT INTO `xs_test` VALUES (13, '11111', '222222', '2020-11-19 04:45:18', '2020-11-19 04:45:18');
INSERT INTO `xs_test` VALUES (14, '11111', '222222', '2020-11-19 04:45:19', '2020-11-19 04:45:19');
INSERT INTO `xs_test` VALUES (15, '11111', '222222', '2020-11-19 04:45:20', '2020-11-19 04:45:20');
INSERT INTO `xs_test` VALUES (16, '11111', '222222', '2020-11-19 04:45:21', '2020-11-19 04:45:21');
INSERT INTO `xs_test` VALUES (17, '11111', '222222', '2020-11-19 04:45:22', '2020-11-19 04:45:22');
INSERT INTO `xs_test` VALUES (18, '11111', '222222', '2020-11-19 04:45:23', '2020-11-19 04:45:23');
INSERT INTO `xs_test` VALUES (19, '11111', '222222', '2020-11-19 04:45:24', '2020-11-19 04:45:24');
INSERT INTO `xs_test` VALUES (20, '11111', '222222', '2020-11-19 04:45:24', '2020-11-19 04:45:24');
INSERT INTO `xs_test` VALUES (21, '11111', '222222', '2020-11-19 04:45:25', '2020-11-19 04:45:25');
INSERT INTO `xs_test` VALUES (22, '11111', '222222', '2020-11-19 04:45:26', '2020-11-19 04:45:26');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
