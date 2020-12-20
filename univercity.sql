/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50537
 Source Host           : localhost:3306
 Source Schema         : userlist

 Target Server Type    : MySQL
 Target Server Version : 50537
 File Encoding         : 65001

 Date: 20/12/2020 18:01:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinces` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES (1, '北京');
INSERT INTO `list` VALUES (2, '上海');
INSERT INTO `list` VALUES (3, '黑龙江');
INSERT INTO `list` VALUES (4, '吉林');
INSERT INTO `list` VALUES (5, '天津');
INSERT INTO `list` VALUES (6, '安徽');
INSERT INTO `list` VALUES (7, '江苏');
INSERT INTO `list` VALUES (8, '浙江');
INSERT INTO `list` VALUES (9, '陕西');
INSERT INTO `list` VALUES (10, '湖北');
INSERT INTO `list` VALUES (11, '广东');
INSERT INTO `list` VALUES (12, '湖南');
INSERT INTO `list` VALUES (13, '甘肃');
INSERT INTO `list` VALUES (14, '四川');
INSERT INTO `list` VALUES (15, '山东');
INSERT INTO `list` VALUES (16, '福建');
INSERT INTO `list` VALUES (17, '河南');
INSERT INTO `list` VALUES (18, '重庆');
INSERT INTO `list` VALUES (19, '云南');
INSERT INTO `list` VALUES (20, '河北');
INSERT INTO `list` VALUES (21, '江西');
INSERT INTO `list` VALUES (22, '山西');
INSERT INTO `list` VALUES (23, '贵州');
INSERT INTO `list` VALUES (24, '广西');
INSERT INTO `list` VALUES (25, '内蒙古');
INSERT INTO `list` VALUES (26, '宁夏');
INSERT INTO `list` VALUES (27, '青海');
INSERT INTO `list` VALUES (28, '新疆');
INSERT INTO `list` VALUES (29, '海南');
INSERT INTO `list` VALUES (30, '西藏');
INSERT INTO `list` VALUES (31, '香港');
INSERT INTO `list` VALUES (32, '澳门');
INSERT INTO `list` VALUES (33, '辽林');
INSERT INTO `list` VALUES (34, '台湾');

-- ----------------------------
-- Table structure for list_1
-- ----------------------------
DROP TABLE IF EXISTS `list_1`;
CREATE TABLE `list_1`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `univecity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `f_id`(`f_id`) USING BTREE,
  CONSTRAINT `list_1_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 352 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of list_1
-- ----------------------------
INSERT INTO `list_1` VALUES (1, '北京大学', 1);
INSERT INTO `list_1` VALUES (2, '北京邮电大学', 1);
INSERT INTO `list_1` VALUES (3, '清华大学', 1);
INSERT INTO `list_1` VALUES (4, '中国人民大学', 1);
INSERT INTO `list_1` VALUES (5, '北京理工大学', 1);
INSERT INTO `list_1` VALUES (6, '北京师范大学', 1);
INSERT INTO `list_1` VALUES (7, '中央财经大学', 1);
INSERT INTO `list_1` VALUES (8, '中国传媒大学', 1);
INSERT INTO `list_1` VALUES (9, '北京航空航天大学', 1);
INSERT INTO `list_1` VALUES (10, '中国政法大学', 1);
INSERT INTO `list_1` VALUES (11, '上海理工大学', 2);
INSERT INTO `list_1` VALUES (12, '上海交通大学', 2);
INSERT INTO `list_1` VALUES (13, '上海海事大学', 2);
INSERT INTO `list_1` VALUES (14, '同济大学', 2);
INSERT INTO `list_1` VALUES (15, '复旦大学', 2);
INSERT INTO `list_1` VALUES (16, '华东师范大学', 2);
INSERT INTO `list_1` VALUES (17, '东华大学', 2);
INSERT INTO `list_1` VALUES (18, '上海外国语大学', 2);
INSERT INTO `list_1` VALUES (19, '华东政法大学', 2);
INSERT INTO `list_1` VALUES (20, '上海财经大学', 2);
INSERT INTO `list_1` VALUES (21, '哈尔滨工业大学', 3);
INSERT INTO `list_1` VALUES (22, '哈尔滨工程大学', 3);
INSERT INTO `list_1` VALUES (23, '黑龙江大学', 3);
INSERT INTO `list_1` VALUES (24, '东北石油大学', 3);
INSERT INTO `list_1` VALUES (25, '齐齐哈尔大学', 3);
INSERT INTO `list_1` VALUES (26, '佳木斯大学', 3);
INSERT INTO `list_1` VALUES (27, '哈尔滨医科大学', 3);
INSERT INTO `list_1` VALUES (28, '东北林业大学', 3);
INSERT INTO `list_1` VALUES (29, '哈尔滨商业大学', 3);
INSERT INTO `list_1` VALUES (30, '黑龙江中医药大学', 3);
INSERT INTO `list_1` VALUES (31, '吉林大学', 4);
INSERT INTO `list_1` VALUES (32, '东北师范大学', 4);
INSERT INTO `list_1` VALUES (33, '东北电力大学', 4);
INSERT INTO `list_1` VALUES (34, '延边大学', 4);
INSERT INTO `list_1` VALUES (35, '长春工业大学', 4);
INSERT INTO `list_1` VALUES (36, '北华大学', 4);
INSERT INTO `list_1` VALUES (37, '吉林财经大学', 4);
INSERT INTO `list_1` VALUES (38, '长春理工大学', 4);
INSERT INTO `list_1` VALUES (39, '长春大学', 4);
INSERT INTO `list_1` VALUES (40, '长春师范大学', 4);
INSERT INTO `list_1` VALUES (51, '南开大学', 5);
INSERT INTO `list_1` VALUES (53, '天津大学', 5);
INSERT INTO `list_1` VALUES (54, '河北工业大学', 5);
INSERT INTO `list_1` VALUES (55, '天津医科大学', 5);
INSERT INTO `list_1` VALUES (56, '天津工业大学', 5);
INSERT INTO `list_1` VALUES (57, '中国民航大学', 5);
INSERT INTO `list_1` VALUES (58, '天津理工大学', 5);
INSERT INTO `list_1` VALUES (59, '天津师范大学', 5);
INSERT INTO `list_1` VALUES (60, '天津中医药大学', 5);
INSERT INTO `list_1` VALUES (61, '天津商业大学', 5);
INSERT INTO `list_1` VALUES (62, '中国科学技术大学', 6);
INSERT INTO `list_1` VALUES (63, '安徽财经大学', 6);
INSERT INTO `list_1` VALUES (64, '合肥工业大学', 6);
INSERT INTO `list_1` VALUES (65, '安徽大学', 6);
INSERT INTO `list_1` VALUES (66, '安徽师范大学', 6);
INSERT INTO `list_1` VALUES (67, '毫州学院', 6);
INSERT INTO `list_1` VALUES (68, '安徽工程大学', 6);
INSERT INTO `list_1` VALUES (69, '安徽农业大学', 6);
INSERT INTO `list_1` VALUES (70, '阜阳师范大学', 6);
INSERT INTO `list_1` VALUES (71, '安庆师范大学', 6);
INSERT INTO `list_1` VALUES (72, '扬州大学', 7);
INSERT INTO `list_1` VALUES (73, '江南大学', 7);
INSERT INTO `list_1` VALUES (74, '南京大学', 7);
INSERT INTO `list_1` VALUES (75, '苏州大学', 7);
INSERT INTO `list_1` VALUES (76, '南京邮电大学', 7);
INSERT INTO `list_1` VALUES (77, '南通大学', 7);
INSERT INTO `list_1` VALUES (78, '中国矿业大学', 7);
INSERT INTO `list_1` VALUES (79, '江苏大学', 7);
INSERT INTO `list_1` VALUES (80, '中国药科大学', 7);
INSERT INTO `list_1` VALUES (81, '南京航空航天大学', 7);
INSERT INTO `list_1` VALUES (82, '浙江大学', 8);
INSERT INTO `list_1` VALUES (83, '中国计量大学', 8);
INSERT INTO `list_1` VALUES (84, '浙江工业大学', 8);
INSERT INTO `list_1` VALUES (85, '宁波大学', 8);
INSERT INTO `list_1` VALUES (86, '浙江工商大学', 8);
INSERT INTO `list_1` VALUES (87, '杭州师范大学', 8);
INSERT INTO `list_1` VALUES (88, '温州大学', 8);
INSERT INTO `list_1` VALUES (89, '浙江财经大学', 8);
INSERT INTO `list_1` VALUES (90, '浙江电子科技大学', 8);
INSERT INTO `list_1` VALUES (91, '浙江师范大学', 8);
INSERT INTO `list_1` VALUES (92, '西安交通大学', 9);
INSERT INTO `list_1` VALUES (93, '长安大学', 9);
INSERT INTO `list_1` VALUES (94, '西安欧亚学院', 9);
INSERT INTO `list_1` VALUES (95, '西北工业大学', 9);
INSERT INTO `list_1` VALUES (96, '西安电子科技大学', 9);
INSERT INTO `list_1` VALUES (97, '陕西师范大学', 9);
INSERT INTO `list_1` VALUES (98, '西安工程大学', 9);
INSERT INTO `list_1` VALUES (99, '西安政法大学', 9);
INSERT INTO `list_1` VALUES (100, '西安外国语大学', 9);
INSERT INTO `list_1` VALUES (101, '西安邮电大学', 9);
INSERT INTO `list_1` VALUES (102, '武汉大学', 10);
INSERT INTO `list_1` VALUES (103, '华中科技大学', 10);
INSERT INTO `list_1` VALUES (104, '武汉理工大学', 10);
INSERT INTO `list_1` VALUES (105, '中南财经政法大学', 10);
INSERT INTO `list_1` VALUES (106, '华中师范大学', 10);
INSERT INTO `list_1` VALUES (107, '武汉纺织大学', 10);
INSERT INTO `list_1` VALUES (108, '武汉科技大学', 10);
INSERT INTO `list_1` VALUES (109, '湖北工业大学', 10);
INSERT INTO `list_1` VALUES (110, '中国地址大学(武汉)', 10);
INSERT INTO `list_1` VALUES (111, '中南民族大学', 10);
INSERT INTO `list_1` VALUES (112, '中山大学', 11);
INSERT INTO `list_1` VALUES (113, '华南理工大学', 11);
INSERT INTO `list_1` VALUES (114, '暨南大学', 11);
INSERT INTO `list_1` VALUES (115, '广州大学', 11);
INSERT INTO `list_1` VALUES (116, '深圳大学', 11);
INSERT INTO `list_1` VALUES (117, '广东海洋大学', 11);
INSERT INTO `list_1` VALUES (118, '华南农业大学', 11);
INSERT INTO `list_1` VALUES (119, '南方医科大学', 11);
INSERT INTO `list_1` VALUES (120, '广东医科大学', 11);
INSERT INTO `list_1` VALUES (121, '汕头大学', 11);
INSERT INTO `list_1` VALUES (122, '中南大学', 12);
INSERT INTO `list_1` VALUES (123, '湖南大学', 12);
INSERT INTO `list_1` VALUES (124, '南华大学', 12);
INSERT INTO `list_1` VALUES (125, '长沙理工大学', 12);
INSERT INTO `list_1` VALUES (126, '湘潭大学', 12);
INSERT INTO `list_1` VALUES (127, '湖南工业大学', 12);
INSERT INTO `list_1` VALUES (128, '湖南师范大学', 12);
INSERT INTO `list_1` VALUES (129, '湖南科技大学', 12);
INSERT INTO `list_1` VALUES (130, '国防科技大学', 12);
INSERT INTO `list_1` VALUES (131, '吉首大学', 12);
INSERT INTO `list_1` VALUES (132, '兰州大学', 13);
INSERT INTO `list_1` VALUES (133, '西北民族大学', 13);
INSERT INTO `list_1` VALUES (134, '兰州交通大学', 13);
INSERT INTO `list_1` VALUES (135, '兰州财经大学', 13);
INSERT INTO `list_1` VALUES (136, '甘肃农业大学', 13);
INSERT INTO `list_1` VALUES (137, '西北师范大学', 13);
INSERT INTO `list_1` VALUES (138, '天水师范大学', 13);
INSERT INTO `list_1` VALUES (139, '甘肃中医药大学', 13);
INSERT INTO `list_1` VALUES (140, '甘肃农业大学', 13);
INSERT INTO `list_1` VALUES (141, '甘肃政法大学', 13);
INSERT INTO `list_1` VALUES (142, '四川大学', 14);
INSERT INTO `list_1` VALUES (143, '西南交通大学', 14);
INSERT INTO `list_1` VALUES (144, '电子科技大学', 14);
INSERT INTO `list_1` VALUES (145, '西华大学', 14);
INSERT INTO `list_1` VALUES (146, '成都理工大学', 14);
INSERT INTO `list_1` VALUES (147, '四川农业大学', 14);
INSERT INTO `list_1` VALUES (148, '成都中医药大学', 14);
INSERT INTO `list_1` VALUES (149, '西南石油大学', 14);
INSERT INTO `list_1` VALUES (150, '四川轻化工大学', 14);
INSERT INTO `list_1` VALUES (151, '成都信息工程大学', 14);
INSERT INTO `list_1` VALUES (152, '青岛大学', 15);
INSERT INTO `list_1` VALUES (153, '山东科技大学', 15);
INSERT INTO `list_1` VALUES (154, '青岛农业大学', 15);
INSERT INTO `list_1` VALUES (155, '中国石油大学(华东)', 15);
INSERT INTO `list_1` VALUES (156, '山东大学', 15);
INSERT INTO `list_1` VALUES (157, '烟台大学', 15);
INSERT INTO `list_1` VALUES (158, '济南大学', 15);
INSERT INTO `list_1` VALUES (159, '中国海洋大学', 15);
INSERT INTO `list_1` VALUES (160, '山东理工大学', 15);
INSERT INTO `list_1` VALUES (161, '山东建筑大学', 15);
INSERT INTO `list_1` VALUES (162, '厦门大学', 16);
INSERT INTO `list_1` VALUES (163, '集美大学', 16);
INSERT INTO `list_1` VALUES (164, '福州大学', 16);
INSERT INTO `list_1` VALUES (165, '华侨大学', 16);
INSERT INTO `list_1` VALUES (166, '福建师范大学', 16);
INSERT INTO `list_1` VALUES (167, '福建农林大学', 16);
INSERT INTO `list_1` VALUES (168, '福建医科大学', 16);
INSERT INTO `list_1` VALUES (169, '福建中医药大学', 16);
INSERT INTO `list_1` VALUES (170, '武夷学院', 16);
INSERT INTO `list_1` VALUES (171, '莆田学院', 16);
INSERT INTO `list_1` VALUES (172, '郑州大学', 17);
INSERT INTO `list_1` VALUES (173, '河南理工大学', 17);
INSERT INTO `list_1` VALUES (174, '华北水利水电大学', 17);
INSERT INTO `list_1` VALUES (175, '河南师范大学', 17);
INSERT INTO `list_1` VALUES (176, '河南工业大学', 17);
INSERT INTO `list_1` VALUES (177, '郑州航空工业管理学院', 17);
INSERT INTO `list_1` VALUES (178, '洛阳师范学院', 17);
INSERT INTO `list_1` VALUES (179, '南阳理工学院', 17);
INSERT INTO `list_1` VALUES (180, '河南城建学院', 17);
INSERT INTO `list_1` VALUES (181, '河南工学院', 17);
INSERT INTO `list_1` VALUES (182, '西南大学', 18);
INSERT INTO `list_1` VALUES (183, '重庆大学', 18);
INSERT INTO `list_1` VALUES (184, '重庆工商大学', 18);
INSERT INTO `list_1` VALUES (185, '重庆邮电大学', 18);
INSERT INTO `list_1` VALUES (186, '重庆交通大学', 18);
INSERT INTO `list_1` VALUES (187, '四川外国语大学', 18);
INSERT INTO `list_1` VALUES (188, '重庆医科大学', 18);
INSERT INTO `list_1` VALUES (189, '长江师范学院', 18);
INSERT INTO `list_1` VALUES (190, '重庆科技学院', 18);
INSERT INTO `list_1` VALUES (191, '重庆三峡学院', 18);
INSERT INTO `list_1` VALUES (192, '昆明理工大学', 19);
INSERT INTO `list_1` VALUES (193, '云南大学', 19);
INSERT INTO `list_1` VALUES (194, '云南财经大学', 19);
INSERT INTO `list_1` VALUES (195, '云南师范大学', 19);
INSERT INTO `list_1` VALUES (196, '昆明医科大学', 19);
INSERT INTO `list_1` VALUES (197, '云南农业大学', 19);
INSERT INTO `list_1` VALUES (198, '西南林业大学', 19);
INSERT INTO `list_1` VALUES (199, '云南民族大学', 19);
INSERT INTO `list_1` VALUES (200, '云南中医药大学', 19);
INSERT INTO `list_1` VALUES (201, '云南警官学院', 19);
INSERT INTO `list_1` VALUES (202, '河北大学', 20);
INSERT INTO `list_1` VALUES (203, '华北理工大学', 20);
INSERT INTO `list_1` VALUES (204, '河北经贸大学', 20);
INSERT INTO `list_1` VALUES (205, '河北地质大学', 20);
INSERT INTO `list_1` VALUES (206, '东北大学秦皇岛分院', 20);
INSERT INTO `list_1` VALUES (207, '北化航天工业学院', 20);
INSERT INTO `list_1` VALUES (208, '河北农业大学', 20);
INSERT INTO `list_1` VALUES (209, '中央司法警官学院', 20);
INSERT INTO `list_1` VALUES (210, '河北金融学院', 20);
INSERT INTO `list_1` VALUES (211, '邯郸学院', 20);
INSERT INTO `list_1` VALUES (212, '南昌大学', 21);
INSERT INTO `list_1` VALUES (213, '华东交通大学', 21);
INSERT INTO `list_1` VALUES (214, '南昌航空大学', 21);
INSERT INTO `list_1` VALUES (215, '江西理工大学', 21);
INSERT INTO `list_1` VALUES (216, '江西师范大学', 21);
INSERT INTO `list_1` VALUES (217, '江西农业大学', 21);
INSERT INTO `list_1` VALUES (218, '东华理工大学', 21);
INSERT INTO `list_1` VALUES (219, '江西科技师范大学', 21);
INSERT INTO `list_1` VALUES (220, '井冈山大学', 21);
INSERT INTO `list_1` VALUES (221, '南昌工程学院', 21);
INSERT INTO `list_1` VALUES (222, '中北大学', 22);
INSERT INTO `list_1` VALUES (223, '山西大学', 22);
INSERT INTO `list_1` VALUES (224, '山西大同大学', 22);
INSERT INTO `list_1` VALUES (225, '山西农业大学', 22);
INSERT INTO `list_1` VALUES (226, '山西中医药大学', 22);
INSERT INTO `list_1` VALUES (227, '晋中学院', 22);
INSERT INTO `list_1` VALUES (228, '太原工业学院', 22);
INSERT INTO `list_1` VALUES (229, '长治学院', 22);
INSERT INTO `list_1` VALUES (230, '山西传媒学院’', 22);
INSERT INTO `list_1` VALUES (231, '太原学院', 22);
INSERT INTO `list_1` VALUES (232, '贵州大学', 23);
INSERT INTO `list_1` VALUES (233, '贵州财经大学', 23);
INSERT INTO `list_1` VALUES (234, '遵义师范学院', 23);
INSERT INTO `list_1` VALUES (235, '贵州医科大学', 23);
INSERT INTO `list_1` VALUES (236, '贵州民族大学', 23);
INSERT INTO `list_1` VALUES (237, '贵州商学院', 23);
INSERT INTO `list_1` VALUES (238, '贵州大学科技学院', 23);
INSERT INTO `list_1` VALUES (239, '凯里学院', 23);
INSERT INTO `list_1` VALUES (240, '六盘水师范学院', 23);
INSERT INTO `list_1` VALUES (241, '贵州警官学院', 23);
INSERT INTO `list_1` VALUES (242, '广西大学', 24);
INSERT INTO `list_1` VALUES (243, '广西民族大学', 24);
INSERT INTO `list_1` VALUES (244, '南宁师范大学', 24);
INSERT INTO `list_1` VALUES (245, '桂林理工大学', 24);
INSERT INTO `list_1` VALUES (246, '桂林电子科技大学', 24);
INSERT INTO `list_1` VALUES (247, '广西中医药大学', 24);
INSERT INTO `list_1` VALUES (248, '北部湾大学', 24);
INSERT INTO `list_1` VALUES (249, '桂林航天工业学院', 24);
INSERT INTO `list_1` VALUES (250, '贺州学院', 24);
INSERT INTO `list_1` VALUES (251, '广西民族师范学院', 24);
INSERT INTO `list_1` VALUES (252, '内蒙古大学', 25);
INSERT INTO `list_1` VALUES (253, '内蒙古科技大学', 25);
INSERT INTO `list_1` VALUES (254, '内蒙古医科大学', 25);
INSERT INTO `list_1` VALUES (255, '内蒙古财经大学', 25);
INSERT INTO `list_1` VALUES (256, '内蒙古师范大学', 25);
INSERT INTO `list_1` VALUES (257, '内蒙古民族大学', 25);
INSERT INTO `list_1` VALUES (258, '内蒙古工业大学', 25);
INSERT INTO `list_1` VALUES (259, '赤峰学院', 25);
INSERT INTO `list_1` VALUES (260, '呼伦贝尔学院', 25);
INSERT INTO `list_1` VALUES (261, '集宁师范学院', 25);
INSERT INTO `list_1` VALUES (262, '北方民族大学', 26);
INSERT INTO `list_1` VALUES (263, '宁夏大学', 26);
INSERT INTO `list_1` VALUES (264, '宁夏医科大学', 26);
INSERT INTO `list_1` VALUES (265, '中国矿业大学银川学院', 26);
INSERT INTO `list_1` VALUES (266, '宁夏理工学院', 26);
INSERT INTO `list_1` VALUES (267, '宁夏师范学院', 26);
INSERT INTO `list_1` VALUES (268, '银川能源学院', 26);
INSERT INTO `list_1` VALUES (269, '宁夏工商职业技术学院', 26);
INSERT INTO `list_1` VALUES (270, '宁夏大学新华学院', 26);
INSERT INTO `list_1` VALUES (271, '宁夏体育职业学院', 26);
INSERT INTO `list_1` VALUES (272, '青海大学', 27);
INSERT INTO `list_1` VALUES (273, '青海师范大学', 27);
INSERT INTO `list_1` VALUES (274, '青海民族大学', 27);
INSERT INTO `list_1` VALUES (275, '青海大学昆仑学院', 27);
INSERT INTO `list_1` VALUES (276, '青海警官职业学院', 27);
INSERT INTO `list_1` VALUES (277, '青海畜牧兽医职业技术学院', 27);
INSERT INTO `list_1` VALUES (278, '西宁城市职业技术学院', 27);
INSERT INTO `list_1` VALUES (279, '青海柴达职业技术学院', 27);
INSERT INTO `list_1` VALUES (280, '青海卫生职业技术学院', 27);
INSERT INTO `list_1` VALUES (281, '青海建筑职业技术学院', 27);
INSERT INTO `list_1` VALUES (282, '石河子大学', 28);
INSERT INTO `list_1` VALUES (283, '新疆大学', 28);
INSERT INTO `list_1` VALUES (284, '新疆医科大学', 28);
INSERT INTO `list_1` VALUES (285, '新疆财经大学', 28);
INSERT INTO `list_1` VALUES (286, '塔里木大学', 28);
INSERT INTO `list_1` VALUES (287, '新疆农业大学', 28);
INSERT INTO `list_1` VALUES (288, '新疆工程学院', 28);
INSERT INTO `list_1` VALUES (289, '伊犁师范大学', 28);
INSERT INTO `list_1` VALUES (290, '新疆警察学院', 28);
INSERT INTO `list_1` VALUES (291, '新疆理工学院', 28);
INSERT INTO `list_1` VALUES (292, '海南大学', 29);
INSERT INTO `list_1` VALUES (293, '三亚学院', 29);
INSERT INTO `list_1` VALUES (294, '海南师范大学', 29);
INSERT INTO `list_1` VALUES (295, '海口经济学院', 29);
INSERT INTO `list_1` VALUES (296, '琼台师范学院', 29);
INSERT INTO `list_1` VALUES (297, '海南政法职业学院', 29);
INSERT INTO `list_1` VALUES (298, '海南外国语职业学院', 29);
INSERT INTO `list_1` VALUES (299, '海南热带海洋学院', 29);
INSERT INTO `list_1` VALUES (300, '三亚理工职业学院', 29);
INSERT INTO `list_1` VALUES (301, '海南科技职业大学', 29);
INSERT INTO `list_1` VALUES (302, '西藏大学', 30);
INSERT INTO `list_1` VALUES (303, '西藏藏医药大学', 30);
INSERT INTO `list_1` VALUES (304, '拉萨师范高等专科学院', 30);
INSERT INTO `list_1` VALUES (305, '西藏职业技术学院', 30);
INSERT INTO `list_1` VALUES (306, '西藏农牧学院', 30);
INSERT INTO `list_1` VALUES (307, '西藏职业技术学院', 30);
INSERT INTO `list_1` VALUES (308, '香港城市大学', 31);
INSERT INTO `list_1` VALUES (309, '香港中文大学', 31);
INSERT INTO `list_1` VALUES (310, '香港科技大学', 31);
INSERT INTO `list_1` VALUES (311, '香港大学', 31);
INSERT INTO `list_1` VALUES (312, '香港公开大学', 31);
INSERT INTO `list_1` VALUES (313, '香港树仁大学', 31);
INSERT INTO `list_1` VALUES (314, '珠海学院', 31);
INSERT INTO `list_1` VALUES (315, '香港教育学院', 31);
INSERT INTO `list_1` VALUES (316, '香港浸会大学', 31);
INSERT INTO `list_1` VALUES (317, '香港理工大学', 31);
INSERT INTO `list_1` VALUES (322, '澳门大学', 32);
INSERT INTO `list_1` VALUES (323, '澳门理工学院', 32);
INSERT INTO `list_1` VALUES (324, '澳门旅游学院', 32);
INSERT INTO `list_1` VALUES (325, '澳门保安部队高等学校', 32);
INSERT INTO `list_1` VALUES (326, '澳门科技大学', 32);
INSERT INTO `list_1` VALUES (327, '澳门城市大学', 32);
INSERT INTO `list_1` VALUES (328, '圣若瑟大学', 32);
INSERT INTO `list_1` VALUES (329, '中西创新学院', 32);
INSERT INTO `list_1` VALUES (330, '澳门管理学院', 32);
INSERT INTO `list_1` VALUES (331, '澳门旅游学院', 32);
INSERT INTO `list_1` VALUES (332, '东北大学', 33);
INSERT INTO `list_1` VALUES (333, '大连大学', 33);
INSERT INTO `list_1` VALUES (334, '辽宁大学', 33);
INSERT INTO `list_1` VALUES (335, '沈阳工业大学', 33);
INSERT INTO `list_1` VALUES (336, '中国医科大学', 33);
INSERT INTO `list_1` VALUES (337, '大连海洋大学', 33);
INSERT INTO `list_1` VALUES (338, '大连交通大学', 33);
INSERT INTO `list_1` VALUES (339, '大连民族大学', 33);
INSERT INTO `list_1` VALUES (340, '沈阳航空航天大学', 33);
INSERT INTO `list_1` VALUES (341, '辽宁工业大学', 33);
INSERT INTO `list_1` VALUES (342, '国立政治大学', 34);
INSERT INTO `list_1` VALUES (343, '国立清华大学', 34);
INSERT INTO `list_1` VALUES (344, '国立台湾大学', 34);
INSERT INTO `list_1` VALUES (345, '国立成功大学', 34);
INSERT INTO `list_1` VALUES (346, '国立中兴大学', 34);
INSERT INTO `list_1` VALUES (347, '国立交通大学', 34);
INSERT INTO `list_1` VALUES (348, '国立中央大学', 34);
INSERT INTO `list_1` VALUES (349, '国立中山大学', 34);
INSERT INTO `list_1` VALUES (350, '国立台湾海洋大学', 34);
INSERT INTO `list_1` VALUES (351, '国立中正大学', 34);

SET FOREIGN_KEY_CHECKS = 1;
