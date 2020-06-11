const order = ['demo1', 'demo2', 'demo3','demo4','demo5','demo6']
let store=require("../../utils/store")

Page({
  onLoad:function(options){
    // 获取电影
    wx.request({
      url: 'http://localhost:8080/demo/movie/type',
      method: "GET",
      data:{
        type:1
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res)
        if (res.data.success) {
          this.setData({
            listRY:res.data.content
          })
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
    wx.request({
      url: 'http://localhost:8080/demo/movie/type',
      method: "GET",
      data:{
        type:2
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res)
        if (res.data.success) {
          this.setData({
            listRM:res.data.content
          })
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
    wx.request({
      url: 'http://localhost:8080/demo/movie/type',
      method: "GET",
      data:{
        type:3
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res)
        if (res.data.success) {
          this.setData({
            listBD:res.data.content
          })
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
  },
  onLaunch: function () {
  },
  onShareAppMessage() {
    return {
      title: 'scroll-view',
      path: 'pages/index/index'
    }
  },

  data: {
    toView: 'green',
    listRY:[],
    listRM:[],
    listBD:[]
  },

  bindViewTap: function (e) {
    wx.navigateTo({
      url: '../detail/detail',
      success: function (res) {
        console.log(store.getItem("userId"))
        res.eventChannel.emit('acceptDataFromOpenerPage', { id: e.currentTarget.dataset.id })
      }
    })
  },

  upper(e) {
    console.log(e)
  },

  lower(e) {
    console.log(e)
  },

  scroll(e) {
    console.log(e)
  },

  scrollToTop() {
    this.setAction({
      scrollTop: 0
    })
  },

  tap() {
    for (let i = 0; i < order.length; ++i) {
      if (order[i] === this.data.toView) {
        this.setData({
          toView: order[i + 1],
          scrollTop: (i + 1) * 200
        })
        break
      }
    }
  },

  tapMove() {
    this.setData({
      scrollTop: this.data.scrollTop + 10
    })
  }
})
