// pages/search/search.js
let store=require("../../utils/store")
Page({
  
  /**
   * 页面的初始数据
   */
  data: {
    inputVal:"",
    list:[]
  },
  bindKeyInput:function(e){
    this.setData({
      inputVal: e.detail.value
    })
  },
  search: function() {
    var that = this;
    console.log(this.data.inputVal)
    if(that.data.inputVal.trim() == "") {
       wx.showModal({
           title: "小提示",
           content: "请输入查询关键字！",
           showCancel: false,
           fail: function() {
            that.setData({
                inputVal: "请输入查询关键字！",
            });
           }
       })
        return;
    }
    wx.showToast({
        "title": "玩命加载中",
        "icon": "loading",
        "duration":　10000
    });
    console.log("aaaa"+that.data.inputVal);
    wx.request({
      url: 'http://localhost:8080/demo/movie/search',
      method: "GET",
      data:{
        key:this.data.inputVal
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res)
        if (res.data.success) {
          this.setData({
            list:res.data.content
          })
          console.log(this.data.list)
          wx.hideToast();
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
    
},
  // 使文本框进入可编辑状态
  showInput: function () {
    this.setData({
      inputShowed: true   //设置文本框可以输入内容
    });
  },
  // 取消搜索
  hideInput: function () {

    wx.switchTab({
    //跳转，返回主页面路径
      url: '../index/index'  
    });
    console.log("quxiao");
  },
  //跳转至详情
  handleRedirect(event) {
    var id = event.currentTarget.dataset.movieid;
    wx.navigateTo({
      url: '../detail/detail?movieId=' + id
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

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