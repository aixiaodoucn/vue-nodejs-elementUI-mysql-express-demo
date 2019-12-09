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
      </el-table>
      <div class="pagination-block">
        <span class="info">显示第 {{beginCount}} 到第 {{endCount}} 条记录, 总共 {{totalCount}} 条记录</span>
        <el-pagination
          v-show="totalCount > pageSize"
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
  </div>
</template>

<script>
import {mapState} from 'vuex'
export default {
  name: 'home',
  data () {
    return {
      usernameVal: '',
      nameVal: ''
    }
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
      this.$store.dispatch('user/handlePageSize', val)
      this.$store.dispatch('user/handleUserList', {
        username: this.usernameVal,
        name: this.nameVal,
        pageSize: this.pageSize,
        currentPage: this.currentPage
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
    }
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
