// pages/profile/profile.js
import{
  baseURL
}from '../../api/config'
let store=require("../../utils/store")

Page({

  /**
   * 页面的初始数据
   */
  data: {
    userId:store.getItem("userId"),
    wxLogin: false,
    isclose: true,
    ava: store.getItem("userAva"),
    nick: store.getItem("userNick"),
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function () {
  },

  //获取openId

  getSession(){
    

  },

 getUserInfo(e){
  wx.login({
    success:res=>{
        wx.request({
          url:baseURL+'/user/login',
          method: 'POST',
          data:{
            code:res.code,
            userName:'',
            userImg:''
          },
          success:res=>{
          console.log(res.data.content.id)
          store.setItem("userId", res.data.content.id);
          store.setItem("openId",res.data.content.openId)
          }
      })
  }
})

  let userInfo=e.detail.userInfo;
  this.setData({
     isclose:true
   })
   store.setItem("userInfo",userInfo)
   wx.request({
     url:baseURL+'/user/updateUserInfo',
     method:'GET',
     data:{
        id:store.getItem("userId"),
        userName:userInfo.nickName,
        userImg:userInfo.avatarUrl,
      },
      success:res=>{
       this.setData({
         ava:userInfo.avatarUrl,
         nick:userInfo.nickName,
         userId:store.getItem("userId")
       })
       store.setItem("userAva",userInfo.avatarUrl)
       store.setItem("userNick",userInfo.nickName)
       store.setItem("userInfo",userInfo)
       console.log(userInfo)
      }
    })
  },
   
  
  goLogin() {
    this.setData({
      isclose: false
    })
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  },
  cancelLogin() {
    this.setData({
      isclose: true
    })
  }
})