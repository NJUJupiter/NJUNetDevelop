package com.netdevelop.demo.service;

import com.netdevelop.demo.vo.ReplyVO;

import java.util.List;

public interface ReplyService {
    /**
     * 插入一条新的评论
     * @param replyVO
     */
    void insertReply(ReplyVO replyVO);

    /**
     * 根据评论id获取所有的子评论
     * @param commentId
     * @return
     */
    List<ReplyVO> selectReplyByCommentId(Integer commentId);

    /**
     * 改变点赞数
     * @param id
     */
    void updateReplyLike(Integer id,Integer change);


}
