
let store=require("../../utils/store")

Page({
  data: {
    userId:"",
    userName:"",
    userImg:"",
    toView: 'green',
    listXK:[],
    listJL:[],
    numXK:"",
    numJL:"",
  },

  onLoad:function(options){
    var that=this
    that.setData({
      userId: options.id
    })
    //加载user信息
    wx.request({
      url: 'http://localhost:8080/demo/user/getUser',
      method:"GET",
      data:{
        userId:this.data.userId
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res.data.content)
        if (res.data.success) {
          this.setData({
            userName:res.data.content.userName,
            userImg:res.data.content.userImg
          })
          console.log(this.data)
          wx.setNavigationBarTitle({
            title: this.data.userName + " 的主页",
          })
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
    
    // 获取电影
    wx.request({
      url: 'http://localhost:8080/demo/expect/getExpectMovieByUserId',
      method: "GET",
      data:{
        userId:this.data.userId
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res)
        if (res.data.success) {
          this.setData({
            listXK:res.data.content,
            numXK:res.data.content.length
          })
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
    // wx.request({
    //   url: 'http://localhost:8080/demo/record/getRecordByUid',
    //   method: "GET",
    //   data:{
    //     userId:this.data.userId
    //   },
    //   header: {
    //     "content-type": "application/x-www-form-urlencoded;charset=utf-8",
    //     //token: app.globalData.token
    //   },
    //   success: res => {
    //     console.log(res)
    //     if (res.data.success) {
    //       var temp=[];
    //       for (var i=0;i<data.content.length;i++){//data.content可能不对
    //         temp.push(data.content[i].movie)
    //       }
    //       this.setData({
    //         listJL:temp,
    //         numJL:temp.length
    //       })
    //       console.log(this.data.listRM)
    //     } else {
    //       wx.showToast({
    //         title: '加载出错',
    //       })
    //     }
    //   }
    // })
    
  },
  onLaunch: function () {
  },
  onShareAppMessage() {
    return {
      title: 'scroll-view',
      path: 'pages/index/index'
    }
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
