// eslint-disable-next-line no-unused-vars
import { post, get } from '@/utils/http'
export default {
  /**
   * 登录 api
   * @param params username, password
   * @returns {*}
   */
  postLogin (params) {
    return post('/login/userLogin', params)
  },
  /**
   * 注册
   * @param params username password rePassword name
   * @returns {*}
   */
  postRegister (params) {
    return post('/login/userRegister', params)
  },
  /**
   * 用户列表
   * @param params
   * @returns {*}
   */
  getUserList (params) {
    return post('/users/user_list', params)
  },
  getUserInfo (params) {
    return post('/users/user_info', params)
  },
  postToolList (params) {
    return post('/tools/tools_list', params)
  },
  postFriendLink (params) {
    return post('/publicRouter/friend_link', params)
  }
}
