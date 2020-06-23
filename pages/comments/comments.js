let store=require("../../utils/store")

// pages/comment/comment.js

// var Mydata1 = {
//  comments:[],
//  movies:[]
// }



Page({

  /**
   * 页面的初始数据
   */
  data: {
    navigationBarTitle: "我的影评记录",//页面标题
    comments:[],
    movies:[],
    Uid:store.getItem("userId"),
    // Mydata:{
    //   comments:[],
    //   movies:[]
    // },
    isHide: [],
  },

  showMoreMsg: function(event) { //点击显示全部内容
    console.log(event.currentTarget.dataset.index)
    var index=event.currentTarget.dataset.index
    let newIsHide=[]
    for(var i=0;i<this.data.isHide.length;i++){
      if (i==index){
        newIsHide.push(!this.data.isHide[i])
        // console.log(!this.data.isHide[i])
      }else{
        newIsHide.push(this.data.isHide[i])
        // console.log(this.data.isHide[i])
      }
    }
    this.setData ({
      isHide:newIsHide
    })
    console.log(this.data.isHide)
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    // console.log(this.Uid)
    var that=this
    var i=0
    console.log(this.data.Uid)
    wx.request({
      url: 'http://localhost:8080/demo/comment/getCommentsByUid',
      method: 'GET',
      data:{  //请求参数
        userId:that.data.Uid
        // userId:3
      },
      header:{
        "content-type": "application/json",
      },
      success: res=>{
        console.log(res.data)
        console.log(that.data.Uid)
        if (res.data.success) {
          this.setData({
            comments:res.data.content
          })
          // console.log(res.data.content[0].movieId)
          // console.log(res.data.content[1].movieId)
          // console.log(res.data.content[2].movieId)

          //获取comment对应的数据的movie
          for(;i<res.data.content.length;i++){
            console.log(res.data.content[i].movieId)
            wx.request({
              url: 'http://localhost:8080/demo/movie/'+res.data.content[i].movieId,
              method: 'GET',
              // data:{  //请求参数
              //   movieId:res.data.content[0].movieId
              //   // movieId:1
              // },
              header:{
                "content-type": "application/json",
              },
              success:res1=>{
                console.log(res1.data)
                if (res1.data.success) {
                  //每次都要push一遍
                  let newIsHide=that.data.isHide
                  newIsHide.push(true)
                  // console.log(that.data.isHide)

                  let newmoives=that.data.movies
                  newmoives.push(...[res1.data.content])
                  // console.log(that.data.movies[0])
                  this.setData({
                    movies:newmoives,
                    isHide:newIsHide
                  })
                } else {
                  wx.showToast({
                    title: '加载出错',
                  })
                }
              }
            })
          }

        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }

    })

    // this.target_movie().then((res)=>{
    //   console.log(res)
    // })

    // Mydata1.comments=that.data.comments
    // Mydata1.movies=that.data.movies

    // this.setData({
    //   Mydata:Mydata1
    // })
    // console.log(comments)
    // console.log(movies)
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

  },

  //通过comment调用对应电影名
  getName:function(){

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

  //通过comment调用对应imgUrl


  //绑定对应comment的moive
  // target_movie:function(){
  //   var i=0
  //   var that=this
  //   for(;i<that.data.comments.length;i++){
  //     var that=this;
  //     return new Promise((resolve,reject)=>{
  //       wx.request({
  //         url: 'http://localhost:8080/demo/movie/'+
  //         comments[i].movieId,
  //         method: 'GET',
  //         header:{
  //           "content-type": "application/json",
  //         },
  //         success:res1=>{
  //           console.log(res1.data)
  //           if (res1.data.success) {
  //             //每次都要push一遍
  //             let newmoives=that.data.movies
  //             newmoives.push(...[res1.data.content])
  //             console.log(that.data.movies[0])
  //             this.setData({
  //               movies:newmoives
  //             })
  //           } else {
  //             wx.showToast({
  //               title: '加载出错',
  //             })
  //           }
  //         }
  //       })
  //     })
  //   }
  // },
})