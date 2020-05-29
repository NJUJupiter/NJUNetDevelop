package com.netdevelop.demo.service.impl;

import com.netdevelop.demo.dao.ReplyDao;
import com.netdevelop.demo.po.Reply;
import com.netdevelop.demo.service.ReplyService;
import com.netdevelop.demo.vo.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;

@Service
public class ReplyServiceImpl implements ReplyService {

    @Autowired
    private ReplyDao replyDao;
    @Override
    public void insertReply(ReplyVO replyVO) {
        Reply reply=new Reply();
        reply.setCommentId(replyVO.getCommentId());
        reply.setContent(replyVO.getContent());
        reply.setCreateTime(replyVO.getCreateTime());
        reply.setFavor(replyVO.getFavor());
        reply.setFromId(replyVO.getFromId());
        reply.setFromName(replyVO.getFromName());
        reply.setFromAvatar(replyVO.getFromAvatar());
        reply.setToId(reply.getToId());
        reply.setToName(reply.getToName());
        reply.setToAvatar(reply.getToAvatar());
        replyDao.insertReply(reply);
    }

    @Override
    public List<ReplyVO> selectReplyByCommentId(Integer commentId) {
        List<Reply> replies=replyDao.selectReplyByCommentId(commentId);
        List<ReplyVO> replyVOS=new LinkedList<>();
        for(Reply reply:replies){
            ReplyVO replyVO=new ReplyVO();
            replyVO.setCommentId(reply.getCommentId());
            replyVO.setContent(reply.getContent());
            replyVO.setCreateTime(reply.getCreateTime());
            replyVO.setFavor(reply.getFavor());
            replyVO.setFromId(reply.getFromId());
            replyVO.setToId(replyVO.getToId());
            replyVO.setId(replyVO.getId());
            replyVO.setFromAvatar(reply.getFromAvatar());
            replyVO.setFromName(reply.getFromName());
            replyVO.setToName(reply.getToName());
            replyVO.setToAvatar(reply.getToAvatar());
            replyVOS.add(replyVO);
        }
        return replyVOS;
    }

    @Override
    public void updateReplyLike(Integer id, Integer change) {
        replyDao.updateReplyFavor(id,change);
    }
}
