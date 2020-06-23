// pages/history/history.js
let store=require("../../utils/store")

Page({

  /**
   * 页面的初始数据
   */
  data: {
    Uid:store.getItem("userId"),
    records:[],
  },

  bindViewTap: function (e) {
    console.log(e)
    wx.navigateTo({
      url: '../detail/detail?movieId='+e.currentTarget.dataset.id,
      // success: function (res) {
      //   res.eventChannel.emit('acceptDataFromOpenerPage', { id: e.currentTarget.dataset.id })
      // }
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that=this
    wx.request({
      url: 'http://localhost:8080/demo/record/getRecordByUid',
      method: 'GET',
      data:{
        // userId:this.data.Uid
        userId:1
      },
      header:{
        "content-type": "application/json",
      },
      success: res=>{
        if (res.data.success) {
          console.log(res.data)
          this.setData({
            records:res.data.content
          })
          
          console.log(that.data.records)
        }
        else{
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})