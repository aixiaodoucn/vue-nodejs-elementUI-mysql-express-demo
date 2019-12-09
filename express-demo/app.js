var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

// 引入路由文件
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/user_route/users');
var login = require('./routes/user_route/login');
var tools = require('./routes/tools_route/tools');
var publicRouter = require('./routes/public_route/publicRouter');

var app = express();

app.all('*', function (req, res, next) {
  // 设置请求头为允许跨域
  res.header('Access-Control-Allow-Origin', '*');
  // 设置服务器支持的所有头信息字段
  res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild, sessionToken');
  // 设置服务器支持的所有跨域请求的方法
  res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
   // header头信息设置结束后，结束程序往下执行，返回
  if (req.method.toLowerCase() == 'options') {
      res.send(200);  // 让options尝试请求快速结束
  } else {
      next();
  }
});

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


// 路由接口定义
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/login', login);
app.use('/tools', tools);
app.use('/publicRouter', publicRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
