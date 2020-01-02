<template>
  <div class="container">
    <el-row>
      <el-form :inline="true">
        <el-form-item>
          <el-input type="text" placeholder="用户名" v-model="usernameVal"/>
        </el-form-item>
        <el-form-item>
          <el-input type="text" placeholder="姓名" v-model="nameVal"/>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="toQuery">查询</el-button>
        </el-form-item>
      </el-form>
    </el-row>
    <el-card>
      <div slot="header">
        用户列表
      </div>
      <el-table :data="userList">
        <el-table-column
          type="index"
          label="序号"
          :index="indexMethod"
          width="55">
        </el-table-column>
        <el-table-column
          label="用户名"
          prop="username">
        </el-table-column>
        <el-table-column
          label="姓名"
          prop="name">
        </el-table-column>
        <el-table-column
          label="最近登录时间"
          prop="login_date">
          <template slot-scope="scope">
            {{scope.row.login_date | formatTime}}
          </template>
        </el-table-column>
        <el-table-column
          label="操作" align="center">
          <template slot-scope="scope">
            <el-button size="mini" type="primary" plain @click="modifyUser(scope.row)">编辑</el-button>
            <el-button size="mini" type="danger" plain @click="delUser(scope.row)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="pagination-block">
        <span class="info">显示第 {{beginCount}} 到第 {{endCount}} 条记录, 总共 {{totalCount}} 条记录</span>
        <el-pagination
          v-show="totalCount > pageSize || totalCount > 10"
          class="pag-right"
          @size-change="changePageSize"
          @current-change="changeCurrentPage"
          :current-page="currentPage"
          :page-sizes="[5, 10, 20, 30, 50, 100]"
          :page-size="pageSize"
          layout="sizes, prev, pager, next"
          :total="totalCount">
        </el-pagination>
      </div>
    </el-card>
    <modifyDialog v-if="modifyShow" @cancelPop="cancelPop"/>
  </div>
</template>

<script>
import {mapState} from 'vuex'
import modifyDialog from './components/modifyDialog'

export default {
  name: 'home',
  data () {
    return {
      usernameVal: '',
      nameVal: '',
      visible: false,
      modifyShow: false
    }
  },
  components: {
    modifyDialog
  },
  computed: {
    ...mapState('user', ['userList', 'pageSize', 'currentPage', 'totalCount']),
    beginCount () {
      return (this.currentPage - 1) * this.pageSize + 1
    },
    endCount () {
      let total = this.pageSize * this.currentPage
      if (this.totalCount < total || this.totalCount === total) {
        return this.totalCount
      } else {
        return total
      }
    }
  },
  mounted () {
    this.$store.dispatch('user/handleUserList', {
      currentPage: 1,
      pageSize: 10
    })
  },
  methods: {
    toQuery () {
      this.$store.dispatch('user/handleCurrentPage', 1)
      this.$store.dispatch('user/handleUserList', {
        username: this.usernameVal,
        name: this.nameVal,
        currentPage: 1,
        pageSize: this.pageSize
      })
    },
    changePageSize (val) {
      this.$store.dispatch('user/handleCurrentPage', 1)
      this.$store.dispatch('user/handlePageSize', val)
      this.$store.dispatch('user/handleUserList', {
        username: this.usernameVal,
        name: this.nameVal,
        pageSize: this.pageSize,
        currentPage: 1
      })
    },
    changeCurrentPage (val) {
      this.$store.dispatch('user/handleCurrentPage', val)
      this.$store.dispatch('user/handleUserList', {
        username: this.usernameVal,
        name: this.nameVal,
        pageSize: this.pageSize,
        currentPage: this.currentPage
      })
    },
    modifyUser (row) {
      this.$store.commit('userManage/setUserInfo', row)
      this.modifyShow = true
    },
    delUser (row) {
      this.$confirm('确定删除该用户?', '删除', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.$request.postDelUser({id: row.id}).then(result => {
          if (result.retcode === 200) {
            this.$message({
              type: 'success',
              message: result.msg
            })
            this.$store.dispatch('user/handleUserList', {pageSize: this.pageSize, currentPage: this.currentPage})
          } else if (result.retcode === 2001) {
            this.$message({
              type: 'error',
              message: result.msg
            })
          }
        })
      }).catch(() => {
      })
    },
    cancelPop () {
      this.modifyShow = false
    },
    indexMethod (index) {
      return index + 1 + (this.currentPage - 1) * this.pageSize
    }
  },
  beforeDestroy () {
    this.$store.dispatch('user/handleCurrentPage', 1)
    this.$store.dispatch('user/handlePageSize', 10)
  }
}
</script>

<style lang="stylus" scoped>
  .container{
    /*background-color #f5f5f5*/
    /*padding: 15px*/
  }
  .pagination-block{
    height 30px
    line-height 30px
    .info {
      color: #A1A6B1;
      font-size: 14px;
    }
    .pag-right {
      float: right;
    }
  }
</style>
