<template>
  <div>
    <el-card>
     <h4>欢迎您！</h4>
      <div class="pub-link">
        <div>
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://blog.csdn.net/qq_32442967" icon="el-icon-paperclip">CSDN -- 项目编写过程中遇到的主要问题记录</el-link>
        </div>
        <div>
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://blog.csdn.net/qq_32442967/article/details/103459148" icon="el-icon-bell">CSDN -- 建议评论地址</el-link>
        </div>
        <div>
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://github.com/zshuai34/vue-nodejs-elementUI-mysql-express-demo" icon="el-icon-ship">github -- 项目下载地址</el-link>
        </div>
      </div>
    </el-card>
    <el-card>
      <div slot="header" class="clearfix">
        <span class="card-title">本项目为入门项目，采用前（vue）后（nodejs）端分离模式</span>
      </div>
      <div>
        <h4>主要运用技术：</h4>
        <ul>
          <li>前端：vue+ elementUI+ axios+ vue-cli+ webpack+ vue-router+ vuex+ js-cookie</li>
          <li>后端：nodejs+ express+ jsonwebtoken</li>
          <li>数据库： mysql</li>
          <li>部署环境：nginx</li>
          <li>部署服务器：linux centos7</li>
        </ul>
        <h4>现有功能介绍：</h4>
        <ol>
          <li>toolsDown 工具下载模块：从数据库中查询列表，分类进行展示</li>
          <li>login、register 登录、注册、退出登录模块：首页&工具下载页面可无登录预览，用户列表页面登录后可见。<br>
            将 sessionToken 存到 cookie 中，登录后的 userId 存到 localstorage 中。<br>
            根据是否登录来显示右上角为登录还是头像。
          </li>
          <li>userManage 用户列表模块：分页，模糊搜索，用户修改删除操作</li>
          <li>friend_link 友情链接接口：将友链和备案信息放到数据库中</li>
        </ol>
      </div>
    </el-card>
    <el-card>
      <div slot="header" class="clearfix">
        <span class="card-title">V 1.0.1 实现基本功能（1-4 项）——主要记录一些遇到的问题</span>
      </div>
      <h5>前端</h5>
      <ol>
        <li>控制页面是否登录才可访问：根据token来判断是否有登录，配置 router
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://blog.csdn.net/qq_32442967/article/details/103312317" icon="el-icon-paperclip">参考链接</el-link>
        </li>
        <li>将登录后获取的userId存到localstorage，在获取用户信息是带上userId获取登录用户信息，显示右上角头像</li>
      </ol>
      <h5>后端</h5>
      <ol>
        <li>nodejs连接mysql数据库,如果使用了连接池，一定要在使用完释放连接，否则会造成超过最大连接数
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://blog.csdn.net/qq_32442967/article/details/103349601/" icon="el-icon-paperclip">参考链接</el-link>
        </li>
      </ol>
      <h5>部署</h5>
      <ol>
        <li>nginx部署vue项目后，正常访问没问题，刷新就会出现404的问题
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://blog.csdn.net/qq_32442967/article/details/103389376" icon="el-icon-paperclip">解决办法</el-link>
        </li>
        <li>nodejs在linux中持久运行使用可forever
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://blog.csdn.net/qq_32442967/article/details/103390306" icon="el-icon-paperclip">参考链接</el-link>
        </li>
      </ol>
    </el-card>
    <el-card>
      <div slot="header" class="clearfix">
        <span class="card-title">V 1.0.0 创建前后端项目</span>
      </div>
      <h5>前端</h5>
      <ol>
        <li>使用vue-cli+ webpack生成vue项目</li>
        <li>配置router，store，utils，axios，elementUI，端口号...</li>
      </ol>
      <h5>后端</h5>
      <ol>
        <li>使用express生成nodejs项目
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="http://www.expressjs.com.cn/" icon="el-icon-paperclip">参考链接</el-link>
        </li>
        <li>安装 jsonwebtoken 依赖包，生成token，在登录成功后返回前端
          <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://blog.csdn.net/qq_32442967/article/details/103316307" icon="el-icon-paperclip">参考链接</el-link>
        </li>
        <li>安装 mysql 数据库依赖包</li>
      </ol>
      <h5>解决前后端分离项目跨域问题（设置请求头）
        <el-link :underline="false" style="color: #c261f5" target="_blank" href="https://blog.csdn.net/qq_32442967/article/details/103344373" icon="el-icon-paperclip">参考链接</el-link>
      </h5>
      <ul>
        <li>前端：axios中request 拦截器，设置sessionToken，作为后端校验使用，判断是否为允许的服务器</li>
        <li>后端：在app.js中设置请求头 - 加入app.all()</li>
        <li>后端：由于自定义了请求头 sessionToken ，为复杂跨域请求，就会有一次options预请求，对method为options的请求快速处理返回200</li>
      </ul>
      <h5>数据库</h5>
      <ol>
        <li>创建数据库>表【user, tools_down, friend_link】</li>
        <li>模拟测试数据</li>
      </ol>
    </el-card>
  </div>
</template>

<script>
export default {
  name: 'welcome'
}
</script>

<style lang="stylus" scoped>
.pub-link
  .el-link
    line-height 40px
.el-card{
  margin-bottom 15px
}
.card-title{
  font-size 16px
  font-weight bold
}
</style>
