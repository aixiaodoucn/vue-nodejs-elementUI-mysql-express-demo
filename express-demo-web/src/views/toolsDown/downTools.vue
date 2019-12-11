<template>
  <el-card>
    <div class="downTool">
<!--      工具类型-->
      <div v-for="t in typeList" :key="t.tName">
        <h3><i :class="t.icon"/>{{t.tName}}</h3>
<!--        工具详情-->
        <div class="starter-template" v-for="list in t.toolList" :key="list.tool_id">
          <label class="down-name"><i class="el-icon-coin"></i>{{list.tool_name}}</label>
          <span class="down-count">累计下载次数：{{list.down_count}}</span>
          <span class="span_down" v-if="list.tool_url_type === '0'" @click="downToolsFun(list)">下载
            <i :class="iconClass"/></span>
          <a class="span_down" v-if="list.tool_url_type === '1'" target="_blank" :href="list.tool_url">打开
            <i :class="iconClass"/></a>
          <div class="up-date">更新时间：{{list.up_date | formatTime}}</div>
          <p>描述：{{list.tool_describe}}</p>
        </div>
        <div class="hr-show"></div>
      </div>
    </div>
  </el-card>
</template>

<script>
import {mapState} from 'vuex'
export default {
  name: 'downTools',
  data () {
    return {
      iconClass: 'el-icon-paperclip'
    }
  },
  computed: {
    ...mapState('toolDown', ['typeList', 'downUrl'])
  },
  mounted () {
    this.$store.dispatch('toolDown/handleToolList')
  },
  methods: {
    downToolsFun (l) {
      console.log({tool_id: l.tool_id})
      this.$request.postDownCount({tool_id: l.tool_id}).then(res => {
        if (res.retcode === 200) {
          this.$store.dispatch('toolDown/handleToolList')
          window.open(this.downUrl + l.tool_url)
        }
      })
    }
  }
}
</script>

<style lang="stylus" scoped>
  .downTool{
    h3>i{
      color: #c261f5;
      margin-right 5px
    }
  }
  .starter-template {
    padding: 10px 50px
    label{
      font-size: 16px
      font-weight: 900
    }
    p{
      font-size 14px
      padding-left: 20px
    }
    .down-count{
      font-size: 12px;
      color: #9a9a9a;
    }
    .span_down{
      color: #c261f5;
      font-size 12px
      cursor pointer
    }
    .up-date{
      font-size: 12px
      color: #9a9a9a
      margin-top: 5px
    }
  }
  @media screen and (max-width: 800px) {
    .starter-template {
      padding: 5px 10px
      .down-name{
        display block
      }
    }
  }
  .hr-show {
    border-bottom: 1px solid #9a9a9a
    width: 100%
    padding-top: 10px
  }
</style>
