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
        //console.log(res)
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
        //console.log(res)
        if (res.data.success) {
          this.setData({
            listRM:res.data.content
          })
          //console.log(this.data.listRM)
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
        //console.log(res)
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
    listBD:[],
    indicatorDots: true,
    vertical: false,
    autoplay: true,
    interval: 2000,
    duration: 500,
    imgSrc:[
      "/images/ad4.jpg",
      "/images/ad2.jpg",
      "/images/ad1.jpg",
    ]
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

  /**
   * 点击“更多”按钮，携带类别信息到“更多”页面
   */
  catchMore: function (event) {
    //获得区块的标题
    var title = event.currentTarget.dataset.title
    console.log(title)
    //跳转到“更多页”，将区块标题通过category携带过去
    wx.navigateTo({
      url: '../more/more?category=' + title
    })
  },
  catchTapMovie(event) {
    var id = event.currentTarget.dataset.movieid;
    wx.navigateTo({
      url: '../detail/detail?movieId=' + id
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
  search: function () {
    wx.navigateTo({
      url: '/pages/search/search'
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
