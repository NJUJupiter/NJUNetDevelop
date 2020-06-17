let store=require("../../utils/store")

Page({
  data: {
    showModalStatus: false,
    showListStatus:false,
    movieId:"",
    latitude: "",
    longitude: "",
    userList:[],
    userInfo:{},
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
    this.setData({
      markers:[
        {id: 1, movieId: 2, userId: 3, userName: "我i67QAQ", userAvatar: "https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png",longitude:105.739203,latitude:34.571483},
        {id: 2, movieId: 2, userId: 4, userName: "RTW是个狠人", userAvatar: "https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png",longitude:105.727315,latitude:34.585687 }
      ],
      userList:[
        {userId: 3, userName: "我i67QAQ", userAvatar: "https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"},
        {userId: 4, userName: "RTW是个狠人", userAvatar: "https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"}
      ],
    })
    // wx.request({
    //   url: 'http://localhost:8080/demo/expect/getExpectByMovieId',
    //   method: "GET",
    //   data:{
    //     movieId:that.data.movieId,
    //   },
    //   header: {
    //     "content-type": "application/x-www-form-urlencoded;charset=utf-8",
    //     //token: app.globalData.token
    //   },
    //   success: res => {
    //     console.log(res)
    //     if (res.data.success) {
    //       that.setData({
    //         markers:res.data.content
    //       })
    //       console.log(that.data.markers)
    //     } else {
    //       wx.showToast({
    //         title: '加载出错',
    //       })
    //     }
    //   }
    // })
  },

  showModal:function(event){
    var id =event.markerId;
    var that=this;
    console.log(id)
    for(var i=0;i<that.data.markers.length;i++)
    { 
        if(that.data.markers[i].id==id){
          that.setData({
            userInfo:that.data.markers[i]
          })
        }
    }
    console.log(this.data.userInfo)
    // 显示遮罩层
    var animation = wx.createAnimation({
      duration: 200,
      timingFunction: "linear",
      delay: 0
    })
    this.animation = animation
    animation.translateY(300).step()
    this.setData({
      animationData: animation.export(),
      showModalStatus: true
    })
    setTimeout(function() {
      animation.translateY(0).step()
      this.setData({
        animationData: animation.export()
      })
    }.bind(this), 200)
  },
//隐藏对话框
hideModal: function() {
  // 隐藏遮罩层
  var animation = wx.createAnimation({
    duration: 200,
    timingFunction: "linear",
    delay: 0
  })
  this.animation = animation
  animation.translateY(300).step()
  this.setData({
    animationData: animation.export(),
  })
  setTimeout(function() {
    animation.translateY(0).step()
    this.setData({
      animationData: animation.export(),
      showModalStatus: false
    })
  }.bind(this), 200)
},


  //弹窗
  powerDrawer: function (e) {
    var currentStatu = e.currentTarget.dataset.statu;
    this.util(currentStatu)
  },
  util: function(currentStatu){
    /* 动画部分 */
    // 第1步：创建动画实例 
    var animation = wx.createAnimation({
      duration: 200,  //动画时长
      timingFunction: "linear", //线性
      delay: 0  //0则不延迟
    });
    
    // 第2步：这个动画实例赋给当前的动画实例
    this.animation = animation;
 
    // 第3步：执行第一组动画
    animation.opacity(0).rotateX(-100).step();
 
    // 第4步：导出动画对象赋给数据对象储存
    this.setData({
      animationData: animation.export()
    })
    
    // 第5步：设置定时器到指定时候后，执行第二组动画
    setTimeout(function () {
      // 执行第二组动画
      animation.opacity(1).rotateX(0).step();
      // 给数据对象储存的第一组动画，更替为执行完第二组动画的动画对象
      this.setData({
        animationData: animation
      })
      
      //关闭
      if (currentStatu == "close") {
        this.setData(
          {
            showListStatus: false
          }
        );
      }
    }.bind(this), 200)
  
    // 显示
    if (currentStatu == "open") {
      this.setData(
        {
          showListStatus: true
        }
      );
    }
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
