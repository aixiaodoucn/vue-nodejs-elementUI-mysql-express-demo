// 实现与mysql交互
var mysql = require('mysql');

// mysql配置 - 基本用户库
var config = {
	host: '119.23.191.165',
	user: 'root',
	password: 'root1234',
	database: 'demo2',
	port: 3306
}
// 使用连接池，提升性能
var pool = mysql.createPool(config);

// mysql配置 - 工具下载库
var configjkTool = {
	host: '119.23.191.165',
	user: 'root',
	password: 'root1234',
	database: 'jk',
	port: 3306
}
// 使用连接池，提升性能
var poolTool = mysql.createPool(configjkTool);

module.exports = {pool, poolTool}