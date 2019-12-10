// 实现与mysql交互
var mysql = require('mysql');

// mysql配置 - 基本用户库
var config = {
	host: 'localhost',
	user: 'root',
	password: '1234',
	database: 'demo2',
	port: 3306
}
// 使用连接池，提升性能
var pool = mysql.createPool(config);


module.exports = {pool}