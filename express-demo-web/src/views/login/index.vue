<template>
  <div class="container">
    <div class="login-content" v-show="loginOrRegister === 'login'">
      <i class="el-icon-close close-icon" title="关闭" @click="closePanel"></i>
      <h4 class="title">登录</h4>
      <el-form :model="loginForm" ref="loginForm" :rules="rulesLogin">
        <el-form-item prop="username">
          <el-input type="text" placeholder="用户名" v-model="loginForm.username" autofocus></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input type="password" placeholder="密码" v-model="loginForm.password"></el-input>
        </el-form-item>
        <el-form-item style="text-align: center">
          <el-button type="primary" style="width: 100%" @click="toLogin('loginForm')" plain>登录</el-button>
<!--          <el-link type="info" :underline="false" style="float: right;" @click="loginOrRegister = 'register'">去注册<i class="el-icon-arrow-right"></i></el-link>-->
          <el-link type="info" :underline="false" style="float: right;" @click="changeLogin('register', 'registerForm')">去注册<i class="el-icon-arrow-right"></i></el-link>
        </el-form-item>
      </el-form>
    </div>
<!--    注册-->
    <div class="login-content" v-show="loginOrRegister === 'register'">
      <i class="el-icon-close close-icon" title="关闭" @click="closePanel"></i>
      <h4 class="title">注册</h4>
      <el-form :model="registerForm" ref="registerForm" :rules="rulesRegister" status-icon>
        <el-form-item prop="username">
          <el-input type="text" placeholder="用户名" v-model="registerForm.username"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input type="password" placeholder="密码" v-model="registerForm.password" ></el-input>
        </el-form-item>
        <el-form-item prop="rePassword">
          <el-input type="password" placeholder="重复密码" v-model="registerForm.rePassword"></el-input>
        </el-form-item>
        <el-form-item prop="name">
          <el-input type="text" placeholder="姓名" v-model="registerForm.name"></el-input>
        </el-form-item>
        <el-form-item style="text-align: center">
          <el-button type="primary" style="width: 100%" @click="toRegister('registerForm')" plain>注册</el-button>
          <el-link type="info" :underline="false" style="float: right;" @click="changeLogin('login', 'loginForm')">去登录<i class="el-icon-arrow-right"></i></el-link>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
import {setToken} from '../../utils/auth'
export default {
  name: 'login',
  data () {
    let validatePass = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入密码'))
      } else {
        if (this.rulesRegister.rePassword !== '') {
          this.$refs.registerForm.validateField('rePassword')
        }
        callback()
      }
    }
    let validatePass2 = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请再次输入密码'))
      } else if (value !== this.registerForm.password) {
        callback(new Error('两次输入密码不一致!'))
      } else {
        callback()
      }
    }
    let validateUsername = (rule, value, callback) => {
      if (value === ' ') {
        callback(new Error('用户名不能为空'))
      } else if (value.indexOf(' ') !== -1) {
        callback(new Error('用户名不能包含空格'))
      } else {
        callback()
      }
    }
    return {
      loginForm: {
        username: '',
        password: ''
      },
      registerForm: {
        username: '',
        password: '',
        rePassword: '',
        name: ''
      },
      rulesLogin: {
        username: {required: true, message: '请输入用户名', trigger: 'blur'},
        password: { required: true, message: '请输入密码', trigger: 'blur' }
      },
      rulesRegister: {
        username: [{validator: validateUsername, trigger: 'blur'}],
        password: [{ validator: validatePass, trigger: 'blur' }],
        rePassword: [{ validator: validatePass2, trigger: 'blur' }],
        name: { required: true, message: '请输入姓名', trigger: 'blur' }
      },
      loginOrRegister: 'login'
    }
  },
  methods: {
    // 登录
    toLogin (formRules) {
      this.$refs[formRules].validate((valid) => {
        if (valid) {
          this.$request.postLogin(this.loginForm).then((res, err) => {
            if (res.retcode === 200) {
              // console.log(res)
              setToken(res.token)
              // 存储token和userid
              this.$store.dispatch('user/handleToken', {token: res.token, userId: res.userId})
              // 获取用户信息，显示头像
              this.$store.dispatch('user/handleUserInfo')
              this.$message({
                message: '登录成功',
                type: 'success'
              })
              this.$emit('changeLoginPanel', false)
            } else {
              this.$message({
                message: res.msg,
                type: 'error'
              })
            }
          })
        } else {
          return false
        }
      })
    },
    // 切换登录注册
    changeLogin (panel, reuls) {
      this.resetForm(reuls)
      this.loginOrRegister = panel
    },
    // 关闭登录注册 面板
    closePanel () {
      this.$emit('changeLoginPanel', false)
      this.loginOrRegister = 'login'
    },
    // 注册
    toRegister (formRules) {
      this.$refs[formRules].validate((valid) => {
        if (valid) {
          this.$request.postRegister(this.registerForm).then(res => {
            console.log('zhuce')
            if (res.retcode === 200) {
              // 注册成功
              this.$message({
                type: 'success',
                message: res.msg
              })
              // 去登录
              this.loginOrRegister = 'login'
            } else {
              // 注册失败/ 用户已存在
              this.$message({
                type: 'info',
                message: res.msg
              })
            }
          })
        } else {
          return false
        }
      })
    },
    resetForm (formName) {
      this.$refs[formName].resetFields()
    }
  }
}
</script>

<style lang="stylus" scoped>
  .container
    background: rgba(0,0,0,0.3);
    height 100%
    position: absolute;
    top: 0;
    bottom: 0;
    right: 0;
    left: 0;

  .login-content
    background-color #ffffff
    width 300px
    padding 20px 45px;
    border-radius 4px
    margin 0 auto
    margin-top 15vh
    -webkit-box-shadow 0 2px 12px 0 rgba(0,0,0,.1)
    box-shadow 0 2px 12px 0 rgba(0,0,0,.1)
    position: relative;
    .login-btn {
      text-align center

      .el-button {
        width 47%
      }
    }
    .close-icon {
      position: absolute;
      right 20px
      cursor pointer
    }
  .title
    text-align center

  .input-item
    margin 0 20px 15px 20px

  .btnControl
    display flex
    justify-content center

  .ahref
    margin-left 15px

  @media screen and (max-width: 600px) {
    .login-content{
      width 88%
      min-width 300px
      box-sizing border-box
      padding 20px 45px;
    }
  }
</style>
