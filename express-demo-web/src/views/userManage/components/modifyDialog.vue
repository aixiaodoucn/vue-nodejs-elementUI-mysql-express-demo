<template>
  <div class="pop-container">
    <div class="container">
      <div class="top">
        <h3>修改用户信息</h3>
        <i class="el-icon-close" @click="cancelPop"/>
      </div>
      <div class="main-contaioner">
        <el-form label-width="60px">
          <el-form-item label="用户名">
            <el-input v-model="username"/>
          </el-form-item>
          <el-form-item label="姓名">
            <el-input v-model="name"/>
          </el-form-item>
        </el-form>
        <div class="handle-btn">
          <el-button type="info" plain size="mini" @click="cancelPop">取消</el-button>
          <el-button type="primary" plain size="mini" @click="commitInfo">确定</el-button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {mapState} from 'vuex'
export default {
  name: 'modifyDialog',
  data () {
    return {
      name: '',
      username: ''
    }
  },
  computed: {
    ...mapState('userManage', ['userInfo']),
    ...mapState('user', ['pageSize', 'currentPage'])
  },
  methods: {
    cancelPop () {
      this.$emit('cancelPop')
    },
    commitInfo () {
      this.$request.postModifyUserInfo({id: this.userInfo.id, name: this.name, username: this.username}).then(res => {
        if (res.retcode === 200) {
          this.$message({
            type: 'success',
            message: res.msg
          })
          this.$store.dispatch('user/handleUserList', {pageSize: this.pageSize, currentPage: this.currentPage})
        } else if (res.retcode === 2001) {
          this.$message({
            type: 'error',
            message: res.msg
          })
        } else {
          this.$message({
            type: 'error',
            message: res.msg
          })
        }
      })
      // this.$store.dispatch('userManage/handleModifyUserInfo', {userId: this.userInfo.id, name: this.name, username: this.username})
      this.$emit('cancelPop')
    }
  },
  mounted () {
    this.name = this.userInfo.name
    this.username = this.userInfo.username
  },
  beforeDestroy () {
    this.$store.commit('userManage/setUserInfo', {})
  }
}
</script>

<style scoped>

</style>
