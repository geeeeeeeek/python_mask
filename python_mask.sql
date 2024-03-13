/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_mask

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 03/07/2023 16:46:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add product', 7, 'add_product');
INSERT INTO `auth_permission` VALUES (26, 'Can change product', 7, 'change_product');
INSERT INTO `auth_permission` VALUES (27, 'Can delete product', 7, 'delete_product');
INSERT INTO `auth_permission` VALUES (28, 'Can view product', 7, 'view_product');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$260000$wXFyqq31hD8pmV1excqj3Y$qsTuvbNxrBdEEEcmI8D0PriT7VDyvooTfEqdIUxR/9M=', '2023-07-03 16:14:15.257199', 1, 'admin', '', '', '', 1, 1, '2023-07-03 16:13:57.920874');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2023-07-03 16:14:26.401647', '1', '二手macbook 2022电脑一台', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2023-07-03 16:25:31.970956', '12', '求购自行车一辆校园内骑行', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2023-07-03 16:25:35.544402', '12', '求购自行车一辆校园内骑行', 2, '[]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2023-07-03 16:25:46.718319', '11', '求iphone8手机一台', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2023-07-03 16:25:51.203646', '10', '求购电动车一辆小牛牌的', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (6, '2023-07-03 16:25:54.070399', '10', '求购电动车一辆小牛牌的', 2, '[]', 7, 1);
INSERT INTO `django_admin_log` VALUES (7, '2023-07-03 16:25:58.658377', '8', '二手浪潮服务器5台公司闲置800元处理', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (8, '2023-07-03 16:26:02.881419', '7', '二手考研资料一套100元', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (9, '2023-07-03 16:26:06.224045', '6', '二手雅迪电动车一辆900元', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (10, '2023-07-03 16:26:10.781416', '5', '二手U盘1个50元位置北京', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (11, '2023-07-03 16:26:14.364218', '4', '二手花盆9个100元', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (12, '2023-07-03 16:26:17.743341', '3', '二手电脑包3个499元', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (13, '2023-07-03 16:26:20.974880', '2', '二手苹果手机一台200元', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (14, '2023-07-03 16:26:23.674672', '1', '二手macbook 2022电脑一台', 2, '[]', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2023-07-03 16:28:55.970229', '16', '出售联想主机一台带键盘800元', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (16, '2023-07-03 16:28:59.616926', '15', '求购dell电脑一台笔记本优先', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (17, '2023-07-03 16:29:03.198793', '14', '求购小米蓝牙耳机一套预算200', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (18, '2023-07-03 16:29:06.304437', '13', '求购宠物狗狗一只', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (7, 'app', 'product');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-07-03 16:10:18.297198');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-07-03 16:10:19.138902');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-07-03 16:10:19.293558');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-07-03 16:10:19.300594');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-03 16:10:19.305955');
INSERT INTO `django_migrations` VALUES (6, 'app', '0001_initial', '2023-07-03 16:10:19.346975');
INSERT INTO `django_migrations` VALUES (7, 'app', '0002_auto_20200210_1715', '2023-07-03 16:10:19.365179');
INSERT INTO `django_migrations` VALUES (8, 'app', '0003_product_expire', '2023-07-03 16:10:19.422313');
INSERT INTO `django_migrations` VALUES (9, 'app', '0004_remove_product_desc', '2023-07-03 16:10:19.474207');
INSERT INTO `django_migrations` VALUES (10, 'app', '0005_auto_20200211_1132', '2023-07-03 16:10:19.647441');
INSERT INTO `django_migrations` VALUES (11, 'contenttypes', '0002_remove_content_type_name', '2023-07-03 16:10:19.760042');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0002_alter_permission_name_max_length', '2023-07-03 16:10:19.826327');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0003_alter_user_email_max_length', '2023-07-03 16:10:19.894772');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0004_alter_user_username_opts', '2023-07-03 16:10:19.910972');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0005_alter_user_last_login_null', '2023-07-03 16:10:19.958209');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0006_require_contenttypes_0002', '2023-07-03 16:10:19.960882');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0007_alter_validators_add_error_messages', '2023-07-03 16:10:19.967942');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0008_alter_user_username_max_length', '2023-07-03 16:10:20.041271');
INSERT INTO `django_migrations` VALUES (19, 'auth', '0009_alter_user_last_name_max_length', '2023-07-03 16:10:20.117562');
INSERT INTO `django_migrations` VALUES (20, 'auth', '0010_alter_group_name_max_length', '2023-07-03 16:10:20.233243');
INSERT INTO `django_migrations` VALUES (21, 'auth', '0011_update_proxy_permissions', '2023-07-03 16:10:20.252240');
INSERT INTO `django_migrations` VALUES (22, 'auth', '0012_alter_user_first_name_max_length', '2023-07-03 16:10:20.305523');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2023-07-03 16:10:20.348509');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('rmphlsi5moh7kacfmplyj8ki2oi7wvdx', '.eJxVjMsOwiAQRf-FtSHMQKl16b7fQGYYkKqBpI-V8d-1SRe6veec-1KBtrWEbUlzmERdFKjT78YUH6nuQO5Ub03HVtd5Yr0r-qCLHpuk5_Vw_w4KLeVbM1pKkQAYkxnQmWgz9xwRBnDO2Ex95zvx7DEhuo4sEKJAtiJnm6N6fwDhxjfS:1qGEhL:cWZOYCh-mrQqDWFhwjZWvbl9XKHXv1BgyZviqBpXhno', '2023-07-17 16:14:15.261120');

-- ----------------------------
-- Table structure for mask_product
-- ----------------------------
DROP TABLE IF EXISTS `mask_product`;
CREATE TABLE `mask_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  `contact` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weixin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NULL DEFAULT NULL,
  `expire` int(11) NOT NULL,
  `location` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mask_product
-- ----------------------------
INSERT INTO `mask_product` VALUES (1, '二手macbook 2022电脑一台', 0, '刘德华', '13581651532', NULL, 1, '2023-07-03 16:13:07.929340', 7, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (2, '二手苹果手机一台200元', 0, '刘德华', '13581651538', 'lengqin1024', 1, '2023-07-03 16:19:34.133943', 7, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (3, '二手电脑包3个499元', 0, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:19:58.803505', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (4, '二手花盆9个100元', 0, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:20:17.764000', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (5, '二手U盘1个50元位置北京', 0, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:22:05.907925', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (6, '二手雅迪电动车一辆900元', 0, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:22:27.349068', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (7, '二手考研资料一套100元', 0, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:22:56.163478', 1, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (8, '二手浪潮服务器5台公司闲置800元处理', 0, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:23:31.117385', 1, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (9, '二手小孩玩具一套', 0, '刘德华', '13581651532', 'lengqin1024', 0, '2023-07-03 16:23:50.572703', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (10, '求购电动车一辆小牛牌的', 1, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:24:23.482116', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (11, '求iphone8手机一台', 1, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:24:48.941805', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (12, '求购自行车一辆校园内骑行', 1, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:25:14.534533', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (13, '求购宠物狗狗一只', 1, '刘德华', '13581651532', NULL, 1, '2023-07-03 16:27:18.444386', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (14, '求购小米蓝牙耳机一套预算200', 1, '刘德华', '13581651532', NULL, 1, '2023-07-03 16:27:56.325636', 1, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (15, '求购dell电脑一台笔记本优先', 1, '刘德华', '13581651532', 'lengqin1024', 1, '2023-07-03 16:28:23.609257', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (16, '出售联想主机一台带键盘800元', 0, '刘德华', '13581651532', NULL, 1, '2023-07-03 16:28:47.531081', 3, '北京市朝阳区人民路', 0);
INSERT INTO `mask_product` VALUES (17, '二手电脑桌2台', 0, '刘德华', '13581651532', NULL, 0, '2023-07-03 16:40:19.912767', 3, '北京市朝阳区人民路', 0);

SET FOREIGN_KEY_CHECKS = 1;
