var { checkToken } = require('../../public/javascripts/jstools')
// 实现与mysql交互 使用连接池，提升性能
var { pool } = require('../../model/connDb');

module.exports = {
  //  用户列表
  userList: function (req, res, next) {
    var token = req.headers.sessiontoken // 获取前端请求头发送过来的tokenid
    let reqJson = JSON.parse(req.body.req)
    let username = reqJson.username.replace(/(^\s*)|(\s*$)/g, "") // 去掉首位空格
    let name = reqJson.name.replace(/(^\s*)|(\s*$)/g, "")
    let pageSize = reqJson.pageSize
    let pageNo = reqJson.pageNo
    // 校验token
    checkToken(token, function (resData) {
      if (resData.success) {
        var $sql = 'select id,username,name,login_date from user where INSTR(username, ?) and INSTR(name, ?) and if_deleted = 0 LIMIT ?, ?';
        var $sqlCount = 'SELECT COUNT(*) as totalCount from user where INSTR(username, ?) and INSTR(name, ?) and if_deleted = 0'
        pool.getConnection(function (err, connection) {
          if (err) {
            return res.send({ success: false, msg: err.message, retcode: 400 })
          }
          connection.query($sql, [username, name, (pageNo - 1) * pageSize, pageSize], function (err, resultList) {
            if (err) {
              return res.send({ success: false, msg: err.message, retcode: 400 })
            }
            connection.query($sqlCount, [username, name], function (err, total) {
              if (err) {
                return res.send({ success: false, msg: err.message, retcode: 400 })
              }
              res.json({
                userList: resultList,
                totalCount: total[0].totalCount,
                retcode: 200
              })
            })
          })
          connection.release();
        })
      } else {
        res.json(resData)
      }
    })
  },

  // 用户信息列表
  userInfo: function (req, res, next) {
    var token = req.headers.sessiontoken // 获取前端请求头发送过来的tokenid
    let reqJson = JSON.parse(req.body.req)
    let userId = reqJson.userId

    if (userId === undefined || userId === '') {
      res.send({ success: true, msg: '未登录，无用户信息', retcode: 2001 })
    } else {
      // 校验token
      checkToken(token, function (resData) {
        if (resData.success) {
          var $sql = 'select id,username,name,login_date from user where id = ? and if_deleted = 0';
          pool.getConnection(function (err, connection) {
            if (err) {
              return res.send({ success: false, msg: err.message, retcode: 400 })
            }
            connection.query($sql, [userId], function (err, resultList) {
              if (err) {
                return res.send({ success: false, msg: err.message, retcode: 400 })
              } else if (resultList.length < 1) {
                return res.send({ success: false, msg: '用户id错误', retcode: 1001 })
              }
              res.json({
                userInfo: resultList[0],
                retcode: 200
              })
            })
            connection.release(); // 释放连接
          })
        } else {
          res.json(resData)
        }
      })
    }
  },

  // 修改用户信息列表
  modifyInfo: function (req, res, next) {
    var token = req.headers.sessiontoken // 获取前端请求头发送过来的tokenid
    let reqJson = JSON.parse(req.body.req)
    if (reqJson.id == '1') {
      res.json({
        msg: '管理员不可被修改！',
        retcode: 2001
      })
    } else {
      checkToken(token, function (resData) {
        if (resData.success) {
          var $sql = 'UPDATE user SET name = ? ,username = ? WHERE id =  ?';
          pool.getConnection(function (err, connection) {
            if (err) {
              return res.send({ success: false, msg: err.message, retcode: 400 })
            }
            connection.query($sql, [reqJson.name, reqJson.username, reqJson.id], function (err, resultList) {
              if (err) {
                return res.send({ success: false, msg: err.message, retcode: 400 })
              }
              res.json({
                msg: '修改成功！',
                retcode: 200
              })
            })
            connection.release(); // 释放连接
          })
        } else {
          res.json(resData)
        }
      })
    }
  },

  // 删除用户
  delUser: function (req, res, next) {
    var token = req.headers.sessiontoken // 获取前端请求头发送过来的tokenid
    let reqJson = JSON.parse(req.body.req)
    if (reqJson.id == '1') {
      res.json({
        msg: '管理员不可被删除！',
        retcode: 2001
      })
    } else {
      checkToken(token, function (resData) {
        if (resData.success) {
          var $sql = 'UPDATE user SET if_deleted = 1 WHERE id = ?';
          pool.getConnection(function (err, connection) {
            if (err) {
              return res.send({ success: false, msg: err.message, retcode: 400 })
            }
            connection.query($sql, [reqJson.id], function (err, resultList) {
              if (err) {
                return res.send({ success: false, msg: err.message, retcode: 400 })
              }
              res.json({
                msg: '删除成功！',
                retcode: 200
              })
            })
            connection.release(); // 释放连接
          })
        } else {
          res.json(resData)
        }
      })
    }
  }
}
