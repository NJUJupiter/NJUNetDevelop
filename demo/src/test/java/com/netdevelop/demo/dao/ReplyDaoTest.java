package com.netdevelop.demo.dao;


import com.netdevelop.demo.po.Reply;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ReplyDaoTest {
    @Autowired
    ReplyDao replyDao;

    @Test
    public void insertReply(){
        Reply reply=new Reply();
        int effectNum=replyDao.insertReply(reply);
        assertEquals(1,effectNum);
    }
    @Test
    public void selectReplyByCommentId(){
        List<Reply> replies =replyDao.selectReplyByCommentId(1);
        assertEquals(1,replies.size());
    }
    @Test
    public void updateReplyFavor(){
        int effectNum=replyDao.updateReplyFavor(1,1);
        assertEquals(1,effectNum);
    }

}
