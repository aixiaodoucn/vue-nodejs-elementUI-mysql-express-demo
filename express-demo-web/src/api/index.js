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
  postModifyUserInfo (params) {
    return post('/users/modify_Info', params)
  },
  postDelUser (params) {
    return post('/users/del_user', params)
  },
  /**
   * 工具
   * @param params
   * @returns {*}
   */
  postToolList (params) {
    return post('/tools/tools_list', params)
  },
  postDownCount (params) {
    return post('/tools/down_count', params)
  },
  postFriendLink (params) {
    return post('/publicRouter/friend_link', params)
  }
}
