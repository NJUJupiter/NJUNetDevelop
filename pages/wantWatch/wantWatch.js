// pages/wantWatch/wantWatch.js
let store=require("../../utils/store")
Page({

  /**
   * 页面的初始数据
   */
  data: {
    userId:store.getItem("userId"),
    start: 0,
    list: [],
    showLoading: true,
    showMore: true
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({
      showLoading: false,
      showMore: true,
      list:[
        {
        movieName: "奇迹男孩 Wonder",
        imgUrl: "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg",
        score: "6",
        director:"zzx",
        actors:"wr/zzx/67",
        likes:"100"
      },
      {
        movieName: "奇迹男孩 Wonder",
        imgUrl: "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg",
        score: "8.6",
        director:"zzx",
        actors:"wr/zzx/67",
        likes:"100"
      },
      ]
    })
    console.log(this.data.list)
    获取电影
    wx.request({
      url: 'http://localhost:8080/demo/expect/getExpectMovieByUserId',
      method: "GET",
      data:{
        // userId:this.data.userId
        userId:3
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res)
        if (res.data.success) {
          this.setData({
            list:res.data.content,
            showLoading: false,
            showMore: true,
          })
          console.log(this.data.list)
        } else {
          wx.showToast({
            title: '加载出错',
          })
          this.setData({
            showMore: false
          })
        }
      }
    })
  },

    handleScrollToLower(e) {
      //如果没有更多的数据就不再加载
      if (!this.data.showMore) {
        return;
      }
      this.loadData(this.data.start);
    },

    handleRedirect(event) {
      var id = event.currentTarget.dataset.movieid;
      console.log(id)
      wx.navigateTo({
      url: '../detail/detail?movieId=' + id
    })
    },
    handleWachted(e){
      console.log("点击了看过按钮");
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