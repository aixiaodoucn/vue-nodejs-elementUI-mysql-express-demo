var express = require('express');
var router = express.Router();

// 引入user controller
var user_controller = require('../../controller/user_controller/user')

// 用户列表
router.post('/user_list', user_controller.userList)

// 用户信息
router.post('/user_info', user_controller.user_info)

module.exports = router;
