package com.netdevelop.demo.dao;

import com.netdevelop.demo.po.Comment;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
class CommentDaoTest {


    @Autowired CommentDao commentDao;


    @Test
    public void queryCommentByMovieId(){
        List<Comment> commentList=commentDao.queryCommentByMovieId(1);
        assertEquals(1,commentList.size());
    }

    @Test
    public void  queryCommentByuserId(){
        List<Comment> commentList=commentDao.queryCommentByuserId(1);
        assertEquals(3,commentList.size());
    }

    @Test
    public void insertComment(){
        Comment comment=new Comment();
        comment.setContent("好看");
        LocalDate localDate = LocalDate.now();
        System.out.println("localDate: " + localDate);
        LocalTime localTime = LocalTime.now();
        System.out.println("localTime: " + localTime);
        LocalDateTime localDateTime = LocalDateTime.of(localDate,localTime);
        comment.setCreateTime(localDateTime);
        comment.setLikes(0);
        comment.setMovieId(1);
        comment.setUserId(1);
        int effectNum=commentDao.insertComment(comment);
        assertEquals(1,effectNum);
    }

    @Test
    public void deleteComment(){
        int effectNum=commentDao.deleteComment(7);
        assertEquals(1,effectNum);
    }

    @Test
    public void updateCommentLike(){
        int effectNum=commentDao.updateCommentLike(1,1);
        assertEquals(1,effectNum);
    }
}