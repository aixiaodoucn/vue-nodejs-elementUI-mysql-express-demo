var express = require('express');
var router = express.Router();

var tool_controller = require('../../controller/tools_controller/tools')

// 工具列表
router.post('/tools_list', tool_controller.toolsList)

module.exports = router;