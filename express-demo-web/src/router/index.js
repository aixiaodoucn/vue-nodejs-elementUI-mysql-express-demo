import Vue from 'vue'
import Router from 'vue-router'
import _import from '../utils/import'

const layout = _import('public/index')
Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '*',
      name: 'err404',
      component: _import('404'),
      hidden: true
    }, {
      path: '/',
      component: layout,
      children: [
        {
          path: '/',
          name: 'welcome',
          component: _import('public/welcome')
        }
      ]
    }, {
      path: '/toolsDown',
      component: layout,
      children: [
        {
          path: '/',
          name: 'toolsDown',
          component: _import('toolsDown/downTools')
        }
      ]
    }, {
      path: '/userManage',
      component: layout,
      children: [
        {
          path: '/',
          name: 'userManage',
          component: _import('userManage/index'),
          meta: {
            requireLogin: true
          }
        }
      ]
    }, {
      path: '/userCenter',
      component: layout,
      children: [
        {
          path: '/',
          name: 'userCenter',
          component: _import('userManage/userCenter'),
          meta: {
            requireLogin: true
          }
        }
      ]
    }
  ]
})
