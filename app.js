//app.js
import{
  baseURL
}from './api/config'

let store=require("./utils/store")
App({
  onLaunch: function () {
    
    // 展示本地存储能力
    // wx.login({
    //   success: res => {
    //     // 发送 res.code 到后台换取 openId, sessionKey, unionId
    //     console.log(res.code)
    //     if (res.code) {
    //       wx.request({
    //         url: 'http://localhost:8080/demo/user/login',
    //         method: 'POST',
    //         data: {
    //           code: res.code,
    //           userName:'',
    //           userImg:''
    //         },
    //         success(res) {
    //           //console.log('用户登录成功！id=' + res.data.session_key);
    //           console.log(res)
    //           wx.setStorageSync("userid", res.data.userid);//将用户id保存到缓存中
    //           wx.setStorageSync("session_key", res.data.session_key);//将session_key保存到缓存中
    //         }
    //       })
    //     } else {
    //       console.log('获取用户登录态失败！' + res.errMsg)
    //     }
    // }
    // })
  }
})