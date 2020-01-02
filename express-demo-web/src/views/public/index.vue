<template>
  <div>
    <div class="top-header">
      <ul class="header-left">
        <li class="header-item" @click="toWelcome">首页</li>
        <li class="header-item" @click="toToolsDown">软件下载</li>
        <div class="right-menu">
          <div class="r-menu-item" @click="changeLoginPanel(true)" v-if="!isLogin">登录</div>
          <div class="r-menu-item" v-if="isLogin">
            <el-dropdown placement="bottom" trigger="click"  @command="handleCommand">
            <span class="el-dropdown-link">
              <el-avatar :size="40" style="vertical-align: middle"
                         src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"/>
            </span>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item command="self">个人中心</el-dropdown-item>
                <el-dropdown-item command="userList">用户列表</el-dropdown-item>
                <el-dropdown-item command="logout">退出</el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>
          </div>
        </div>
      </ul>
    </div>
    <div class="public-container">
      <router-view/>
    </div>
    <div class="footer">
      <div class="footer-content">
        <span>友情链接:</span>
        <el-link class="ellink"
                 v-for="link in fList"
                 :key="link.fid"
                 :icon="link.fIcon"
                 target="_blank"
                 :href="link.flink">
          {{link.fname}}
        </el-link>
        <span class="footer-right"><span class="version">V1.0.1</span><span v-for="b in bList" :key="b.fid">{{b.fname}}</span></span>
      </div>
    </div>
    <login v-show="loginPanel" @changeLoginPanel="changeLoginPanel"/>
  </div>
</template>

<script>
import {mapState} from 'vuex'
import login from '../login/index'
export default {
  name: 'public',
  components: {
    login
  },
  data () {
    return {
      loginPanel: false
    }
  },
  methods: {
    changeLoginPanel (bool) {
      this.loginPanel = bool
    },
    // 个人头像点击事件
    handleCommand (command) {
      if (command === 'logout') {
        this.$store.dispatch('user/logout')
        this.$router.push('/')
        this.$router.go(0)
      } else if (command === 'self') {
        if (this.userId !== 'undefined' && this.userId !== undefined && this.userId !== '') {
          this.$store.dispatch('user/handleUserInfo')
          this.$router.push('userCenter')
        }
      } else if (command === 'userList') {
        this.$router.push('userManage')
      }
    },
    toWelcome () {
      this.$router.push('/')
    },
    toToolsDown () {
      this.$router.push('toolsDown')
    }
  },
  mounted () {
    // 获取友情链接 /备案
    this.$store.dispatch('pubStore/handleFriendLink')
    // 获取用户信息 登录状态获取/未登录不获取
    if (this.userId !== 'undefined' && this.userId !== undefined && this.userId !== '') {
      this.$store.dispatch('user/handleUserInfo')
    }
  },
  computed: {
    ...mapState('pubStore', ['fList', 'bList']),
    ...mapState('user', ['token', 'userId', 'isLogin'])
  }
}
</script>

<style lang="stylus" scoped>
  .top-header{
    height 60px
    background-color: #FFFFFF;
    box-shadow: 0 2px 12px 0 rgba(0,0,0,.1);
    min-width: 300px;
    position: relative;
    margin: 0;
    padding-left: 0;
    .header-left{
      list-style: none;
      margin: 0
      padding-left 0
      color: #666;
      border-bottom-color: transparent;
      background-color: #FFFFFF;
      .header-item{
        float: left;
        height: 60px;
        line-height: 60px;
        margin: 0;
        border-bottom: 2px solid transparent;
        font-size: 14px;
        padding: 0 20px;
        cursor: pointer;
        -webkit-transition: border-color .3s,background-color .3s,color .3s;
        transition: border-color .3s,background-color .3s,color .3s;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        &:hover{
          color: #c261f5;
          border-bottom-color: #c261f5;
          background-color: #f7f7f7;
        }
      }
    }
    .right-menu{
      float right
      height: 60px;
      line-height: 60px;
      color: #666;
      .r-menu-item{
        height: 60px;
        padding 0 20px
        float left
        text-align center
        cursor pointer
        &:hover{
          color: #c261f5;
          background-color: #f7f7f7;
        }
        &:focus {
          outline: -webkit-focus-ring-color auto 0;
        }
      }
      &:focus {
        outline: -webkit-focus-ring-color auto 0;
      }
    }
  }
  .public-container{
    margin 15px
    padding-bottom 40px
  }
  .footer{
    background-color #fff
    color #666
    height 40px
    line-height 40px
    font-size 12px
    position: fixed
    bottom: 0
    box-shadow: 0 2px 12px 0 rgba(0,0,0,.3);
    width: 100%
    .footer-content{
      padding: 0 20px;
      .ellink{
        font-size 12px
        /*color white*/
        margin-right: 10px;
      }
      .ellink:hover{
        color #c261f5
      }
      .footer-right{
        float right
        right 20px
        .version{
          margin-right 15px
        }
      }
    }
  }
</style>
