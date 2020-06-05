package com.netdevelop.demo.vo;

import java.time.LocalDateTime;

public class RecordVO {
    private Integer id;
    //该条记录对应的用户Id
    private Integer userId;
    //该条记录对应的电影Id
    private Integer movieId;

    //评论创建的时间
    private LocalDateTime watchTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public LocalDateTime getWatchTime() {
        return watchTime;
    }

    public void setWatchTime(LocalDateTime watchTime) {
        this.watchTime = watchTime;
    }
}
