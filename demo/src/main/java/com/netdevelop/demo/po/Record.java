package com.netdevelop.demo.po;

import java.time.LocalDateTime;

public class Record {
    //电影记录：id，用户id，电影id；
    //电影记录数据库的主键
    private Integer recordId;
    //该条记录对应的用户Id
    private Integer userId;
    //该条记录对应的电影Id
    private Integer movieId;

    //评论创建的时间
    private LocalDateTime watchTime;


    public int getRecordId() {
        return recordId;
    }

    public void setRecordId(int recordId) {
        this.recordId = recordId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public LocalDateTime getWatchTime() {
        return watchTime;
    }

    public void setWatchTime(LocalDateTime watchTime) {
        this.watchTime = watchTime;
    }
}
