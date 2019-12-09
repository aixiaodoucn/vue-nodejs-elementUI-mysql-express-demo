import Api from '@/api'

const pubStore = {
  namespaced: true,
  state: {
    fList: [],
    bList: []
  },
  mutations: {
    setfList (state, fList) {
      state.fList = fList
    },
    setbList (state, bList) {
      state.bList = bList
    }
  },
  actions: {
    handleFriendLink ({commit}) {
      return new Promise((resolve, reject) => {
        // 获取工具列表
        Api.postFriendLink().then(res => {
          if (res.retcode === 200) {
            commit('setfList', res.fList)
            commit('setbList', res.bList)
          }
        })
      })
    }
  }
}

export default pubStore
