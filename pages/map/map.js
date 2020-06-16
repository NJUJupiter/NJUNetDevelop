let store=require("../../utils/store")

Page({
  data: {
    movieId:"",
    latitude: "",
    longitude: "",
    markers: [
    //   {
    //   id: 1,
    //   latitude: 34.58544,
    //   longitude: 105.72723,
    //   name: 'T.I.T 创意园',
    //   iconPath: '/images/location.png'
    // },
    // {
    //   id: 2,
    //   latitude: 34.571695,
    //   longitude: 105.72723,
    //   name: 'T.I.T 创意园',
    //   iconPath: '/images/location.png'
    // },
  ],
    
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;  
    var id =options.id
    console.log("AA "+id)
    that.data.movieId=id
    //获取当前位置
    wx.getLocation({
      type: 'wgs84',
      success: (res) => {
        var latitude = res.latitude
        var longitude = res.longitude
        that.setData({
          latitude:latitude,
          longitude:longitude,
          movieId:id
        })
      }
    })
    wx.request({
      url: 'http://localhost:8080/demo/expect/getExpectByMovieId',
      method: "GET",
      data:{
        movieId:that.data.movieId,
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        console.log(res)
        if (res.data.success) {
          that.setData({
            markers:res.data.content
          })
          console.log(that.data.markers)
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
  },
  onReady: function (e) {
    this.mapCtx = wx.createMapContext('myMap')
  },
  getCenterLocation: function () {
    this.mapCtx.getCenterLocation({
      success: function(res){
        console.log(res.longitude)
        console.log(res.latitude)
      }
    })
  },
  moveToLocation: function () {
    this.mapCtx.moveToLocation()
  },
  translateMarker: function() {
    this.mapCtx.translateMarker({
      markerId: 1,
      autoRotate: true,
      duration: 1000,
      destination: {
        latitude:23.10229,
        longitude:113.3345211,
      },
      animationEnd() {
        console.log('animation end')
      }
    })
  },
  includePoints: function() {
    this.mapCtx.includePoints({
      padding: [10],
      points: [{
        latitude:23.10229,
        longitude:113.3345211,
      }, {
        latitude:23.00229,
        longitude:113.3345211,
      }]
    })
  }
})
