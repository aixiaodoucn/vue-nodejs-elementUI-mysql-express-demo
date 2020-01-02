import vue from 'vue'
import vuex from 'vuex'

import getters from './getters'
import user from './modules/user'
import toolDown from './modules/toolDown'
import pubStore from './modules/pubStore'
import userManage from './modules/userManage'

vue.use(vuex)

const store = new vuex.Store({
  modules: {
    user,
    toolDown,
    pubStore,
    userManage
  },
  getters,
  strict: false
})

export default store
