package com.netdevelop.demo.po;

import java.time.LocalDateTime;

public class Comment {

   // 评论：id（int),电影ID，用户ID，评论时间（datetime），内容（string），点赞数（int）
    //Comment数据库主键ID
    private Integer id;
    //评论针对的电影ID
    private Integer movieId;
    //发表评论的用户Id
    private Integer userId;
    //评论创建的时间
    private LocalDateTime createTime;
    //评论的内容
    private  String content;

    //该评论收到的点赞数
    private int likes;

    //评论为电影打分
    private double score;

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }
}
