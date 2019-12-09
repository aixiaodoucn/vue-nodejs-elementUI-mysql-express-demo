/*
Navicat MySQL Data Transfer

Source Server         : 119.23.191.165
Source Server Version : 50643
Source Host           : 119.23.191.165:3306
Source Database       : jk

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-12-03 16:51:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_dept_info
-- ----------------------------
DROP TABLE IF EXISTS `base_dept_info`;
CREATE TABLE `base_dept_info` (
  `dept_id` varchar(32) NOT NULL COMMENT '主键ID',
  `org_id` varchar(32) DEFAULT NULL COMMENT '所属机构ID',
  `dept_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_userid` varchar(10) DEFAULT NULL COMMENT '创建人',
  `if_deleted` int(11) DEFAULT NULL COMMENT '是否删除',
  `flag` int(11) NOT NULL COMMENT '部门标识  区别机构',
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dept_info
-- ----------------------------
INSERT INTO `base_dept_info` VALUES ('0', '4', '社区保健科', null, null, '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('09f24e4798474b41ba52b3df9b15ad49', '21', '新录入职工', '2019-01-11 14:30:08', null, '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('1', '0', '天职', '2018-12-25 16:58:14', '1', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('10', '1', '社区保健科', null, null, '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('100381b215c54726a826bf92e119fca5', '21', '外借人员', '2019-01-11 14:33:15', null, '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('102', '46', '防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('103', '46', '王稳庄慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('110', '2', '社区保健科', null, null, '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('122', '21', '食堂', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('123', '21', '值班室(传达室)', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('140', '3', '社区保健科', null, null, '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('142', '21', '.放射卫生', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('143', '41', '杨柳青镇慢病科', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('144', '41', '杨柳青镇防保科', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('145', '3', '中北镇慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('146', '3', '中北镇防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('147', '42', '辛口镇慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('148', '42', '辛口镇防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('149', '43', '张家窝慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('150', '43', '张家窝防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('151', '44', '精武镇慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('152', '44', '精武镇防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('153', '1', '李七庄慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('154', '1', '李七庄防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('155', '2', '西营门慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('156', '2', '西营门防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('157', '45', '大寺镇慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('158', '45', '大寺镇防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('162', '46', '慢病体检科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('182', '1', '李七庄健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('183', '2', '西营门健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('184', '3', '中北镇健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('185', '41', '健康教育', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('186', '42', '辛口镇健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('187', '43', '张家窝健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('188', '44', '精武镇健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('189', '45', '大寺镇健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('190', '46', '王稳庄健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('191', '131', '西青医院健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('192', '62', '杨柳青健康教育科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('202', '1', '李七庄免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('203', '1', '李七庄性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('204', '1', '李七庄传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('205', '2', '西营门性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('206', '2', '西营门传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('207', '2', '西营门免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('208', '3', '中北镇传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('209', '3', '中北镇性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('210', '3', '中北镇免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('211', '42', '辛口镇免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('212', '42', '辛口镇传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('213', '42', '辛口镇性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('214', '43', '张家窝传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('215', '43', '张家窝性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('216', '43', '张家窝免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('217', '62', '杨柳青传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('218', '62', '杨柳青免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('219', '44', '精武镇免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('22', '21', '办公室', '2018-12-25 16:58:14', '182', '0', '1', '3');
INSERT INTO `base_dept_info` VALUES ('220', '44', '精武镇传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('221', '44', '精武镇性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('222', '45', '大寺镇传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('223', '62', '杨柳青性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('224', '45', '大寺镇性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('225', '62', '杨柳青慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('226', '45', '大寺镇免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('227', '46', '王稳庄免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('228', '46', '王稳庄性病艾滋病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('229', '46', '王稳庄传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('23', '21', '微生物检验科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('230', '131', '西青医院传染病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('231', '131', '西青医院性病艾滋病防控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('232', '131', '西青医院慢病科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('233', '131', '西青医院免疫规划科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('24', '21', '理化检验科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('242', '62', '杨柳青防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('25', '21', '.体检科', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('26', '21', '总务科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('262', '131', '西青医院防保科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('27', '21', '性艾科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('28', '21', '健教科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('282', '21', '突发应急', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('29', '21', '质控科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('3', '21', '传控科', '2018-12-25 16:58:14', '1', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('30', '21', '.*物资科', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('302', '21', '中心主任室', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('4', '21', '信息科', '2018-12-25 16:58:14', '1', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('43428b7185744ae5a7807a160318b357', '131', '222', '2019-01-25 10:14:08', null, '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('44', '21', '. 结核病防治所', '2018-12-25 16:58:14', '182', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('48de27196b4f48b08ad7ed648861dbf4', '0', '测试12312', '2019-04-16 09:59:24', null, '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('5', '21', '免疫规划科', '2018-12-25 16:58:14', '1', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('6', '21', '卫生科', '2018-12-25 16:58:14', '1', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('62', '21', '传控科（突发办）', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('63', '21', '精神卫生科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('7', '21', '病媒消毒科', '2018-12-25 16:58:14', '1', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('8', '21', '疾控中心管理科', '2018-12-25 16:58:14', '1', '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('82', '21', '财务科', '2018-12-25 16:58:14', '182', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('93735b00b54e491aabddf883e6afd3b6', '131', '22222', '2019-01-25 10:01:24', null, '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('998', '21', '慢病防控科', '2018-12-25 16:58:14', '1', '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('a4cdb8abf6014340a8219cd7f3f36600', '21', '测试', '2019-03-07 11:03:01', null, '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('a5638a66c25d4a48b2b9e17c3bfe4852', '21', '党办', '2019-01-11 14:30:25', null, '0', '1', '4');
INSERT INTO `base_dept_info` VALUES ('b5e877f2d3094ad8a0d61019121b93d9', '21', '测试', '2019-03-06 16:26:03', null, '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('bd6c0238fdc94ad8a6bfd811032b6cfd', '21', '中心业务专家', '2019-01-11 14:30:38', null, '0', '1', '999');
INSERT INTO `base_dept_info` VALUES ('e0802b5f00f54cc9ae8813737b4ce218', '131', '1111', '2019-01-25 09:31:39', null, '1', '1', '999');
INSERT INTO `base_dept_info` VALUES ('fae473268c4a4f5bbda351586c7f69cc', '131', '2222', '2019-01-25 09:57:46', null, '1', '1', '999');

-- ----------------------------
-- Table structure for base_dic
-- ----------------------------
DROP TABLE IF EXISTS `base_dic`;
CREATE TABLE `base_dic` (
  `dic_id` varchar(32) NOT NULL,
  `dic_type` varchar(200) NOT NULL,
  `dic_code` varchar(50) NOT NULL,
  `dic_label` varchar(200) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `order_num` int(11) DEFAULT NULL COMMENT '排序号\r\n',
  `if_deleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`dic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dic
-- ----------------------------
INSERT INTO `base_dic` VALUES ('00ca9e12bc0b49d28d711a49a8ab707d', 'JK_STREET_DICT', '12011602', '滨海新区塘沽于家堡街', '120107', '196', '0');
INSERT INTO `base_dic` VALUES ('012d2c193ba84dc3a8752241fafaf255', 'JK_STREET_DICT', '12010203', '河东区上杭路街', '120102', '32', '0');
INSERT INTO `base_dic` VALUES ('015887fc5103407381fe68b10729dc06', 'JK_OCCUPATION_DICT', '1406', '医疗卫生辅助服务人员', '0', '33', '0');
INSERT INTO `base_dic` VALUES ('016108caf9544db9821f3c9106246701', 'JK_STREET_DICT', '12010601', '红桥区芥园街', '120106', '81', '0');
INSERT INTO `base_dic` VALUES ('016916616a2b4d029f2190af8e067086', 'JK_NATION_DICT', '47', '保安族', '0', '47', '0');
INSERT INTO `base_dic` VALUES ('021a9dcec50446bc928225e73ce11a28', 'JK_STREET_DICT', '12010102', '和平区南营门街', '120101', '24', '0');
INSERT INTO `base_dic` VALUES ('02dd00d4d66d46efb64df68079dafcd6', 'JK_STREET_DICT', '12011207', '津南区咸水沽镇', '120112', '122', '0');
INSERT INTO `base_dic` VALUES ('03e2d680ea434dac9fe18a94545d0f49', 'JK_STREET_DICT', '12022113', '宁河县宁河镇', '120221', '239', '0');
INSERT INTO `base_dic` VALUES ('04e2212582444b55b765c16bc6655fa7', 'JK_STREET_DICT', '12010609', '红桥区咸阳北路街', '120106', '88', '0');
INSERT INTO `base_dic` VALUES ('05803e2f0fd8490f823fe33fe37850d9', 'JK_STREET_DICT', '12011508', '宝坻区新开口镇', '120115', '177', '0');
INSERT INTO `base_dic` VALUES ('072c28b45df646cd923e31c29607dba2', 'JK_STREET_DICT', '12011010', '东丽区无瑕街', '120110', '98', '0');
INSERT INTO `base_dic` VALUES ('0855cd205a8247c7aa93a86de006da2c', 'JK_OCCUPATION_DICT', '1616', '建筑材料生产加工人员', '0', '59', '0');
INSERT INTO `base_dic` VALUES ('08c034e32dbb453fbe2453dcd185f1c4', 'JK_STREET_DICT', '12022302', '静海县双塘镇', '120223', '247', '0');
INSERT INTO `base_dic` VALUES ('0a83b60ddbfa4180834c118d2d7b0652', 'JK_OCCUPATION_DICT', '1212', '新闻出版、文化工作人员', '0', '19', '0');
INSERT INTO `base_dic` VALUES ('0aa89409701846588d02d3cfd93d750b', 'JK_STREET_DICT', '120113', '北辰区', '0', '12', '0');
INSERT INTO `base_dic` VALUES ('0b41c479b15b4fd39b8718be44d11f56', 'JK_STREET_DICT', '12011315', '北辰区瑞景街', '120113', '136', '0');
INSERT INTO `base_dic` VALUES ('0b880ac91ec74ad6adbc6edb9df29313', 'JK_STREET_DICT', '12011416', '武清区大孟庄镇', '120114', '154', '0');
INSERT INTO `base_dic` VALUES ('0ba9fcdbf10248a2977151ce5e840f99', 'JK_NATION_DICT', '45', '鄂温克族', '0', '45', '0');
INSERT INTO `base_dic` VALUES ('0bd0b38e042d405db9509d13ac93b29d', 'JK_OCCUPATION_DICT', '1617', '玻璃、陶瓷、搪瓷及其制品生产加工人员', '0', '60', '0');
INSERT INTO `base_dic` VALUES ('0c174e29c41a4e6c8e4b9cd8541839f8', 'JK_STREET_DICT', '12011417', '武清区泗村店镇', '120114', '155', '0');
INSERT INTO `base_dic` VALUES ('0c20537367e44957acb7874c3ae95c39', 'JK_STREET_DICT', '12022508', '蓟县尤古庄镇', '120225', '272', '0');
INSERT INTO `base_dic` VALUES ('0c2522e7069b43dbad8b1d8c92c622e4', 'JK_STREET_DICT', '12022114', '宁河县廉庄子乡', '120221', '240', '0');
INSERT INTO `base_dic` VALUES ('0c933310dd9c4be2b6acea6c7c5b8e36', 'JK_STREET_DICT', '12010412', '南开区水上公园街', '120104', '68', '0');
INSERT INTO `base_dic` VALUES ('0d67334cbed74ceda639cc2be765c96f', 'JK_OCCUPATION_DICT', '1606', '机械设备修理人员', '0', '49', '0');
INSERT INTO `base_dic` VALUES ('0d6767402c0c4bf09a1c2e260665b121', 'JK_STREET_DICT', '120111', '西青区', '0', '10', '0');
INSERT INTO `base_dic` VALUES ('0d8998bb07924ce79d1d21b97cab74cc', 'JK_OCCUPATION_DICT', '2200', '无业或待业', '0', '75', '0');
INSERT INTO `base_dic` VALUES ('0daa4727ca37459fb208d682004816a5', 'JK_STREET_DICT', '12011614', '滨海新区塘沽保税区', '120107', '208', '0');
INSERT INTO `base_dic` VALUES ('0ddc74d1632c40b380300e206eb8fba7', 'JK_STREET_DICT', '12011111', '西青区工农联盟农场', '120111', '112', '0');
INSERT INTO `base_dic` VALUES ('0eab6282b83740bf94564c4073041f8c', 'JK_STREET_DICT', '12011621', '滨海新区汉沽寨上街', '120108', '210', '0');
INSERT INTO `base_dic` VALUES ('0efdfb67ae3642ad98ce53763c8a8616', 'JK_STREET_DICT', 'P12011630', '大港区', '0', '17', '0');
INSERT INTO `base_dic` VALUES ('0f4e4e4dfda945849d3b5843aad484c1', 'JK_STREET_DICT', '120102', '河东区', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('0f972bd4c1284673a254420b748ec890', 'JK_OCCUPATION_DICT', '1502', '林业生产及野生动植物保护人员', '0', '38', '0');
INSERT INTO `base_dic` VALUES ('1', 'STD_DEPT', '01', '预防保健科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('10', 'STD_DEPT', '0307', '内分泌专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('100', 'STD_DEPT', '1503', '药物依赖专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1009', 'JK_HEIGHT_DICT', 'I10', '原发性确诊高血压 I10', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('101', 'STD_DEPT', '1504', '精神康复专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('102', 'STD_DEPT', '1505', '社区防治专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('103', 'STD_DEPT', '1506', '临床心理专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('104', 'STD_DEPT', '1507', '司法精神专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('105', 'STD_DEPT', '1508', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('105417b89ccd4b65947fdc540d6bf44e', 'JK_OCCUPATION_DICT', '1615', '木材加工、人造板生产及木材制品制作人员、制浆、造纸和纸制品生产人员', '0', '58', '0');
INSERT INTO `base_dic` VALUES ('106', 'STD_DEPT', '16', '传染科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('107', 'STD_DEPT', '1601', '肠道传染病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('108', 'STD_DEPT', '1602', '呼吸道传染病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('109', 'STD_DEPT', '1603', '肝炎专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('11', 'STD_DEPT', '0308', '免疫学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('110', 'STD_DEPT', '1604', '虫媒传染病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1101', 'JK_HEART_DICT', 'I21', '冠心病猝死', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1102', 'JK_HEART_DICT', 'I21.9', '急性心肌埂塞', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1103', 'JK_HEART_DIAGNOSISUNIT_DICT', '01', '心电图', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1104', 'JK_HEART_DIAGNOSISUNIT_DICT', '02', '心电彩超', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1105', 'JK_HEART_DIAGNOSISUNIT_DICT', '03', '冠状造影', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1106', 'JK_HEART_DIAGNOSISUNIT_DICT', '04', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1107', 'JK_HEART_DIAGNOSISUNIT_DICT', '05', '心电图、心电彩超', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1108', 'JK_HEART_DIAGNOSISUNIT_DICT', '06', '心电图、冠状造影', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1109', 'JK_HEART_DIAGNOSISUNIT_DICT', '07', '心电图、心电彩超、冠状造影', '0', null, '0');
INSERT INTO `base_dic` VALUES ('111', 'STD_DEPT', '1605', '动物源性传染病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1110', 'JK_HEART_DIAGNOSISUNIT_DICT', '08', '心电彩超、冠状造影', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1111', 'JK_HEART_DIAGNOSISUNIT_DICT', '09', '心电图、其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1112', 'JK_HEART_DIAGNOSISUNIT_DICT', '10', '心脏彩超、其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1113', 'JK_HEART_DIAGNOSISUNIT_DICT', '11', '冠状造影、其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1114', 'JK_HEART_DIAGNOSISUNIT_DICT', '12', '心电图、心电彩超、冠状造影、其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1115', 'JK_BRAIN_DICT', 'I60', '蛛网膜下腔出血', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1116', 'JK_BRAIN_DICT', 'I61', '脑出血', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1117', 'JK_BRAIN_DICT', 'I63', '脑梗塞', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1118', 'JK_BRAIN_DICT', 'I69', '未分类', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1119', 'JK_BRAIN_DIAGNOSISUNIT_DICT', '21', 'CT', '0', null, '0');
INSERT INTO `base_dic` VALUES ('112', 'STD_DEPT', '1606', '蠕虫病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1120', 'JK_BRAIN_DIAGNOSISUNIT_DICT', '22', '核磁共振', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1121', 'JK_BRAIN_DIAGNOSISUNIT_DICT', '23', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1122', 'JK_BRAIN_DIAGNOSISUNIT_DICT', '24', 'CT、核磁共振', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1123', 'JK_BRAIN_DIAGNOSISUNIT_DICT', '25', 'CT、其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1124', 'JK_BRAIN_DIAGNOSISUNIT_DICT', '26', '核磁共振、其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1125', 'JK_BRAIN_DIAGNOSISUNIT_DICT', '27', 'CT、核磁共振、其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1126', 'JK_GLUCOSE_DICT', 'E10', '1型糖尿病', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1127', 'JK_GLUCOSE_DICT', 'E11', '2型糖尿病', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1128', 'JK_GLUCOSE_DICT', 'O24', '妊娠糖尿病', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1129', 'JK_GLUCOSE_DICT', 'E12', '营养不良相关性糖尿病', '0', null, '0');
INSERT INTO `base_dic` VALUES ('113', 'STD_DEPT', '1607', '其它', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1130', 'JK_GLUCOSE_DICT', 'E13', '其他特指的糖尿病', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1131', 'JK_GLUCOSE_DICT', 'E14', '未特指的糖尿病', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1132', 'JK_GLUCOSE_COMPLICATIONS_DICT', '0', '昏迷', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1133', 'JK_GLUCOSE_COMPLICATIONS_DICT', '1', '酮症酸中毒', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1134', 'JK_GLUCOSE_COMPLICATIONS_DICT', '2', '肾', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1135', 'JK_GLUCOSE_COMPLICATIONS_DICT', '3', '眼', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1136', 'JK_GLUCOSE_COMPLICATIONS_DICT', '4', '神经', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1137', 'JK_GLUCOSE_COMPLICATIONS_DICT', '5', '周围循环', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1138', 'JK_GLUCOSE_COMPLICATIONS_DICT', '6', '其他特指并发症', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1139', 'JK_GLUCOSE_COMPLICATIONS_DICT', '7', '多个并发症', '0', null, '0');
INSERT INTO `base_dic` VALUES ('114', 'STD_DEPT', '17', '结核病科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1140', 'JK_GLUCOSE_COMPLICATIONS_DICT', '8', '未特指并发症', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1141', 'JK_GLUCOSE_COMPLICATIONS_DICT', '9', '不伴并发症', '0', null, '0');
INSERT INTO `base_dic` VALUES ('115', 'STD_DEPT', '18', '地方病科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1153', 'JK_PSYCHOSIS_DICT', 'F20', '精神分裂症', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1154', 'JK_PSYCHOSIS_DICT', 'F32', '抑郁症', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1155', 'JK_PSYCHOSIS_DICT', 'F31', '双相障碍', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1156', 'JK_PSYCHOSIS_DICT', 'F30', '躁狂症', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1157', 'JK_PSYCHOSIS_DICT', 'F10', '酒精所致精神障碍', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1158', 'JK_PSYCHOSIS_DICT', 'F02.8', '脑器质性精神障碍', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1159', 'JK_PSYCHOSIS_DICT', 'F99', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('116', 'STD_DEPT', '19', '肿瘤科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1160', 'JK_HARM_REASON_DICT', 'V89', '机动车交通事故', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1161', 'JK_HARM_REASON_DICT', 'W84', '窒息', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1162', 'JK_HARM_REASON_DICT', 'W23', '压伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1163', 'JK_HARM_REASON_DICT', 'W19', '跌倒', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1164', 'JK_HARM_REASON_DICT', 'V10', '非机动车交通事故', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1165', 'JK_HARM_REASON_DICT', 'X70', '悬吊', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1166', 'JK_HARM_REASON_DICT', 'W38', '爆炸伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1167', 'JK_HARM_REASON_DICT', 'W17', '坠落', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1168', 'JK_HARM_REASON_DICT', 'W50', '暴力/斗殴', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1169', 'JK_HARM_REASON_DICT', 'W74', '溺水', '0', null, '0');
INSERT INTO `base_dic` VALUES ('117', 'STD_DEPT', '20', '急诊医学科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1170', 'JK_HARM_REASON_DICT', 'X09', '烧伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1171', 'JK_HARM_REASON_DICT', 'W22', '钝器伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1172', 'JK_HARM_REASON_DICT', 'W31', '机器切割伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1173', 'JK_HARM_REASON_DICT', 'X49', '中毒', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1174', 'JK_HARM_REASON_DICT', 'W64', '动物伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1175', 'JK_HARM_REASON_DICT', 'W34', '火器伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1176', 'JK_HARM_REASON_DICT', 'W26', '穿刺伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1177', 'JK_HARM_REASON_DICT', 'W44', '异物', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1178', 'JK_HARM_REASON_DICT', 'W87', '触电', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1179', 'JK_HARM_REASON_DICT', 'X19', '烫伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('118', 'STD_DEPT', '21', '康复医学科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1180', 'JK_HARM_REASON_DICT', 'W27', '利器切割伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1181', 'JK_HARM_REASON_DICT', 'Y05', '性侵犯', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1182', 'JK_HARM_REASON_DICT', 'W20', '砸伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1183', 'JK_HARM_REASON_DICT', 'Y34.9', '不清楚', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1184', 'JK_HARM_DELIBERATELY_DICT', '1', '非故意', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1185', 'JK_HARM_DELIBERATELY_DICT', '2', '自残/自害', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1186', 'JK_HARM_DELIBERATELY_DICT', '3', '被害/加害', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1187', 'JK_HARM_DELIBERATELY_DICT', '4', '不清楚', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1188', 'HARM_PART_DICT', '1', '全身广泛受伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1189', 'HARM_PART_DICT', '2', '头面部', '0', null, '0');
INSERT INTO `base_dic` VALUES ('119', 'STD_DEPT', '22', '运动医学科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1190', 'JK_HARM_PART_DICT', '3', '颈部', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1191', 'JK_HARM_PART_DICT', '4', '胸部', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1192', 'JK_HARM_PART_DICT', '5', '腹部、下部、腰椎和骨盆', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1193', 'JK_HARM_PART_DICT', '6', '肩和上臂', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1194', 'JK_HARM_PART_DICT', '7', '肘和前臂', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1195', 'JK_HARM_PART_DICT', '8', '腕和手', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1196', 'JK_HARM_PART_DICT', '9', '髋和大腿', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1197', 'JK_HARM_PART_DICT', '10', '膝和小腿', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1198', 'JK_HARM_PART_DICT', '11', '踝和足', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1199', 'JK_HARM_PART_DICT', '12', '神经系统', '0', null, '0');
INSERT INTO `base_dic` VALUES ('12', 'STD_DEPT', '0309', '变态反应专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('120', 'STD_DEPT', '23', '职业病科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1200', 'JK_HARM_PART_DICT', '13', '累及身体多个部位的损伤', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1201', 'JK_HARM_PART_DICT', '14', '通过自然腔口进入异物的效应', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1202', 'JK_HARM_PART_DICT', '15', '其它', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1203', 'JK_HARM_PART_DICT', '16', '不清楚', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1204', 'JK_HARM_TAKE_PLACE_DICT', '1', '家中', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1205', 'JK_HARM_TAKE_PLACE_DICT', '2', '公共居住场所', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1205593c06a344d1baf9083aae31ae20', 'JK_OCCUPATION_DICT', '1621', '文化教育、体育用品制作人员', '0', '64', '0');
INSERT INTO `base_dic` VALUES ('1206', 'JK_HARM_TAKE_PLACE_DICT', '3', '学校和工作场所', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1207', 'JK_HARM_TAKE_PLACE_DICT', '4', '体育和运动场所', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1208', 'JK_HARM_TAKE_PLACE_DICT', '5', '公路/街道', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1209', 'JK_HARM_TAKE_PLACE_DICT', '6', '贸易和服务场所', '0', null, '0');
INSERT INTO `base_dic` VALUES ('121', 'STD_DEPT', '2301', '职业中毒专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1210', 'JK_HARM_TAKE_PLACE_DICT', '7', '工业和建筑场所', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1211', 'JK_HARM_TAKE_PLACE_DICT', '8', '农场/农田', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1212', 'JK_HARM_TAKE_PLACE_DICT', '9', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1213', 'JK_HARM_TAKE_PLACE_DICT', '10', '不清楚', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1214', 'JK_HARM_SEVERITY_DICT', '1', '轻度', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1215', 'JK_HARM_SEVERITY_DICT', '2', '中度', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1216', 'JK_HARM_SEVERITY_DICT', '3', '重度', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1217', 'JK_HARM_SEVERITY_DICT', '4', '死亡', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1218', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '0', '仅有死亡证明书', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1219', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '1', '临床诊断', '0', null, '0');
INSERT INTO `base_dic` VALUES ('122', 'STD_DEPT', '2302', '尘肺专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1220', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '2', '其他专门检查(X线、CT、超声波、内窥镜等)', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1221', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '3', '手术诊断、尸检(无病理)', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1222', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '4', '生化、免疫', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1223', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '5', '细胞学、血片', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1224', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '6', '病理(继发)', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1225', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '7', '病理(原发)', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1226', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '8', '尸检(有病理)', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1227', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '9', '不详', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1228', 'JK_TUMOR_CLINICAL_STAGE', '0', '0', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1229', 'JK_TUMOR_CLINICAL_STAGE', '1', 'I', '0', null, '0');
INSERT INTO `base_dic` VALUES ('123', 'STD_DEPT', '2303', '放射病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1230', 'JK_TUMOR_CLINICAL_STAGE', '2', 'II', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1231', 'JK_TUMOR_CLINICAL_STAGE', '3', 'III', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1232', 'JK_TUMOR_CLINICAL_STAGE', '4', 'IV', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1233', 'JK_TUMOR_CLINICAL_STAGE', '5', '不详', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1234', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '1', 'I级 高分化', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1235', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '2', 'II级 中分化', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1236', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '3', 'III级 低分化', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1237', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '4', 'IV级 未分化，间变', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1238', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '5', 'T细胞', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1239', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '6', 'B细胞，前-B，B前驱', '0', null, '0');
INSERT INTO `base_dic` VALUES ('124', 'STD_DEPT', '2304', '物理因素损伤专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1240', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '7', '无标记淋巴细胞，非T-非B', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1241', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '8', 'NK细胞，自然杀伤细胞', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1242', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '9', '分级或分化程度未确定、未指出或不适用', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1243', 'JK_TUMOR_M_CODE', '1', 'M0期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1244', 'JK_TUMOR_M_CODE', '2', 'M1期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1245', 'JK_TUMOR_M_CODE', '9', '无法评估远处是否转移', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1246', 'JK_TUMOR_N_CODE', '0', 'N0期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1247', 'JK_TUMOR_N_CODE', '1', 'N1期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1248', 'JK_TUMOR_N_CODE', '2', 'N2期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1249', 'JK_TUMOR_N_CODE', '3', 'N3期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('125', 'STD_DEPT', '2305', '职业健康监护专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1250', 'JK_TUMOR_N_CODE', '9', '无法评估区域淋巴结有无转移', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1251', 'JK_TUMOR_T_CODE', '0', 'T0期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1252', 'JK_TUMOR_T_CODE', '1', 'T1期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1253', 'JK_TUMOR_T_CODE', '2', 'T2期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1254', 'JK_TUMOR_T_CODE', '3', 'T3期', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1255', 'JK_TUMOR_T_CODE', '9', '无法评估原发肿瘤大小', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1256', 'JK_HARM_OCCUPATION_DICT', '1', '学龄前', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1257', 'JK_HARM_OCCUPATION_DICT', '2', '学生', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1258', 'JK_HARM_OCCUPATION_DICT', '3', '工人', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1259', 'JK_HARM_OCCUPATION_DICT', '4', '司机', '0', null, '0');
INSERT INTO `base_dic` VALUES ('126', 'STD_DEPT', '2306', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1260', 'JK_HARM_OCCUPATION_DICT', '5', '农民', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1261', 'JK_HARM_OCCUPATION_DICT', '6', '干、职员', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1262', 'JK_HARM_OCCUPATION_DICT', '7', '离退休人员', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1263', 'JK_HARM_OCCUPATION_DICT', '8', '待业/下岗', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1264', 'JK_HARM_OCCUPATION_DICT', '9', '个体商贩', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1265', 'JK_HARM_OCCUPATION_DICT', '10', '民工', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1266', 'JK_HARM_OCCUPATION_DICT', '11', '自由职业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1267', 'JK_HARM_OCCUPATION_DICT', '12', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1268', 'JK_DISEASES_OCCUPATION_DICT', '1', '幼托儿童', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1269', 'JK_DISEASES_OCCUPATION_DICT', '2', '散居儿童', '0', null, '0');
INSERT INTO `base_dic` VALUES ('127', 'STD_DEPT', '24', '临终关怀科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1270', 'JK_DISEASES_OCCUPATION_DICT', '3', '学生', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1271', 'JK_DISEASES_OCCUPATION_DICT', '4', '教师', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1272', 'JK_DISEASES_OCCUPATION_DICT', '5', '保育员及保姆', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1273', 'JK_DISEASES_OCCUPATION_DICT', '6', '餐饮食品业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1274', 'JK_DISEASES_OCCUPATION_DICT', '7', '公共场所服务员', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1275', 'JK_DISEASES_OCCUPATION_DICT', '8', '商业服务', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1276', 'JK_DISEASES_OCCUPATION_DICT', '9', '医务人员', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1277', 'JK_DISEASES_OCCUPATION_DICT', '16', '工人', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1278', 'JK_DISEASES_OCCUPATION_DICT', '17', '民工', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1279', 'JK_DISEASES_OCCUPATION_DICT', '18', '农民', '0', null, '0');
INSERT INTO `base_dic` VALUES ('128', 'STD_DEPT', '25', '特种医学与军事医学科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1280', 'JK_DISEASES_OCCUPATION_DICT', '19', '牧民', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1281', 'JK_DISEASES_OCCUPATION_DICT', '20', '渔(船)民', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1282', 'JK_DISEASES_OCCUPATION_DICT', '21', '海员及长途驾驶员', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1283', 'JK_DISEASES_OCCUPATION_DICT', '22', '干部职员', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1284', 'JK_DISEASES_OCCUPATION_DICT', '23', '离退人员', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1285', 'JK_DISEASES_OCCUPATION_DICT', '24', '家务及待业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1286', 'JK_DISEASES_OCCUPATION_DICT', '25', '不详', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1287', 'JK_DISEASES_OCCUPATION_DICT', '26', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1288', 'JK_DISEASES_SAMPLE_CODE', '1', '术前检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1289', 'JK_DISEASES_SAMPLE_CODE', '2', '受血(制品)前检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('129', 'STD_DEPT', '26', '麻醉科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1290', 'JK_DISEASES_SAMPLE_CODE', '3', '性病门诊', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1291', 'JK_DISEASES_SAMPLE_CODE', '4', '其他就诊者检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1292', 'JK_DISEASES_SAMPLE_CODE', '5', '婚前检查(含涉外婚姻)', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1293', 'JK_DISEASES_SAMPLE_CODE', '6', '孕产期检查', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1294', 'JK_DISEASES_SAMPLE_CODE', '7', '检测咨询', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1295', 'JK_DISEASES_SAMPLE_CODE', '8', '阳性者配偶或性伴检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1296', 'JK_DISEASES_SAMPLE_CODE', '9', '女性阳性者子女检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1297', 'JK_DISEASES_SAMPLE_CODE', '10', '职业暴露检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1298', 'JK_DISEASES_SAMPLE_CODE', '11', '娱乐场所人员体检', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1299', 'JK_DISEASES_SAMPLE_CODE', '12', '有偿供血(浆)人员检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('12b536655b51437b8c1bcadc062037b2', 'JK_STREET_DICT', '12022524', '蓟县许家台镇', '120225', '288', '0');
INSERT INTO `base_dic` VALUES ('13', 'STD_DEPT', '0310', '老年病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('130', 'STD_DEPT', '27', '疼痛科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('131', 'STD_DEPT', '28', '重症医学科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1311', 'JK_DISEASES_SAMPLE_CODE', '13', '无偿献血人员检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1312', 'JK_DISEASES_SAMPLE_CODE', '14', '出入境人员体检', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1313', 'JK_DISEASES_SAMPLE_CODE', '15', '新兵体检', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1314', 'JK_DISEASES_SAMPLE_CODE', '16', '强制/劳教戒毒人员检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1315', 'JK_DISEASES_SAMPLE_CODE', '17', '妇教所/女劳收教人员检测', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1316', 'JK_DISEASES_SAMPLE_CODE', '18', '其他羁押人员体检', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1317', 'JK_DISEASES_SAMPLE_CODE', '19', '专题调查', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1318', 'JK_DISEASES_SAMPLE_CODE', '20', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1319', 'JK_DISEASES_GRTJ_CODE', '1', '注射毒品', '0', null, '0');
INSERT INTO `base_dic` VALUES ('132', 'STD_DEPT', '30', '医学检验科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1320', 'JK_DISEASES_GRTJ_CODE', '2', '异性传播', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1321', 'JK_DISEASES_GRTJ_CODE', '3', '同性传播', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1322', 'JK_DISEASES_GRTJ_CODE', '4', '性接触 + 注射毒品', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1323', 'JK_DISEASES_GRTJ_CODE', '5', '采血(浆)', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1324', 'JK_DISEASES_GRTJ_CODE', '6', '输血/血制品', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1325', 'JK_DISEASES_GRTJ_CODE', '7', '母婴传播', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1326', 'JK_DISEASES_GRTJ_CODE', '8', '职业暴露', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1327', 'JK_DISEASES_GRTJ_CODE', '9', '不详', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1328', 'JK_DISEASES_GRTJ_CODE', '10', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1329', 'JK_DISEASES_HISTORY_DICT', '1', '注射毒品', '0', null, '0');
INSERT INTO `base_dic` VALUES ('133', 'STD_DEPT', '3001', '临床体液、血液专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1330', 'JK_DISEASES_HISTORY_DICT', '2', '异性传播', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1331', 'JK_DISEASES_HISTORY_DICT', '3', '同性传播', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1332', 'JK_DISEASES_HISTORY_DICT', '4', '性接触 + 注射毒品', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1333', 'JK_DISEASES_HISTORY_DICT', '5', '采血(浆)', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1334', 'JK_DISEASES_HISTORY_DICT', '6', '输血/血制品', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1335', 'JK_DISEASES_HISTORY_DICT', '7', '母婴传播', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1336', 'JK_DISEASES_HISTORY_DICT', '8', '职业暴露', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1337', 'JK_DISEASES_HISTORY_DICT', '9', '不详', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1338', 'JK_DISEASES_HISTORY_DICT', '10', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1339', 'JK_DISEASES_TESTRESULT_DICT', '1', '确认结果阳性', '0', null, '0');
INSERT INTO `base_dic` VALUES ('134', 'STD_DEPT', '3002', '临床微生物学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1340', 'JK_DISEASES_TESTRESULT_DICT', '2', '替代策略检测阳性', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1341', 'JK_DISEASES_TESTRESULT_DICT', '3', '核酸检测阳性', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1342', 'JK_DISEASES_SEXHISTORY_DICT', '1', '有', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1343', 'JK_DISEASES_SEXHISTORY_DICT', '2', '无', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1344', 'JK_DISEASES_SEXHISTORY_DICT', '3', '不详', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1345', 'JK_DISEASES_SZD_DICT', '1', '确诊病例', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1346', 'JK_DISEASES_SZD_DICT', '2', '无症状感染', '0', null, '0');
INSERT INTO `base_dic` VALUES ('135', 'STD_DEPT', '3003', '临床生化检验专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('136', 'STD_DEPT', '3004', '临床免疫、血清学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('137', 'STD_DEPT', '3005', '临床细胞分子遗传学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('138', 'STD_DEPT', '3006', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('139', 'STD_DEPT', '31', '病理科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('13bd63b1fba84d5db71dd6cbcacbb7ac', 'JK_STREET_DICT', '120114', '武清区', '0', '13', '0');
INSERT INTO `base_dic` VALUES ('14', 'STD_DEPT', '0311', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('140', 'STD_DEPT', '32', '医学影像科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('141', 'STD_DEPT', '3201', 'X线诊断专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('142', 'STD_DEPT', '3202', 'CT诊断专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('143', 'STD_DEPT', '3203', '磁共振成像诊断专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('144', 'STD_DEPT', '3204', '核医学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('145', 'STD_DEPT', '3205', '超声诊断专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('146', 'STD_DEPT', '3206', '心电诊断专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('147', 'STD_DEPT', '3207', '脑电及脑血流图诊断专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('148', 'STD_DEPT', '3208', '神经肌肉电图专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('149', 'STD_DEPT', '3209', '介入放射学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('15', 'STD_DEPT', '04', '外科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('150', 'STD_DEPT', '3210', '放射治疗专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('151', 'STD_DEPT', '3211', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('152', 'STD_DEPT', '50', '中医科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('152641de9b4e4e0987b81fe0fd4fd0cd', 'JK_NATION_DICT', '25', '水族', '0', '25', '0');
INSERT INTO `base_dic` VALUES ('153', 'STD_DEPT', '5001', '内科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('154', 'STD_DEPT', '5002', '外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('155', 'STD_DEPT', '5003', '妇产科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('156', 'STD_DEPT', '5004', '儿科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('157', 'STD_DEPT', '5005', '皮肤科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('158', 'STD_DEPT', '5006', '眼科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('159', 'STD_DEPT', '5007', '耳鼻咽喉科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('15ebda1079a141c3bf8214bc0b349e5a', 'JK_OCCUPATION_DICT', '2000', '学生', '0', '73', '0');
INSERT INTO `base_dic` VALUES ('16', 'STD_DEPT', '0401', '普通外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('160', 'STD_DEPT', '5008', '口腔科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('161', 'STD_DEPT', '5009', '肿瘤科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('162', 'STD_DEPT', '5010', '骨伤科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('163', 'STD_DEPT', '5011', '肛肠科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('164', 'STD_DEPT', '5012', '老年病科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('165', 'STD_DEPT', '5013', '针灸科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('166', 'STD_DEPT', '5014', '推拿科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('167', 'STD_DEPT', '5015', '康复医学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('168', 'STD_DEPT', '5016', '急诊科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1689e95db3c844308ad03fdc1bf4eb6a', 'JK_STREET_DICT', '12011113', '西青区二石化', '120111', '114', '0');
INSERT INTO `base_dic` VALUES ('169', 'STD_DEPT', '5017', '预防保健科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('17', 'STD_DEPT', '040101', '肝脏移植项目', '0', null, '0');
INSERT INTO `base_dic` VALUES ('170', 'STD_DEPT', '5018', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('170c3d0e977e47ba8a811ebae3d4b7d5', 'JK_OCCUPATION_DICT', '1304', '其他办事人员和有关人员', '0', '26', '0');
INSERT INTO `base_dic` VALUES ('171', 'STD_DEPT', '51', '民族医学科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('172', 'STD_DEPT', '5101', '维吾尔医学', '0', null, '0');
INSERT INTO `base_dic` VALUES ('173', 'STD_DEPT', '5102', '藏医学', '0', null, '0');
INSERT INTO `base_dic` VALUES ('174', 'STD_DEPT', '5103', '蒙医学', '0', null, '0');
INSERT INTO `base_dic` VALUES ('175', 'STD_DEPT', '5104', '彝医学', '0', null, '0');
INSERT INTO `base_dic` VALUES ('175dd485b30f453aa1b549bb789f5f8a', 'JK_STREET_DICT', '120105', '河北区', '0', '7', '0');
INSERT INTO `base_dic` VALUES ('176', 'STD_DEPT', '5105', '傣医学', '0', null, '0');
INSERT INTO `base_dic` VALUES ('177', 'STD_DEPT', '5106', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('178', 'STD_DEPT', '52', '中西医结合科 ', '0', null, '0');
INSERT INTO `base_dic` VALUES ('179', 'STD_OUTPAT_FEE_TYPE', '01', '西药费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('179c764b7d784019bb8561a5c35a2bad', 'JK_STREET_DICT', '12011427', '武清区陈咀镇', '120114', '165', '0');
INSERT INTO `base_dic` VALUES ('18', 'STD_DEPT', '040102', '胰腺移植项目', '0', null, '0');
INSERT INTO `base_dic` VALUES ('180', 'STD_OUTPAT_FEE_TYPE', '02', '中成药费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('180662b60f9d407980b6beecdbb969af', 'JK_STREET_DICT', '12022110', '宁河县潘庄镇', '120221', '237', '0');
INSERT INTO `base_dic` VALUES ('181', 'STD_OUTPAT_FEE_TYPE', '03', '中草药费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('181164e112e642f3955fb23c77fb8cc4', 'JK_OCCUPATION_DICT', '1619', '印刷人员', '0', '62', '0');
INSERT INTO `base_dic` VALUES ('182', 'STD_OUTPAT_FEE_TYPE', '04', '检查费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('183', 'STD_OUTPAT_FEE_TYPE', '05', '治疗费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('184', 'STD_OUTPAT_FEE_TYPE', '06', '放射费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1843714fd5874049a61baaaa3dd6de03', 'JK_STREET_DICT', '120110', '东丽区', '0', '9', '0');
INSERT INTO `base_dic` VALUES ('185', 'STD_OUTPAT_FEE_TYPE', '07', '手术费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('186', 'STD_OUTPAT_FEE_TYPE', '08', '化验费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('187', 'STD_OUTPAT_FEE_TYPE', '09', '输血费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('188', 'STD_OUTPAT_FEE_TYPE', '10', '输氧费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('188b5900758045edbfdda5d63ab590fc', 'JK_STREET_DICT', '12011205', '津南区辛庄镇', '120112', '120', '0');
INSERT INTO `base_dic` VALUES ('189', 'STD_OUTPAT_FEE_TYPE', '11', '体检费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('18e93d2753234843a88e37df08ec12ef', 'JK_STREET_DICT', '12011503', '宝坻区高庄子镇', '120115', '172', '0');
INSERT INTO `base_dic` VALUES ('19', 'STD_DEPT', '040103', '小肠移植项目', '0', null, '0');
INSERT INTO `base_dic` VALUES ('190', 'STD_OUTPAT_FEE_TYPE', '12', '监护费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('191', 'STD_OUTPAT_FEE_TYPE', '13', '观察床费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('192', 'STD_OUTPAT_FEE_TYPE', '14', '材料费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('193', 'STD_OUTPAT_FEE_TYPE', '99', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('194', 'STD_INPAT_FEE_TYPE', '01', '床位费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('195', 'STD_INPAT_FEE_TYPE', '02', '诊察费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('196', 'STD_INPAT_FEE_TYPE', '03', '西药费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('197', 'STD_INPAT_FEE_TYPE', '04', '中成药费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1975250907b2485c885dfe31b0fdc33a', 'JK_STREET_DICT', '12011011', '东丽区新立街', '120110', '99', '0');
INSERT INTO `base_dic` VALUES ('198', 'STD_INPAT_FEE_TYPE', '05', '中草药费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('199', 'STD_INPAT_FEE_TYPE', '06', '检查费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('1a2d882fc5be4956a657107aaf168e65', 'JK_NATION_DICT', '41', '塔吉克族', '0', '41', '0');
INSERT INTO `base_dic` VALUES ('1b4c9e6825914c8c94fe1278a49d81a1', 'JK_STREET_DICT', '12011004', '东丽区丰年村街', '120110', '94', '0');
INSERT INTO `base_dic` VALUES ('1b7669f508af428195cc108f21cb925f', 'JK_OCCUPATION_DICT', '1403', '餐饮服务人员', '0', '30', '0');
INSERT INTO `base_dic` VALUES ('1c3ea978b4454b1d99140830b1c7aa0c', 'JK_OCCUPATION_DICT', '1506', '其他农、林、牧、渔、水利业生产人员', '0', '42', '0');
INSERT INTO `base_dic` VALUES ('1ca943982a5b450b8d2141646c3e195e', 'JK_STREET_DICT', '12011640', '滨海新区大港采油三厂', '120109', '226', '0');
INSERT INTO `base_dic` VALUES ('1cbbdfb855d241d0a8efae4d6158061c', 'JK_PMH_HISTORY_DICT', '1', '肝炎', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('1cd53e2e0180425896dfffd8f657ad77', 'JK_NATION_DICT', '52', '鄂伦春族', '0', '52', '0');
INSERT INTO `base_dic` VALUES ('1da4936d33584888b0c8dd8b6059ec23', 'JK_NATION_DICT', '34', '布朗族', '0', '34', '0');
INSERT INTO `base_dic` VALUES ('1dbcd3998a654a7caab4a8c86be2f388', 'JK_STREET_DICT', '12011612', '滨海新区塘沽新城镇', '120107', '206', '0');
INSERT INTO `base_dic` VALUES ('1ecbb2b5ea114a1e8f3adc951092643b', 'JK_NATION_DICT', '29', '柯尔克孜族', '0', '29', '0');
INSERT INTO `base_dic` VALUES ('1f221220cd544e5bb22587f8a1e4076e', 'JK_STREET_DICT', '12011302', '北辰区天穆镇', '120113', '126', '0');
INSERT INTO `base_dic` VALUES ('1f7ce07debfe48839acae851b6089e27', 'JK_STREET_DICT', '12011601', '滨海新区塘沽新港街', '120107', '195', '0');
INSERT INTO `base_dic` VALUES ('2', 'STD_DEPT', '02', '全科医疗科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('20', 'STD_DEPT', '0402', '神经外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('200', 'STD_INPAT_FEE_TYPE', '07', '治疗费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('201', 'STD_INPAT_FEE_TYPE', '08', '放射费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('202', 'STD_INPAT_FEE_TYPE', '09', '手术费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('203', 'STD_INPAT_FEE_TYPE', '10', '化验费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('204', 'STD_INPAT_FEE_TYPE', '11', '输血费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('205', 'STD_INPAT_FEE_TYPE', '12', '输氧费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('206', 'STD_INPAT_FEE_TYPE', '13', '接生费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('207', 'STD_INPAT_FEE_TYPE', '14', '护理费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('208', 'STD_INPAT_FEE_TYPE', '15', '加床费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('209', 'STD_INPAT_FEE_TYPE', '16', '自费部分', '0', null, '0');
INSERT INTO `base_dic` VALUES ('20e34be626494f68b2a36ded2dd12305', 'JK_NATION_DICT', '11', '满族', '0', '11', '0');
INSERT INTO `base_dic` VALUES ('21', 'STD_DEPT', '0403', '骨科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('210', 'STD_INPAT_FEE_TYPE', '17', '取暖空调费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('211', 'STD_INPAT_FEE_TYPE', '18', '地热水费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('212', 'STD_INPAT_FEE_TYPE', '19', '监护费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('213', 'STD_INPAT_FEE_TYPE', '20', '材料费', '0', null, '0');
INSERT INTO `base_dic` VALUES ('214', 'STD_INPAT_FEE_TYPE', '99', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('214bf16ed653488db91879ea53674451', 'JK_STREET_DICT', '12019999', '市辖区不详县不详乡镇', 'P12000000', '230', '0');
INSERT INTO `base_dic` VALUES ('21bb35f5f5d1494591a612b94560bb35', 'JK_PMH_HISTORY_DICT', '4', '其他', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('21fdd070c5584b698ce81d7cfcd0ba3b', 'JK_STREET_DICT', '12011413', '武清区下伍旗镇', '120114', '151', '0');
INSERT INTO `base_dic` VALUES ('22', 'STD_DEPT', '0404', '泌尿外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('2209d7a8a4174f819d389ea5e9ada06a', 'JK_OCCUPATION_DICT', '1103', '民主党派和社会团体及其工作机构负责人', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('220bdf3e89da46c3a4b8801963005c0f', 'JK_STREET_DICT', '12011522', '宝坻区尔王庄乡', '120115', '191', '0');
INSERT INTO `base_dic` VALUES ('226ef94523f94d06b44b427c7ecd9c98', 'JK_STREET_DICT', '12011604', '滨海新区塘沽向阳街', '120107', '198', '0');
INSERT INTO `base_dic` VALUES ('23', 'STD_DEPT', '040401', '肾脏移植项目', '0', null, '0');
INSERT INTO `base_dic` VALUES ('2388cc690c224ff09515d5cfe8bd26ed', 'JK_STREET_DICT', '12022107', '宁河县北淮淀乡', '120221', '234', '0');
INSERT INTO `base_dic` VALUES ('2390cd339cc549f48b452357d1c46a80', 'JK_STREET_DICT', '12022399', '静海县不详乡镇', '120223', '264', '0');
INSERT INTO `base_dic` VALUES ('23dde1beae0344cd9d06e796fb6dd078', 'JK_STREET_DICT', '12011517', '宝坻区周良庄镇', '120115', '186', '0');
INSERT INTO `base_dic` VALUES ('24', 'STD_DEPT', '0405', '胸外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('25', 'STD_DEPT', '040501', '肺脏移植项目', '0', null, '0');
INSERT INTO `base_dic` VALUES ('25525d00d828445e96f8dbe18cdef330', 'JK_STREET_DICT', '12011313', '北辰区果园新村街', '120113', '134', '0');
INSERT INTO `base_dic` VALUES ('26', 'STD_DEPT', '0406', '心脏大血管外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('26931a5386014a05aabe958f66541243', 'JK_OCCUPATION_DICT', '1607', '电力设备安装、运行、检修及供电人员', '0', '50', '0');
INSERT INTO `base_dic` VALUES ('26bcf6c524864c339c89cf0bee5ce659', 'JK_OCCUPATION_DICT', '1101', '中国共产党中央委员会和地方各级党组织负责人', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('27', 'STD_DEPT', '040601', '心脏移植项目', '0', null, '0');
INSERT INTO `base_dic` VALUES ('27ff4e20458c41b296db3138619b05da', 'JK_STREET_DICT', '12022324', '静海县子牙镇', '120223', '260', '0');
INSERT INTO `base_dic` VALUES ('28', 'STD_DEPT', '0407', '烧伤科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('28fcf8bd074e4818b32d78603d3fa902', 'JK_STREET_DICT', '120111104', '西青区精武镇', '120111', '105', '0');
INSERT INTO `base_dic` VALUES ('29', 'STD_DEPT', '0408', '整形外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('2a26f10ab9484bbeb4b90dc4668a95bb', 'JK_SEX_DICT', '2', '女', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('2b26656d6aa94cd68fbdc7b8887d3010', 'JK_NATION_DICT', '35', '撒拉族', '0', '35', '0');
INSERT INTO `base_dic` VALUES ('2b7f94451b4e461cb502fa131b434d29', 'JK_PMH_VACCINATE_DICT', '1', '甲肝疫苗', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('2b894b580d524bbfa4ecb42e9ceb7fdf', 'JK_STREET_DICT', '12010302', '河西区下瓦房街', '120103', '43', '0');
INSERT INTO `base_dic` VALUES ('2dd08abd2b1e4a939805ed7e661a9d24', 'JK_NATION_DICT', '55', '珞巴族', '0', '55', '0');
INSERT INTO `base_dic` VALUES ('2dd2b2b909b344f7b78b79dc46a2a167', 'JK_STREET_DICT', '12011610', '滨海新区塘沽渤海石油街', '120107', '204', '0');
INSERT INTO `base_dic` VALUES ('2de4d25e5245440ba6ba848930b3d082', 'JK_STREET_DICT', '12011699', '滨海新区不详乡镇', '120116', '229', '0');
INSERT INTO `base_dic` VALUES ('2ef0b3edbbba4b6daf7017531d464481', 'JK_STREET_DICT', '12010699', '红桥区不详乡镇', '120106', '90', '0');
INSERT INTO `base_dic` VALUES ('3', 'STD_DEPT', '03', '内科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('30', 'STD_DEPT', '0409', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('301', 'STD_REG_TYPE', '01', '住院医师', '0', null, '0');
INSERT INTO `base_dic` VALUES ('302', 'STD_REG_TYPE', '11', '主治医师', '0', null, '0');
INSERT INTO `base_dic` VALUES ('303', 'STD_REG_TYPE', '21', '副主任医师', '0', null, '0');
INSERT INTO `base_dic` VALUES ('304', 'STD_REG_TYPE', '31', '主任医师', '0', null, '0');
INSERT INTO `base_dic` VALUES ('305', 'STD_REG_TYPE', '41', '专家门诊', '0', null, '0');
INSERT INTO `base_dic` VALUES ('306', 'STD_REG_TYPE', '51', '急诊', '0', null, '0');
INSERT INTO `base_dic` VALUES ('307', 'STD_REG_TYPE', '99', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('3094b5e648c14029a98a70a222ea356d', 'JK_STREET_DICT', '12011299', '津南区不详乡镇', '120112', '124', '0');
INSERT INTO `base_dic` VALUES ('31', 'STD_DEPT', '05', '妇产科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('310b0f4847724283849fda42602fbdea', 'JK_OCCUPATION_DICT', '1105', '企业负责人', '0', '6', '0');
INSERT INTO `base_dic` VALUES ('316e742a8ab9491ba36cbcaff09501d0', 'JK_STREET_DICT', '12011204', '津南区葛沽镇', '120112', '119', '0');
INSERT INTO `base_dic` VALUES ('31d520e50aa44e4aafaf9b4b68a0032d', 'JK_PMH_DICT', 'K74.1', '肝硬化', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('32', 'STD_DEPT', '0501', '妇科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('3261f6d3e0ed422bb81939e75cafa50c', 'JK_OCCUPATION_DICT', '1200', '专业技术人员', '0', '7', '0');
INSERT INTO `base_dic` VALUES ('32ff57d282d449a496d2625b0d920625', 'JK_STREET_DICT', '12022301', '静海县静海镇', '120223', '246', '0');
INSERT INTO `base_dic` VALUES ('33', 'STD_DEPT', '0502', '产科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('33c4aafa43cc4eeeb7c16cdee40532fa', 'JK_STREET_DICT', '12010207', '河东区春华街', '120102', '34', '0');
INSERT INTO `base_dic` VALUES ('34', 'STD_DEPT', '0503', '计划生育专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('340f8a029cb7462caa4a38ebc6497829', 'JK_STREET_DICT', '12022509', '蓟县上仓镇', '120225', '273', '0');
INSERT INTO `base_dic` VALUES ('346b3eab08304d04b15293d4d95fd5ef', 'JK_MARRIAGE_DICT', '4.0', '离异', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('35', 'STD_DEPT', '0504', '优生学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('3571cd6c61d049d7a45f5c10f215b3d7', 'JK_NATION_DICT', '6', '苗族', '0', '6', '0');
INSERT INTO `base_dic` VALUES ('357275cff70047d9b08f628635e66385', 'JK_OCCUPATION_DICT', '1500', '农、林、牧、渔、水利业生产人员', '0', '36', '0');
INSERT INTO `base_dic` VALUES ('358482b3680a4668be9cb9a6d2ee629f', 'JK_STREET_DICT', '12010408', '南开区嘉陵道街', '120104', '64', '0');
INSERT INTO `base_dic` VALUES ('36', 'STD_DEPT', '0505', '生殖健康与不孕症专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('368afada355c4a8086f91bfb019fe106', 'JK_OCCUPATION_DICT', '1205', '卫生专业技术人员', '0', '12', '0');
INSERT INTO `base_dic` VALUES ('36f41725be0c4f8e8d8073312a81b632', 'JK_STREET_DICT', '12011633', '滨海新区大港小王庄镇', '120109', '219', '0');
INSERT INTO `base_dic` VALUES ('37', 'STD_DEPT', '0506', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('38', 'STD_DEPT', '06', '妇女保健科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('388cd7ffeed94c429a9f35d73572d5f8', 'JK_STREET_DICT', '12011202', '津南区双桥河镇', '120112', '117', '0');
INSERT INTO `base_dic` VALUES ('38be72727f52414982abfe262dcc1dd9', 'JK_STREET_DICT', '12010605', '红桥区西沽街', '120106', '84', '0');
INSERT INTO `base_dic` VALUES ('38e147123f9a4c4789593d259314efc1', 'JK_STREET_DICT', '12010599', '河北区不详乡镇', '120105', '80', '0');
INSERT INTO `base_dic` VALUES ('39', 'STD_DEPT', '0601', '青春期保健专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('391dc0f49a6b4d22b491905cc9c64934', 'JK_STREET_DICT', 'P12000000', '天津市', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('39ca59d1f30f48aea3adc3907c6f5c23', 'JK_OCCUPATION_DICT', '1612', '粮油、食品、饮料生产加工及饲料生产加工人员', '0', '55', '0');
INSERT INTO `base_dic` VALUES ('3a318185487f4a94b48f9758c0cd87e5', 'JK_STREET_DICT', '12011635', '滨海新区大港胜利街', '120109', '221', '0');
INSERT INTO `base_dic` VALUES ('3aa9382282fd4e8ca90c63a8d28618a0', 'JK_STREET_DICT', '12011426', '武清区石各庄镇', '120114', '164', '0');
INSERT INTO `base_dic` VALUES ('3ad565d97d824468814965fc6de43cfe', 'JK_OCCUPATION_DICT', '1301', '行政办公人员', '0', '23', '0');
INSERT INTO `base_dic` VALUES ('3ae379dbb9b244fc8f57060bc853fd3e', 'JK_STREET_DICT', '120221', '宁河县', '0', '18', '0');
INSERT INTO `base_dic` VALUES ('3b3da90760664025a7dc0db6dc55ba5a', 'JK_STREET_DICT', '12011514', '宝坻区林亭口镇', '120115', '183', '0');
INSERT INTO `base_dic` VALUES ('3bc466de7b69455c9653eb4499c6176c', 'JK_STREET_DICT', '12010401', '南开区鼓楼街', '120104', '57', '0');
INSERT INTO `base_dic` VALUES ('3c220596265a4d9b889d9f412cca21e9', 'JK_STREET_DICT', '12022199', '宁河县不详乡镇', '120221', '245', '0');
INSERT INTO `base_dic` VALUES ('3e5d5f7400124edd9ec75a5d33b32240', 'JK_STREET_DICT', '12022312', '静海县蔡公庄镇', '120223', '253', '0');
INSERT INTO `base_dic` VALUES ('3faa956b10914de4909f64cbb507ee79', 'JK_STREET_DICT', '12011422', '武清区大王古庄镇', '120114', '160', '0');
INSERT INTO `base_dic` VALUES ('3fd0501333934724a83daee9b5f6a8f8', 'JK_OCCUPATION_DICT', '1209', '教学人员', '0', '16', '0');
INSERT INTO `base_dic` VALUES ('4', 'STD_DEPT', '0301', '呼吸内科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('40', 'STD_DEPT', '0602', '围产期保健专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('4045f0ac8dbc48dcba5e889eea7fe54e', 'JK_NATION_DICT', '98', '不详', '0', '98', '0');
INSERT INTO `base_dic` VALUES ('41', 'STD_DEPT', '0603', '更年期保健专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('418da7bf1dd045b5aa2b20d734e38977', 'JK_OCCUPATION_DICT', '1614', '药品生产人员', '0', '57', '0');
INSERT INTO `base_dic` VALUES ('42', 'STD_DEPT', '0604', '妇女心理卫生专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('43', 'STD_DEPT', '0605', '妇女营养专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('44', 'STD_DEPT', '0606', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('441b2be3e40c4d17b0e4cfdf2515956f', 'JK_NATION_DICT', '23', '高山族', '0', '23', '0');
INSERT INTO `base_dic` VALUES ('441d2c08fa3141f2aa74fcada7681fb5', 'JK_STREET_DICT', '12011208', '津南区八里台镇', '120112', '123', '0');
INSERT INTO `base_dic` VALUES ('44b13f5e58bb470382558f75e0be99af', 'JK_STREET_DICT', '12011428', '武清区王庆坨镇', '120114', '166', '0');
INSERT INTO `base_dic` VALUES ('44d21c51ff95454f8bb43655e57974ad', 'JK_NATION_DICT', '43', '乌孜别克族', '0', '43', '0');
INSERT INTO `base_dic` VALUES ('44ff09a216834a2d8444e9d0ead21347', 'JK_STREET_DICT', '12011506', '宝坻区新安镇', '120115', '175', '0');
INSERT INTO `base_dic` VALUES ('45', 'STD_DEPT', '07', '儿科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('46', 'STD_DEPT', '0701', '新生儿专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('462fa51fba59468eacfb31cb6ae0f74e', 'JK_STREET_DICT', '12010217', '河东区二号桥街', '120102', '39', '0');
INSERT INTO `base_dic` VALUES ('465ba220060c47d285c54c5196b073dd', 'JK_NATION_DICT', '14', '白族', '0', '14', '0');
INSERT INTO `base_dic` VALUES ('47', 'STD_DEPT', '0702', '小儿传染病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('4723f334f6674b29a81ba4471f4e670d', 'JK_STREET_DICT', '120111100', '西青区中北镇', '120111', '107', '0');
INSERT INTO `base_dic` VALUES ('47f19f2551e746a3b281364f0f80296f', 'JK_STREET_DICT', '12022515', '蓟县桑梓镇', '120225', '279', '0');
INSERT INTO `base_dic` VALUES ('48', 'STD_DEPT', '0703', '小儿消化专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('48ddb36f01df4909b3945383ff2aa44a', 'JK_OCCUPATION_DICT', '1601', '勘测及矿物开采人员', '0', '44', '0');
INSERT INTO `base_dic` VALUES ('49', 'STD_DEPT', '0704', '小儿呼吸专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('491949e509ed4a19ab534a8014e0b281', 'JK_STREET_DICT', '12022305', '静海县大丰堆镇', '120223', '249', '0');
INSERT INTO `base_dic` VALUES ('495dac5fb1bf4fccb07fa765f8ab6140', 'JK_STREET_DICT', '12010410', '南开区体育中心街', '120104', '66', '0');
INSERT INTO `base_dic` VALUES ('4a22a4b93fec49c0b82eaf27f0858071', 'JK_STREET_DICT', '12011316', '北辰区普东街', '120113', '137', '0');
INSERT INTO `base_dic` VALUES ('4a2f09ac6d0b4ec4a40634e90224e9dd', 'JK_STREET_DICT', '12011603', '滨海新区塘沽新北街', '120107', '197', '0');
INSERT INTO `base_dic` VALUES ('4b8dd57b45c84709a00ac4c23463fa66', 'JK_STREET_DICT', '12011505', '宝坻区史各庄镇', '120115', '174', '0');
INSERT INTO `base_dic` VALUES ('4bbc73f0c34042349067ab1ccfb5ffc3', 'JK_OCCUPATION_DICT', '1214', '其他专业技术人员', '0', '21', '0');
INSERT INTO `base_dic` VALUES ('4c17eea9a0224e42990ba28f13612f61', 'JK_STREET_DICT', '12022519', '蓟县出头岭镇', '120225', '283', '0');
INSERT INTO `base_dic` VALUES ('4c3370a8a3a54a62bc6c90c815edca6a', 'JK_STREET_DICT', '12011605', '滨海新区塘沽杭州道街', '120107', '199', '0');
INSERT INTO `base_dic` VALUES ('4cde79c21ab54f378db2dceba81af8b1', 'JK_PMH_VACCINATE_DICT', '2', '乙肝疫苗', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('4cea8623eb3c4b0d8f6eca39fbe33a69', 'JK_STREET_DICT', '12022108', '宁河县俵口乡', '120221', '235', '0');
INSERT INTO `base_dic` VALUES ('4cefde97a6944403bc0ff56d2145b5f4', 'JK_NATION_DICT', '48', '裕固族', '0', '48', '0');
INSERT INTO `base_dic` VALUES ('4f0e7f26863e4cfda16f98e886ac0a72', 'JK_NATION_DICT', '49', '京族', '0', '49', '0');
INSERT INTO `base_dic` VALUES ('5', 'STD_DEPT', '0302', '消化内科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('50', 'STD_DEPT', '0705', '小儿心脏病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('51', 'STD_DEPT', '0706', '小儿肾病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('515a706912924b7dbd0ae8e09dbc1019', 'JK_STREET_DICT', '12011423', '武清区东马圈镇', '120114', '161', '0');
INSERT INTO `base_dic` VALUES ('515d0271127541e69c7b89ec3e19188b', 'JK_STREET_DICT', '12011099', '东丽区不详乡镇', '120110', '101', '0');
INSERT INTO `base_dic` VALUES ('51b51ae57fef45f49e21ed943b83aea7', 'JK_STREET_DICT', '120103', '河西区', '0', '5', '0');
INSERT INTO `base_dic` VALUES ('52', 'STD_DEPT', '0707', '小儿血液病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('523843763d2447d2a744594701bb5981', 'JK_NATION_DICT', '01', '汉族', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('5241c907922749d2b5fe36a92102976b', 'JK_NATION_DICT', '51', '独龙族', '0', '51', '0');
INSERT INTO `base_dic` VALUES ('52c0fd0a2fdc42af989251bd7b8de796', 'JK_STREET_DICT', '120225', '蓟县', '0', '20', '0');
INSERT INTO `base_dic` VALUES ('53', 'STD_DEPT', '0708', '小儿神经病学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('531334a289a64429b1b6a6260695176c', 'JK_OCCUPATION_DICT', '1300', '办事人员和有关人员', '0', '22', '0');
INSERT INTO `base_dic` VALUES ('5324e96d4d66400486c530b91c2a9bdd', 'JK_STREET_DICT', '12010402', '南开区兴南街', '120104', '58', '0');
INSERT INTO `base_dic` VALUES ('5369442f6f9f48dc9fb8363e6ff1b1e0', 'JK_STREET_DICT', '12011499', '武清区不详乡镇', '120114', '169', '0');
INSERT INTO `base_dic` VALUES ('53f36d67de16448788e8d7bcfe8cf408', 'JK_STREET_DICT', '120111001', '西青区西营门街', '120111', '108', '0');
INSERT INTO `base_dic` VALUES ('54', 'STD_DEPT', '0709', '小儿内分泌专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('5475463f2f5a4fbd82ad37778bba8ed5', 'JK_STREET_DICT', '12011206', '津南区双港镇', '120112', '121', '0');
INSERT INTO `base_dic` VALUES ('54759ccc53584846873b1bec57cad130', 'JK_STREET_DICT', '12010517', '河北区月牙河街', '120105', '79', '0');
INSERT INTO `base_dic` VALUES ('54909a3e201a464488fbaeb2028074f1', 'JK_STREET_DICT', '12011314', '北辰区集贤里街', '120113', '135', '0');
INSERT INTO `base_dic` VALUES ('549894643a364b8aae0e8525d7a5e94f', 'JK_STREET_DICT', '12011638', '滨海新区大港港西街', '120109', '224', '0');
INSERT INTO `base_dic` VALUES ('55', 'STD_DEPT', '0710', '小儿遗传病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('5575c2d950b4446aaf8492352b94a927', 'JK_OCCUPATION_DICT', '1608', '电子元器件与设备制造、装配调试及维修人员', '0', '51', '0');
INSERT INTO `base_dic` VALUES ('55c7062678c04dca9dc3043e332f423f', 'JK_STREET_DICT', '12011403', '武清区东蒲洼街', '120114', '141', '0');
INSERT INTO `base_dic` VALUES ('56', 'STD_DEPT', '0711', '小儿免疫专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('56ec332aa7d3426db6290868ff7fb540', 'JK_OCCUPATION_DICT', '1900', '婴幼儿、学龄前儿童', '0', '72', '0');
INSERT INTO `base_dic` VALUES ('57', 'STD_DEPT', '0712', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('57865ba2815746c3b5f3173c1fdb42c0', 'JK_PMH_DICT', '9', '其他', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('57c229c6679d4a03a28f980fbb6b3ab5', 'JK_NATION_DICT', '13', '瑶族', '0', '13', '0');
INSERT INTO `base_dic` VALUES ('58', 'STD_DEPT', '08', '小儿外科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('5885cd7521804c50a10438130f674a44', 'JK_STREET_DICT', '12011429', '武清区汊沽港镇', '120114', '167', '0');
INSERT INTO `base_dic` VALUES ('59', 'STD_DEPT', '0801', '小儿普通外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('590857b3543745118552d31f5657dfa4', 'JK_OCCUPATION_DICT', '1100', '国家机关、党群组织、企业、事业单位负责人', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('59d2071fe459425c89b5d6202b3cee32', 'JK_STREET_DICT', '12011421', '武清区白古屯乡', '120114', '159', '0');
INSERT INTO `base_dic` VALUES ('5a4027d347bd41b4aafee052d91c3914', 'JK_OCCUPATION_DICT', '1405', '运输服务人员', '0', '32', '0');
INSERT INTO `base_dic` VALUES ('5b0695a7610046bb835dae2ffa27e67c', 'JK_STREET_DICT', '120223', '静海县', '0', '19', '0');
INSERT INTO `base_dic` VALUES ('5b768b476bbb48d0b080967e19ee8bd5', 'JK_STREET_DICT', '12011516', '宝坻区牛家牌乡', '120115', '185', '0');
INSERT INTO `base_dic` VALUES ('5b9c29aa6d5949d68cb3ee29ac8311f3', 'JK_STREET_DICT', '12022121', '宁河县丰台镇', '120221', '244', '0');
INSERT INTO `base_dic` VALUES ('5c5559bb60684142a33ba706e0093486', 'JK_OCCUPATION_DICT', '1408', '其他商业、服务业人员', '0', '35', '0');
INSERT INTO `base_dic` VALUES ('5c680452be3841bdb0c112b4e6b0bcf2', 'JK_STREET_DICT', '12010404', '南开区广开街', '120104', '60', '0');
INSERT INTO `base_dic` VALUES ('5db90f6c9370428b8a4a7467194cef15', 'JK_STREET_DICT', '12011404', '武清区黄庄街', '120114', '142', '0');
INSERT INTO `base_dic` VALUES ('5e151fc9c2024131bd7e78267e7dfabb', 'JK_STREET_DICT', '12011524', '宝坻区海滨街', '120115', '192', '0');
INSERT INTO `base_dic` VALUES ('5ebda3e070544bc885de8c3cf4100dfd', 'JK_STREET_DICT', '12010315', '河西区友谊路街', '120103', '54', '0');
INSERT INTO `base_dic` VALUES ('5ebf6f7abca746fb8b72edf1180e5112', 'JK_OCCUPATION_DICT', '1604', '机械制造加工人员', '0', '47', '0');
INSERT INTO `base_dic` VALUES ('5f2a6518266049459b2a0e885b50a2bf', 'JK_OCCUPATION_DICT', '1204', '飞机和船舶技术人员', '0', '11', '0');
INSERT INTO `base_dic` VALUES ('5f8c34d91f9d4fc9bf9f6ae42c744058', 'JK_STREET_DICT', '12010204', '河东区东新街', '120102', '33', '0');
INSERT INTO `base_dic` VALUES ('6', 'STD_DEPT', '0303', '神经内科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('60', 'STD_DEPT', '0802', '小儿骨科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('605554f870e24d2dade914dfe37c9991', 'JK_OCCUPATION_DICT', '1206', '经济业务人员', '0', '13', '0');
INSERT INTO `base_dic` VALUES ('606425c008b942c1a5437b5ecef5f84e', 'JK_STREET_DICT', '12022513', '蓟县五百户镇', '120225', '277', '0');
INSERT INTO `base_dic` VALUES ('60fc407823e749e88da69b7c5ebe81e2', 'JK_OCCUPATION_DICT', '1501', '种植业生产人员', '0', '37', '0');
INSERT INTO `base_dic` VALUES ('61', 'STD_DEPT', '0803', '小儿泌尿外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('62', 'STD_DEPT', '0804', '小儿胸心外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('620faea44a0249d892787ee06ea1918f', 'JK_STREET_DICT', '12011420', '武清区城关镇', '120114', '158', '0');
INSERT INTO `base_dic` VALUES ('6234085e686149ab966b0cd386d3ccd7', 'JK_NATION_DICT', '36', '毛难族', '0', '36', '0');
INSERT INTO `base_dic` VALUES ('63', 'STD_DEPT', '0805', '小儿神经外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('638aa9c082c144cda8a9940aa52d69e1', 'JK_STREET_DICT', '12022525', '蓟县礼明庄镇', '120225', '289', '0');
INSERT INTO `base_dic` VALUES ('64', 'STD_DEPT', '0806', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('6463809249c94016913bff2c5d76f9ff', 'JK_STREET_DICT', '12011425', '武清区黄花店镇', '120114', '163', '0');
INSERT INTO `base_dic` VALUES ('64f71f4af81c442c86ab9c158ef1a886', 'JK_STREET_DICT', '12022117', '宁河县苗庄镇', '120221', '241', '0');
INSERT INTO `base_dic` VALUES ('65', 'STD_DEPT', '09', '儿童保健科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('66', 'STD_DEPT', '0901', '儿童生长发育专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('663a2217ffc14f5dab7e4df4ea721049', 'JK_STREET_DICT', '12011399', '北辰区不详乡镇', '120113', '138', '0');
INSERT INTO `base_dic` VALUES ('6690dd7b3f8e40a6a65222d3f10f00f8', 'JK_NATION_DICT', '12', '侗族', '0', '12', '0');
INSERT INTO `base_dic` VALUES ('67', 'STD_DEPT', '0902', '儿童营养专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('67128a21fbaa4b3eb9152dc371210bbf', 'JK_STREET_DICT', '12022326', '静海县台头镇', '120223', '261', '0');
INSERT INTO `base_dic` VALUES ('671d2e879b6f4899872b889c2a454936', 'JK_OCCUPATION_DICT', '1203', '农业技术人员', '0', '10', '0');
INSERT INTO `base_dic` VALUES ('68', 'STD_DEPT', '0903', '儿童心理卫生专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('6802c3a234184e4284a1d409f4f7a4a3', 'JK_STREET_DICT', '12022327', '静海县沿庄镇', '120223', '262', '0');
INSERT INTO `base_dic` VALUES ('687f01a61a2b40e994cdbab2ea3dab38', 'JK_STREET_DICT', '12011512', '宝坻区大钟庄镇', '120115', '181', '0');
INSERT INTO `base_dic` VALUES ('69', 'STD_DEPT', '0904', '儿童五官保健专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('690b56f488c94c51b26e46da7978c2e0', 'JK_STREET_DICT', '12011519', '宝坻区黄庄乡', '120115', '188', '0');
INSERT INTO `base_dic` VALUES ('691245c562ba4e49a606311ac6176815', 'JK_STREET_DICT', '12010313', '河西区东海街', '120103', '52', '0');
INSERT INTO `base_dic` VALUES ('69ff7526be8345638d1f424fbd364d35', 'JK_STREET_DICT', '12011307', '北辰区大张庄镇', '120113', '130', '0');
INSERT INTO `base_dic` VALUES ('6a23c842c7464a528552eed5dd8bf0b6', 'JK_STREET_DICT', '000001', '外省市', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('6bd05f3c79f843ba9a461441530bec09', 'JK_STREET_DICT', '12010210', '河东区常州道街', '120102', '35', '0');
INSERT INTO `base_dic` VALUES ('6c6ecdba51e64cfaaacde6154044576c', 'JK_STREET_DICT', '12011415', '武清区南蔡村镇', '120114', '153', '0');
INSERT INTO `base_dic` VALUES ('6cc590d8197d4086abaa0ed9b79461e4', 'JK_STREET_DICT', '12022526', '蓟县东赵各庄镇', '120225', '290', '0');
INSERT INTO `base_dic` VALUES ('6cfea216b25c4ce7aebb117f41371d71', 'JK_STREET_DICT', '12011410', '武清区大碱厂镇', '120114', '148', '0');
INSERT INTO `base_dic` VALUES ('6d66d2de57ec4018b7a7aa58f6f98d39', 'JK_STREET_DICT', '12011309', '北辰区宜兴埠镇', '120113', '132', '0');
INSERT INTO `base_dic` VALUES ('6e94eda74885433ea16780e03668f30f', 'JK_NATION_DICT', '56', '基诺族', '0', '56', '0');
INSERT INTO `base_dic` VALUES ('6f91d2deda434521abbcf49f3987c0dc', 'JK_STREET_DICT', '120104', '南开区', '0', '6', '0');
INSERT INTO `base_dic` VALUES ('6faa90c38349419093c043bd9c735198', 'JK_STREET_DICT', '120111106', '西青区王稳庄镇', '120111', '110', '0');
INSERT INTO `base_dic` VALUES ('7', 'STD_DEPT', '0304', '心血管内科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('70', 'STD_DEPT', '0905', '儿童康复专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('709f16f389ec4a6fbe294ff6c0dd9b56', 'JK_STREET_DICT', '12010108', '和平区南市街', '120101', '28', '0');
INSERT INTO `base_dic` VALUES ('71', 'STD_DEPT', '0906', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('72', 'STD_DEPT', '10', '眼科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('7243926ed4fb46ee976d8dbb52259a6f', 'JK_STREET_DICT', '12011641', '滨海新区大港团泊洼', '120109', '227', '0');
INSERT INTO `base_dic` VALUES ('73', 'STD_DEPT', '11', '耳鼻咽喉科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('732f7df155394d8b8652495154686625', 'JK_OCCUPATION_DICT', '1402', '仓储人员', '0', '29', '0');
INSERT INTO `base_dic` VALUES ('74', 'STD_DEPT', '1101', '耳科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('75', 'STD_DEPT', '1102', '鼻科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('7519a921e0d3438faa5a8f8760841441', 'JK_OCCUPATION_DICT', '1208', '法律专业人员', '0', '15', '0');
INSERT INTO `base_dic` VALUES ('751c5e36b1e745dbb949905914f53247', 'JK_OCCUPATION_DICT', '1401', '购销人员', '0', '28', '0');
INSERT INTO `base_dic` VALUES ('7564db7509984d4783e7c72f5ac9b8c6', 'JK_STREET_DICT', '12010409', '南开区王顶堤街', '120104', '65', '0');
INSERT INTO `base_dic` VALUES ('758345132eab47b3a84fb7565b1e8cb0', 'JK_STREET_DICT', '12011507', '宝坻区方庄子镇', '120115', '176', '0');
INSERT INTO `base_dic` VALUES ('76', 'STD_DEPT', '1103', '咽喉科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('763021d39bf440d287c209163f5b7b15', 'JK_STREET_DICT', '12010220', '河东区鲁山道街', '120102', '41', '0');
INSERT INTO `base_dic` VALUES ('77', 'STD_DEPT', '1104', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('773b6d04487b4d398957f59a4df94b69', 'JK_STREET_DICT', '12011615', '滨海新区塘沽地址不详', '120107', '209', '0');
INSERT INTO `base_dic` VALUES ('77b2c332a16a468486e6c26da508b9be', 'JK_STREET_DICT', '12010303', '河西区大营门街', '120103', '44', '0');
INSERT INTO `base_dic` VALUES ('77e2dda3df76465bba8ff637b7fe4eb9', 'JK_MARRIAGE_DICT', '3.0', '丧偶', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('78', 'STD_DEPT', '12', '口腔科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('7842e77a70884fcc9eecece2a0033bf8', 'JK_STREET_DICT', '12022501', '蓟县渔阳镇', '120225', '265', '0');
INSERT INTO `base_dic` VALUES ('787182f6326d40798076efbabf401821', 'JK_NATION_DICT', '18', '傣族', '0', '18', '0');
INSERT INTO `base_dic` VALUES ('7880010e620f404a92e7dc5e3559ef67', 'JK_STREET_DICT', '12011510', '宝坻区王卜庄镇', '120115', '179', '0');
INSERT INTO `base_dic` VALUES ('78b3a451be294eb3b9b37cf32e165c9e', 'JK_STREET_DICT', '12010509', '河北区铁东路街', '120105', '75', '0');
INSERT INTO `base_dic` VALUES ('79', 'STD_DEPT', '1201', '牙体牙髓病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('7a3b2ee6df104a4691291d36a9d6cbf5', 'JK_OCCUPATION_DICT', '1605', '机电产品装配人员', '0', '48', '0');
INSERT INTO `base_dic` VALUES ('7a581ced03c6485d9355c2378fd9f126', 'JK_NATION_DICT', '30', '土族', '0', '30', '0');
INSERT INTO `base_dic` VALUES ('7b58318aff3a45c4bafb18976172405b', 'JK_STREET_DICT', '12011001', '东丽区张贵庄街', '120110', '91', '0');
INSERT INTO `base_dic` VALUES ('7ba4ee3d04e44c9d8c67b2425a3d6694', 'JK_PMH_HISTORY_DICT', '2', '脂肪肝', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('7d0bf49108a64a6b94fc1cdfcaf6d778', 'JK_STREET_DICT', '12010602', '红桥区西于庄街', '120106', '82', '0');
INSERT INTO `base_dic` VALUES ('7ff5aa2c49ff47d8bbf2639628352706', 'JK_STREET_DICT', '12011599', '宝坻区不详乡镇', '120115', '194', '0');
INSERT INTO `base_dic` VALUES ('8', 'STD_DEPT', '0305', '血液内科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('80', 'STD_DEPT', '1202', '牙周病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('8059eb9aa2c44989b261ed293de581a7', 'JK_STREET_DICT', '12011201', '津南区小站镇', '120112', '116', '0');
INSERT INTO `base_dic` VALUES ('81', 'STD_DEPT', '1203', '口腔粘膜病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('814e2b8d2ddc409b911bc306b1d7f752', 'JK_STREET_DICT', '12011631', '滨海新区大港太平镇', '120109', '217', '0');
INSERT INTO `base_dic` VALUES ('81cad35e82fa49cf81e982da34d09136', 'JK_STREET_DICT', '12010501', '河北区光复道街', '120105', '70', '0');
INSERT INTO `base_dic` VALUES ('82', 'STD_DEPT', '1204', '儿童口腔专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('824d24de0f374e7abe0169bb04d173bd', 'JK_PMH_HISTORY_DICT', '3', '长期酗酒', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('83', 'STD_DEPT', '1205', '口腔颌面外科专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('836c32586884489a8345820faee18593', 'JK_STREET_DICT', '12022510', '蓟县下仓镇', '120225', '274', '0');
INSERT INTO `base_dic` VALUES ('8384f9ca837a431b94fef84c60346c1f', 'JK_STREET_DICT', '12010499', '南开区不详乡镇', '120104', '69', '0');
INSERT INTO `base_dic` VALUES ('83d4a1bb6f44440ba550c3ccf4f3b2c5', 'JK_NATION_DICT', '24', '拉祜族', '0', '24', '0');
INSERT INTO `base_dic` VALUES ('84', 'STD_DEPT', '1206', '口腔修复专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('8453a7c33cc8497b93173b2d98fc47b4', 'JK_STREET_DICT', '12011520', '宝坻区大白庄镇', '120115', '189', '0');
INSERT INTO `base_dic` VALUES ('85', 'STD_DEPT', '1207', '口腔正畸专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('86', 'STD_DEPT', '1208', '口腔种植专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('86f7ce3f7f9b4ddda817da78dc457565', 'JK_STREET_DICT', '12010507', '河北区宁园街', '120105', '73', '0');
INSERT INTO `base_dic` VALUES ('87', 'STD_DEPT', '1209', '口腔麻醉专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('87f87887c25f46f981417cf817b922cf', 'JK_PMH_VACCINATE_DICT', '3', '未接种', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('88', 'STD_DEPT', '1210', '口腔颌面医学影像专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('888d3c45e8224a6cad42f7e189f04c1e', 'JK_OCCUPATION_DICT', '1623', '运输设备操作人员及有关人员', '0', '66', '0');
INSERT INTO `base_dic` VALUES ('89', 'STD_DEPT', '1211', '口腔病理专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('89c5f4f0ad3f485a916e254b4c352438', 'JK_STREET_DICT', '12011634', '滨海新区大港古林街', '120109', '220', '0');
INSERT INTO `base_dic` VALUES ('8dc85c1aa7dc491891c88c1ed930534c', 'JK_STREET_DICT', '12011642', '滨海新区大港地址不详', '120109', '228', '0');
INSERT INTO `base_dic` VALUES ('8de1f458c70f4a4b99db7e812eedc375', 'JK_STREET_DICT', '12011628', '滨海新区汉沽地址不详', '120108', '216', '0');
INSERT INTO `base_dic` VALUES ('8e987a6667864e9f975ea8cf30f142cd', 'JK_STREET_DICT', '12022318', '静海县独流镇', '120223', '257', '0');
INSERT INTO `base_dic` VALUES ('8f421c476372443cae9dcd3b775f747c', 'JK_STREET_DICT', '12010411', '南开区华苑街', '120104', '67', '0');
INSERT INTO `base_dic` VALUES ('8f4d97d8eaf148ba943ead45f0906fd4', 'JK_STREET_DICT', '12011110', '西青区杨柳青农场', '120111', '111', '0');
INSERT INTO `base_dic` VALUES ('9', 'STD_DEPT', '0306', '肾病学专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('90', 'STD_DEPT', '1212', '预防口腔专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('90101', 'OA_LWJG', '01', '办公室', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('90102', 'OA_LWJG', '02', '党办', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('90103', 'OA_LWJG', '03', '医政科', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('90104', 'OA_LWJG', '04', '预防保健科', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('90105', 'OA_LWJG', '05', '财务科', '0', '5', '0');
INSERT INTO `base_dic` VALUES ('90106', 'OA_LWJG', '06', '人事科', '0', '6', '0');
INSERT INTO `base_dic` VALUES ('90107', 'OA_LWJG', '07', '献血办', '0', '7', '0');
INSERT INTO `base_dic` VALUES ('90108', 'OA_LWJG', '08', '红十字会', '0', '8', '0');
INSERT INTO `base_dic` VALUES ('90109', 'OA_LWJG', '09', '食安办', '0', '9', '0');
INSERT INTO `base_dic` VALUES ('90110', 'OA_LWJG', '10', '局领导', '0', '10', '0');
INSERT INTO `base_dic` VALUES ('90111', 'OA_LWJG', '11', '基层指导科', '0', '11', '0');
INSERT INTO `base_dic` VALUES ('90112', 'OA_LWJG', '12', '家庭发展科', '0', '12', '0');
INSERT INTO `base_dic` VALUES ('90113', 'OA_LWJG', '13', '流动人口管理科', '0', '13', '0');
INSERT INTO `base_dic` VALUES ('90114', 'OA_LWJG', '14', '爱国卫生科', '0', '14', '0');
INSERT INTO `base_dic` VALUES ('90115', 'OA_LWJG', '15', '社区卫生科', '0', '15', '0');
INSERT INTO `base_dic` VALUES ('90116', 'OA_LWJG', '16', '工会应急办', '0', '16', '0');
INSERT INTO `base_dic` VALUES ('90117', 'OA_LWJG', '17', '纪检组', '0', '17', '0');
INSERT INTO `base_dic` VALUES ('90118', 'OA_LWJG', '18', '卫生计生信息化管理中心', '0', '18', '0');
INSERT INTO `base_dic` VALUES ('90119', 'OA_LWJG', '19', '其他', '0', '19', '0');
INSERT INTO `base_dic` VALUES ('90323085f5544e41bcc723eb0a9a1116', 'JK_STREET_DICT', '12011405', '武清区下朱庄街', '120114', '143', '0');
INSERT INTO `base_dic` VALUES ('91', 'STD_DEPT', '1213', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('912b021d12484bbb80dae9b9bc1c26ad', 'JK_OCCUPATION_DICT', '1303', '邮政和电信业务人员', '0', '25', '0');
INSERT INTO `base_dic` VALUES ('91955b6292e84aca9ed95bc63f09d928', 'JK_NATION_DICT', '20', '傈僳族', '0', '20', '0');
INSERT INTO `base_dic` VALUES ('91dd0f776f2748118de616ffc274c24f', 'JK_STREET_DICT', '12010508', '河北区新开河街', '120105', '74', '0');
INSERT INTO `base_dic` VALUES ('91f3206a1448498f8d6565f7d9246510', 'JK_OCCUPATION_DICT', '1210', '文学艺术工作人员', '0', '17', '0');
INSERT INTO `base_dic` VALUES ('92', 'STD_DEPT', '13', '皮肤科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('92622c37e5834f829156e024aea87482', 'JK_STREET_DICT', '12010199', '和平区不详乡镇', '120101', '29', '0');
INSERT INTO `base_dic` VALUES ('92a254386af546b0bf73ec62c2115395', 'JK_OCCUPATION_DICT', '1213', '宗教职业者', '0', '20', '0');
INSERT INTO `base_dic` VALUES ('93', 'STD_DEPT', '1301', '皮肤病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('939530c818ab473aa81743780c703f93', 'JK_STREET_DICT', '12022516', '蓟县东施古镇', '120225', '280', '0');
INSERT INTO `base_dic` VALUES ('93a4801cc0e44817ab5d43ef49c0c5b2', 'JK_STREET_DICT', '12022328', '静海县大邱庄镇', '120223', '263', '0');
INSERT INTO `base_dic` VALUES ('93ee1ee909d24e88ada3dce0501fe1a6', 'JK_NATION_DICT', '53', '赫哲族', '0', '53', '0');
INSERT INTO `base_dic` VALUES ('94', 'STD_DEPT', '1302', '性传播疾病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('95', 'STD_DEPT', '1303', '其他', '0', null, '0');
INSERT INTO `base_dic` VALUES ('95949b5e6ffe4ff6a948b4d5d3345d9e', 'JK_STREET_DICT', '12011624', '滨海新区汉沽大田镇', '120108', '213', '0');
INSERT INTO `base_dic` VALUES ('95f1fb1383694b39a6abead0e1a310b5', 'JK_STREET_DICT', '12011518', '宝坻区八门城镇', '120115', '187', '0');
INSERT INTO `base_dic` VALUES ('96', 'STD_DEPT', '14', '医疗美容科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('966ecabacd8641e0b3c3ed8006f34df0', 'JK_STREET_DICT', '12022106', '宁河县七里海镇', '120221', '233', '0');
INSERT INTO `base_dic` VALUES ('96978327d813459482e6bed404b70e82', 'JK_STREET_DICT', '12011623', '滨海新区汉沽河西街', '120108', '212', '0');
INSERT INTO `base_dic` VALUES ('96f946479215451586b414b146e4da2a', 'JK_OCCUPATION_DICT', '1622', '工程施工人员', '0', '65', '0');
INSERT INTO `base_dic` VALUES ('97', 'STD_DEPT', '15', '精神科', '0', null, '0');
INSERT INTO `base_dic` VALUES ('98', 'STD_DEPT', '1501', '精神病专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('9871b2e9ff5940a19316fa86fb41fc1c', 'JK_STREET_DICT', '12010201', '河东区唐家口街', '120102', '30', '0');
INSERT INTO `base_dic` VALUES ('99', 'STD_DEPT', '1502', '精神卫生专业', '0', null, '0');
INSERT INTO `base_dic` VALUES ('9942fb311651444e8fce08ce2c0adf1e', 'JK_STREET_DICT', '12010304', '河西区桃园街', '120103', '45', '0');
INSERT INTO `base_dic` VALUES ('99bb12a597784e328bb2399670575b21', 'JK_NATION_DICT', '50', '塔塔尔族', '0', '50', '0');
INSERT INTO `base_dic` VALUES ('9b2af1091dcf4ce28cf7811753b2e69d', 'JK_STREET_DICT', '12011407', '武清区梅厂镇', '120114', '145', '0');
INSERT INTO `base_dic` VALUES ('9b5498dac561410e9e7a9bc55ffe433f', 'JK_STREET_DICT', '12011305', '北辰区双街镇', '120113', '129', '0');
INSERT INTO `base_dic` VALUES ('9bd5ad3b3fd84ada8f24ce00664bb052', 'JK_OCCUPATION_DICT', '1407', '社会服务和居民生活服务人员', '0', '34', '0');
INSERT INTO `base_dic` VALUES ('9cc9f108fb9d476eb838305672fcc863', 'JK_STREET_DICT', '12011006', '东丽区华明街', '120110', '96', '0');
INSERT INTO `base_dic` VALUES ('9cdd731f4c8a4a559575fa231a129d7e', 'JK_STREET_DICT', '12011622', '滨海新区汉沽汉沽街', '120108', '211', '0');
INSERT INTO `base_dic` VALUES ('9d43b00ae822466db5948e11d2ec4fa1', 'JK_STREET_DICT', '12011609', '滨海新区塘沽北塘街', '120107', '203', '0');
INSERT INTO `base_dic` VALUES ('9e1f9f049642404aafd6282a7f9678c3', 'JK_OCCUPATION_DICT', '1505', '水利设施管理养护人员', '0', '41', '0');
INSERT INTO `base_dic` VALUES ('9f0a2cca2c0b4d1c849d42f867296a22', 'JK_NATION_DICT', '27', '纳西族', '0', '27', '0');
INSERT INTO `base_dic` VALUES ('9fbe5cbcca4542f1bcf12fff33e59aca', 'JK_STREET_DICT', '12011639', '滨海新区大港采油二厂', '120109', '225', '0');
INSERT INTO `base_dic` VALUES ('A001', 'SEX', '1', '男', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('A002', 'SEX', '2', '女', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('a0f90ea9980d4865b93f8d7b82cdd3f1', 'JK_STREET_DICT', '12010316', '河西区梅江街', '120103', '55', '0');
INSERT INTO `base_dic` VALUES ('a141450892484e549a38c14795758388', 'JK_NATION_DICT', '16', '哈尼族', '0', '16', '0');
INSERT INTO `base_dic` VALUES ('a21f8929178946459484e273897df065', 'JK_STREET_DICT', '12011308', '北辰区小淀镇', '120113', '131', '0');
INSERT INTO `base_dic` VALUES ('a221e5d0cb6a455da1b1bb6461b6d3f6', 'JK_STREET_DICT', '12011513', '宝坻区郝各庄镇', '120115', '182', '0');
INSERT INTO `base_dic` VALUES ('a34e43a949d44689a510ca31e2354e34', 'JK_STREET_DICT', '12011411', '武清区崔黄口镇', '120114', '149', '0');
INSERT INTO `base_dic` VALUES ('a375b0c6119c4b43899c6e8315b3588c', 'JK_OCCUPATION_DICT', '1613', '烟草及其制品加工人员', '0', '56', '0');
INSERT INTO `base_dic` VALUES ('a3dfa18ec21d4c7ab411e7c670a08625', 'JK_NATION_DICT', '15', '土家族', '0', '15', '0');
INSERT INTO `base_dic` VALUES ('a493cb3e90284783afc9efdc8db577d9', 'JK_STREET_DICT', '12022505', '蓟县下营镇', '120225', '269', '0');
INSERT INTO `base_dic` VALUES ('a50ebd052c6248bc880da6ee1cf66d05', 'JK_NATION_DICT', '37', '仡佬族', '0', '37', '0');
INSERT INTO `base_dic` VALUES ('a5105fb4673c461f9ef6fb18d5bfcbc2', 'JK_STREET_DICT', '12022502', '蓟县洇溜镇', '120225', '266', '0');
INSERT INTO `base_dic` VALUES ('a516ac4179cf4d33814762e5d6017a4f', 'JK_STREET_DICT', '12010103', '和平区劝业场街', '120101', '25', '0');
INSERT INTO `base_dic` VALUES ('a61f8dd3aadc445e9d471d1fdc3e94fe', 'JK_OCCUPATION_DICT', '1603', '化工产品生产人员', '0', '46', '0');
INSERT INTO `base_dic` VALUES ('a65b8c49d3514c23be58162f182381e8', 'JK_STREET_DICT', '120111101', '西青区杨柳青镇', '120111', '102', '0');
INSERT INTO `base_dic` VALUES ('a81eab65f3554bfd9a2ba0d88c75906b', 'JK_OCCUPATION_DICT', '1102', '国家机关及其工作机构负责人', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('a87eb95390f342b2a70912490cbfde44', 'JK_STREET_DICT', '12022304', '静海县梁头镇', '120223', '248', '0');
INSERT INTO `base_dic` VALUES ('a9224db186f246e9a4e35b750a84ae80', 'JK_STREET_DICT', '12010513', '河北区江都路街', '120105', '77', '0');
INSERT INTO `base_dic` VALUES ('a94a8cd3cead4fbb8a3f1ae5530f93ae', 'JK_NATION_DICT', '10', '朝鲜族', '0', '10', '0');
INSERT INTO `base_dic` VALUES ('aa4ad407edc64c37b8c17ddb5133e5e6', 'JK_NATION_DICT', '31', '达斡尔族', '0', '31', '0');
INSERT INTO `base_dic` VALUES ('aaca4f14dd2e441a97fcf026d3d63bdc', 'JK_STREET_DICT', '12011414', '武清区河北屯镇', '120114', '152', '0');
INSERT INTO `base_dic` VALUES ('ab645c33c75b47a88e2a7ba821c930de', 'JK_NATION_DICT', '3', '回族', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('ac37ec6dc34444eb85fe6fa536e3c126', 'JK_STREET_DICT', '12010314', '河西区天塔街', '120103', '53', '0');
INSERT INTO `base_dic` VALUES ('aca52f3c63724b84bd00ed3dc25a6037', 'JK_OCCUPATION_DICT', '1620', '工艺、美术品制作人员', '0', '63', '0');
INSERT INTO `base_dic` VALUES ('aca7b4d14068487c8f42cedbee47a4c0', 'JK_OCCUPATION_DICT', '1504', '渔业生产人员', '0', '40', '0');
INSERT INTO `base_dic` VALUES ('acb4c19df74e47219e60a7dbbbe26f79', 'JK_OCCUPATION_DICT', '1211', '体育工作人员', '0', '18', '0');
INSERT INTO `base_dic` VALUES ('ad0d56ecf8a64ca69084f54839dae98b', 'JK_STREET_DICT', '12022320', '静海县良王庄乡', '120223', '258', '0');
INSERT INTO `base_dic` VALUES ('ad89c9a5d5af4a068f0d72336c9a93be', 'JK_STREET_DICT', '12011112', '西青区一石化', '120111', '113', '0');
INSERT INTO `base_dic` VALUES ('ae1da9dfe10f400697b14223943f0fee', 'JK_PMH_DICT', 'K74.5', '胆汁型肝硬变', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('ae6494f9afbf4bbe85a281077b7630cf', 'JK_STREET_DICT', '120106', '红桥区', '0', '8', '0');
INSERT INTO `base_dic` VALUES ('ae88378dab7349e5ab3c66d47f3321b9', 'JK_STREET_DICT', '12011408', '武清区大黄堡乡', '120114', '146', '0');
INSERT INTO `base_dic` VALUES ('aea9f00c572146ad8f5934951a3b1a3b', 'JK_STREET_DICT', '12010310', '河西区陈塘庄街', '120103', '49', '0');
INSERT INTO `base_dic` VALUES ('aed5693bf7314f718a97b20425115293', 'JK_STREET_DICT', '12022322', '静海县王口镇', '120223', '259', '0');
INSERT INTO `base_dic` VALUES ('aee1f6062d2246d8a4c9a49fcd7321bc', 'JK_OCCUPATION_DICT', '1600', '生产、运输设备操作人员及有关人员', '0', '43', '0');
INSERT INTO `base_dic` VALUES ('af6de2fa5d0f47978e69d60f98566fd1', 'JK_STREET_DICT', '12000000.0', '天津市', 'P12000000', '22', '0');
INSERT INTO `base_dic` VALUES ('af9feab9bfaf4706be8a6acd3a95d442', 'JK_STREET_DICT', '120111199', '西青区不详乡镇', '120111', '115', '0');
INSERT INTO `base_dic` VALUES ('b049daaf817d474bbec5598855bb753e', 'JK_NATION_DICT', '7', '彝族', '0', '7', '0');
INSERT INTO `base_dic` VALUES ('b088716f8e4d496286e38f5666b9f87c', 'JK_STREET_DICT', '12022104', '宁河县大北涧沽镇', '120221', '232', '0');
INSERT INTO `base_dic` VALUES ('b0a84ed66a464c02874632aceabe5658', 'JK_PMH_DICT', 'K70.3', '酒精性肝硬变', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('b14ed5ad3f864967983aa2d0049fce36', 'JK_STREET_DICT', '12011418', '武清区河西务镇', '120114', '156', '0');
INSERT INTO `base_dic` VALUES ('b38f1156e64e4a8aa6dd9d35349e5429', 'JK_STREET_DICT', '12011303', '北辰区青光镇', '120113', '127', '0');
INSERT INTO `base_dic` VALUES ('b42845ad76bd4a569d513cb9f9c9ed03', 'JK_STREET_DICT', '12011611', '滨海新区塘沽胡家园街', '120107', '205', '0');
INSERT INTO `base_dic` VALUES ('b5d6e7fa0502419e9a0616f52adfc951', 'JK_OCCUPATION_DICT', '1302', '安全保卫和消防人员', '0', '24', '0');
INSERT INTO `base_dic` VALUES ('b681ebb6d39e4686abf3911524cd6439', 'JK_OCCUPATION_DICT', '1201', '科学研究人员', '0', '8', '0');
INSERT INTO `base_dic` VALUES ('b709a3ea8f634d4f933130ddf4f16d2f', 'JK_STREET_DICT', '12011521', '宝坻区大唐庄镇', '120115', '190', '0');
INSERT INTO `base_dic` VALUES ('b87dc75353514d639149fe6e4ae5aea5', 'JK_SEX_DICT', '9', '未说明的性别', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('b90f20025a0c4de298757224d08469d5', 'JK_STREET_DICT', '12011430', '武清区国营武清农场', '120114', '168', '0');
INSERT INTO `base_dic` VALUES ('b913d67d871f430a8f7003b1cec1c39b', 'JK_STREET_DICT', '120111102', '西青区辛口镇', '120111', '106', '0');
INSERT INTO `base_dic` VALUES ('ba38cbdb99e24c258e09947baa316f7d', 'JK_STREET_DICT', '12010211', '河东区大王庄街', '120102', '36', '0');
INSERT INTO `base_dic` VALUES ('ba6063242d3c46d9abf5cce1bd4df906', 'JK_NATION_DICT', '39', '阿昌族', '0', '39', '0');
INSERT INTO `base_dic` VALUES ('ba772d63c8c447948945284174d416f3', 'JK_STREET_DICT', '120111002', '西青区李七庄街', '120111', '109', '0');
INSERT INTO `base_dic` VALUES ('bb2dd5982a6d481c9f3a2a46b97b0895', 'JK_STREET_DICT', '12010502', '河北区望海楼街', '120105', '71', '0');
INSERT INTO `base_dic` VALUES ('bcd085700658427ca6737efff4771393', 'JK_STREET_DICT', '12022599', '蓟县不详乡镇', '120225', '291', '0');
INSERT INTO `base_dic` VALUES ('bd0d719d6f964a4f93faeace623f79e8', 'JK_STREET_DICT', '12011627', '滨海新区汉沽茶淀镇', '120108', '215', '0');
INSERT INTO `base_dic` VALUES ('bd7ddde38d6d48b3ba046669d52e0caf', 'JK_OCCUPATION_DICT', '1700', '军人', '0', '70', '0');
INSERT INTO `base_dic` VALUES ('bff6b9d5de724207912d05fcac52ed7e', 'JK_NATION_DICT', '4', '藏族', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('c03eb814681d4ed4a3479f688f9934f3', 'JK_STREET_DICT', '12010608', '红桥区南头窑街', '120106', '87', '0');
INSERT INTO `base_dic` VALUES ('C1001', 'RADIATION_WORK', '1', '医学应用', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('C1002', 'RADIATION_WORK', '2', '工业应用', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('c143f41fcf5d42c08651a4888fdee326', 'JK_STREET_DICT', '12010606', '红桥区邵公庄街', '120106', '85', '0');
INSERT INTO `base_dic` VALUES ('c1b8294dafa043d8a5e0df5df4deabaf', 'JK_STREET_DICT', '12010406', '南开区向阳路街', '120104', '62', '0');
INSERT INTO `base_dic` VALUES ('c22a9c6b5f7c45e89e2411722427b126', 'JK_OCCUPATION_DICT', '1611', '裁剪缝纫和皮革、毛皮制品加工制作人员', '0', '54', '0');
INSERT INTO `base_dic` VALUES ('c23bcd91b53b42339ed2b9c33cde7f45', 'JK_STREET_DICT', '12011002', '东丽区金桥街', '120110', '92', '0');
INSERT INTO `base_dic` VALUES ('c25ad214667c49e09cce3414ee6148a8', 'JK_STREET_DICT', '12010106', '和平区白楼街', '120101', '26', '0');
INSERT INTO `base_dic` VALUES ('c36fac4b219d472d99e9af12a92ee148', 'JK_SEX_DICT', '0', '未知的性别', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('c3c6c121c4fa4001ad556d3c20cfb94f', 'JK_STREET_DICT', '120111103', '西青区张家窝镇', '120111', '104', '0');
INSERT INTO `base_dic` VALUES ('c4fc43baea6b4d58b5d676edc677fa56', 'JK_NATION_DICT', '54', '门巴族', '0', '54', '0');
INSERT INTO `base_dic` VALUES ('c59982a9baf847daa92a2f447ca520f7', 'JK_STREET_DICT', '12011632', '滨海新区大港中塘镇', '120109', '218', '0');
INSERT INTO `base_dic` VALUES ('c6327eda012140f6848832dad947dad1', 'JK_STREET_DICT', '12010299', '河东区不详乡镇', '120102', '42', '0');
INSERT INTO `base_dic` VALUES ('c632c74318b04194932fe43e0c1c912f', 'JK_NATION_DICT', '21', '佤族', '0', '21', '0');
INSERT INTO `base_dic` VALUES ('c6461953f8494213850cea1c5a856b35', 'JK_OCCUPATION_DICT', '1618', '广播影视制品制作、播放及文物保护作业人员', '0', '61', '0');
INSERT INTO `base_dic` VALUES ('c688c8094609404e920939e7fa8f9348', 'JK_STREET_DICT', '12022512', '蓟县白涧镇', '120225', '276', '0');
INSERT INTO `base_dic` VALUES ('c6cafc7fc26e41c6aa08392eeb083ca1', 'JK_STREET_DICT', '12010215', '河东区中山门街', '120102', '38', '0');
INSERT INTO `base_dic` VALUES ('c6cd44eb83ea4b13beae59b1be9a87c6', 'JK_STREET_DICT', '12010202', '河东区向阳楼街', '120102', '31', '0');
INSERT INTO `base_dic` VALUES ('c76b40fbbac749f7af639af6a0634b70', 'JK_STREET_DICT', '12011509', '宝坻区口东镇', '120115', '178', '0');
INSERT INTO `base_dic` VALUES ('c8116353f42c4c41ae610ac61e1fe48f', 'JK_STREET_DICT', '12011613', '滨海新区塘沽开发区', '120107', '207', '0');
INSERT INTO `base_dic` VALUES ('c877846c820845f88c06ecc9b7ae3217', 'JK_STREET_DICT', '12011310', '北辰区西堤头镇', '120113', '133', '0');
INSERT INTO `base_dic` VALUES ('c8a4b052e0e74a6784244370b4fa3421', 'JK_NATION_DICT', '28', '景颇族', '0', '28', '0');
INSERT INTO `base_dic` VALUES ('c8ab0745afb7476e8488190497d18c39', 'JK_STREET_DICT', '12022520', '蓟县西龙虎峪镇', '120225', '284', '0');
INSERT INTO `base_dic` VALUES ('c8d64d281b844394a051b2a47a678aad', 'JK_NATION_DICT', '17', '哈萨克族', '0', '17', '0');
INSERT INTO `base_dic` VALUES ('c91f35fdb39d4a7388c5a50fb95ba4ef', 'JK_NATION_DICT', '32', '仫佬族', '0', '32', '0');
INSERT INTO `base_dic` VALUES ('c98f388847ab43a19194a0f485b76b61', 'JK_NATION_DICT', '2', '蒙古族', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('c9cd34e03dfe4096845336fd424ecdcb', 'JK_STREET_DICT', '00000100', '外省市不详乡镇', '000001', '21', '0');
INSERT INTO `base_dic` VALUES ('c9e506acce654389a145c444b56a88e2', 'JK_STREET_DICT', '12011511', '宝坻区马店子镇', '120115', '180', '0');
INSERT INTO `base_dic` VALUES ('c9ea9232d72d433a9a50bc8c3a8af4c5', 'JK_STREET_DICT', '12010399', '河西区不详乡镇', '120103', '56', '0');
INSERT INTO `base_dic` VALUES ('cab852036ac74aeca86cdb7a6dcf18b9', 'JK_STREET_DICT', '12011005', '东丽区金钟街', '120110', '95', '0');
INSERT INTO `base_dic` VALUES ('cb28d1e539434fb8965b2a9c274319e0', 'JK_STREET_DICT', '12010403', '南开区学府街', '120104', '59', '0');
INSERT INTO `base_dic` VALUES ('cb443e8395e349f39c0770e1e4997c21', 'JK_STREET_DICT', '12022314', '静海县杨成庄乡', '120223', '254', '0');
INSERT INTO `base_dic` VALUES ('cbb53ea11b6048798e02f74357e0efc3', 'JK_STREET_DICT', '120115', '宝坻区', '0', '14', '0');
INSERT INTO `base_dic` VALUES ('cbe2bb3d00884122aafb85945eb1c2b6', 'JK_OCCUPATION_DICT', '1610', '纺织、针织、印染人员', '0', '53', '0');
INSERT INTO `base_dic` VALUES ('cbed5a1d9d044df9a4b385679f2595fc', 'JK_STREET_DICT', '12010610', '红桥区丁字沽街', '120106', '89', '0');
INSERT INTO `base_dic` VALUES ('cc3229c87f6e492f89a3ff0c97853a1d', 'JK_NATION_DICT', '9', '布依族', '0', '9', '0');
INSERT INTO `base_dic` VALUES ('cc3cb7c97f324b59bb63b18be7ceab33', 'JK_NATION_DICT', '8', '壮族', '0', '8', '0');
INSERT INTO `base_dic` VALUES ('cceb4f6919a54b61922964a909a872ce', 'JK_NATION_DICT', '46', '崩龙族', '0', '46', '0');
INSERT INTO `base_dic` VALUES ('cd00d1e8006848a58c20ea2eadad1ae7', 'JK_STREET_DICT', '12011502', '宝坻区牛道口镇', '120115', '171', '0');
INSERT INTO `base_dic` VALUES ('cd90b84de9c744cba06a02138ede6674', 'JK_OCCUPATION_DICT', '1800', '不便分类的其他从业人员', '0', '71', '0');
INSERT INTO `base_dic` VALUES ('cdff62c6112e4eb6b0017c949a4e633f', 'JK_NATION_DICT', '42', '怒族', '0', '42', '0');
INSERT INTO `base_dic` VALUES ('ce5449d60d204d9fb192b8da9cf2014a', 'JK_STREET_DICT', '12010312', '河西区柳林街', '120103', '51', '0');
INSERT INTO `base_dic` VALUES ('cf560cf11a8247868e2fd46f3854f595', 'JK_STREET_DICT', '12010306', '河西区挂甲寺街', '120103', '46', '0');
INSERT INTO `base_dic` VALUES ('cfdf88f261b9468ebfbe828cf126f1e6', 'JK_STREET_DICT', '12010212', '河东区大直沽街', '120102', '37', '0');
INSERT INTO `base_dic` VALUES ('d05c9a87540a4b2e90e9f38fc8b7541f', 'JK_STREET_DICT', '120101', '和平区', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('d08d4f7c42ff4e9d9a42189e88609248', 'JK_STREET_DICT', '12022507', '蓟县别山镇', '120225', '271', '0');
INSERT INTO `base_dic` VALUES ('d092deea46194546a4a3ffe4dead6005', 'JK_STREET_DICT', '12011636', '滨海新区大港迎宾街', '120109', '222', '0');
INSERT INTO `base_dic` VALUES ('d0f14a946dbd495a8e34e27a6a94f99b', 'JK_STREET_DICT', '12011608', '滨海新区塘沽大沽街', '120107', '202', '0');
INSERT INTO `base_dic` VALUES ('D1001', 'WORK_CLASS', '1', '放射诊断', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('D1002', 'WORK_CLASS', '2', '牙科诊断', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('D1003', 'WORK_CLASS', '3', '核医学', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('D1004', 'WORK_CLASS', '4', '放射治疗', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('D1005', 'WORK_CLASS', '5', '辐照应用', '0', '5', '0');
INSERT INTO `base_dic` VALUES ('D1006', 'WORK_CLASS', '6', '医学级非医用加速器', '0', '6', '0');
INSERT INTO `base_dic` VALUES ('D1007', 'WORK_CLASS', '7', '工业探访', '0', '7', '0');
INSERT INTO `base_dic` VALUES ('D1008', 'WORK_CLASS', '8', 'X射线其他应用', '0', '8', '0');
INSERT INTO `base_dic` VALUES ('d169745102d245aea9e14e14218668c5', 'JK_STREET_DICT', '12010107', '和平区体育馆街', '120101', '27', '0');
INSERT INTO `base_dic` VALUES ('d26a6783af0948258b71f0cb02ab4daf', 'JK_STREET_DICT', '12011406', '武清区曹子里乡', '120114', '144', '0');
INSERT INTO `base_dic` VALUES ('d2ce7ba282f2461fbcf8de528df5c307', 'JK_NATION_DICT', '97', '其他', '0', '97', '0');
INSERT INTO `base_dic` VALUES ('d2f71a81d1cc4b388cd68fc06de14e8b', 'JK_STREET_DICT', '12022118', '宁河县板桥镇', '120221', '242', '0');
INSERT INTO `base_dic` VALUES ('d36662b528374169a3d4ee3faee0f7c0', 'JK_NATION_DICT', '44', '俄罗斯族', '0', '44', '0');
INSERT INTO `base_dic` VALUES ('d3fa6ebf374344a09a6bcf774b56c155', 'JK_STREET_DICT', '12011003', '东丽区军粮城街', '120110', '93', '0');
INSERT INTO `base_dic` VALUES ('d4ac33a835064337aec7cc4d223a3132', 'JK_STREET_DICT', '12011412', '武清区大良镇', '120114', '150', '0');
INSERT INTO `base_dic` VALUES ('d4d67d4e27eb487eb33a2259b0b927dc', 'JK_STREET_DICT', '12022521', '蓟县穿芳峪镇', '120225', '285', '0');
INSERT INTO `base_dic` VALUES ('d8606c107ba9418ea821ac893fc3b743', 'JK_OCCUPATION_DICT', '2100', '家务', '0', '74', '0');
INSERT INTO `base_dic` VALUES ('d8c73c9934664192841f18c17cd9a2ce', 'JK_STREET_DICT', '12011409', '武清区上马台镇', '120114', '147', '0');
INSERT INTO `base_dic` VALUES ('d9a6668bd765438f98d1570f6739c19c', 'JK_STREET_DICT', '12022503', '蓟县官庄镇', '120225', '267', '0');
INSERT INTO `base_dic` VALUES ('da836d3e5d7948cabdeddae8bdcee436', 'JK_STREET_DICT', '12022307', '静海县陈官屯镇', '120223', '250', '0');
INSERT INTO `base_dic` VALUES ('dac085abe91f484fb336cc9185b48049', 'JK_STREET_DICT', '12011501', '宝坻区宝平街', '120115', '170', '0');
INSERT INTO `base_dic` VALUES ('db8a0b59dab94895914770d0df3abb11', 'JK_NATION_DICT', '26', '东乡族', '0', '26', '0');
INSERT INTO `base_dic` VALUES ('db9efcffdba94822abca36c7d8c70802', 'JK_OCCUPATION_DICT', '1404', '饭店、旅游及健身娱乐场所服务人员', '0', '31', '0');
INSERT INTO `base_dic` VALUES ('dbf7ddf8e84045be979c85fc291357ec', 'JK_OCCUPATION_DICT', '1625', '检验、计量人员', '0', '68', '0');
INSERT INTO `base_dic` VALUES ('dc32ad1c51774a1eaaa7655eb3cf7560', 'JK_STREET_DICT', '12011606', '滨海新区塘沽新河街', '120107', '200', '0');
INSERT INTO `base_dic` VALUES ('dcae4bab04e2487c961ded555792557f', 'JK_STREET_DICT', '12022514', '蓟县侯家营镇', '120225', '278', '0');
INSERT INTO `base_dic` VALUES ('dce23555c2ad4f0196a1832b552f0b42', 'JK_STREET_DICT', '120108', '汉沽区', '0', '16', '0');
INSERT INTO `base_dic` VALUES ('dd87389b3efb405d8b13cf31307b64e1', 'JK_OCCUPATION_DICT', '1626', '其他生产、运输设备操作人员及有关人员', '0', '69', '0');
INSERT INTO `base_dic` VALUES ('dda32f5d5aee4601bd825deab1ac27a8', 'JK_STREET_DICT', '12022112', '宁河县造甲城镇', '120221', '238', '0');
INSERT INTO `base_dic` VALUES ('ddc67948d4fd444a8ba815c2e782346f', 'JK_STREET_DICT', '12022523', '蓟县东二营镇', '120225', '287', '0');
INSERT INTO `base_dic` VALUES ('de7f20b2db164529bf77fb3c3948348b', 'JK_STREET_DICT', '12022315', '静海县团泊镇', '120223', '255', '0');
INSERT INTO `base_dic` VALUES ('df5b37140d884e1692ad9813362a1001', 'JK_STREET_DICT', '12011402', '武清区徐官屯街', '120114', '140', '0');
INSERT INTO `base_dic` VALUES ('df67629fd3604b5a9da693c6b4db0e5f', 'JK_STREET_DICT', '12010405', '南开区万兴街', '120104', '61', '0');
INSERT INTO `base_dic` VALUES ('dfdcd2b2a7914453b8da1ef184ad69f7', 'JK_STREET_DICT', '12011301', '北辰区北仓镇', '120113', '125', '0');
INSERT INTO `base_dic` VALUES ('e074f8c9e2d1498ebcbf101f320c8ec9', 'JK_STREET_DICT', '12011515', '宝坻区大口屯镇', '120115', '184', '0');
INSERT INTO `base_dic` VALUES ('E1001', 'DUTY_TYPE', '1', '医学应用', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('E1002', 'DUTY_TYPE', '2', '工业应用', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('e104b421e450463582331a342affd8b6', 'JK_OCCUPATION_DICT', '1400', '商业、服务业人员', '0', '27', '0');
INSERT INTO `base_dic` VALUES ('e108e6750542419e90bfa71092685b97', 'JK_SEX_DICT', '1', '男', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('e12dfc8ac33442aaa754dcb19c294109', 'JK_STREET_DICT', '12011525', '宝坻区钰华街', '120115', '193', '0');
INSERT INTO `base_dic` VALUES ('e1a198d228cc4e1384536c02b8295c89', 'JK_STREET_DICT', '12022109', '宁河县东棘坨镇', '120221', '236', '0');
INSERT INTO `base_dic` VALUES ('e32f0f7349a6402aa8f43fa18e662006', 'JK_STREET_DICT', '12010604', '红桥区双环村街', '120106', '83', '0');
INSERT INTO `base_dic` VALUES ('e366d244822941959ddd560a4597e10a', 'JK_STREET_DICT', '12010101', '和平区新兴街', '120101', '23', '0');
INSERT INTO `base_dic` VALUES ('e3772d3b9b444a08b9287e0b8bf8fa91', 'JK_STREET_DICT', '12011504', '宝坻区霍各庄镇', '120115', '173', '0');
INSERT INTO `base_dic` VALUES ('e4afc4fe405d40cbaa292a9835f047cb', 'JK_STREET_DICT', '12011419', '武清区高村乡', '120114', '157', '0');
INSERT INTO `base_dic` VALUES ('e50b2b996da04e42be8267e42b9441ef', 'JK_STREET_DICT', '12010218', '河东区富民路街', '120102', '40', '0');
INSERT INTO `base_dic` VALUES ('e5285626fe8642d3855ac9a6f596b8ad', 'JK_NATION_DICT', '19', '黎族', '0', '19', '0');
INSERT INTO `base_dic` VALUES ('e5cb3e6d00574b18a6e77a716c2be292', 'JK_STREET_DICT', '12022504', '蓟县马伸桥镇', '120225', '268', '0');
INSERT INTO `base_dic` VALUES ('e704f5a565bf47a8aa51d0c9b90c7297', 'JK_NATION_DICT', '38', '锡伯族', '0', '38', '0');
INSERT INTO `base_dic` VALUES ('e887e1397d5e43a6ba58d3f6d940c6e4', 'JK_STREET_DICT', '12022517', '蓟县下窝头镇', '120225', '281', '0');
INSERT INTO `base_dic` VALUES ('e8dba39d4a0c4aabacc360fa9b411ce6', 'JK_STREET_DICT', '12011607', '滨海新区塘沽新村街', '120107', '201', '0');
INSERT INTO `base_dic` VALUES ('e928b9581c454d85aa48df6dc1e5371b', 'JK_MARRIAGE_DICT', '1.0', '未婚', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('e9b4fa33d1e140a1865d9b843f4f85c5', 'JK_STREET_DICT', '12022511', '蓟县罗庄子镇', '120225', '275', '0');
INSERT INTO `base_dic` VALUES ('ea3bc1c77e424a9d98644208940f3a45', 'JK_STREET_DICT', '12022506', '蓟县邦均镇', '120225', '270', '0');
INSERT INTO `base_dic` VALUES ('ea5aada91fb44a999ece4af14c8a45ca', 'JK_STREET_DICT', '12011625', '滨海新区汉沽杨家泊镇', '120108', '214', '0');
INSERT INTO `base_dic` VALUES ('eaca19a3dd164bfcad4102d0b6496d56', 'JK_STREET_DICT', '120107', '塘沽区', '0', '15', '0');
INSERT INTO `base_dic` VALUES ('ebb9b7d16b20423185f47c07e8c738b6', 'JK_NATION_DICT', '22', '畲族', '0', '22', '0');
INSERT INTO `base_dic` VALUES ('ebedaff0feae42c2a2a5618f73b92a60', 'JK_STREET_DICT', '12010311', '河西区尖山街', '120103', '50', '0');
INSERT INTO `base_dic` VALUES ('edaf448cde4644308afb708953916d52', 'JK_STREET_DICT', '12011637', '滨海新区大港海滨街', '120109', '223', '0');
INSERT INTO `base_dic` VALUES ('ee226a13aef74017a53af464ffa71d2c', 'JK_OCCUPATION_DICT', '1202', '工程技术人员', '0', '9', '0');
INSERT INTO `base_dic` VALUES ('ee5ce6f53a1640668542c2f8b499daf2', 'JK_STREET_DICT', '12011401', '武清区杨村街', '120114', '139', '0');
INSERT INTO `base_dic` VALUES ('ef279cc11d0c41389939b5da8c35b5a9', 'JK_MARRIAGE_DICT', '5.0', '不详', '0', '5', '0');
INSERT INTO `base_dic` VALUES ('ef6cebc344344d318b610e3d9349fd17', 'JK_STREET_DICT', '12010515', '河北区建昌道街', '120105', '78', '0');
INSERT INTO `base_dic` VALUES ('efacf7b6fcd543e1b75fa90e7cedb845', 'JK_STREET_DICT', '12011203', '津南区北闸口镇', '120112', '118', '0');
INSERT INTO `base_dic` VALUES ('efe4d70844ec406e92c23f09974b55d4', 'JK_STREET_DICT', '12011008', '东丽区万新街', '120110', '97', '0');
INSERT INTO `base_dic` VALUES ('f06c864ca3534800a6b617a64d89055b', 'JK_OCCUPATION_DICT', '1624', '环境监测与废物处理人员', '0', '67', '0');
INSERT INTO `base_dic` VALUES ('F1001', 'TYPE', '1', '放射诊断', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('F1002', 'TYPE', '2', '牙科诊断', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('F1003', 'TYPE', '3', '核医学', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('F1004', 'TYPE', '4', '放射治疗', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('f121b25a640047b6bf796b825aacd3c8', 'JK_STREET_DICT', '12011424', '武清区豆张庄乡', '120114', '162', '0');
INSERT INTO `base_dic` VALUES ('f20bd77673c542da83b5f20074985e86', 'JK_STREET_DICT', '12022522', '蓟县孙各庄乡', '120225', '286', '0');
INSERT INTO `base_dic` VALUES ('f3613b88c7c74ef3b6d975a9ab05c18b', 'JK_OCCUPATION_DICT', '1104', '事业单位负责人', '0', '5', '0');
INSERT INTO `base_dic` VALUES ('f4905fb4970f4980a334c191ed2352a3', 'JK_STREET_DICT', '12010512', '河北区鸿顺里街', '120105', '76', '0');
INSERT INTO `base_dic` VALUES ('f4d6fff5261e44c3bfd45a2872bd32fc', 'JK_STREET_DICT', '12022310', '静海县西翟庄镇', '120223', '252', '0');
INSERT INTO `base_dic` VALUES ('f67b0295dbcf48c5ba7921d5a17f23f2', 'JK_OCCUPATION_DICT', '1207', '金融业务人员', '0', '14', '0');
INSERT INTO `base_dic` VALUES ('f7ef8814409240c3a256f07922c423c0', 'JK_STREET_DICT', '12010607', '红桥区三条石街', '120106', '86', '0');
INSERT INTO `base_dic` VALUES ('f7f767e6ebcc47d28c221aeeef777995', 'JK_STREET_DICT', '12022101', '宁河县芦台镇', '120221', '231', '0');
INSERT INTO `base_dic` VALUES ('f806bca48c584412a57e02c64423c37f', 'JK_STREET_DICT', '12022518', '蓟县杨津庄镇', '120225', '282', '0');
INSERT INTO `base_dic` VALUES ('f80ab2c0bd12472295d8b08bdfddd15d', 'JK_STREET_DICT', '120111105', '西青区大寺镇', '120111', '103', '0');
INSERT INTO `base_dic` VALUES ('f880875ab10f4245bbc182294a83ffb0', 'JK_STREET_DICT', '12010307', '河西区越秀路街', '120103', '47', '0');
INSERT INTO `base_dic` VALUES ('f8b8383a8ce44651a0b1990636fe173c', 'JK_MARRIAGE_DICT', '2.0', '已婚', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('f8c59380c85a422b9ea0f47729f4eb2f', 'JK_OCCUPATION_DICT', '1602', '金属冶炼、轧制人员', '0', '45', '0');
INSERT INTO `base_dic` VALUES ('fa4b8ca4e5c045ae94bd0ce44d0f194f', 'JK_STREET_DICT', '12011012', '东丽区空港加工区', '120110', '100', '0');
INSERT INTO `base_dic` VALUES ('fa7c783d9d7444c7895dd085dca59e1f', 'JK_STREET_DICT', '12010309', '河西区马场街', '120103', '48', '0');
INSERT INTO `base_dic` VALUES ('fb0424680c7b48cfb0947ce9d4fe12d8', 'JK_NATION_DICT', '57', '外国血统中国籍人士', '0', '57', '0');
INSERT INTO `base_dic` VALUES ('fba815e7692e4adb93c98de8220cb2c7', 'JK_STREET_DICT', '12010506', '河北区王串场街', '120105', '72', '0');
INSERT INTO `base_dic` VALUES ('fc0639db316e43f3a9bac6c92e6514db', 'JK_STREET_DICT', '12022308', '静海县唐官屯镇', '120223', '251', '0');
INSERT INTO `base_dic` VALUES ('fc217224cb9a40e5bf817f78bf7361b7', 'JK_STREET_DICT', '12010407', '南开区长虹街', '120104', '63', '0');
INSERT INTO `base_dic` VALUES ('fc4b20e05ad242da80b03e6727adc317', 'JK_STREET_DICT', '12011304', '北辰区双口镇', '120113', '128', '0');
INSERT INTO `base_dic` VALUES ('fd15333ed4cb4940a6f2b01a7013721d', 'JK_NATION_DICT', '33', '羌族', '0', '33', '0');
INSERT INTO `base_dic` VALUES ('fd84bc58f7de4cb9a67240c55707677b', 'JK_NATION_DICT', '40', '普米族', '0', '40', '0');
INSERT INTO `base_dic` VALUES ('fdacdaa6133b41e1b7958b8ef3eb4070', 'JK_OCCUPATION_DICT', '1609', '橡胶和塑料制品生产人员', '0', '52', '0');
INSERT INTO `base_dic` VALUES ('fe9714f4bb4d4771b6975ec61e74a0fc', 'JK_STREET_DICT', '12022120', '宁河县岳龙镇', '120221', '243', '0');
INSERT INTO `base_dic` VALUES ('feec3643f2ce4f7badd369fea7b93b62', 'JK_OCCUPATION_DICT', '1503', '畜牧业生产人员', '0', '39', '0');
INSERT INTO `base_dic` VALUES ('ff0128c0843346f888207713be353075', 'JK_NATION_DICT', '5', '维吾尔族', '0', '5', '0');
INSERT INTO `base_dic` VALUES ('ff3b4f7c2a1b428b8a63413052724466', 'JK_STREET_DICT', '120112', '津南区', '0', '11', '0');
INSERT INTO `base_dic` VALUES ('fff1a98a1b654abba1bf5a300512d4c3', 'JK_STREET_DICT', '12022316', '静海县中旺镇', '120223', '256', '0');
INSERT INTO `base_dic` VALUES ('G1001', 'RADIATION_TYPE', '1', 'X', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('G1002', 'RADIATION_TYPE', '2', 'Y', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('H1001', 'MONITOR_STATE', '1', '检测中', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('H1002', 'MONITOR_STATE', '2', '停止检测', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('H1003', 'MONITOR_STATE', '3', '开始检测', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('I1001', 'EMPLOY_PROPERTY', '1', '临时', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('I1002', 'EMPLOY_PROPERTY', '2', '转正', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('I1003', 'EMPLOY_PROPERTY', '3', '实习', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('J1001', 'RADIATION_SOURCE', '1', '密封源', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('J1002', 'RADIATION_SOURCE', '2', '非密封源', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('K1001', 'RADIATION', '1', '核辐射', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('K1002', 'RADIATION', '2', 'X光辐射', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('K1003', 'RADIATION', '3', 'Y光辐射', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('L0001', 'DEVICE_TYPE', '1', '放射诊断', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('L0005', 'DEVICE_TYPE', '5', '辐照应用', '0', '5', '0');
INSERT INTO `base_dic` VALUES ('L1002', 'DEVICE_TYPE', '2', '牙科诊断', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('L1003', 'DEVICE_TYPE', '3', '核医学', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('L1004', 'DEVICE_TYPE', '4', '放射治疗', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('L1006', 'DEVICE_TYPE', '6', '医学级非医用加速器', '0', '6', '0');
INSERT INTO `base_dic` VALUES ('L1007', 'DEVICE_TYPE', '7', '工业探访', '0', '7', '0');
INSERT INTO `base_dic` VALUES ('L1008', 'DEVICE_TYPE', '8', 'X射线其他应用', '0', '8', '0');
INSERT INTO `base_dic` VALUES ('M1001', 'JK_DISEASES_DICT', '1', '临床诊断病例', '0', '1', '0');
INSERT INTO `base_dic` VALUES ('M1002', 'JK_DISEASES_DICT', '2', '确诊病例', '0', '2', '0');
INSERT INTO `base_dic` VALUES ('M1003', 'JK_DISEASES_DICT', '3', '疑似病例', '0', '3', '0');
INSERT INTO `base_dic` VALUES ('M1004', 'JK_DISEASES_DICT', '4', '病原携带者', '0', '4', '0');
INSERT INTO `base_dic` VALUES ('N1001', 'JK_DISEASES_SPECIES', '0100', '鼠疫', '0', '100', '0');
INSERT INTO `base_dic` VALUES ('N1002', 'JK_DISEASES_SPECIES', '0200', '霍乱', '0', '200', '0');
INSERT INTO `base_dic` VALUES ('N1003', 'JK_DISEASES_SPECIES', '0300', '肝 炎', '0', '300', '0');
INSERT INTO `base_dic` VALUES ('N1004', 'JK_DISEASES_SPECIES', '0301', '甲肝', '0', '301', '0');
INSERT INTO `base_dic` VALUES ('N1005', 'JK_DISEASES_SPECIES', '0302', '乙肝', '0', '302', '0');
INSERT INTO `base_dic` VALUES ('N1006', 'JK_DISEASES_SPECIES', '0303', '丙肝', '0', '303', '0');
INSERT INTO `base_dic` VALUES ('N1007', 'JK_DISEASES_SPECIES', '0306', '丁肝', '0', '306', '0');
INSERT INTO `base_dic` VALUES ('N1008', 'JK_DISEASES_SPECIES', '0304', '戊肝', '0', '304', '0');
INSERT INTO `base_dic` VALUES ('N1009', 'JK_DISEASES_SPECIES', '0305', '肝炎（未分型）', '0', '305', '0');
INSERT INTO `base_dic` VALUES ('N1010', 'JK_DISEASES_SPECIES', '0400', '痢疾', '0', '400', '0');
INSERT INTO `base_dic` VALUES ('N1011', 'JK_DISEASES_SPECIES', '0401', '细菌性痢疾', '0', '401', '0');
INSERT INTO `base_dic` VALUES ('N1012', 'JK_DISEASES_SPECIES', '0402', '阿米巴性痢疾', '0', '402', '0');
INSERT INTO `base_dic` VALUES ('N1013', 'JK_DISEASES_SPECIES', '0500', '伤寒及副伤寒', '0', '500', '0');
INSERT INTO `base_dic` VALUES ('N1014', 'JK_DISEASES_SPECIES', '0501', '伤 寒', '0', '501', '0');
INSERT INTO `base_dic` VALUES ('N1015', 'JK_DISEASES_SPECIES', '0502', '副伤寒', '0', '502', '0');
INSERT INTO `base_dic` VALUES ('N1016', 'JK_DISEASES_SPECIES', '0600', '艾滋病', '0', '600', '0');
INSERT INTO `base_dic` VALUES ('N1017', 'JK_DISEASES_SPECIES', '0601', 'HIV', '0', '601', '0');
INSERT INTO `base_dic` VALUES ('N1018', 'JK_DISEASES_SPECIES', '0700', '淋病', '0', '700', '0');
INSERT INTO `base_dic` VALUES ('N1019', 'JK_DISEASES_SPECIES', '0800', '梅毒', '0', '800', '0');
INSERT INTO `base_dic` VALUES ('N1020', 'JK_DISEASES_SPECIES', '0801', 'Ⅰ期梅毒', '0', '801', '0');
INSERT INTO `base_dic` VALUES ('N1021', 'JK_DISEASES_SPECIES', '0802', 'Ⅱ期梅毒', '0', '802', '0');
INSERT INTO `base_dic` VALUES ('N1022', 'JK_DISEASES_SPECIES', '0803', 'III期梅毒', '0', '803', '0');
INSERT INTO `base_dic` VALUES ('N1023', 'JK_DISEASES_SPECIES', '0804', '胎传梅毒', '0', '804', '0');
INSERT INTO `base_dic` VALUES ('N1024', 'JK_DISEASES_SPECIES', '0805', '隐性梅毒', '0', '805', '0');
INSERT INTO `base_dic` VALUES ('N1025', 'JK_DISEASES_SPECIES', '0900', '脊灰', '0', '900', '0');
INSERT INTO `base_dic` VALUES ('N1026', 'JK_DISEASES_SPECIES', '1000', '麻疹', '0', '1000', '0');
INSERT INTO `base_dic` VALUES ('N1027', 'JK_DISEASES_SPECIES', '1100', '百日咳', '0', '1100', '0');
INSERT INTO `base_dic` VALUES ('N1028', 'JK_DISEASES_SPECIES', '1200', '白喉', '0', '1200', '0');
INSERT INTO `base_dic` VALUES ('N1029', 'JK_DISEASES_SPECIES', '1300', '流脑', '0', '1300', '0');
INSERT INTO `base_dic` VALUES ('N1030', 'JK_DISEASES_SPECIES', '1400', '猩红热', '0', '1400', '0');
INSERT INTO `base_dic` VALUES ('N1031', 'JK_DISEASES_SPECIES', '1500', '出血热', '0', '1500', '0');
INSERT INTO `base_dic` VALUES ('N1032', 'JK_DISEASES_SPECIES', '1600', '狂犬病', '0', '1600', '0');
INSERT INTO `base_dic` VALUES ('N1033', 'JK_DISEASES_SPECIES', '1700', '钩体病', '0', '1700', '0');
INSERT INTO `base_dic` VALUES ('N1034', 'JK_DISEASES_SPECIES', '1800', '布病', '0', '1800', '0');
INSERT INTO `base_dic` VALUES ('N1035', 'JK_DISEASES_SPECIES', '1900', '炭疽', '0', '1900', '0');
INSERT INTO `base_dic` VALUES ('N1036', 'JK_DISEASES_SPECIES', '1901', '肺炭疽', '0', '1901', '0');
INSERT INTO `base_dic` VALUES ('N1037', 'JK_DISEASES_SPECIES', '1902', '皮肤炭疽', '0', '1902', '0');
INSERT INTO `base_dic` VALUES ('N1038', 'JK_DISEASES_SPECIES', '1903', '炭疽（未分型）', '0', '1903', '0');
INSERT INTO `base_dic` VALUES ('N1039', 'JK_DISEASES_SPECIES', '2000', '斑疹伤寒', '0', '2000', '0');
INSERT INTO `base_dic` VALUES ('N1040', 'JK_DISEASES_SPECIES', '2100', '乙脑', '0', '2100', '0');
INSERT INTO `base_dic` VALUES ('N1041', 'JK_DISEASES_SPECIES', '2200', '黑热病', '0', '2200', '0');
INSERT INTO `base_dic` VALUES ('N1042', 'JK_DISEASES_SPECIES', '2300', '疟疾', '0', '2300', '0');
INSERT INTO `base_dic` VALUES ('N1043', 'JK_DISEASES_SPECIES', '2301', '间日疟', '0', '2301', '0');
INSERT INTO `base_dic` VALUES ('N1044', 'JK_DISEASES_SPECIES', '2302', '恶性疟', '0', '2302', '0');
INSERT INTO `base_dic` VALUES ('N1045', 'JK_DISEASES_SPECIES', '2303', '疟疾（未分型）', '0', '2303', '0');
INSERT INTO `base_dic` VALUES ('N1046', 'JK_DISEASES_SPECIES', '2400', '登革热', '0', '2400', '0');
INSERT INTO `base_dic` VALUES ('N1047', 'JK_DISEASES_SPECIES', '2500', '新生儿破伤风', '0', '2500', '0');
INSERT INTO `base_dic` VALUES ('N1048', 'JK_DISEASES_SPECIES', '2600', '肺结核', '0', '2600', '0');
INSERT INTO `base_dic` VALUES ('N1049', 'JK_DISEASES_SPECIES', '2601', '涂（+）', '0', '2601', '0');
INSERT INTO `base_dic` VALUES ('N1050', 'JK_DISEASES_SPECIES', '2602', '菌（-）', '0', '2602', '0');
INSERT INTO `base_dic` VALUES ('N1051', 'JK_DISEASES_SPECIES', '2603', '未痰检', '0', '2603', '0');
INSERT INTO `base_dic` VALUES ('N1052', 'JK_DISEASES_SPECIES', '2604', '仅培阳', '0', '2604', '0');
INSERT INTO `base_dic` VALUES ('N1053', 'JK_DISEASES_SPECIES', '2700', '传染性非典', '0', '2700', '0');
INSERT INTO `base_dic` VALUES ('N1054', 'JK_DISEASES_SPECIES', '3100', '血吸虫病', '0', '3100', '0');
INSERT INTO `base_dic` VALUES ('N1055', 'JK_DISEASES_SPECIES', '3200', '丝虫病', '0', '3200', '0');
INSERT INTO `base_dic` VALUES ('N1056', 'JK_DISEASES_SPECIES', '3300', '包虫病', '0', '3300', '0');
INSERT INTO `base_dic` VALUES ('N1057', 'JK_DISEASES_SPECIES', '3400', '麻风病', '0', '3400', '0');
INSERT INTO `base_dic` VALUES ('N1058', 'JK_DISEASES_SPECIES', '3500', '流行性感冒', '0', '3500', '0');
INSERT INTO `base_dic` VALUES ('N1059', 'JK_DISEASES_SPECIES', '3600', '流行性腮腺炎', '0', '3600', '0');
INSERT INTO `base_dic` VALUES ('N1060', 'JK_DISEASES_SPECIES', '3700', '风疹', '0', '3700', '0');
INSERT INTO `base_dic` VALUES ('N1061', 'JK_DISEASES_SPECIES', '3800', '急性出血性结膜炎', '0', '3800', '0');
INSERT INTO `base_dic` VALUES ('N1062', 'JK_DISEASES_SPECIES', '3900', '其它感染性腹泻病', '0', '3900', '0');
INSERT INTO `base_dic` VALUES ('N1063', 'JK_DISEASES_SPECIES', '4000', '手足口病', '0', '4000', '0');
INSERT INTO `base_dic` VALUES ('N1064', 'JK_DISEASES_SPECIES', '9900', '人感染高致病性禽流感', '0', '9900', '0');
INSERT INTO `base_dic` VALUES ('N1065', 'JK_DISEASES_SPECIES', '5200', '人感染H7N9禽流感', '0', '5200', '0');
INSERT INTO `base_dic` VALUES ('N1066', 'JK_DISEASES_SPECIES', '9801', '非淋菌性尿道炎', '0', '9801', '0');
INSERT INTO `base_dic` VALUES ('N1067', 'JK_DISEASES_SPECIES', '9802', '尖锐湿疣', '0', '9802', '0');
INSERT INTO `base_dic` VALUES ('N1068', 'JK_DISEASES_SPECIES', '9803', '生殖器疱疹', '0', '9803', '0');
INSERT INTO `base_dic` VALUES ('N1069', 'JK_DISEASES_SPECIES', '9891', '不明原因肺炎', '0', '9891', '0');
INSERT INTO `base_dic` VALUES ('N1070', 'JK_DISEASES_SPECIES', '9813', '结核性胸膜炎', '0', '9813', '0');
INSERT INTO `base_dic` VALUES ('N1071', 'JK_DISEASES_SPECIES', '9898', '不明原因', '0', '9898', '0');
INSERT INTO `base_dic` VALUES ('N1072', 'JK_DISEASES_SPECIES', '9811', '水痘', '0', '9811', '0');
INSERT INTO `base_dic` VALUES ('N1073', 'JK_DISEASES_SPECIES', '9812', '森林脑炎', '0', '9812', '0');
INSERT INTO `base_dic` VALUES ('N1074', 'JK_DISEASES_SPECIES', '9815', '人感染猪链球菌', '0', '9815', '0');
INSERT INTO `base_dic` VALUES ('N1075', 'JK_DISEASES_SPECIES', '9804', '生殖道沙眼衣原体感染', '0', '9804', '0');
INSERT INTO `base_dic` VALUES ('N1076', 'JK_DISEASES_SPECIES', '9821', '肝吸虫病', '0', '9821', '0');
INSERT INTO `base_dic` VALUES ('N1077', 'JK_DISEASES_SPECIES', '9822', '恙虫病', '0', '9822', '0');
INSERT INTO `base_dic` VALUES ('N1078', 'JK_DISEASES_SPECIES', '9823', '人粒细胞无形体病', '0', '9823', '0');
INSERT INTO `base_dic` VALUES ('N1079', 'JK_DISEASES_SPECIES', '9824', '发热伴血小板减少综合征', '0', '9824', '0');
INSERT INTO `base_dic` VALUES ('N1080', 'JK_DISEASES_SPECIES', '9899', '其它', '0', '9899', '0');

-- ----------------------------
-- Table structure for base_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `base_dic_type`;
CREATE TABLE `base_dic_type` (
  `type_id` varchar(32) NOT NULL,
  `type_code` char(100) DEFAULT NULL,
  `type_name` varchar(200) DEFAULT NULL,
  `if_delete` varchar(2) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dic_type
-- ----------------------------
INSERT INTO `base_dic_type` VALUES ('1', 'STD_DEPT', '标准科室编码', '0');
INSERT INTO `base_dic_type` VALUES ('10', 'TYPE', '类别', '0');
INSERT INTO `base_dic_type` VALUES ('101', 'JK_MARRIAGE_DICT', '婚姻状况（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('102', 'JK_NATION_DICT', '民族（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('103', 'JK_OCCUPATION_DICT', '职业（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('104', 'JK_PMH_DICT', '肝硬化诊断（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('105', 'JK_PMH_HISTORY_DICT', '肝硬化既往史（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('106', 'JK_PMH_VACCINATE_DICT', '肝硬化疫苗接种史（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('107', 'JK_SEX_DICT', '性别（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('108', 'JK_STREET_DICT', '区镇代码（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('109', 'JK_HEIGHT_DICT', '高血压诊断（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('11', 'RADIATION_TYPE', '辐射类型', '0');
INSERT INTO `base_dic_type` VALUES ('110', 'JK_HEART_DICT	', '冠心病诊断（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('111', 'JK_HEART_DIAGNOSISUNIT_DICT', '冠心病诊断依据（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('112', 'JK_BRAIN_DICT', '脑卒中诊断（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('113', 'JK_BRAIN_DIAGNOSISUNIT_DICT', '脑卒中诊断依据（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('114', 'JK_GLUCOSE_DICT', '糖尿病诊断(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('115', 'JK_GLUCOSE_COMPLICATIONS_DICT', '糖尿病合并症(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('116', 'JK_PMH_DICT', '肝硬化诊断(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('117', 'JK_PMH_HISTORY_DICT', '肝硬化既往史(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('118', 'JK_PMH_VACCINATE_DICT', '肝硬化疫苗接种史(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('119', 'JK_PSYCHOSIS_DICT', '精神病诊断(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('12', 'MONITOR_STATE', '检测状态', '0');
INSERT INTO `base_dic_type` VALUES ('120', 'JK_HARM_REASON_DICT', '伤害原因(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('121', 'JK_HARM_DELIBERATELY_DICT', '伤害是否故意(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('122', 'JK_HARM_PART_DICT', '伤害部位(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('123', 'JK_HARM_TAKE_PLACE_DICT', '伤害发生地点(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('124', 'JK_HARM_SEVERITY_DICT', '伤害严重程度(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('125', 'JK_TUMOR_DICT', '肿瘤诊断(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('126', 'JK_TUMOR_DIAGNOSISUNIT_DICT', '肿瘤诊断依据(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('127', 'JK_TUMOR_CLINICAL_STAGE', '肿瘤临床分期(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('128', 'JK_TUMOR_DIFFERENTIAL_DEGREE', '肿瘤分化程度(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('129', 'JK_TUMOR_ANATOMY_CODE', '肿瘤解剖学(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('13', 'EMPLOY_PROPERTY', '雇佣性质', '0');
INSERT INTO `base_dic_type` VALUES ('130', 'JK_TUMOR_M_CODE', '肿瘤分期M(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('131', 'JK_TUMOR_N_CODE', '肿瘤分期N(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('132', 'JK_TUMOR_T_CODE', '肿瘤分期T(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('133', 'JK_TUMOR_PATHOLOGY_DICT', '肿瘤病理学(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('134', 'JK_TUMOR_NATURE_DICT', '肿瘤良恶性(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('135', 'JK_HARM_ICD_DICT', '伤害ICD-10(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('136', 'JK_HARM_OCCUPATION_DICT', '伤害职业(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('137', 'JK_DISEASES_OCCUPATION_DICT', '传染病人群分类编码(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('138', 'JK_DISEASES_SAMPLE_CODE', '传染病样本来源编码(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('139', 'JK_DISEASES_GRTJ_CODE', '传染病最有可能感染途径编码(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('14', 'RADIATION_SOURCE', '辐射源项', '0');
INSERT INTO `base_dic_type` VALUES ('140', 'JK_DISEASES_HISTORY_DICT', '传染病接触史编码(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('141', 'JK_DISEASES_TESTRESULT_DICT', '传染病实验室检测结论编码(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('142', 'JK_DISEASES_SEXHISTORY_DICT', '传染病性病史编码（疾控）', '0');
INSERT INTO `base_dic_type` VALUES ('143', 'JK_DISEASES_SZD_DICT', '传染病生殖道沙眼衣原体感染编码(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('15', 'RADIATION', '辐射', '0');
INSERT INTO `base_dic_type` VALUES ('16', 'DEVICE_TYPE', '设备种类', '0');
INSERT INTO `base_dic_type` VALUES ('17', 'JK_DISEASES_DICT', '传染病诊断类型(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('171', 'JK_DISEASES_SPECIES', '传染病病种(疾控)', '0');
INSERT INTO `base_dic_type` VALUES ('2', 'STD_OUTPAT_FEE_TYPE', '门诊费用分类代码', '0');
INSERT INTO `base_dic_type` VALUES ('3', 'STD_INPAT_FEE_TYPE', '住院费用分类代码', '0');
INSERT INTO `base_dic_type` VALUES ('4', 'STD_REG_TYPE', '挂号类别', '0');
INSERT INTO `base_dic_type` VALUES ('5', 'SEX', '性别', '0');
INSERT INTO `base_dic_type` VALUES ('7', 'RADIATION_WORK', '放射工种', '0');
INSERT INTO `base_dic_type` VALUES ('8', 'WORK_CLASS', '工种', '0');
INSERT INTO `base_dic_type` VALUES ('9', 'DUTY_TYPE', '职业类别', '0');
INSERT INTO `base_dic_type` VALUES ('901', 'OA_LWJG', '（办公管理）来文机关', '0');

-- ----------------------------
-- Table structure for base_org_info
-- ----------------------------
DROP TABLE IF EXISTS `base_org_info`;
CREATE TABLE `base_org_info` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `name` varchar(255) DEFAULT NULL COMMENT '名称\r\n',
  `pid` varchar(32) DEFAULT NULL COMMENT '所属机构ID',
  `zone_code` varchar(255) DEFAULT NULL COMMENT '行政区划',
  `order_num` int(11) NOT NULL COMMENT '排序号',
  `create_userid` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `if_deleted` char(1) DEFAULT NULL COMMENT '是否删除（0 ：正常   1：删除）',
  `flag` int(11) NOT NULL COMMENT '机构标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_org_info
-- ----------------------------
INSERT INTO `base_org_info` VALUES ('0', '疾病预防控制中心', '0', '120100', '1', '0', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('1', '李七庄镇社区卫生服务中心', '0', '120111002', '4', '0', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('131', '西青医院', '0', '120111013', '3', '182', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('2', '西营门镇社区卫生服务中心', '0', '120111001', '4', '0', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('21', '西青区疾病预防控制中心', '0', '120111', '2', '0', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('3', '中北镇社区卫生服务中心', '0', '120111100', '4', '0', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('4', '停用', '0', '120223', '0', '0', '2018-12-25 16:58:14', '1', '0');
INSERT INTO `base_org_info` VALUES ('41', '停用 杨柳青镇社区卫生服务中心', '0', '120111101', '0', '182', '2018-12-25 16:58:14', '1', '0');
INSERT INTO `base_org_info` VALUES ('42', '辛口镇社区卫生服务中心', '0', '120111102', '4', '182', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('43', '张家窝镇社区卫生服务中心', '0', '120111103', '4', '182', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('44', '精武镇社区卫生服务中心', '0', '120111104', '4', '182', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('45', '大寺镇社区卫生服务中心', '0', '120111105', '4', '182', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('46', '王稳庄镇社区卫生服务中心', '0', '120111106', '4', '182', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('62', '杨柳青镇社区服务中心', '0', '120111101', '4', '182', '2018-12-25 16:58:14', '0', '1');
INSERT INTO `base_org_info` VALUES ('81', '宣传', '0', '120111999', '0', '182', '2018-12-25 16:58:14', '1', '1');
INSERT INTO `base_org_info` VALUES ('87d80dc6f9a54de6b0132447f57c3530', '111', 'ca259ac3becf46b699ffc3faf0e8bf2f', '87d80dc6f9a54de6b0132447f57c3530', '99', '1', '2019-01-25 09:24:03', '1', '0');
INSERT INTO `base_org_info` VALUES ('98e192d785114691841d93be9da40edc', '12121', '131', '98e192d785114691841d93be9da40edc', '99', '1', '2019-04-16 09:47:32', '1', '0');
INSERT INTO `base_org_info` VALUES ('ca259ac3becf46b699ffc3faf0e8bf2f', '2222', '0', 'ca259ac3becf46b699ffc3faf0e8bf2f', '222', '1', '2019-01-25 09:23:49', '1', '0');

-- ----------------------------
-- Table structure for base_resource
-- ----------------------------
DROP TABLE IF EXISTS `base_resource`;
CREATE TABLE `base_resource` (
  `resource_id` varchar(50) NOT NULL COMMENT '资源ID',
  `res_addr` varchar(255) DEFAULT NULL COMMENT '资源文件地址',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `file_size` int(11) DEFAULT NULL COMMENT '文件大小',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_userid` varchar(50) DEFAULT NULL COMMENT '创建人',
  `if_deleted` int(11) NOT NULL COMMENT '是否删除（0：正常 1：删除）',
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_resource
-- ----------------------------
INSERT INTO `base_resource` VALUES ('04a48c378b084d9fb3043a7b4c69b016', 'uploadFiles/file/20190314/3861501899a648b1b22202aba930fce0.txt', 'a.txt', '2', '2019-03-14 15:48:13', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('076ed2d2bef94b2cb93a2b2c7f89aff5', 'uploadFiles/file/20190614/3a6100a4f7c0476392bf5f2842f00eeb.txt', 'ip地址等.txt', '0', '2019-06-14 10:58:03', '7969bd003d1848c691766cee77e0d1f6', '0');
INSERT INTO `base_resource` VALUES ('0c93e4add51841dabeef89ec6b3b58da', 'uploadFiles/file/20190402/ab4bb21df3424b36a6609faedf1d20a2.txt', 'a.txt', '2', '2019-04-02 15:35:43', '1', '0');
INSERT INTO `base_resource` VALUES ('13164e611c684383a58d123947c7be41', 'uploadFiles/file/20190412/b2f6fb00552c42108d30657d1560899a.txt', 'fuxi.txt', '9', '2019-04-12 15:39:55', '1', '0');
INSERT INTO `base_resource` VALUES ('199baf96b41f42089715689f1d52f6e2', 'uploadFiles/file/20190326/f5e7212e134c428e866cf2e0875f9f3f.txt', '测试文件夹测试文件夹岑石文件岑石文件打两局水电费if啦我即可法拉利调查检查刺激法老大佛的降低我觉得.txt', '0', '2019-03-26 15:19:13', '1', '0');
INSERT INTO `base_resource` VALUES ('1d745739dcda46bc93b54af039e3619b', 'uploadFiles/file/20190318/eca94befcb894edb9baeb9a1bb1a3e50.txt', 'ip地址等.txt', '0', '2019-03-18 09:19:05', '5e8a42dccb2f42d293a9c24de95fe317', '0');
INSERT INTO `base_resource` VALUES ('1f78a6a9e40e48a2adfafc1331a905ce', 'uploadFiles/file/20190314/f0f0ada1970848d99f4ad236e289b4ca.exe', 'ConsoleApplication2.exe', '12', '2019-03-14 15:43:42', '1', '0');
INSERT INTO `base_resource` VALUES ('1fee8ba331ed4384bf60ac5f1095dc8b', 'uploadFiles/file/20190314/1b7e31c2e201485eab620ce8414aa062.txt', 'jkoa部署步骤.txt', '0', '2019-03-14 15:17:08', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('23c7f562b97c4fd8ac40bc1adc41c4fa', 'uploadFiles/file/20190326/b77fca6034d9400aa3ecc4feccd9ce12.txt', '测试文件夹测试文件夹岑石文件岑石文件打两局水电费if啦我即可法拉利调查检查刺激法老大佛的降低我觉得.txt', '0', '2019-03-26 15:33:18', '1', '0');
INSERT INTO `base_resource` VALUES ('2601373d1ff24a51931985a27b270d10', 'uploadFiles/file/20190319/3cfa187581ab4620867fb6631e1ce97e.png', '病人集成视图1.png', '85', '2019-03-19 13:44:06', '1', '0');
INSERT INTO `base_resource` VALUES ('28f244bb4c704635aa4162b179662926', 'uploadFiles/file/20190314/fdd3de1b5fe9425b88286d79513cf157.txt', 'ip地址等.txt', '0', '2019-03-14 10:15:12', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('29b791f1cbf849e99eee56e64f4efdaa', 'uploadFiles/file/20190314/583581e4d79040959659e34f1552c7d1.bak', 'jk.bak', '65803', '2019-03-14 09:43:35', '5e8a42dccb2f42d293a9c24de95fe317', '0');
INSERT INTO `base_resource` VALUES ('2db3c357789c4e0a8474bbebcfe8169b', 'uploadFiles/file/20190523/2accf7794d9e4397a4114c92b9e2e2a7.txt', 'idea 快捷键.txt', '0', '2019-05-23 11:06:51', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('2f4941182a21482e8d353c49943144b5', 'uploadFiles/file/20190314/aab47739b3764059b9bd5a3bddc4c7ff.properties', 'dbconfig.properties', '8', '2019-03-14 11:32:08', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('37e656e3d83442cdb0ba7b68edd1fd80', 'uploadFiles/file/20190314/1dc94834c68d41b896f97d2fcd2f6ef6.txt', 'ip地址等.txt', '0', '2019-03-14 10:00:28', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('39dbb75b9efd462dabbb6cf2b3550e75', 'uploadFiles/file/20190613/dab2802f86ec44f6bf3124056e8db533.zip', '11111111111111.zip', '523628', '2019-06-13 16:32:45', '7969bd003d1848c691766cee77e0d1f6', '0');
INSERT INTO `base_resource` VALUES ('40146d91e92d4a30af60ad986b2b0fe7', 'uploadFiles/file/20190523/c8aa4d35e1904e3398aa41f9b7065cb8.txt', 'ip地址等.txt', '0', '2019-05-23 11:11:49', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('446b380bf64a4a73becb965764a2420a', 'uploadFiles/file/20190318/eb4028a0c16341e792bbd69ae8e5d258.xlsx', 'BUG列表.xlsx', '470', '2019-03-18 15:52:51', '1', '0');
INSERT INTO `base_resource` VALUES ('48689511053449c5b0d6cc47e847c643', 'uploadFiles/file/20190314/90549478ceea4ce2b67a6c1a134fc1de.xls', 'JK功能完善列表.xls', '21', '2019-03-14 15:28:51', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('4d5364f641d64a9dbf9d0a5b4a4515f1', 'uploadFiles/file/20190326/fe54abdc0df248b586b03b50b740b15e.txt', '测试文件夹测试文件夹岑石文件岑石文件打两局水电费if啦我即可法拉利调查检查刺激法老大佛的降低我觉得.txt', '0', '2019-03-26 15:30:52', '1', '0');
INSERT INTO `base_resource` VALUES ('550d242e1737436e8d253e21c560c11c', 'uploadFiles/file/20190523/9187d48e4f79443b8b7ad635fdccc5e9.txt', 'ip地址等.txt', '0', '2019-05-23 11:03:38', '1', '0');
INSERT INTO `base_resource` VALUES ('555f66b118664969b7508b82a2e95843', 'uploadFiles/file/20190314/ab11c9523e534ffa87ad8e98b380ac1d.txt', 'ip地址等.txt', '0', '2019-03-14 11:53:18', '5f3d7febfc7f4d3faba5c378a927f354', '0');
INSERT INTO `base_resource` VALUES ('587e320030ff430aaaf38310bda4b9ce', 'uploadFiles/file/20190314/00ba2857bc254629ad32dc9ad224be60.xls', 'OA问题总结.xls', '21', '2019-03-14 16:01:17', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('5bf807cae8ec4dbb95b8737e393102ef', 'uploadFiles/file/20190403/f7e42c93493146abb7f02cbd18cbb80b.properties', 'dbconfig.properties', '8', '2019-04-03 09:07:13', '1', '0');
INSERT INTO `base_resource` VALUES ('5c5123ad969145408e32660990f1cc8e', 'uploadFiles/file/20190314/894890bb76a141f0a5d220a450af199c.txt', 'ip地址等.txt', '0', '2019-03-14 15:28:51', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('6acc2b62562f480dbf3e062ceb57a5f6', 'uploadFiles/file/20190314/c899325d06df4e32ab5934aece4d6b0d.txt', '第一城记录.txt', '1', '2019-03-14 16:01:17', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('73389d079bca428e962deb8a1638520c', 'uploadFiles/file/20190614/b5a09a7a129d4bc7a32f934d4a3d3e59.zip', '三楼内网打印机驱动.zip', '478806', '2019-06-14 11:09:30', '1', '0');
INSERT INTO `base_resource` VALUES ('7a7054c3f5864fbe8d82f46528d8af28', 'uploadFiles/file/20190316/0009c108b96e426e91ac2a065ac9c09b.txt', 'a(1).txt', '2', '2019-03-16 18:16:16', '1', '0');
INSERT INTO `base_resource` VALUES ('7c8528a9b1e84db3b6e92f25e7b32fca', 'uploadFiles/file/20190314/7997ff2728e54f54988eb5af93593430.properties', 'dbconfig.properties', '8', '2019-03-14 15:43:42', '1', '0');
INSERT INTO `base_resource` VALUES ('7eb77222600348c08db1d59e2d18073e', 'uploadFiles/file/20190316/2da1def6ca734028b7dbaa8549cd0557.txt', 'a.txt', '2', '2019-03-16 18:16:16', '1', '0');
INSERT INTO `base_resource` VALUES ('823f10f473ab4bfb8e0b7f5c6cccbc4f', 'uploadFiles/file/20190412/be00fbcc78aa4de397b040481746a4db.txt', 'a.txt', '2', '2019-04-12 14:33:24', '1', '0');
INSERT INTO `base_resource` VALUES ('8b48763b71e442538ad6a9f6e7405912', 'uploadFiles/file/20190523/cb002cd4e0b744fe919ff1ff2b46c516.txt', 'idea 快捷键.txt', '0', '2019-05-23 11:12:10', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('8bd79804b29649c9af29b993de8e465b', 'uploadFiles/file/20190316/91110be72c3a42abb342e569ca6f522e.rar', 'areaweb（1）.rar', '4658', '2019-03-16 18:18:01', '1', '0');
INSERT INTO `base_resource` VALUES ('8e784ad2de1f4d10afdc5818ff844402', 'uploadFiles/file/20190316/feb31dbd52a5461eb7b261c2ced527de.txt', 'a.txt', '2', '2019-03-16 18:18:01', '1', '0');
INSERT INTO `base_resource` VALUES ('8ea76c7f137e493ba3c08563773fb8fd', 'uploadFiles/file/20190314/3d11a64c4d604d65a56121b440f5c6bb.txt', 'jkoa部署步骤.txt', '0', '2019-03-14 15:28:51', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('92012a69a33e4c6386f7b3485f114520', 'uploadFiles/file/20190316/8b68e9f2a1e24baf8f9677d106b51d1c.rar', 'areaweb（1）.rar', '4658', '2019-03-16 18:16:16', '1', '0');
INSERT INTO `base_resource` VALUES ('974ef416d88c42adbf8a24034c41de12', 'uploadFiles/file/20190318/dfd1b23ad5b9499282c4581c2e86fbe2.txt', 'a.txt', '2', '2019-03-18 14:25:07', '1', '0');
INSERT INTO `base_resource` VALUES ('97e90bb226924f17928995438d38ecc3', 'uploadFiles/file/20190710/980908eb4a3843e5a2538b5eb8e8f3e1.xlsx', 'BUG列表.xlsx', '470', '2019-07-10 17:27:36', '1', '0');
INSERT INTO `base_resource` VALUES ('9c340803a0b741f684b1b56c031f37d8', 'uploadFiles/file/20190323/9473ea1de900476887723a4287be7b26.png', '病人集成视图1.png', '85', '2019-03-23 18:23:14', '1', '0');
INSERT INTO `base_resource` VALUES ('9da89b9d6d084dc49b910be1b239d3fa', 'uploadFiles/file/20190326/43ba10c76b7c44bc8bb715ee3d98d52f.txt', '测试文件夹测试文件夹岑石文件岑石文件打两局水电费if啦我即可法拉利调查检查刺激法老大佛的降低我觉得.txt', '0', '2019-03-26 15:35:32', '1', '0');
INSERT INTO `base_resource` VALUES ('a5764a0e5cc046ca96e434275a84aaa1', 'uploadFiles/file/20190709/402a34e5fd144be1a1c0296b8fed33e2.txt', 'a.txt', '2', '2019-07-09 09:19:00', '1', '0');
INSERT INTO `base_resource` VALUES ('a77c49e835ae4f94900cffcd9847377f', 'uploadFiles/file/20190314/5d8696b2e3954bcfa7d2abb87015d736.txt', '记录.txt', '0', '2019-03-14 16:01:17', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('a8d4a99e2003401aaad2384160c46003', 'uploadFiles/file/20190314/725c5d65208a4d74a2b672e95926987e.xlsx', 'BUG列表.xlsx', '470', '2019-03-14 15:48:13', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('acc3024f31794ce28dac97981263d502', 'uploadFiles/file/20190326/cdfb84a643c746a4901c5b0a5c6d9673.txt', 'jkoa部署步骤.txt', '0', '2019-03-26 15:18:44', '1', '0');
INSERT INTO `base_resource` VALUES ('aeb452f123c74449b3e079bae434a7e6', 'uploadFiles/file/20190316/2a0a322b1ced47bb904e2a11021190af.txt', 'a(1).txt', '2', '2019-03-16 18:16:40', '1', '0');
INSERT INTO `base_resource` VALUES ('af43107879d84abbbf392e6918608898', 'uploadFiles/file/20190523/a0a47a031b17413ebfa69b1eb3539ac3.txt', 'ip地址等.txt', '0', '2019-05-23 11:12:10', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('b0b4e48e1b1c45b4a1a6f36417e7ac2f', 'uploadFiles/file/20190314/d23c1b0fc7264fd3a85a39cf8466e90c.bak', 'demo.html.bak', '5', '2019-03-14 09:20:58', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('b2d73ab54c61410397ac21fb3c41346e', 'uploadFiles/file/20190326/785efdd5fd0943de90dc643296d86ee6.txt', '测试文件夹测试文件夹岑石文件岑石文件打两局水电费if啦我即可法拉利调查检查刺激法老大佛的降低我觉得.txt', '0', '2019-03-26 15:23:17', '1', '0');
INSERT INTO `base_resource` VALUES ('b581a3f3423a4c9abf18bf1149aada80', 'uploadFiles/file/20190326/30710bea21bb4a4cb966526ce4ff0c73.docx', '分级诊疗借接口文档.docx', '244', '2019-03-26 15:17:21', '1', '0');
INSERT INTO `base_resource` VALUES ('b5aa4ebea7314926a8d07ee9cdbf4389', 'uploadFiles/file/20190314/4a3d03af04a94f6685b7175e52d63102.exe', 'ConsoleApplication2(1).exe', '12', '2019-03-14 15:43:42', '1', '0');
INSERT INTO `base_resource` VALUES ('b5f0debb3a594d8093168f81ea79ac2f', 'uploadFiles/file/20190523/eadcb9ee2c5c4234aea23d5ecb33ea42.txt', 'idea 快捷键.txt', '0', '2019-05-23 11:11:49', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('baec4ab7ac374a94b6240849d54eb8fd', 'uploadFiles/file/20190314/4786faec7f4d4d729bfe465549daa8f1.txt', 'fuxi.txt', '9', '2019-03-14 15:49:15', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('bb6a7b4437364ca3b38e120e129d704e', 'uploadFiles/file/20190314/d1e117b5463346d0b08fd393c7719eed.exe', 'ConsoleApplication2(1).exe', '12', '2019-03-14 15:48:13', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('c5a5e8e2fcfa4b5ea505b634ecaee4f6', 'uploadFiles/file/20190412/f800659b0b394cfba4e54f1c29337230.xlsx', 'BUG列表.xlsx', '470', '2019-04-12 15:25:30', '1', '0');
INSERT INTO `base_resource` VALUES ('cd20074a2686452ab38611b0c938294a', 'uploadFiles/file/20190425/87616eee822d450c8580e89b03a3c4a6.jpg', 'mv01.jpg', '14', '2019-04-25 15:10:19', '5e8a42dccb2f42d293a9c24de95fe317', '0');
INSERT INTO `base_resource` VALUES ('d0147c2c0feb48fc8193f84d532d7135', 'uploadFiles/file/20190316/f547b8de2b7c432a95b7f33b9e6e3258.txt', 'a(1).txt', '2', '2019-03-16 18:18:01', '1', '0');
INSERT INTO `base_resource` VALUES ('da99902f1b9e4c99b5514bee041c7be6', 'uploadFiles/file/20190326/26712070901e47bb8918820384654935.txt', '测试文件夹测试文件夹岑石文件岑石文件打两局水电费if啦我即可法拉利调查检查刺激法老大佛的降低我觉得.txt', '0', '2019-03-26 15:27:25', '1', '0');
INSERT INTO `base_resource` VALUES ('daa82f9615c44a9891960c260acd5717', 'uploadFiles/file/20190316/b417961948fb432282f7ac2c61738312.txt', 'a.txt', '2', '2019-03-16 18:16:40', '1', '0');
INSERT INTO `base_resource` VALUES ('db8a3dc23d694c4588004544961306fd', 'uploadFiles/file/20190320/0a85c1c26a974c0d9d4130d977efab2f.txt', 'a.txt', '2', '2019-03-20 14:44:45', '1', '0');
INSERT INTO `base_resource` VALUES ('dc0081d455f849bda438bee6ea51e5af', 'uploadFiles/file/20190613/16779004705b43bf93caafa4981b36b4.txt', '新建文本文档.txt', '1', '2019-06-13 16:04:19', '7969bd003d1848c691766cee77e0d1f6', '0');
INSERT INTO `base_resource` VALUES ('dfd5d9d9cb7d4894b1e0d74e5ee10761', 'uploadFiles/file/20190326/cafe955ba64f44938d19f2c729225d0d.txt', '测试文件夹测试文件夹岑石文件岑石文件打两局水电费if啦我即可法拉利调查检查刺激法老大佛的降低我觉得.txt', '0', '2019-03-26 15:36:38', '1', '0');
INSERT INTO `base_resource` VALUES ('e58b1132a7e44eeb996812d304cea679', 'uploadFiles/file/20190316/442de5260c8949eca96903d6834d3fbc.rar', 'areaweb（1）.rar', '4658', '2019-03-16 18:16:40', '1', '0');
INSERT INTO `base_resource` VALUES ('e8f810ad9bde4536a550664234a562d4', 'uploadFiles/file/20190314/5369a02076fc48f8aaf2fb9b92750364.txt', 'ip地址等.txt', '0', '2019-03-14 15:43:27', '5f3d7febfc7f4d3faba5c378a927f354', '0');
INSERT INTO `base_resource` VALUES ('e9d1c91daf3c4896bd029e5b86f4b55f', 'uploadFiles/file/20190314/40767ee5d06e477d8c538a6e0cd2b336.bak', 'demo.html.bak', '5', '2019-03-14 09:37:59', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('ee76834959cf4109a9e0a7a7f532a356', 'uploadFiles/file/20190326/c25eda5056374ebf8c9230c0b4dd0466.txt', '测试文件夹测试文件夹岑石文件岑石文件打两局水电费if啦我即可法拉利调查检查刺激法老大佛的降低我觉得.txt', '0', '2019-03-26 15:28:17', '1', '0');
INSERT INTO `base_resource` VALUES ('f793fa48ccb841b5b367ce974d4e4279', 'uploadFiles/file/20190314/bc0cfd4d480a45b697db49bffe2dfdd9.txt', 'ip地址等.txt', '0', '2019-03-14 09:15:53', 'c624389e55e343d48820c851a71ee3a2', '0');
INSERT INTO `base_resource` VALUES ('ffd0e8720d3e40d8b5a9099bb3705bd5', 'uploadFiles/file/20190314/e0687b18562e437ab28b0a47a3ad3753.txt', 'ip地址等.txt', '0', '2019-03-14 15:17:14', 'c624389e55e343d48820c851a71ee3a2', '0');

-- ----------------------------
-- Table structure for tools_down
-- ----------------------------
DROP TABLE IF EXISTS `tools_down`;
CREATE TABLE `tools_down` (
  `tool_id` varchar(255) NOT NULL,
  `tool_name` varchar(255) DEFAULT NULL,
  `tool_type` varchar(2) DEFAULT '0',
  `tool_url` varchar(255) DEFAULT NULL,
  `tool_url_type` varchar(2) DEFAULT '0',
  `tool_describe` varchar(255) DEFAULT NULL,
  `up_date` datetime DEFAULT NULL,
  `if_deleted` int(1) unsigned zerofill DEFAULT '0',
  PRIMARY KEY (`tool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tools_down
-- ----------------------------
INSERT INTO `tools_down` VALUES ('1', '2019.4.24_CSDN博客导出工具', '0', '2019.4.24_CSDN博客导出工具.zip', '0', 'CSDN博客导出工具', '2019-07-27 07:31:10', '0');
INSERT INTO `tools_down` VALUES ('166c3e0c404d4d598f5b9cd3b2cb0d40', '冰点文库', '3', '冰点文库.rar', '0', '百度文库下载工具', '2019-07-27 05:33:38', '0');
INSERT INTO `tools_down` VALUES ('1cafdb41ca384b0c86373ecaa331e227', '迅雷U享版V3.1.6', '3', '迅雷U享版V3.1.6.rar', '0', '迅雷U享版V3.1.6版本，无广告，界面简洁，内涵使用方法', '2019-07-27 05:37:35', '0');
INSERT INTO `tools_down` VALUES ('20ca0a0add3c48b484252122dc4f0fd2', '取色工具', '2', '取色工具.rar', '0', '取色工具 alt+c 快捷键取色', '2019-07-27 05:34:31', '0');
INSERT INTO `tools_down` VALUES ('30668f70159b4a15b8f1e198ec1f2588', '优酷桌面录屏 v7.0.2 独立版', '5', '优酷桌面录屏 v7.0.2 独立版.rar', '0', '免费版-优酷桌面录屏 v7.0.2 独立版 支持选择录制电脑声音和麦克风声音，支持调整画质，设置输出格式', '2019-07-27 05:38:06', '0');
INSERT INTO `tools_down` VALUES ('5369d3b4687a4a3981fa38d273733361', '文件批量改名', '4', '文件批量改名.zip', '0', '文件批量改名BulkRen 批量增加前后缀 批量替换文本 批量添加编号', '2019-07-27 05:37:02', '0');
INSERT INTO `tools_down` VALUES ('5589e3325dd14073b0d581bb306e3a7e', 'IDM.6.30..3破解版', '3', 'IDM.6.30..3破解版.rar', '0', 'IDM.6.30..3破解版  \n1，安装程序（双击idman630.3.exe） 2，替换文件（将“替换文件”中的IDMan.exe文件复制并替换到安装文件的根目录中） 3，导入注册表（双击注册表.reg文件）  注：请勿升级', '2019-07-27 05:36:35', '0');
INSERT INTO `tools_down` VALUES ('5f8b1dccff724fd790f65fda6dbaf263', 'quercus-4.0.39', '1', 'quercus-4.0.39.rar', '0', 'tomcat运行php包quercus-4.0.39 将 javamail-141.jar和quercus.jar 复制到tomcat下的lib目录里', '2019-07-27 05:33:11', '0');
INSERT INTO `tools_down` VALUES ('6fce1d0224bd4f7dac6df57482c79832', 'echartsMap', '2', 'echartsMap.rar', '0', 'echartsMap echarts地图数据', '2019-07-27 05:28:19', '0');
INSERT INTO `tools_down` VALUES ('8eb1f2954c804d6188ebe3e6e3f5cf0b', 'Navicat Premium_11.2.7 简体中文版及激活工具', '1', 'Navicat Premium_11.2.7 简体中文版及激活工具.rar', '0', 'Navicat 中文破解版版', '2019-07-27 05:31:22', '0');
INSERT INTO `tools_down` VALUES ('9940814b3a8e49a59fe00a4129421646', 'Java环境变量配置工具', '0', 'Java环境变量配置工具.rar', '0', '一键Java环境变量配置工具 简单配置jdk/tomcat/mysql/maven环境变量', '2019-07-27 06:39:50', '0');
INSERT INTO `tools_down` VALUES ('9d7c4381a85949b4827daa40d1cc0624', 'BitComet_1.51', '3', 'BitComet_1.51.rar', '0', 'BitComet_1.51 下载工具破解版', '2019-07-27 05:28:41', '0');
INSERT INTO `tools_down` VALUES ('bd8fc066981041b9afdd1b7f0cbc5e2b', 'pandownload', '3', 'http://pandownload.com/', '1', '百度网盘下载工具，免费版，详情请访问软件官网', '2019-07-27 07:33:29', '0');
INSERT INTO `tools_down` VALUES ('d9b5b37bb7b64b74acd5607e4902ead3', 'PDF-XChange Editor', '4', 'PDF-XChange Editor.rar', '0', '免费修改pdf软件 1.先安装文件 PDFXVE6.exe （选择免费版安装） 2.将“替换文件”文件夹下的文件，复制并替换到安装目录中的“PDF Editor”文件夹中， == PDFXEditCore.x64.dll PDFXEditCore.x86.dll ==', '2019-07-27 05:38:48', '0');
INSERT INTO `tools_down` VALUES ('e8ef813897ca411396c753403d8bceaf', 'echartst拓扑图数据传输图', '2', 'echartst拓扑图数据传输图.rar', '0', 'echartst拓扑图数据传输图\n自行修改的echarts数据传输图', '2019-07-27 05:29:07', '0');

-- ----------------------------
-- Table structure for xt_auth
-- ----------------------------
DROP TABLE IF EXISTS `xt_auth`;
CREATE TABLE `xt_auth` (
  `auth_id` varchar(32) NOT NULL,
  `auth_code` varchar(45) DEFAULT NULL,
  `auth_name` varchar(45) DEFAULT NULL,
  `auth_type` varchar(45) DEFAULT NULL,
  `if_deleted` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `order_num` int(11) DEFAULT NULL COMMENT '顺序号',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_auth
-- ----------------------------
INSERT INTO `xt_auth` VALUES ('100', 'MBGL_GXY', '高血压报告卡', '慢病管理', '0', '2018-07-24 15:57:22', '100');
INSERT INTO `xt_auth` VALUES ('1000', 'TZTG_ZJ', '增加', '通知通告', '0', '2018-12-18 13:43:25', '1000');
INSERT INTO `xt_auth` VALUES ('1001', 'TZTG_XG', '修改', '通知通告', '0', '2018-12-18 13:44:11', '1001');
INSERT INTO `xt_auth` VALUES ('1002', 'TZTG_SC', '删除', '通知通告', '0', '2018-12-18 13:45:35', '1002');
INSERT INTO `xt_auth` VALUES ('101', 'MBGL_GXB', '冠心病报告卡', '慢病管理', '0', '2018-07-24 15:58:09', '101');
INSERT INTO `xt_auth` VALUES ('102', 'MBGL_TNB', '糖尿病报告卡', '慢病管理', '0', '2018-07-24 15:58:24', '102');
INSERT INTO `xt_auth` VALUES ('103', 'MBGL_NCZ', '脑萃中报告卡', '慢病管理', '0', '2018-07-24 15:59:05', '103');
INSERT INTO `xt_auth` VALUES ('104', 'MBGL_JSB', '精神病报告卡', '慢病管理', '0', '2018-10-09 09:47:31', '104');
INSERT INTO `xt_auth` VALUES ('105', 'MBGL_SH', '伤害报告卡', '慢病管理', '0', '2018-10-09 09:48:26', '105');
INSERT INTO `xt_auth` VALUES ('106', 'MBGL_ZL', '肿瘤报告卡', '慢病管理', '0', '2018-10-09 09:48:59', '106');
INSERT INTO `xt_auth` VALUES ('107', 'MBGL_GYH', '肝硬化报告卡', '慢病管理', '0', '2018-10-09 09:49:36', '107');
INSERT INTO `xt_auth` VALUES ('108', 'MBGL_CRB', '传染病报告卡', '慢病管理', '0', '2018-10-09 09:50:08', '108');
INSERT INTO `xt_auth` VALUES ('200', 'FSWSGL_JCXX', '基础信息维护', '放射卫生管理', '0', '2018-10-09 09:51:55', '200');
INSERT INTO `xt_auth` VALUES ('201', 'FSWSGL_JLJC', '剂量监测管理', '放射卫生管理', '0', '2018-10-09 09:52:07', '201');
INSERT INTO `xt_auth` VALUES ('300', 'JCZCXT_MBTJ', '慢病统计', '决策支持系统', '0', '2018-12-24 13:51:27', '300');
INSERT INTO `xt_auth` VALUES ('301', 'JCZCXT_CRBTJ', '传染病统计', '决策支持系统', '0', '2018-12-24 13:52:42', '301');
INSERT INTO `xt_auth` VALUES ('400', 'GZLCGL_GZLMXGL', '工作流模型管理', '工作流程管理', '0', '2018-12-24 14:07:43', '400');
INSERT INTO `xt_auth` VALUES ('401', 'GZLCGL_LCGL', '流程管理', '工作流程管理', '0', '2018-12-24 14:08:26', '401');
INSERT INTO `xt_auth` VALUES ('500', 'BGGL_CLGL', '车辆管理', '办公管理', '0', '2018-12-24 13:37:08', '500');
INSERT INTO `xt_auth` VALUES ('501', 'BGGL_WJGX', '文件共享管理', '办公管理', '0', '2018-12-24 13:39:19', '501');
INSERT INTO `xt_auth` VALUES ('502', 'BGGL_HYS', '会议室管理', '办公管理', '0', '2018-12-24 13:39:43', '502');
INSERT INTO `xt_auth` VALUES ('503', 'BGGL_KSYBGL', '科室月报管理', '办公管理', '0', '2018-12-07 15:47:44', '503');
INSERT INTO `xt_auth` VALUES ('5031', 'KSYBGL_KSYB', '科室月报', '办公管理', '0', '2018-12-27 16:42:27', '5031');
INSERT INTO `xt_auth` VALUES ('5032', 'KSYBGL_KSYBHZ', '科室月报汇总', '办公管理', '0', '2018-12-27 16:43:06', '5032');
INSERT INTO `xt_auth` VALUES ('5033', 'KSYBGL_KSYBZT', '科室月报主题', '办公管理', '0', '2019-03-20 15:15:12', '5033');
INSERT INTO `xt_auth` VALUES ('504', 'BGGL_TZTG', '通知通告', '办公管理', '0', '2018-12-19 10:42:55', '504');
INSERT INTO `xt_auth` VALUES ('505', 'BGGL_QJGL', '请假', '办公管理', '0', '2018-12-11 10:31:26', '505');
INSERT INTO `xt_auth` VALUES ('506', 'BGGL_CLSQ', '车辆申请', '办公管理', '0', '2018-12-24 13:42:08', '506');
INSERT INTO `xt_auth` VALUES ('507', 'BGGL_WJ', '文件', '办公管理', '0', '2018-12-24 13:42:37', '507');
INSERT INTO `xt_auth` VALUES ('508', 'BGGL_TZ', '通知', '办公管理', '0', '2018-12-24 13:43:33', '508');
INSERT INTO `xt_auth` VALUES ('509', 'BGGL_DBSX', '代办事项', '办公管理', '0', '2018-12-24 13:44:36', '509');
INSERT INTO `xt_auth` VALUES ('510', 'BGGL_BGPZGL', '办公配置管理', '办公管理', '0', '2018-12-24 14:19:21', '510');
INSERT INTO `xt_auth` VALUES ('511', 'BGGL_YBSX', '已办事项', '办公管理', '0', '2019-01-16 17:42:09', '511');
INSERT INTO `xt_auth` VALUES ('512', 'BGGL_WJSX', '完结事项', '办公管理', '0', '2019-01-16 17:42:52', '512');
INSERT INTO `xt_auth` VALUES ('513', 'BGGL_WZCG', '物资采购申请', '办公管理', '0', '2019-01-22 14:59:53', '513');
INSERT INTO `xt_auth` VALUES ('600', 'XTGL_YHGL', '用户管理', '系统管理', '0', '2018-10-09 09:56:54', '600');
INSERT INTO `xt_auth` VALUES ('601', 'XTGL_XGMM', '修改密码', '系统管理', '0', '2018-10-09 09:57:38', '601');
INSERT INTO `xt_auth` VALUES ('700', 'SJKGL_JGGL', '机构管理', '数据库管理', '0', '2018-12-24 14:27:03', '700');
INSERT INTO `xt_auth` VALUES ('701', 'SJKGL_BMGL', '部门管理', '数据库管理', '0', '2018-12-24 14:28:45', '701');
INSERT INTO `xt_auth` VALUES ('702', 'XTGL_JSGL', '角色管理', '数据库管理', '0', '2018-10-09 09:57:10', '702');
INSERT INTO `xt_auth` VALUES ('703', 'XTGL_ZDGL', '字典管理', '数据库管理', '0', '2018-10-09 09:58:33', '703');
INSERT INTO `xt_auth` VALUES ('704', 'SJKGL_GZLJSGL', '工作流角色管理', '数据库管理', '0', '2018-12-26 13:37:34', '704');
INSERT INTO `xt_auth` VALUES ('800', 'BGKQX_XJ', '新建', '报告卡权限', '0', '2018-10-09 16:39:26', '800');
INSERT INTO `xt_auth` VALUES ('801', 'BGKQX_TH', '退回', '报告卡权限', '0', '2018-10-09 16:43:23', '801');
INSERT INTO `xt_auth` VALUES ('802', 'BGKQX_SHSC', '审核上传', '报告卡权限', '0', '2018-10-09 16:43:44', '802');
INSERT INTO `xt_auth` VALUES ('803', 'BGKQX_THSC', '退回上传', '报告卡权限', '0', '2018-10-09 16:44:22', '803');
INSERT INTO `xt_auth` VALUES ('804', 'BGKQX_SHTG', '审核通过', '报告卡权限', '0', '2018-10-09 16:44:40', '804');
INSERT INTO `xt_auth` VALUES ('900', 'ANQX_SHSC', '审核上传', '按钮权限', '0', '2018-10-09 16:46:02', '900');
INSERT INTO `xt_auth` VALUES ('901', 'ANQX_SHTG', '审核通过', '按钮权限', '0', '2018-10-09 16:46:33', '901');
INSERT INTO `xt_auth` VALUES ('902', 'ANQX_THSC', '退回上传', '按钮权限', '0', '2018-10-09 16:46:59', '902');
INSERT INTO `xt_auth` VALUES ('903', 'ANQX_TH', '退回', '按钮权限', '0', '2018-10-09 16:47:13', '903');

-- ----------------------------
-- Table structure for xt_dept_info
-- ----------------------------
DROP TABLE IF EXISTS `xt_dept_info`;
CREATE TABLE `xt_dept_info` (
  `dept_id` varchar(32) NOT NULL,
  `dept_code` varchar(200) DEFAULT NULL,
  `dept_name` varchar(200) DEFAULT NULL,
  `spell_code` varchar(200) DEFAULT NULL,
  `pid` varchar(32) DEFAULT NULL,
  `if_deleted` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_dept_info
-- ----------------------------

-- ----------------------------
-- Table structure for xt_menu
-- ----------------------------
DROP TABLE IF EXISTS `xt_menu`;
CREATE TABLE `xt_menu` (
  `menu_id` varchar(32) NOT NULL,
  `menu_name` varchar(200) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` text COMMENT '菜单url',
  `pid` int(11) DEFAULT NULL,
  `sortby` int(11) DEFAULT NULL COMMENT '排序号',
  `menu_icon` text COMMENT '菜单图标',
  `auth_code` varchar(200) DEFAULT NULL COMMENT '权限编码',
  `menu_type` varchar(200) DEFAULT NULL COMMENT '菜单类型',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_menu
-- ----------------------------
INSERT INTO `xt_menu` VALUES ('10', '首页', '/fpage/welcome.html', '0', '10', '&#xe68e;', '', null);
INSERT INTO `xt_menu` VALUES ('20', '工具管理', '', '0', '20', '&#xe631;', '', null);
INSERT INTO `xt_menu` VALUES ('20001', '工具列表', '/fpage/down/down_list.html', '20', '10', '', null, null);
INSERT INTO `xt_menu` VALUES ('90', '系统管理', '', '0', '60', '&#xe620;', '', null);
INSERT INTO `xt_menu` VALUES ('901', '用户管理', '/fpage/user/list.html', '90', '10', 'layui-icon-lc layui-icon-geren', 'XTGL_YHGL', null);
INSERT INTO `xt_menu` VALUES ('904', '角色管理', '/fpage/role/list.html', '90', '40', 'layui-icon-lc layui-icon-jiaoseguanli', 'XTGL_JSGL', null);
INSERT INTO `xt_menu` VALUES ('906', '修改密码', '/fpage/user/updatepassword.html', '90', '60', 'layui-icon-lc layui-icon-xiugaimima', 'XTGL_XGMM', null);

-- ----------------------------
-- Table structure for xt_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `xt_operate_log`;
CREATE TABLE `xt_operate_log` (
  `OPERLOG_ID` varchar(32) NOT NULL,
  `CREATE_USERID` varchar(36) DEFAULT NULL COMMENT '操作员ID',
  `CREATE_USERNAME` varchar(200) DEFAULT NULL COMMENT '操作员名',
  `CREATE_DEPTID` varchar(200) DEFAULT NULL COMMENT '预留',
  `CREATE_DEPTNAME` varchar(200) DEFAULT NULL COMMENT '预留',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '新建时间',
  `OPER_MODULE` varchar(200) DEFAULT NULL COMMENT '操作模块',
  `OPER_FUNC` varchar(200) DEFAULT NULL COMMENT '操作方法',
  `OPER_PARA` text COMMENT '操作参数',
  `LOG_STATUS` varchar(200) DEFAULT NULL COMMENT '状态',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `IF_DELETED` char(1) DEFAULT NULL,
  PRIMARY KEY (`OPERLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_operate_log
-- ----------------------------

-- ----------------------------
-- Table structure for xt_role
-- ----------------------------
DROP TABLE IF EXISTS `xt_role`;
CREATE TABLE `xt_role` (
  `role_id` varchar(32) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_auth` text,
  `if_deleted` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_userid` varchar(1) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_role
-- ----------------------------
INSERT INTO `xt_role` VALUES ('0df8afa6761446228b2f5c7c64759fa4', '44444', 'XTGL_YHGL', '1', '2019-01-25 10:17:23', '1');
INSERT INTO `xt_role` VALUES ('1', '系统管理员', '', '0', '2018-12-28 15:27:52', '1');
INSERT INTO `xt_role` VALUES ('388971708bcc43fda19b329ea117420b', '副科长', 'BGGL_CLGL,BGGL_WJGX,BGGL_HYS,BGGL_KSYBGL,BGGL_TZTG,BGGL_DBSX,BGGL_BGPZGL,KSYBGL_KSYB,KSYBGL_KSYBHZ', '1', '2019-01-15 17:33:10', '1');
INSERT INTO `xt_role` VALUES ('419a7d77394e423e9fbda6200ed9aab5', '主任', 'XTGL_YHGL,XTGL_XGMM,BGGL_CLGL,BGGL_WJGX,BGGL_HYS,BGGL_KSYBGL,BGGL_TZTG,BGGL_QJGL,BGGL_WJ,BGGL_TZ,BGGL_DBSX,BGGL_BGPZGL,BGGL_YBSX,BGGL_WJSX,KSYBGL_KSYB,KSYBGL_KSYBHZ', '1', '2018-12-28 10:32:58', '1');
INSERT INTO `xt_role` VALUES ('4ef0a70aafa14d45931364db5241569e', '11111', 'JCZCXT_MBTJ', '1', '2019-01-23 17:38:34', '1');
INSERT INTO `xt_role` VALUES ('6fd8d2c501374073a01f5002478e6552', '办公室主任', null, '1', '2019-01-11 11:14:25', '1');
INSERT INTO `xt_role` VALUES ('7f5e87ff834f4f6fa5b28269be2c4dd2', 'JK管理员', 'BGGL_CLGL,BGGL_WJGX,BGGL_HYS,BGGL_KSYBGL,BGGL_TZTG,BGGL_QJGL,BGGL_CLSQ,BGGL_WJ,BGGL_TZ,BGGL_DBSX,BGGL_BGPZGL,KSYBGL_KSYB,KSYBGL_KSYBHZ', '1', '2019-01-11 10:45:45', '1');
INSERT INTO `xt_role` VALUES ('893698dc354649de9b6377ef1e069fb9', '测试', 'MBGL_GXB,MBGL_TNB,FSWSGL_JLJC,BGKQX_XJ', '1', '2019-04-16 10:11:30', '1');
INSERT INTO `xt_role` VALUES ('b532f579e4634ae7ae801cb51a3becb3', '科员', 'MBGL_GXY,MBGL_GXB,MBGL_TNB,MBGL_NCZ,MBGL_JSB,MBGL_SH,MBGL_ZL,MBGL_GYH,MBGL_CRB,BGKQX_XJ,BGKQX_SHSC,ANQX_SHSC,ANQX_THSC,BGGL_WJGX,BGGL_HYS,BGGL_KSYBGL,BGGL_TZTG,BGGL_QJGL,BGGL_DBSX,BGGL_BGPZGL,BGGL_YBSX,BGGL_WJSX,KSYBGL_KSYB', '1', '2018-12-28 10:33:41', '1');
INSERT INTO `xt_role` VALUES ('ba540bf5b7b54c95988dcbc2af1f06b0', '办公室科员', 'TZTG_ZJ,TZTG_XG,TZTG_SC,BGGL_WJ,BGGL_TZ', '1', '2018-12-28 10:21:54', '1');
INSERT INTO `xt_role` VALUES ('ba540bf5b7b54c95988dcbc2af1f06b3', '用户', null, '0', '2018-12-28 09:55:09', '1');

-- ----------------------------
-- Table structure for xt_service
-- ----------------------------
DROP TABLE IF EXISTS `xt_service`;
CREATE TABLE `xt_service` (
  `SERVICE_ID` varchar(32) NOT NULL,
  `SERVICE_KEY` varchar(200) DEFAULT NULL,
  `SERVICE_METHOD` varchar(200) DEFAULT NULL,
  `SERVICE_CLASS` varchar(200) DEFAULT NULL,
  `SERVICE_INPARA` varchar(200) DEFAULT NULL,
  `SERVICE_OUTPARA` varchar(200) DEFAULT NULL,
  `MODULE_NAME` varchar(200) DEFAULT NULL,
  `FUNC_NAME` varchar(200) DEFAULT NULL,
  `AUTH_CODE` varchar(200) DEFAULT NULL,
  `IF_DELETED` int(11) DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_service
-- ----------------------------
INSERT INTO `xt_service` VALUES ('201807231153001', 'menu_layMenu', 'layMenu', 'caidanService', 'PageData', 'PageData', '菜单管理', '菜单列表（layUI）', null, '1', '2018-07-23 11:53:01');
INSERT INTO `xt_service` VALUES ('20180723140901', 'staff_save', 'save', 'staffService', 'PageData', 'PageData', '新增', '用户管理', null, '0', '2018-07-23 14:09:01');
INSERT INTO `xt_service` VALUES ('20180723140902', 'staff_edit', 'edit', 'staffService', 'PageData', 'PageData', '修改', '用户管理', null, '0', '2018-07-23 14:09:02');
INSERT INTO `xt_service` VALUES ('20180723140903', 'staff_delete', 'delete', 'staffService', 'PageData', 'PageData', '删除一条', '用户管理', null, '0', '2018-07-23 14:09:03');
INSERT INTO `xt_service` VALUES ('20180723140904', 'staff_findById', 'findById', 'staffService', 'PageData', 'PageData', '查询一条', '用户管理', null, '0', '2018-07-23 14:09:04');
INSERT INTO `xt_service` VALUES ('20180723140905', 'staff_list', 'list', 'staffService', 'Page', 'LayList', '列表（分页）', '用户管理', '', '0', '2018-07-23 14:09:05');
INSERT INTO `xt_service` VALUES ('20180723140906', 'staff_listAll', 'listAll', 'staffService', 'PageData', 'ListAll', '列表（所有）', '用户管理', null, '0', '2018-07-23 14:09:06');
INSERT INTO `xt_service` VALUES ('20180723140907', 'staff_deleteBatch', 'deleteBatch', 'staffService', 'PageData', 'PageData', '批量删除', '用户管理', null, '0', '2018-07-23 14:09:07');
INSERT INTO `xt_service` VALUES ('20180723140908', 'staff_editpassword', 'editpassword', 'staffService', 'PageData', 'PageData', '修改密码', '用户管理', null, '0', '2018-07-23 14:09:08');
INSERT INTO `xt_service` VALUES ('20180723140909', 'staff_updateStatus', 'updateStatus', 'staffService', 'PageData', 'PageData', '修改状态', '用户管理', null, '0', '2018-07-23 14:09:09');
INSERT INTO `xt_service` VALUES ('20180724150401', 'role_save', 'save', 'roleService', 'PageData', 'PageData', '新增', '角色管理', null, '0', '2018-07-24 15:04:01');
INSERT INTO `xt_service` VALUES ('20180724150402', 'role_edit', 'edit', 'roleService', 'PageData', 'PageData', '修改', '角色管理', null, '0', '2018-07-24 15:04:02');
INSERT INTO `xt_service` VALUES ('20180724150403', 'role_delete', 'delete', 'roleService', 'PageData', 'PageData', '删除一条', '角色管理', null, '0', '2018-07-24 15:04:03');
INSERT INTO `xt_service` VALUES ('20180724150404', 'role_findById', 'findById', 'roleService', 'PageData', 'PageData', '查询一条', '角色管理', null, '0', '2018-07-24 15:04:04');
INSERT INTO `xt_service` VALUES ('20180724150405', 'role_list', 'list', 'roleService', 'Page', 'LayList', '列表（分页）', '角色管理', null, '0', '2018-07-24 15:04:05');
INSERT INTO `xt_service` VALUES ('20180724150406', 'role_listAll', 'listAll', 'roleService', 'PageData', 'ListAll', '列表（所有）', '角色管理', null, '0', '2018-07-24 15:04:06');
INSERT INTO `xt_service` VALUES ('20180724150407', 'role_deleteBatch', 'deleteBatch', 'roleService', 'PageData', 'PageData', '批量删除', '角色管理', null, '0', '2018-07-24 15:04:07');
INSERT INTO `xt_service` VALUES ('20180808115532', 'typesummary_save', 'save', 'typeSummaryService', 'PageData', 'PageData', '新增', '字典管理', null, '0', '2018-08-09 15:43:28');
INSERT INTO `xt_service` VALUES ('20180808115831', 'typesummary_update', 'update', 'typeSummaryService', 'PageData', 'PageData', '更新', '字典管理', null, '0', '2018-08-09 15:43:28');
INSERT INTO `xt_service` VALUES ('20180808130151', 'typesummary_delete', 'delete', 'typeSummaryService', 'PageData', 'PageData', '删除', '字典管理', null, '0', '2018-08-09 15:43:28');
INSERT INTO `xt_service` VALUES ('20180808131019', 'typesummary_selectName', 'selectName', 'typeSummaryService', 'Page', 'LayList', '模糊查询', '字典管理', null, '0', '2018-08-09 15:43:28');
INSERT INTO `xt_service` VALUES ('20180808131319', 'typesummary_selectAll', 'selectAll', 'typeSummaryService', 'Page', 'LayList', '全部非删除', '字典管理', null, '0', '2018-08-09 15:43:28');
INSERT INTO `xt_service` VALUES ('20180808133308', 'typesummary_findById', 'findById', 'typeSummaryService', 'PageData', 'PageData', 'ID查询', '字典管理', null, '0', '2018-08-09 15:43:28');
INSERT INTO `xt_service` VALUES ('20181009110105', 'roleIdList', 'findByRoleId', 'roleService', 'PageData', 'ListAll', '字典表取角色', '用户管理/新增用户', null, '0', '2018-10-09 11:01:46');
INSERT INTO `xt_service` VALUES ('20181010151201', 'hospitalCodeList', 'findByHospitalCode', 'roleService', 'PageData', 'ListAll', '获取医院', '用户管理/新增用户', null, '0', '2018-10-10 15:12:01');
INSERT INTO `xt_service` VALUES ('20181106143202', 'diseaseList', 'findBydiseaseList', 'roleService', 'PageData', 'ListAll', '获取传染病诊断类型', '传染病时间分析', null, '0', '2018-11-06 14:33:29');
INSERT INTO `xt_service` VALUES ('20181127105801', 'baseOrgInfo_save', 'save', 'baseOrgInfoService', 'PageData', 'PageData', '机构管理  保存', '机构管理', null, '0', '2018-11-27 10:58:34');
INSERT INTO `xt_service` VALUES ('20181127105802', 'baseOrgInfo_edit', 'edit', 'baseOrgInfoService', 'PageData', 'PageData', '机构管理  修改', '机构管理  ', null, '0', '2018-11-27 11:01:23');
INSERT INTO `xt_service` VALUES ('20181127105803', 'baseOrgInfo_delete', 'delete', 'baseOrgInfoService', 'PageData', 'PageData', '机构管理  删除', '机构管理  ', null, '0', '2018-11-27 11:02:41');
INSERT INTO `xt_service` VALUES ('20181127105804', 'baseOrgInfo_findById', 'findById', 'baseOrgInfoService', 'PageData', 'PageData', '机构管理  查询一条', '机构管理', null, '0', '2018-11-27 11:04:06');
INSERT INTO `xt_service` VALUES ('20181127105805', 'baseOrgInfo_list', 'list', 'baseOrgInfoService', 'Page', 'LayList', '机构管理  列表(分页)', '机构管理', null, '0', '2018-11-27 11:05:39');
INSERT INTO `xt_service` VALUES ('20181127105806', 'baseOrgInfo_listAll', 'listAll', 'baseOrgInfoService', 'PageData', 'ListAll', '机构管理  列表(全部)', '机构管理', null, '0', '2018-11-27 11:07:51');
INSERT INTO `xt_service` VALUES ('20181127105807', 'baseOrgInfo_deleteAll', 'deleteAll', 'baseOrgInfoService', 'PageData', 'PageData', '机构管理  删除(全部)', '机构管理', null, '0', '2018-11-28 17:48:23');
INSERT INTO `xt_service` VALUES ('20181130115601', 'baseDeptInfo_save', 'save', 'baseDeptInfoService', 'PageData', 'PageData', '部门管理  保存', '部门管理', null, '0', '2018-11-30 11:57:07');
INSERT INTO `xt_service` VALUES ('20181130115602', 'baseDeptInfo_edit', 'edit', 'baseDeptInfoService', 'PageData', 'PageData', '部门管理  修改', '部门管理', null, '0', '2018-11-30 11:58:09');
INSERT INTO `xt_service` VALUES ('20181130115603', 'baseDeptInfo_delete', 'delete', 'baseDeptInfoService', 'PageData', 'PageData', '部门管理  删除', '部门管理', null, '0', '2018-11-30 11:59:20');
INSERT INTO `xt_service` VALUES ('20181130115604', 'baseDeptInfo_findById', 'findById', 'baseDeptInfoService', 'PageData', 'PageData', '部门管理 查询一条', '部门管理', null, '0', '2018-11-30 12:00:11');
INSERT INTO `xt_service` VALUES ('20181130115605', 'baseDeptInfo_list', 'list', 'baseDeptInfoService', 'Page', 'LayList', '部门管理 列表(分页)', '部门管理', null, '0', '2018-11-30 12:34:11');
INSERT INTO `xt_service` VALUES ('20181130115606', 'baseDeptInfo_listAll', 'listAll', 'baseDeptInfoService', 'PageData', 'LayList', '部门管理 列表(全部)', '部门管理', null, '0', '2018-11-30 12:35:10');
INSERT INTO `xt_service` VALUES ('20181130115607', 'baseDeptInfo_deleteAll', 'deleteAll', 'baseDeptInfoService', 'PageData', 'PageData', '部门管理 删除(全部)', '部门管理 ', null, '0', '2018-11-30 12:36:49');
INSERT INTO `xt_service` VALUES ('20181226104301', 'staff_listAllOrg', 'listAllOrg', 'staffService', 'PageData', 'ListAll', '用户管理(机构部门列表)', '用户列表', null, '0', '2018-12-26 10:44:25');
INSERT INTO `xt_service` VALUES ('20190109185101', 'staff_list_folder', 'listFoldStaff', 'staffService', 'Page', 'LayList', '列表（分页）', '用户管理', '', '0', '2018-07-23 14:09:05');
INSERT INTO `xt_service` VALUES ('20190115203701', 'baseResource_save', 'save', 'baseResourceService', 'PageData', 'PageData', '保存文件到数据库', '保存文件到数据库', null, '0', '2019-01-15 20:35:48');
INSERT INTO `xt_service` VALUES ('20190121103501', 'staff_getUserInfo', 'getUserInfo', 'staffService', 'PageData', 'PageData', '获取用户信息', null, null, '0', '2019-01-21 10:33:56');
INSERT INTO `xt_service` VALUES ('20190223150801', 'deptId_List', 'findDeptList', 'staffService', 'PageData', 'ListAll', '部门列表', '用户管理', null, '0', '2019-02-23 15:08:40');
INSERT INTO `xt_service` VALUES ('20190227152001', 'file_save', 'save1', 'baseResourceService', 'PageData', 'PageData', '多文件上传', '文件', null, '0', '2019-02-27 15:20:41');
INSERT INTO `xt_service` VALUES ('20190725091800', 'down_listAll', 'listAll', 'downloadService', 'PageData', 'ListAll', '下载工具列表', '工具下载', null, '0', '2019-07-25 09:18:00');
INSERT INTO `xt_service` VALUES ('20190725104018', 'down_list', 'list', 'downloadService', 'Page', 'LayList', '下载工具列表', '工具下载', null, '0', '2019-07-25 10:40:18');
INSERT INTO `xt_service` VALUES ('20190725105313', 'down_findById', 'findById', 'downloadService', 'PageData', 'PageData', '下载工具查找', '工具下载', null, '0', '2019-07-25 10:53:13');
INSERT INTO `xt_service` VALUES ('20190725105533', 'down_edit', 'edit', 'downloadService', 'PageData', 'PageData', '下载工具修改', '工具下载', null, '0', '2019-07-25 10:55:33');
INSERT INTO `xt_service` VALUES ('20190725110011', 'down_delete', 'delete', 'downloadService', 'PageData', 'PageData', '下载工具删除', '工具下载', null, '0', '2019-07-25 11:00:11');
INSERT INTO `xt_service` VALUES ('20190725111022', 'down_save', 'save', 'downloadService', 'PageData', 'PageData', '下载工具保存', '工具下载', null, '0', '2019-07-25 11:10:22');

-- ----------------------------
-- Table structure for xt_staff_info
-- ----------------------------
DROP TABLE IF EXISTS `xt_staff_info`;
CREATE TABLE `xt_staff_info` (
  `staff_id` varchar(32) NOT NULL,
  `login_name` varchar(45) DEFAULT NULL,
  `login_password` varchar(45) DEFAULT NULL,
  `staff_name` varchar(45) DEFAULT NULL,
  `staff_level` varchar(45) DEFAULT NULL,
  `staff_status` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `token_expire` varchar(45) DEFAULT NULL,
  `dept_id` varchar(32) DEFAULT NULL,
  `role_id` varchar(200) DEFAULT NULL,
  `if_deleted` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `org_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `login_failed_count` int(11) DEFAULT NULL COMMENT '登录失败次数',
  `login_failed_time` datetime DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xt_staff_info
-- ----------------------------
INSERT INTO `xt_staff_info` VALUES ('staff_id', 'admin', '9cbf8a4dcb8e30682b927f352d6559a0', '管理员', '9', '正常', null, null, '4', '1', '0', '2018-01-01 00:00:00', '15010860062', '11@qq.com', '21', '0', '2018-12-29 16:32:49', '');
