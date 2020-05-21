const order = ['demo1', 'demo2', 'demo3']

Page({
  onShareAppMessage() {
    return {
      title: 'scroll-view',
      path: 'pages/index/index'
    }
  },

  data: {
    toView: 'green'
  },

  bindViewTap: function () {
    wx.navigateTo({
      url: '../detail/detail',
      success: function (res) {
        res.eventChannel.emit('acceptDataFromOpenerPage', { name: 'test', recommendContent: 'There\'s no recommend yet' })
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
