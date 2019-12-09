// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import vuex from 'vuex'
import App from './App'
import router from './router'
import axios from 'axios'
import ElementUI from 'element-ui'
// import 'element-ui/lib/theme-chalk/index.css'
import './assets/theme/index.css'
import './assets/css/pbu.css'
import store from './store'

import Api from '@/api'
import {getToken} from './utils/auth'

Vue.prototype.$request = Api
Vue.prototype.$ajax = axios
Vue.use(ElementUI, vuex)
Vue.config.productionTip = false

// 判断路由登录状态
router.beforeEach((to, from, next) => {
  if (to.meta.requireLogin) {
    //  页面需要登录后访问
    if (getToken()) {
      next() // 表示已经登录
    } else {
      next({
        name: 'public'
      })
    }
  } else {
    next()
  }
})

// 全局格式化时间过滤器
Vue.filter('formatTime', function (value) {
  if (value) {
    let date = new Date(value * 1000)
    let year = date.getFullYear()
    let month = date.getMonth() + 1 < 10 ? `0${date.getMonth() + 1}` : date.getMonth() + 1
    let day = date.getDate() < 10 ? `0${date.getDate()}` : date.getDate()
    let hour = date.getHours() < 10 ? `0${date.getHours()}` : date.getHours()
    let minute = date.getMinutes() < 10 ? `0${date.getMinutes()}` : date.getMinutes()
    let second = date.getSeconds() < 10 ? `0${date.getSeconds()}` : date.getSeconds()
    return `${year}-${month}-${day} ${hour}:${minute}:${second}`
  } else {
    return ''
  }
})

// eslint-disable-next-line no-new
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
})
