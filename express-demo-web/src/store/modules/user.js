import Api from '@/api'
import {removeToken} from '@/utils/auth'
import storage from '../../utils/storage'
import * as types from '../mutaion-types'
import {getToken} from '../../utils/auth'
const user = {
  namespaced: true,
  state: {
    pageSize: 10,
    currentPage: 1,
    totalCount: 0,
    token: getToken(),
    userId: storage.get('userId'),
    userList: [],
    isLogin: false,
    userInfo: {}
  },
  mutations: {
    [types.SET_TOKEN]: (state, {token, userId}) => {
      state.token = token
      state.userId = userId
      storage.set('userId', userId)
    },
    setUserList (state, {userList, totalCount}) {
      state.userList = userList
      state.totalCount = totalCount
    },
    setUserInfo (state, userInfo) {
      state.userInfo = userInfo
    },
    setPageSize (state, pageSize) {
      state.pageSize = pageSize
    },
    setCurrentPage (state, currentPage) {
      state.currentPage = currentPage
    },
    setIsLogin (state, isLogin) {
      state.isLogin = isLogin
    }
  },
  actions: {
    handlePageSize ({commit}, pageSize) {
      commit('setPageSize', pageSize)
    },
    handleCurrentPage ({commit}, currentPage) {
      commit('setCurrentPage', currentPage)
    },
    handleToken ({commit}, {token, userId}) {
      commit(types.SET_TOKEN, {token, userId})
    },
    logout ({ commit }, state) {
      return new Promise((resolve, reject) => {
        commit('SET_TOKEN', '')
        removeToken()
        resolve()
      })
    },
    // 所有用户列表
    handleUserList ({commit}, {username = '', name = '', currentPage = 1, pageSize = 10}) {
      Api.getUserList({username, name, pageNo: currentPage, pageSize}).then(res => {
        if (res.retcode === 200) commit('setUserList', {userList: res.userList, totalCount: res.totalCount})
      })
    },
    // 该登录用户的基本信息
    handleUserInfo ({commit, state}) {
      return new Promise((resolve, reject) => {
        Api.getUserInfo({userId: state.userId}).then(result => {
          if (result.retcode === 200) {
            commit('setUserInfo', result.userInfo)
            commit('setIsLogin', true)
          } else {
            commit('setIsLogin', false)
          }
          resolve(result)
        })
      })
    }
  }
}

export default user
