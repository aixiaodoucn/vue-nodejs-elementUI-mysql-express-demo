import {Message} from 'element-ui'
// import {rsaEncryptWithString} from './encrypt'
import axios from 'axios'

export const notify = function ({
  type = 'success',
  message = '',
  duration = 1500,
  showClose = false
}) {
  Message({
    type,
    message,
    duration,
    showClose
  })
}

export const closeNotify = function () {
  Message.close()
}

// export function debounce(func, wait = 1000, immediate = true) {
//   console.log('debounce')
//   let timeout
//   let result
//   return function(...args) {
//     const context = this
//     if (timeout) window.clearTimeout(timeout)
//     if (immediate) {
//       let callNow = !timeout
//       timeout = setTimeout(() => {
//         timeout = false
//       }, wait)
//       if (callNow) result = func.apply(context, args)
//     } else {
//       timeout = setTimeout(() => {
//         func.apply(context, args)
//       }, wait)
//     }
//     return result
//   }
// }

// 防抖函数
export function debounce (func, wait, immediate) {
  let timeout, args, context, timestamp, result

  const later = function () {
    // 据上一次触发时间间隔
    const last = +new Date() - timestamp

    // 上次被包装函数被调用时间间隔 last 小于设定时间间隔 wait
    if (last < wait && last > 0) {
      timeout = setTimeout(later, wait - last)
    } else {
      timeout = null
      // 如果设定为immediate===true，因为开始边界已经调用过了此处无需调用
      if (!immediate) {
        result = func.apply(context, args)
        if (!timeout) context = args = null
      }
    }
  }

  return function (...args) {
    context = this
    timestamp = +new Date()
    const callNow = immediate && !timeout
    // 如果延时不存在，重新设定延时
    if (!timeout) timeout = setTimeout(later, wait)
    if (callNow) {
      result = func.apply(context, args)
      context = args = null
    }

    return result
  }
}

// 节流函数
export function throttle (func, wait, options) {
  var timeout, context, args
  var previous = 0
  if (!options) options = {}

  var later = function () {
    previous = options.leading === false ? 0 : new Date().getTime()
    timeout = null
    func.apply(context, args)
    if (!timeout) context = args = null
  }

  var throttled = function () {
    var now = new Date().getTime()
    if (!previous && options.leading === false) previous = now
    var remaining = wait - (now - previous)
    context = this
    args = arguments
    if (remaining <= 0 || remaining > wait) {
      if (timeout) {
        clearTimeout(timeout)
        timeout = null
      }
      previous = now
      func.apply(context, args)
      if (!timeout) context = args = null
    } else if (!timeout && options.trailing !== false) {
      timeout = setTimeout(later, remaining)
    }
  }

  throttled.cancel = function () {
    clearTimeout(timeout)
    previous = 0
    timeout = null
  }

  return throttled
}

export const chartsDataToArray = (arr, xAxisName, yAxisName) => {
  let xAxisData = []
  let seriesData = []
  // 正常遍历
  // let len = arr.length
  // for (let i = 0; i < len; i++) {
  //   xAxisData.push(arr[i][xAxisName])
  //   seriesData.push(Number(arr[i][yAxisName]))
  // }

  // for in 遍历
  // for (let i in arr) {
  //   xAxisData.push(arr[i][xAxisName])
  //   seriesData.push(Number(arr[i][yAxisName]))
  // }

  // for of 遍历
  for (let i of arr) {
    // i[xAxisName] 中的xAxisName只能是字符串
    xAxisData.push(i[xAxisName])
    seriesData.push(Number(i[yAxisName]))
  }
  return {xAxisData, seriesData}
}

// 数组根据对象的某一项进行排序
export const ObjSortByProp = (prop) => {
  return function (obj1, obj2) {
    let val1 = obj1[prop]
    let val2 = obj2[prop]
    if (val1 < val2) {
      return -1
    } else if (val1 > val2) {
      return 1
    } else {
      return 0
    }
  }
}

export const deepClone = (obj) => {
  return JSON.parse(JSON.stringify(obj))
}

// 获取用户IP地址
// export const getClientIp = () => returnCitySN['cip']
export const getClientIp = () => '61.236.179.253'

// 随机产生设备号
export const getDeviceId = (deviceID) => {
  let dev = localStorage.getItem(deviceID)
  if (dev) {
    return dev
  } else {
    let Num = ''
    for (let i = 0; i < 10; i++) {
      Num += Math.floor(Math.random() * 10)
    }
    localStorage.setItem(deviceID, Num)
    let dev = localStorage.getItem(deviceID)
    return dev
  }
}

// 时间戳转xxxx-xx-xx格式的日期
export const timestampToDate = (timestamp, type = false) => {
  let fullTime = new Date(timestamp)
  let year = fullTime.getFullYear()
  let month = (fullTime.getMonth() + 1) < 10 ? '0' + (fullTime.getMonth() + 1) : (fullTime.getMonth() + 1)
  let day = (fullTime.getDate()) < 10 ? '0' + (fullTime.getDate()) : (fullTime.getDate())
  let hours = (fullTime.getHours()) < 10 ? '0' + (fullTime.getHours()) : (fullTime.getHours())
  let minutes = (fullTime.getMinutes()) < 10 ? '0' + (fullTime.getMinutes()) : (fullTime.getMinutes())
  let seconds = (fullTime.getSeconds()) < 10 ? '0' + (fullTime.getSeconds()) : (fullTime.getSeconds())
  return type === false ? `${year}-${month}-${day}` : `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`
}

// 下载Excel文件方法
export const downLoadFile = (url, data = {}) => {
  let jsonParams = JSON.stringify(data)
  if (process.env.EVN_CONFIG.trim() !== 'dev' || process.env.ENV_EN.trim() !== 'false') {
    // jsonParams = rsaEncryptWithString(jsonParams)
  }
  jsonParams = encodeURIComponent(jsonParams)
  axios({
    method: 'post',
    url: `${process.env.EVN_AR}/${url}`,
    data: `req=${jsonParams}`,
    responseType: 'arraybuffer'
  })
    .then(res => {
      const blob = new Blob([res.data], {type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8'})
      const downloadElement = document.createElement('a')
      let href = window.URL.createObjectURL(blob)
      downloadElement.href = href
      downloadElement.download = res.headers['content-disposition'].split('=')[1]
      document.body.appendChild(downloadElement)
      downloadElement.click()
      document.body.removeChild(downloadElement) // 下载完成移除元素
      window.URL.revokeObjectURL(href) // 释放掉blob对象
    })

  // axios.get(url, {
  //   responseType: 'arraybuffer',
  //   params: jsonParams
  // })
  //   .then(res => {
  //     console.log(res.data)
  //     console.log(Object.keys(res.data))
  //     let len = Object.keys(res.data).length
  //     const blob = new Blob([res.data], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8' })
  //     const downloadElement = document.createElement('a')
  //     let href = window.URL.createObjectURL(blob)
  //     downloadElement.href = href
  //     downloadElement.download = res.headers['content-disposition'].split('=')[1]
  //     document.body.appendChild(downloadElement)
  //     downloadElement.click()
  //     document.body.removeChild(downloadElement) // 下载完成移除元素
  //     window.URL.revokeObjectURL(href) // 释放掉blob对象
  //   })
}

// 身份证月日替换****
export const peopleIdReplace = (num, type = '*') => {
  let format = new Array(4).fill(type).join('')
  return num.replace(/^(\d{10})(\d{4})(\d{3}[xX0-9])$/, `$1${format}$3`)
}
