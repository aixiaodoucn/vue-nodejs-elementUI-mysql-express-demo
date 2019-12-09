import axios from 'axios'
import store from '@/store'
import {getToken} from '@/utils/auth'
import * as tools from './tools'
// eslint-disable-next-line import/no-duplicates
// import {getClientIp, getDeviceId} from './tools'
// import {rsaEncryptWithString} from './encrypt'

axios.defaults.baseURL = process.env.EVN_AR
axios.defaults.timeout = 15000

// request 拦截器
axios.interceptors.request.use(
  config => {
    if (config.responseType === 'arraybuffer') {
      // config.headers['clientType'] = 'web'
      // config.headers['clientIp'] = getClientIp()
      config.headers['sessionToken'] = getToken()
      // config.headers['deviceId'] = getDeviceId('deviceId')
    } else {
      config.headers['Content-Type'] = 'application/x-www-form-urlencoded;charset=UTF-8'
      // config.headers['clientType'] = 'web'
      // config.headers['clientIp'] = getClientIp()
      config.headers['sessionToken'] = getToken()
      // config.headers['module'] = 2
      // config.headers['deviceId'] = getDeviceId('deviceId')
    }
    // console.log(config)
    return config
  },
  error => {
    return Promise.reject(error)
  }
)

// respone 拦截器
axios.interceptors.response.use(
  response => {
    if (response.config.responseType === 'arraybuffer') {
      return Promise.resolve(response)
    } else {
      // console.log(response)
      let res = response.data
      if (response.status === 200) {
        switch (res.retcode) {
          case 1001: // 未登录时跳转到登录页
            store.dispatch('user/logout')
              .then(res => {
                window.location.reload()
              })
            break
          default:
            return Promise.resolve(res)
        }
      } else {
        return Promise.reject(res)
      }
    }
  },
  error => {
    tools.notify({
      type: 'error',
      message: error.message,
      duration: 5000
    })
    return Promise.reject(error)
  }
)

export function post (url, params) {
  let jsonParams = JSON.stringify(params)
  return new Promise((resolve, reject) => {
    axios.post(url, 'req=' + jsonParams)
      .then(res => {
        // console.log(res)
        resolve(res)
      })
      .catch(err => {
        reject(err)
      })
  })
  // let jsonParams = JSON.stringify(params)
  // if (checkEncrypt()) {
  //   jsonParams = rsaEncryptWithString(jsonParams)
  // }
  // jsonParams = encodeURIComponent(jsonParams)
  // return new Promise((resolve, reject) => {
  //   axios.post(url, 'req=' + jsonParams)
  //     .then(res => {
  //       // console.log(res)
  //       resolve(res)
  //     })
  //     .catch(err => {
  //       reject(err)
  //     })
  // })
}

export function get (url, params) {
  // let jsonParams = JSON.stringify(params)
  // jsonParams = encodeURIComponent(jsonParams)
  if (checkEncrypt()) {
    // params = rsaEncryptWithString(params)
  }
  return new Promise((resolve, reject) => {
    axios.get(url, {params: params})
      .then(res => {
        resolve(res)
      })
      .catch(err => {
        reject(err)
      })
  })
}

function checkEncrypt () {
  // return process.env.EVN_CONFIG.trim() !== 'dev' || process.env.ENV_EN.trim() !== 'false'
}
