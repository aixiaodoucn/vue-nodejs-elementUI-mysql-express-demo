# vue-nodejs-elementUI-mysql-express-demo
vue+nodejs前后端分离项目，学习使用，包含基本的入门操作。包括从开始创建项目到最后部署的实现过程及过程中遇到的一些问题整理。

项目预览地址： [预览地址 -- aixiaodou.cn](http://www.aixiaodou.cn:8080)

评论讨论地址：[ 个人博客 -- https://blog.csdn.net/qq_32442967/article/details/103459148 ]( https://blog.csdn.net/qq_32442967/article/details/103459148 )

![](https://cdn.jsdelivr.net/gh/zshuai34/cdnImg/images/anodejs.gif)



#### 数据库地址：express-demo/doc/demo2.sql

MySQL数据库

数据库为 demo2

创建demo2数据库>运行sql语句

修改 express-demo 项目中 model/connDb.js 数据库连接配置

#### express-demo-web: 前端web项目

```shell
# 安装依赖
npm install

# 运行项目
npm run dev
```



#### express-demo：后端nodejs项目

```shell
# 安装依赖
npm install

# 运行项目
npm start
```



<hr>

### 本项目为入门项目，采用前（vue）后（nodejs）端分离模式

#### 主要运用技术：

- 前端：vue+ elementUI+ axios+ vue-cli+ webpack+ vue-router+ vuex+ js-cookie
- 后端：nodejs+ express+ jsonwebtoken
- 数据库： mysql
- 部署环境：nginx
- 部署服务器：linux centos7

#### 现有功能介绍：

1. toolsDown 工具下载模块：从数据库中查询列表，分类进行展示
2. login、register 登录、注册、退出登录模块：首页&工具下载页面可无登录预览，用户列表页面登录后可见。
   将 sessionToken 存到 cookie 中，登录后的 userId 存到 localstorage 中。
   根据是否登录来显示右上角为登录还是头像。
3. userManage 用户列表模块：分页，模糊搜索, 用户编辑、删除功能
4. friend_link 友情链接接口：将友链和备案信息放到数据库中



<hr>



### V 1.0.1 实现基本功能（1-4 项）——主要记录一些遇到的问题

#### 前端

1. 控制页面是否登录才可访问：根据token来判断是否有登录，配置 router [参考链接](https://blog.csdn.net/qq_32442967/article/details/103312317)
2. 将登录后获取的userId存到localstorage，在获取用户信息是带上userId获取登录用户信息，显示右上角头像

#### 后端

1. nodejs连接mysql数据库,如果使用了连接池，一定要在使用完释放连接，否则会造成超过最大连接数 [参考链接](https://blog.csdn.net/qq_32442967/article/details/103349601/)

#### 部署

1. nginx部署vue项目后，正常访问没问题，刷新就会出现404的问题 [解决办法](https://blog.csdn.net/qq_32442967/article/details/103389376)
2. nodejs在linux中持久运行使用了forever [参考链接](https://blog.csdn.net/qq_32442967/article/details/103390306)



<hr>



### V 1.0.0 创建前后端项目

#### 前端

1. 使用vue-cli+ webpack生成vue项目
2. 配置router，store，utils，axios，elementUI，端口号...

#### 后端

1. 使用express生成nodejs项目 [参考链接](http://www.expressjs.com.cn/)
2. 安装 jsonwebtoken 依赖包，生成token，在登录成功后返回前端 [参考链接](https://blog.csdn.net/qq_32442967/article/details/103316307)
3. 安装 mysql 数据库依赖包

#### 解决前后端分离项目跨域问题（设置请求头） [参考链接](https://blog.csdn.net/qq_32442967/article/details/103344373)

- 前端：axios中request 拦截器，设置sessionToken，作为后端校验使用，判断是否为允许的服务器
- 后端：在app.js中设置请求头 - 加入app.all()
- 后端：由于自定义了请求头 sessionToken ，为复杂跨域请求，就会有一次options预请求，对method为options的请求快速处理返回200

#### 数据库

1. 创建数据库>表【user, tools_down, friend_link】
2. 模拟测试数据