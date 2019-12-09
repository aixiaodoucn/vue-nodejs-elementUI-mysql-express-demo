var express = require('express');
var router = express.Router();

var friendLink_controller = require('../../controller/public_controller/friend_link')

// 友情链接
router.post('/friend_link', friendLink_controller.friendLink)

module.exports = router;