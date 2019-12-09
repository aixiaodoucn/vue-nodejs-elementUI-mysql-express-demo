var {createToken} = require('../../model/jwt')

var jstools = require('../../public/javascripts/jstools')

// 实现与mysql交互 使用连接池，提升性能
var {pool} = require('../../model/connDb');

module.exports = {
  // 用户登录接口
  userLogin: function (req, res, next) {
    let reqJson = JSON.parse(req.body.req); // 将入参字符串转换为json
    var username = reqJson.username; // 获取前台请求的参数
    var password = reqJson.password;

    pool.getConnection(function (err, connection) {
      // 1. 判断该账号是否存在
      var $sql = 'select * from user where username = ? and if_deleted = 0'
      let result = {}
      connection.query($sql, [username], function (err, resultData) {
        if (err) {
          result = {
            retcode: 400,
            msg: err.message
          };
        }
        if (resultData.length === 0) {
          result = {
            retcode: 300,
            msg: '该账号不存在，或已被注销'
          };
          res.json(result);
        } else { // 2. 账号存在，进行密码判断
          var $sql = `select * from user where username = ? `
          connection.query($sql, [username], function (err, resultDataS) {
            var temp = resultDataS[0].password; // 取得数据库查询字段值
            if (temp === password) {
              var tokenor = { username, password }
              var token = createToken(tokenor)
              var $updateSql = 'UPDATE user set login_date = unix_timestamp(now()) where username = ?'
              // 修改最近登录时间
              connection.query($updateSql, [username], function (err, resultDataQ) { })
              result = {
                retcode: 200,
                msg: '登录成功',
                token,
                userId: resultDataS[0].id
              };
            } else {
              result = {
                retcode: 400,
                msg: '密码错误'
              }
            }
            res.json(result); // 以json形式，把操作结果返回给前台页面
          })
        }
      })
      connection.release();
    })

  },
  // 注册接口
  userRegister: function (req, res, next) {
    let reqJson = JSON.parse(req.body.req); // 将字符串转换为json
    var id = jstools.getUUID();
    var username = reqJson.username;
    var password = reqJson.password;
    var name = reqJson.name;
    pool.getConnection(function (err, connection) {
      // 先判断账号是否存在
      var $sql = 'select *  from user where username = ?';
      connection.query($sql, [username], function(error, result) {
        var resultJson = result;
        if (resultJson.length !==0) {
          result = {
            retcode: 300,
            msg: '注册失败：该账号已存在！'
          };
          res.json(result);
        } else{ // 账号不存在可以注册
          // 建立连接，向表中插入值
          var $sqlIn = 'INSERT INTO user(id,username,password,name) values (?, ?, ?, ?)';
          connection.query($sqlIn, [id, username, password, name], function(err, result) {
            if (err) {
              console.log('[INSERT ERROR]- ', err.message);
              return;
            };
            if(result) {
              result = {
                retcode: 200,
                msg: '注册成功！'
              };
            } else {
              result = {
                retcode: 400,
                msg: '注册失败：请重试！'
              };
            }
            res.json(result); // 以json形式，把操作结果返回给前台页面
          })
        }
      })
      // 释放连接
      connection.release(); 
    })
  }
}