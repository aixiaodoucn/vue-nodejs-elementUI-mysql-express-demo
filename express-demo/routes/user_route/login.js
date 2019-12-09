var express = require('express');
var router = express.Router();

// 引入登录 controller
var login_controller = require('../../controller/user_controller/login')

// 登录
router.post('/userLogin', login_controller.userLogin)

// 注册
router.post('/userRegister', login_controller.userRegister)

module.exports = router;