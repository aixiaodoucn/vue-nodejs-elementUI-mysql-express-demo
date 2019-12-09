var jwt = require('jsonwebtoken');

var screenKey = 'aixiaodou.cn'

function createToken(tokenJson, expiresIn = '1h') {
  return jwt.sign(tokenJson, screenKey, {expiresIn})  // expiresIn:有效期  "2 days"，"10h"，"7d"
}

function verifyToken (tokenJson) {
  return jwt.verify(tokenJson, screenKey)
}


module.exports = {
  createToken,
  verifyToken
}