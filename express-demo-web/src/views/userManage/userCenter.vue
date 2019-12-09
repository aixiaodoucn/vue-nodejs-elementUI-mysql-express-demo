<template>
  <div>
    <el-card>
      <div slot="header" class="clearfix">
        <span>用户中心</span>
      </div>
      <el-form :label-position="'right'" label-width="100px">
        <el-form-item label="用户名：">
          <span>{{userInfo.username}}</span>
        </el-form-item>
        <el-form-item label="姓名：">
          <span>{{userInfo.name}}</span>
        </el-form-item>
        <el-form-item label="登录时间：">
          <span>{{userInfo.login_date | formatTime}}</span>
        </el-form-item>
      </el-form>
    </el-card>
  </div>
</template>

<script>
import {mapState} from 'vuex'
export default {
  name: 'userCenter',
  computed: {
    ...mapState('user', ['userInfo'])
  },
  mounted () {
  }
}
</script>

<style lang="stylus" scoped>
</style>
