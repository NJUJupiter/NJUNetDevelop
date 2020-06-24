var util=require("../../utils/util")
var store=require("../../utils/store")
import initCalendar, {
  getSelectedDay,
  setTodoLabels,
  switchView
} from '../../template/calendar/index';

Page({

  /**
   * 页面的初始数据
   */
  data: {
    userId:"",
    signDays:[],
    current:"",
    isSigned:"",
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var time=util.formatDate(new Date());
    console.log(time)
    const sdata = [];
    this.setData({
      userId: options.id
    })
    wx.request({
      url: 'http://localhost:8080/demo/sign/getSignByUserId',
      method: "GET",
      data:{
        userId:store.getItem("userId")
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        if (res.data.success) {
          var datas=res.data.content
          console.log(datas)
          for (let index = 0; index < datas.length; index++) {
            var year=datas[index].sYear;
            var month=datas[index].sMonth;
            var day=datas[index].sDay;
            var sign1='-'
            var sign2='-'
            if(month<10){sign1='-0';}
            if(day<10){sign2='-0'}
            var temp=year+sign1+month+sign2+day;
            console.log(temp)
            console.log(time)
            if(temp==time){
              this.data.isSigned=true
              console.log(this.data.isSigned)
            }
            else{
              this.data.isSigned=false
            }
            console.log({year,month,day})
            sdata.push({year,month,day})
          }
          console.log(sdata)
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })

    initCalendar({
      // multi: true, // 是否开启多选,
      // defaultDay: '2018-8-8', // 初始化日历时指定默认选中日期，如：'2018-3-6' 或 '2018-03-06'
      /**
       * 选择日期后执行的事件
       * @param { object } currentSelect 当前点击的日期
       * @param { array } allSelectedDays 选择的所有日期（当mulit为true时，才有allSelectedDays参数）
       */
      afterTapDay: (currentSelect, allSelectedDays) => {
        console.log('===============================');
        console.log('当前点击的日期', currentSelect);
        console.log(
          '当前点击的日期是否有事件标记: ',
          currentSelect.hasTodo || false
        );
        allSelectedDays && console.log('选择的所有日期', allSelectedDays);
        console.log('getSelectedDay方法', getSelectedDay());
      },
      whenChangeMonth(current, next) {
        // console.log(current);
        // console.log(next);
      },
      /**
       * 日期点击事件（此事件会完全接管点击事件）
       * @param { object } currentSelect 当前点击的日期
       * @param { object } event 日期点击事件对象
       */
      // onTapDay(currentSelect, event) {
      //   console.log(currentSelect);
      //   console.log(event);
      // },
      /**
       * 日历初次渲染完成后触发事件，如设置事件标记
       */
      
      afterCalendarRender(ctx) {
        // 异步请求
        setTimeout(() => {
          setTodoLabels({
            circle: true,
            days: sdata
          });
        }, 1000);
        // enableArea(['2018-10-7', '2018-10-28']);
      }
    });
  },

  sign:function(){
    var time=util.formatDate(new Date());
    console.log(time)
    wx.request({
      url: 'http://localhost:8080/demo/sign/insert',
      method: "post",
      data:{
        userId:store.getItem("userId"),//this.data.userId
        date:time
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        if (res.data.success) {
          this.setData({
            isSigned:true
          })
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
    })
    wx.request({
      url: 'http://localhost:8080/demo/sign/getSignByUserId',
      method: "GET",
      data:{
        userId:store.getItem("userId")
      },
      header: {
        "content-type": "application/x-www-form-urlencoded;charset=utf-8",
        //token: app.globalData.token
      },
      success: res => {
        if (res.data.success) {
          var datas=res.data.content
          console.log(datas)
          for (let index = 0; index < datas.length; index++) {
            var year=datas[index].sYear;
            var month=datas[index].sMonth;
            var day=datas[index].sDay;
            var sign1='-'
            var sign2='-'
            if(month<10){sign1='-0';}
            if(day<10){sign2='-0'}
            var temp=year+sign1+month+sign2+day;
            console.log(temp)
            console.log(time)
            if(temp==time){
              this.data.isSigned=true
              console.log(this.data.isSigned)
            }
            else{
              this.data.isSigned=false
            }
            console.log({year,month,day})
            sdata.push({year,month,day})
          }
          console.log(sdata)
        } else {
          wx.showToast({
            title: '加载出错',
          })
        }
      }
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
