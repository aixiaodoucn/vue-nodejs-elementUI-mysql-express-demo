/*
MySQL Backup
Source Server Version: 5.6.43
Source Database: demo2
Date: 2019/12/3 14:25:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `login_date` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `user` VALUES ('2','zhangsan','123','张三','1575354200'), ('3','wangwu','456','王五','1575273964'), ('4','maliu','456','马六','1575273964'), ('7','qiqi','123','qiqi','1575273964'), ('afuf2g0dhjuh68050c9hx2u0xg7sy84f','xi','xi','xi','1575273964'), ('dwfyr0sk0jjtsfbzaxulc6d5h7fzttdn','a','a','a','1575353757'), ('gbcaw4sksikr0egdfuvqbi2o0gx2t0iz','nada','123','拿大','1575273964'), ('ida5p9n3gtfa5xcbqn9eaycpsradn0hn','as','as','asd',NULL), ('jauhkb7k1v1osn7a7g3vg8yph30c4wua','a2','a2','a2',NULL), ('of7etauw0sc2czv847q1f3gtxwdqnw8h','a3','a3','a3',NULL), ('prfjfvh0wuskvx9fivvolg7nxbl737rx','a1','a1','a1','1575338382'), ('udhnbv3hbdacb94j','xiaoming','xiao123','小明','1575273964'), ('wsko5n2qt920jaa8yaihyrtxq7q4ntmf','ds','ds','ds','1575284066');
