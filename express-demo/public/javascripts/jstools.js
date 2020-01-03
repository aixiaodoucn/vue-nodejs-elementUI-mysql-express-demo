var {verifyToken} = require('../../model/jwt')
var {pool} = require('../../model/connDb')
// 获取UUID
function getUUID (n = 32) {
  var str = "abcdefghijklmnopqrstuvwxyz0123456789"; // 可以作为常量放到random外面
  var result = "";
  for(var i = 0; i < n; i++) {
      result += str[parseInt(Math.random() * str.length)];
  }
  return result;
}

// 校验token
function checkToken (token, callback) {
  // 校验失败返回数据
  let callFailData = {success: false, msg: 'token校验失败', retcode: 1001}
  try {
    // token校验 decode指解码后的信息
    let decode = verifyToken(token)
    
    // 校验token是否在有效期内
    let newDate = Math.round(new Date() / 1000)
    if (decode.iat < newDate && decode.exp > newDate) {
      // token 有效
      var $sql = 'select * from user where username = ? and password = ? and if_deleted = 0'
      pool.getConnection(function(err, connection){
        if (err) {
          callback({success: false, msg: err.msg, retcode: 1001})
        }
        connection.query($sql, [decode.username, decode.password], function(err, resultList){
          if (err) {
            callback({success: false, msg: err.msg, retcode: 1001})
          } else if (resultList.length > 0) {
            callback({success: true, msg: 'token校验成功', retcode: 200})
          } else {
            callback(callFailData)
          }
        })
        connection.release();
      })
    } else {
      // token 过期
      callback(callFailData)
    }
    
  } catch {
    callback(callFailData)
  }
}

module.exports = {
  getUUID,
  checkToken
}