/*
Navicat MySQL Data Transfer

Source Server         : 119.23.191.165
Source Server Version : 50643
Source Host           : 119.23.191.165:3306
Source Database       : demo2

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2020-01-07 18:47:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for friend_link
-- ----------------------------
DROP TABLE IF EXISTS `friend_link`;
CREATE TABLE `friend_link` (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT '友情链接\r\n',
  `fname` varchar(50) DEFAULT NULL,
  `flink` varchar(100) DEFAULT NULL,
  `fIcon` varchar(100) DEFAULT 'el-icon-s-promotion',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend_link
-- ----------------------------
INSERT INTO `friend_link` VALUES ('0', '津ICP备18010159号-2 【部分软件来自网络，如有侵权请及时联系】', '1', 'el-icon-link');
INSERT INTO `friend_link` VALUES ('1', 'foryh.com', 'http://www.foryh.com', 'el-icon-s-promotion');
INSERT INTO `friend_link` VALUES ('2', 'aixiaodou.cn', 'http://www.aixiaodou.cn', 'el-icon-s-promotion');
INSERT INTO `friend_link` VALUES ('3', 'liuyu.pw', 'https://www.liuyu.pw', 'el-icon-s-promotion');
INSERT INTO `friend_link` VALUES ('4', 'byliuyu.com', 'https://www.byliuyu.com', 'el-icon-s-promotion');
INSERT INTO `friend_link` VALUES ('7', 'CSDN', 'https://blog.csdn.net/qq_32442967', 'el-icon-s-promotion');

-- ----------------------------
-- Table structure for tools_down
-- ----------------------------
DROP TABLE IF EXISTS `tools_down`;
CREATE TABLE `tools_down` (
  `tool_id` varchar(255) NOT NULL COMMENT '工具下载',
  `tool_name` varchar(255) DEFAULT NULL,
  `tool_type` varchar(2) DEFAULT '0' COMMENT '0 推荐\r\n1 开发\r\n2 网页\r\n3 下载\r\n4 编辑\r\n5 其他',
  `tool_url` varchar(255) DEFAULT NULL,
  `tool_url_type` varchar(2) DEFAULT '0',
  `tool_describe` varchar(255) DEFAULT NULL,
  `up_date` varchar(50) DEFAULT NULL,
  `if_deleted` int(1) unsigned zerofill DEFAULT '0',
  `down_count` int(50) DEFAULT '0',
  PRIMARY KEY (`tool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tools_down
-- ----------------------------
INSERT INTO `tools_down` VALUES ('1', '2019.4.24_CSDN博客导出工具', '0', '2019.4.24_CSDN博客导出工具.zip', '0', 'CSDN博客导出工具', '1564183870', '0', '18');
INSERT INTO `tools_down` VALUES ('166c3e0c404d4d598f5b9cd3b2cb0d40', '冰点文库', '3', '冰点文库.rar', '0', '百度文库下载工具', '1564176818', '0', '10');
INSERT INTO `tools_down` VALUES ('1cafdb41ca384b0c86373ecaa331e227', '迅雷U享版V3.1.6', '3', '迅雷U享版V3.1.6.rar', '0', '迅雷U享版V3.1.6版本，无广告，界面简洁，内涵使用方法', '1564177055', '0', '11');
INSERT INTO `tools_down` VALUES ('20ca0a0add3c48b484252122dc4f0fd2', '取色工具', '2', '取色工具.rar', '0', '取色工具 alt+c 快捷键取色', '1564176871', '0', '2');
INSERT INTO `tools_down` VALUES ('30668f70159b4a15b8f1e198ec1f2588', '优酷桌面录屏 v7.0.2 独立版', '5', '优酷桌面录屏 v7.0.2 独立版.rar', '0', '免费版-优酷桌面录屏 v7.0.2 独立版 支持选择录制电脑声音和麦克风声音，支持调整画质，设置输出格式', '1564177086', '0', '0');
INSERT INTO `tools_down` VALUES ('5369d3b4687a4a3981fa38d273733361', '文件批量改名', '4', '文件批量改名.zip', '0', '文件批量改名BulkRen 批量增加前后缀 批量替换文本 批量添加编号', '1564177022', '0', '0');
INSERT INTO `tools_down` VALUES ('53981369d3b4688d277a4afa33733361', 'wxappUnpacker-master', '1', 'wxappUnpacker-master.zip', '0', 'wxappUnpacker 反编译微信小程序源码 使用方法 https://blog.csdn.net/qq_32442967/article/details/103766750', '1577694266', '0', '2');
INSERT INTO `tools_down` VALUES ('5589e3325dd14073b0d581bb306e3a7e', 'IDM.6.30..3破解版', '3', 'IDM.6.30..3破解版.rar', '0', 'IDM.6.30..3破解版  \n1，安装程序（双击idman630.3.exe） 2，替换文件（将“替换文件”中的IDMan.exe文件复制并替换到安装文件的根目录中） 3，导入注册表（双击注册表.reg文件）  注：请勿升级', '1564176995', '0', '0');
INSERT INTO `tools_down` VALUES ('5f8b1dccff724fd790f65fda6dbaf263', 'quercus-4.0.39', '1', 'quercus-4.0.39.rar', '0', 'tomcat运行php包quercus-4.0.39 将 javamail-141.jar和quercus.jar 复制到tomcat下的lib目录里', '1564176791', '0', '1');
INSERT INTO `tools_down` VALUES ('6fce1d0224bd4f7dac6df57482c79832', 'echartsMap', '2', 'echartsMap.rar', '0', 'echartsMap echarts地图数据', '1564176499', '0', '2');
INSERT INTO `tools_down` VALUES ('8eb1f2954c804d6188ebe3e6e3f5cf0b', 'Navicat Premium_11.2.7 简体中文版及激活工具', '1', 'Navicat Premium_11.2.7 简体中文版及激活工具.rar', '0', 'Navicat 中文破解版版', '1564176682', '0', '2');
INSERT INTO `tools_down` VALUES ('9940814b3a8e49a59fe00a4129421646', 'Java环境变量配置工具', '0', 'Java环境变量配置工具.rar', '0', '一键Java环境变量配置工具 简单配置jdk/tomcat/mysql/maven环境变量', '1564180790', '0', '22');
INSERT INTO `tools_down` VALUES ('9d7c4381a85949b4827daa40d1cc0624', 'BitComet_1.51', '3', 'BitComet_1.51.rar', '0', 'BitComet_1.51 下载工具破解版', '1564176521', '0', '0');
INSERT INTO `tools_down` VALUES ('a1114df4e5e54de2936bcbd21153a61b', 'licecap', '0', 'licecap.rar', '0', 'licecap，录制gif动画工具', '1576030326', '0', '16');
INSERT INTO `tools_down` VALUES ('bd8fc066981041b9afdd1b7f0cbc5e2b', 'pandownload', '3', 'http://pandownload.com/', '1', '百度网盘下载工具，免费版，详情请访问软件官网', '1564184009', '0', '0');
INSERT INTO `tools_down` VALUES ('d9b5b37bb7b64b74acd5607e4902ead3', 'PDF-XChange Editor', '4', 'PDF-XChange Editor.rar', '0', '免费修改pdf软件 1.先安装文件 PDFXVE6.exe （选择免费版安装） 2.将“替换文件”文件夹下的文件，复制并替换到安装目录中的“PDF Editor”文件夹中， == PDFXEditCore.x64.dll PDFXEditCore.x86.dll ==', '1564177128', '0', '0');
INSERT INTO `tools_down` VALUES ('e8ef813897ca411396c753403d8bceaf', 'echartst拓扑图数据传输图', '2', 'echartst拓扑图数据传输图.rar', '0', 'echartst拓扑图数据传输图\n自行修改的echarts数据传输图', '1564176547', '0', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `login_date` int(50) DEFAULT NULL COMMENT '最近登录时间',
  `if_deleted` int(20) DEFAULT '0' COMMENT '是否删除： 0未删除   1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '管理员', '1578305275', '0');
INSERT INTO `user` VALUES ('2', 'zhangsan', '123', '张三', '1578131256', '0');
INSERT INTO `user` VALUES ('2yeeveiejd353eijz89yzobkor52cz8z', 'ww', 'ww', 'ww', '1577944578', '0');
INSERT INTO `user` VALUES ('3', 'wangwu', '456', '王五', '1575273964', '0');
INSERT INTO `user` VALUES ('4', 'maliu', '456', '马六', '1575273964', '0');
INSERT INTO `user` VALUES ('65rtjnk1b46dmyf964svf8by1fz9j3cd', 'felix9ia', '123456', '贾鹏飞', '1577778662', '0');
INSERT INTO `user` VALUES ('7', 'qiqi', '123', 'qiqi', '1575273964', '0');
INSERT INTO `user` VALUES ('afuf2g0dhjuh68050c9hx2u0xg7sy84f', 'xi', 'xi', '兮兮', '1575273964', '0');
INSERT INTO `user` VALUES ('cc0oyhowbds0yxgeo6i1kcoa6sxalhfs', 'c', 'c', '用户C', '1575541648', '0');
INSERT INTO `user` VALUES ('dwfyr0sk0jjtsfbzaxulc6d5h7fzttdn', 'a', 'a', '用户A', '1578384620', '0');
INSERT INTO `user` VALUES ('f34idj7xylc6uu3vin5ksj02wuw4i588', 'r', 'r', '用户R', '1577784081', '0');
INSERT INTO `user` VALUES ('gll2uu081780ld5lglz82agi1wsq3hfo', 'q', 'q', 'q', '1578046522', '0');
INSERT INTO `user` VALUES ('l29us95hwzyy0na3amk4rahgdqisrpu1', 'w', 'w', '用户W', '1575455870', '0');
INSERT INTO `user` VALUES ('mm1a5hpsr91hhjhu07kljyoymf3eu0nw', 's', 's', '用户S', '1578393795', '0');
INSERT INTO `user` VALUES ('sjnmtjs0ox7w8hz61c9nr5gblh65pgzk', 'aaa', 'aaa', '哎哎哎', null, '0');
INSERT INTO `user` VALUES ('udhnbv3hbdacb94j', 'xiaoming', 'xiao123', '小明', '1575273964', '0');
