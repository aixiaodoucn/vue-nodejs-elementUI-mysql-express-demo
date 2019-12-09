
// 实现与mysql交互 使用连接池，提升性能
var {pool} = require('../../model/connDb');

module.exports = {
  // 友情链接
  friendLink: function (req, res, next) {
    pool.getConnection (function (err, connection) {
      if (err) {
        req.send({success: false, msg: err.message, retcode: 400})
      }
      let $sql = 'select * from friend_link'
      connection.query($sql, function(err, result) {
        if (err) {
          req.send({success: false, msg: err.message, retcode: 400})
        } else {
          let bList = []
          let fList = []
          fList = result
          // 判断 flink为1的为 备案信息
          result.forEach((element,index) => {
            if (element.flink === '1') {
              bList.push(element)
              fList.splice(index, 1)
            }
          });
          res.json({
            fList,
            bList,
            retcode: 200
          })
        }
      })
      connection.release(); // 释放连接
    })
  }
}