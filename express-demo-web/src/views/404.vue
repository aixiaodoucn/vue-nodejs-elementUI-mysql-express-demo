<template>
  <div class="cont">
    <el-link :underline="false"  type="primary"  href="/">
      <img src="../assets/img/404.png" alt="404" title="返回首页">
      <div><i class="el-icon-arrow-left"/>返回首页</div>
    </el-link>
  </div>
</template>

<script>
export default {
  name: 'err404'
}
</script>

<style lang="stylus" scoped>
.cont
  padding 15px
  text-align center
</style>
