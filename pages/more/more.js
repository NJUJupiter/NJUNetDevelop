let store=require("../../utils/store")

// pages/more/more.js

Page({

  /**
   * 页面的初始数据
   */
  data: {
    navigationBarTitle: "",//页面标题
    movies:[],
    allMovies: {
      "subjects": [{
        title: "奇迹男孩 Wonder",
        imgUrl: "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg",
        score: "6"
      },
      {
        title: "奇迹男孩 Wonder",
        imgUrl: "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg",
        score: "8.6"
      },
      {
        title: "奇迹男孩 Wonder",
        imgUrl: "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg",
        score: "8.6"
      },
      {
        title: "奇迹男孩 Wonder",
        imgUrl: "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg",
        score: "8.6"
      },
      {
        title: "奇迹男孩 Wonder",
        imgUrl: "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg",
        score: "8.6"
      }
      ]
    },//全部电影信息
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var category = options.category;
    var typer=1;
    console.log(category);
  
    //根据区块标题，设置接口为对应的请求网址
    switch (category) {
      case "正在热映":
        typer=1;
        break;
      case "热门电影":
        typer=2;
        break;
      case "电影榜单":
        typer=3;
        break;
    }
    //将区块标题存储起来，在onReady()中设为导航栏标题
    this.data.navigationBarTitle = category;
    console.log(typer)
    wx.request({
      url: 'http://localhost:8080/demo/movie/type',
      method: "GET",
      data:{
        type:typer
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res)
        if (res.data.success) {
          this.setData({
            movies:res.data.content
          })
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
  },
  //用不到
  bindViewTap: function (e) {
    wx.navigateTo({
      url: '../detail/detail',
      success: function (res) {
        console.log(store.getItem("userId"))
        res.eventChannel.emit('acceptDataFromOpenerPage', { id: e.currentTarget.dataset.id })
      }
    })
  },
  catchTapMovie(event) {
    //console.log("here")
    var id = event.currentTarget.dataset.movieid;
    wx.navigateTo({
      url: '../detail/detail?movieId=' + id
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