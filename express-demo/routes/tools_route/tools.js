var express = require('express');
var router = express.Router();

var tool_controller = require('../../controller/tools_controller/tools')

// 工具列表
router.post('/tools_list', tool_controller.toolsList)

// 工具下载次数
router.post('/down_count', tool_controller.downCount)

module.exports = router;