import Api from '@/api'

const toolDown = {
  namespaced: true,
  state: {
    typeList: [
      {tName: '推荐工具', icon: 'el-icon-data-line', toolList: []},
      {tName: '开发工具', icon: 'el-icon-setting', toolList: []},
      {tName: '网页工具', icon: 'el-icon-monitor', toolList: []},
      {tName: '下载工具', icon: 'el-icon-bottom-left', toolList: []},
      {tName: '编辑工具', icon: 'el-icon-edit', toolList: []},
      {tName: '其它工具', icon: 'el-icon-bicycle', toolList: []}
    ],
    downUrl: 'http://www.aixiaodou.cn/downFiles/'
  },
  mutations: {
    setToolList (state, arr) {
      arr.forEach((t, index) => {
        state.typeList[index].toolList = t
      })
    }
  },
  actions: {
    handleToolList ({commit}) {
      return new Promise((resolve, reject) => {
        // 获取工具列表
        Api.postToolList().then(res => {
          if (res.retcode === 200) {
            let [list0, list1, list2, list3, list4, list5] = [[], [], [], [], [], []]
            for (let i in res.toolList) {
              if (res.toolList[i].tool_type === '0') { list0.push(res.toolList[i]); continue }
              if (res.toolList[i].tool_type === '1') { list1.push(res.toolList[i]); continue }
              if (res.toolList[i].tool_type === '2') { list2.push(res.toolList[i]); continue }
              if (res.toolList[i].tool_type === '3') { list3.push(res.toolList[i]); continue }
              if (res.toolList[i].tool_type === '4') { list4.push(res.toolList[i]); continue }
              if (res.toolList[i].tool_type === '5') { list5.push(res.toolList[i]); continue }
            }
            commit('setToolList', [list0, list1, list2, list3, list4, list5])
          }
        })
      })
    }
  }
}

export default toolDown
