// import Api from '@/api'

const userManage = {
  namespaced: true,
  state: {
    userInfo: {}
  },
  mutations: {
    setUserInfo (state, userInfo) {
      state.userInfo = userInfo
    }
  },
  actions: {
  }
}

export default userManage
