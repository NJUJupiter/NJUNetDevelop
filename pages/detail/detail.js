//detail.js
//获取应用实例
const store = require('../../utils/store.js')
const util = require('../../utils/util.js')
const app = getApp()
import{
  baseURL
}from '../../api/config'
var mydata = {
  end: 0,
  replyUserName: ""
}
Page({

  /**
   * 页面的初始数据
   */
  data: {
    isHide:true,
    sortType: ['按时间排序', '按点赞排序', '按评分排序', '按评分倒序'],
    objectSortType: [
      {
        id: 0,
        name: '按时间排序'
      },
      {
        id: 1,
        name: '按点赞排序'
      },
      {
        id: 2,
        name: '按评分排序'
      },
      {
        id: 3,
        name: '按评分倒序'
      }
    ],
    sortIndex: 0,
    initialList:[true,true,true,true,true,true],
    foldList:[],
    list: [],
    id: 0,
    movie: {},
    pageHead: '',
    isLike:store.getItem("isLike")||[],
    fav:'',
    isclose:true,
    latitude:'',
    longitude:'',
    userId:store.getItem("userId"),
    rate:5,
    stars:[
      {
        flag:1,
        bgImg: "../../images/rate/star_fill_none.png",
        bgfImg:"../../images/rate/star_fill_whole.png"
      },
      {
        flag: 1,
        bgImg: "../../images/rate/star_fill_none.png",
        bgfImg:"../../images/rate/star_fill_whole.png"
      },
      {
        flag: 1,
        bgImg: "../../images/rate/star_fill_none.png",
        bgfImg:"../../images/rate/star_fill_whole.png"
      },
      {
        flag: 1,
        bgImg: "../../images/rate/star_fill_none.png",
        bgfImg:"../../images/rate/star_fill_whole.png"
      },
      {
        flag: 1,
        bgImg: "../../images/rate/star_fill_none.png",
        bgfImg:"../../images/rate/star_fill_whole.png"
      }
    ]
  },

  // zy 详情隐藏功能
  showMoreMsg: function(event) { //点击显示全部内容
    this.setData ({
      isHide:!this.data.isHide
    })
    console.log(this.data.isHide)
    console.log(this.data.movie)
  },


  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var _this = this;
    // const eventChannel = this.getOpenerEventChannel()
    // eventChannel.on('acceptDataFromOpenerPage', function (dataOfMovies) {
    //   //this.data.name=dataOfMovies.name;
    //   //this.data.recommendContent=dataOfMovies.recommendContent;
    //   _this.data.id = dataOfMovies.id
    //   _this.setData({
    //     id: _this.data.id
    //   })
    // })
    _this.data.id = options.movieId
    _this.setData({
        id: _this.data.id
    })
    mydata.sourceId = _this.data.id
    mydata.commentId = "";
    mydata.replyUserName = "";
    //设置scroll的高度
    wx.getSystemInfo({
      success: function (res) {
        console.log(res.windowHeight)
        _this.setData({
          scrollHeight:  res.windowHeight+360,
          userId: store.getItem('userId'),
        });
      }
    });
    mydata.page = 1;
    _this.getPageInfo(mydata.page);
    wx.request({
      url: 'http://localhost:8080/demo/movie/' + _this.data.id,
      method: "GET",
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
      },
      success: res => {
        // console.log("testRes")
        // console.log(res)
        _this.data.movie = res.data.content
        _this.data.pageHead = res.data.content.movieName
        // console.log(res.data.content.movieName)
        console.log(_this.data.pageHead)
        _this.setData({
          movie: _this.data.movie,
          pageHead: _this.data.pageHead
        })
        console.log("testData")
        console.log(_this.data)
        wx.setNavigationBarTitle({
          title: _this.data.pageHead + " 电影详情",
        })
      }
    })
    // wx.request({
    //   url:baseURL+'/comment/getCommentsByMid',
    //   method:"GET",
    //   data:{
    //     movieId: _this.data.id
    //   },
    //   success: res=>{

    //   }
    // })
    wx.request({
      url: 'http://localhost:8080/demo/record/addRecord',
      method: "POST",
      data: {
        userId: store.getItem('userId'),
        movieId:_this.data.id,
        watchTime:util.formatTime(new Date())
      },
    })
    var isLike=store.getItem("isLike")
    for(var i=0;i<_this.data.list.length;i++){
      _this.data.list[i].state='false'
      _this.setData({
      [`list[${i}].state`]:'false'
      })
    }
    for(var i=0;i<isLike.length;i++){
      if(_this.data.list.indexOf(isLike[i])>-1){
      _this.data.list[i].state='true'
        _this.setData({
          [`list[${isLike[i]}].state`]:'true'
          })
      }
    }
    console.log(_this.data.id+"   "+store.getItem('fav'+_this.data.id)+">>>")
    _this.setData({
      fav: store.getItem('fav'+_this.data.id)||'false'
    })
  },
  //跳转到地图
  getMap:function(event){
    var id = event.currentTarget.dataset.id;
    wx.navigateTo({
      url: '../map/map?id=' + id
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

  },
  score:function(e){
    var that=this;
    for(var i=0;i<that.data.stars.length;i++){
      var allItem = 'stars['+i+'].flag';
      that.setData({
        [allItem]: 1
      })
    }
    var index=e.currentTarget.dataset.index;
    this.data.rate=index+1;
    for(var i=0;i<=index;i++){
      var item = 'stars['+i+'].flag';
      that.setData({
        [item]:2
      })
    }
  },
  /**
   * 页面下拉刷新事件的处理函数
   */
  refresh: function () {
    mydata.page = 1
    this.getPageInfo(mydata.page, function () {
      this.setData({
        list: [],
        foldList:[]
      })
    });
    mydata.end = 0;
  },
  /**
   * 页面上拉触底事件的处理函数
   */
  bindDownLoad: function () {
    console.log("onReachBottom");
    var that = this;
    if (mydata.end == 0) {
      mydata.page++;
      that.getPageInfo(mydata.page);
    }
  },
  bindReply: function (e) {
    // console.log("testReply");
    console.log(e);
    // console.log("testReply");
    mydata.commentId = e.target.dataset.commentid;
    mydata.replyUserName = e.target.dataset.commentusername;
    mydata.replyUserId=e.target.dataset.commentuserid;
    this.setData({
      replyUserId: mydata.replyUserId,
      replyUserName: mydata.replyUserName,
      reply: true
    })
    // console.log("testReply")
    // console.log(mydata.replyUserName)
  },
  thumbsup: function(e){
    var id=e.currentTarget.dataset.id.id
    this.like(id)
  },
  like:function(item_id){
    var that=this
    var isLike=store.getItem("isLike")||[]
    for(var i=0;i<that.data.list.length;i++){
      if(that.data.list[i].id==item_id){
        var num=that.data.list[i].likes
        if(isLike.indexOf(item_id)>-1){
          for(var j in isLike){
            if(isLike[j]==item_id){
              isLike.splice(j,1);
            }
          }
          num--;
          that.setData({
            [`list[${i}].likes`]: num,
            [`list[${i}].state`]:'false'
          })
          store.setItem("list",that.data.list)
          store.setItem("isLike",isLike)
          wx.showToast({
            title:"取消点赞！",
          })
          wx.request({
            url:baseURL+'/comment/updateCommentLike',
            data:{
              id:item_id,
              change:-1
            },
            success:res=>{
              // console.log(res)
            }
          })
        }
        else{
          ++num;
          that.setData({
            [`list[${i}].likes`]:num,
            [`list[${i}].state`]:'true'
          })
          // console.log(that.data.list)
          isLike.unshift(item_id)
          that.setData({
            isLike:isLike
          })
          store.setItem("list",that.data.list)
          store.setItem("isLike",isLike)
          wx.showToast({
            title:"点赞成功！"
          })
          wx.request({
            url:baseURL+'/comment/updateCommentLike',
            data:{
              id:item_id,
              change:1
            },
            success:res=>{
              // console.log(res)
            }
          })
        }
        break;
      }
    }
  },
  // 合并数组
  addArr(arr1, arr2) {
    for (var i = 0; i < arr2.length; i++) {
      arr1.push(arr2[i]);
    }
    return arr1;
  },
  getLoc: function(){
    var that=this
    wx.getLocation({
      success: function(res){
        // console.log(res)
        that.setData({
          longitude:res.longitude,
          latitude:res.latitude
        })
        store.setItem("longitude",res.longitude)
        store.setItem("latitude",res.latitude)
      }
    })
    that.setData({
      isclose:true
    })
  },
  goLoc:function(){
    // console.log("here")
    var that=this
    if(this.data.fav=='false'){
      this.setData({
        isclose:false
      })
    }
    else(
      wx.request({
        url:baseURL+'/expect/deleteExpectByUM',
        method:'GET',
        data:{
          userId:that.data.userId,
          movieId:that.data.id,
        },
        success:res=>{
          console.log("删除成功")
          that.setData({
            fav: 'false'
          })
          store.setItem('fav'+that.data.id,'false')
        }
      }),
      wx.request({
        url:baseURL+'/movie/updateMovieLike',
        method:'GET',
        data:{
          id:that.data.id,
          change:-1,
        },
        success:res=>{
          console.log("减少movielikes成功")
        }
      })
    )
  },

  favor1: function(){
    var that=this
    that.setData({
      fav: 'true',
      isclose:true
    })
    store.setItem('fav'+that.data.id,'true')
    wx.getLocation({
      success: function(res){
        console.log("loc")
        console.log(res)
        that.setData({
          longitude:res.longitude,
          latitude:res.latitude
        })
        store.setItem("longitude",res.longitude)
        store.setItem("latitude",res.latitude)
      }
    })
    wx.request({
      url:baseURL+'/expect/insertExpect',
      method:'POST',
      data:{
        movieId:that.data.id,
        userId:that.data.userId,
        userName:store.getItem("userNick"),
        userAvatar:store.getItem("userAva"),
        latitude:Number(store.getItem("latitude")),
        longitude:Number(store.getItem("longitude"))
      },
      success:res=>{
        wx.showToast("收藏成功！")
      }

    })
    wx.request({
      url:baseURL+'/movie/updateMovieLike',
      method:'GET',
      data:{
        id:that.data.id,
        change:1,
      },
      success:res=>{
        console.log("添加movielikes成功")
      }
    })
  },
  favor2: function(){
    var that=this
    that.setData({
      fav: 'true',
      isclose:true
    })
    store.setItem('fav'+that.data.id,'true')
    wx.request({
      url:baseURL+'/expect/insertExpect',
      method:'POST',
      data:{
        movieId:that.data.id,
        userId:that.data.userId,
        userName:store.getItem("userNick"),
        userAvatar:store.getItem("userAva"),
        latitude:"",
        longitude:""
      },
      success:res=>{
        wx.showToast("收藏成功！")
      }

    })
    wx.request({
      url:baseURL+'/movie/updateMovieLike',
      method:'GET',
      data:{
        id:that.data.id,
        change:1,
      },
      success:res=>{
        console.log("添加movielikes成功")
      }
    })
  },
  deleteComment: function (e) {
    // console.log(e);
    var that = this;
    var commentId = e.target.dataset.commentid;

    wx.showModal({
      title: '删除评论',
      content: '请确认是否删除该评论？',
      success: function (res) {
        if (res.confirm) {
          wx.request({
            url: 'http://localhost:8080/demo/comment/deleteComment',
            method: "GET",
            data: {
              commentId: commentId
            },
            header: {
              "content-type": "application/x-www-form-urlencoded;charset=utf-8",
            },
            success: res => {
              that.refresh();
              wx.showToast({
                title: "删除成功"
              })
            }
          })
        } else if (res.cancel) {
          console.log('用户点击取消')
        }
      }
    })
  },
  deleteReply: function (e) {
    // console.log(e);
    var that = this;
    var replyId = e.target.dataset.replyid;

    wx.showModal({
      title: '删除回复',
      content: '请确认是否删除该回复？',
      success: function (res) {
        if (res.confirm) {
          wx.request({
            url: 'http://localhost:8080/demo/comment/deleteReply',
            method: "GET",
            data: {
              replyId: replyId
            },
            header: {
              "content-type": "application/x-www-form-urlencoded;charset=utf-8",
            },
            success: res => {
              that.refresh();
              wx.showToast({
                title: "删除成功"
              })
            }
          })
        } else if (res.cancel) {
          // console.log('用户点击取消')
        }
      }
    })
  },
  cancleReply: function (e) {
    mydata.commentId = "";
    mydata.replyUserName = "";
    mydata.replyUserId="";
    this.setData({
      replyUserId:mydata.replyUserId,
      replyUserName: mydata.replyUserName,
      reply: false
    })
  },
  // 更新页面信息
  // 此处的回调函数在 传入新值之前执行 主要用来清除页面信息
  getPageInfo(page, callback) {
    var that = this;
    //util.showLoading(); 有空再加
    // console.log("getPageInfo");
    // console.log("page" + page);
    var limited = 6;
    var offset = (page - 1) * 6;
    wx.request({
      url: 'http://localhost:8080/demo/comment/getLimitedComments',
      method: "GET",
      data: {
        movieId: mydata.sourceId,
        limited: limited,
        offset: offset,
        type:parseInt(this.data.sortIndex)+1
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
      },
      success: res => {
        // console.log("getPageTest")
        // console.log(res);
        var isLike=store.getItem("isLike")
        if (page == 1) {
          that.data.list = res.data.content;
          that.data.foldList=JSON.parse(JSON.stringify(that.data.initialList));
          that.setData({
            list: that.data.list,
            foldList:that.data.foldList
          })
          for(var i=0;i<that.data.list.length;i++){
            that.data.list[i].state='false'
            that.setData({
            [`list[${i}].state`]:'false'
            })
          }
          for(var i=0;i<isLike.length;i++){
            if(that.data.list.indexOf(isLike[i])>-1){
            that.data.list[i].state='true'
              that.setData({
                [`list[${isLike[i]}].state`]:'true'
                })
            }
          }
          // console.log(that.data.list)
          mydata.end = 0;
        } else {
          // 当前页为其他页
          var list = that.data.list;
          var tempList=that.data.foldList;
          if (res.data.content != null) {
            console.log(list)
            console.log(res.data.content)
            list = that.addArr(list, res.data.content);
            console.log(tempList)
            console.log(that.data.initialList)
            tempList=that.addArr(tempList,that.data.initialList);
          for(var i=0;i<that.data.list.length;i++){
            that.data.list[i].state='false'
            that.setData({
            [`list[${i}].state`]:'false'
            })
          }
          for(var i=0;i<isLike.length;i++){
            if(that.data.list.indexOf(isLike[i])>-1){
            that.data.list[i].state='true'
              that.setData({
                [`list[${isLike[i]}].state`]:'true'
                })
            }
          }
            that.setData({
              list: list,
              foldList:tempList
            })
            mydata.end = 0;
          } else {
            mydata.end = 1;
          }
        }
        // wx.hideLoading();
      }
    })
    // console.log("testList")
    // console.log(this.data.list)
  },
  submitForm(e) {
    var form = e.detail.value;
    var that = this;
    // console.log(store.getItem('userId'));
    if (form.comment == "") {
      util.showLog('请输入评论');
      return;
    }
    // 提交评论
    if (that.data.reply==true) {
      wx.request({
        url: 'http://localhost:8080/demo/comment/insertReply',
        method: "POST",
        data: {
          commentId: mydata.commentId,
          fromId:store.getItem('userId'),
          fromName:store.getItem('userNick'),
          fromAvatar:store.getItem('userAva'),
          toId:mydata.replyUserId,
          toName:mydata.replyUserName,
          content: form.comment,
          createTime:util.formatTime(new Date()),
          likes:0,
          //replyCommentId: mydata.commentId,
          //replyUserName: mydata.replyUserName,
          // createTime:util.formatTime(new Date()),
        },
        // header: {
        //   "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //   //token: app.globalData.token
        // },
        success: res => {
          // console.log(res)
          if (res.data.success) {
            wx.showToast({
              title: "回复成功"
            })
            that.refresh();
            mydata.commentId = "";
            mydata.replyUserName = "";
            mydata.replyUserId="";
            this.setData({
              replyUserId:mydata.replyUserId,
              replyUserName: mydata.replyUserName,
              reply: false
            })
          } else {
            wx.showToast({
              title: '回复失败，请检查您的网络',
            })
          }
        }
      })
    }else{
      wx.request({
        url: 'http://localhost:8080/demo/comment/addComment',
        method: "POST",
        data: {
          movieId: mydata.sourceId,
          content: form.comment,
          userId: store.getItem('userId'),
          userName: store.getItem('userNick'),
          //replyCommentId: mydata.commentId,
          //replyUserName: mydata.replyUserName,
          createTime:util.formatTime(new Date()),
          // createTime:new Date(),
          userAvatar: store.getItem('userAva'),
          score:that.data.rate,
          likes:0,
        },
        // header: {
        //   "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //   //token: app.globalData.token
        // },
        success: res => {
          // console.log(res)
          if (res.data.success) {
            wx.showToast({
              title: "评论成功"
            })
            that.refresh();
            mydata.commentId = "";
            mydata.replyUserName = "";
            this.setData({
              replyUserName: mydata.replyUserName,
              reply: false
            })
          } else {
            wx.showToast({
              title: '评论失败，请检查您的网络',
            })
          }
        }
      })
    }
  },
  unfoldReplies:function(e){
    // console.log(e.target.dataset.xiabiao)
    // console.log(this.data.foldList)
    var tempList=this.data.foldList;
    tempList[e.target.dataset.xiabiao]=false;
    this.setData({
      foldList:tempList
    })
  },
  foldReplies:function(e){
    // console.log(e.target.dataset.xiabiao)
    // console.log(this.data.foldList)
    var tempList=this.data.foldList;
    tempList[e.target.dataset.xiabiao]=true;
    this.setData({
      foldList:tempList
    })
  },
  bindPickerChange: function (e) { 
    console.log('picker发送选择改变，携带值为', e.detail.value) 
    this.setData({ 
      sortIndex: e.detail.value 
    }) 
    this.refresh(); 
  }, 
})