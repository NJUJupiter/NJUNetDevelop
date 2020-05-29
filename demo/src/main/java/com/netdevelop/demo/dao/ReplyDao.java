package com.netdevelop.demo.dao;

import com.netdevelop.demo.po.Reply;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReplyDao {

    /**
     * 插入一条新的回复
     * @param reply
     * @return
     */
    int insertReply(Reply reply);

    /**
     * 根据评论返回所有回复
     * @param commentId
     * @return
     */
    List<Reply> selectReplyByCommentId(@Param("commentId")Integer commentId);

    /**
     * 更新的点赞数
     * @param id
     * @return
     */
    int updateReplyFavor(@Param("id")Integer id,@Param("change")Integer change);
}
