
// 实现与mysql交互 使用连接池，提升性能
var {pool} = require('../../model/connDb');

module.exports = {
  //  工具列表
  toolsList: function (req, res, next) {

    pool.getConnection(function (err, connection) {
      if (err) {
        req.send({success: false, msg: err.message, retcode: 400})
      }
      let $sql = 'SELECT * from tools_down WHERE if_deleted = 0'
      let $sqlCount = 'SELECT COUNT(*) as totalCount FROM tools_down WHERE if_deleted = 0'
      connection.query($sql, function(err, result) {
        if (err) {
          res.send({success: false, msg: err.message, retcode: 400})
        }
        connection.query($sqlCount, function (err, total) {
          if (err) {
            res.send({success: false, msg: err.message, retcode: 400})
          }
          res.json({
            toolList: result,
            totalCount: total[0].totalCount,
            retcode: 200
          })
        })
      })
      connection.release(); // 释放连接
    })
  
  },

  // 友情链接
}