package com.netdevelop.demo.service.impl;

import com.netdevelop.demo.dao.CommentDao;
import com.netdevelop.demo.po.Comment;
import com.netdevelop.demo.service.CommentService;
import com.netdevelop.demo.service.ReplyService;
import com.netdevelop.demo.vo.CommentVO;
import com.netdevelop.demo.vo.ReplyVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.LinkedList;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Autowired
    private ReplyService replyService;
    @Override
    public List<CommentVO> queryCommentByMovieId(int movieId) {
        List<Comment>  commentList=commentDao.queryCommentByMovieId(movieId);
        List<CommentVO> commentVOS=new LinkedList<>();
        for(Comment comment:commentList){
            CommentVO commentVO=new CommentVO();
            BeanUtils.copyProperties(comment,commentVO);
            List<ReplyVO> replies=replyService.selectReplyByCommentId(comment.getId());
            commentVO.setReplies(replies);
            commentVOS.add(commentVO);
        }
        return commentVOS;
    }

    @Override
    public List<CommentVO> queryCommentByuserId(int userId) {
        List<Comment>  commentList=commentDao.queryCommentByuserId(userId);
        List<CommentVO> commentVOS=new LinkedList<>();
        for(Comment comment:commentList){
            CommentVO commentVO=new CommentVO();
            BeanUtils.copyProperties(comment,commentVO);
            List<ReplyVO> replies=replyService.selectReplyByCommentId(comment.getId());
            commentVO.setReplies(replies);
            commentVOS.add(commentVO);
        }
        return commentVOS;
    }

    @Transactional
    @Override
    public boolean insertComment(CommentVO commentVO) {
        if(commentVO!=null&&!"".equals(commentVO.getContent())&&commentVO.getMovieId()>0&&commentVO.getUserId()>0){
            Comment comment=new Comment();
            BeanUtils.copyProperties(commentVO,comment);
            try {
                int effectNum=commentDao.insertComment(comment);
                if(effectNum>0){
                    return true;
                }else{
                    throw new RuntimeException("添加评论失败");
                }
            }catch (Exception e){
                throw  new RuntimeException("添加评论失败:"+e.toString());
            }
        }else{
            throw new RuntimeException("评论不能为空");
        }
    }

    @Transactional
    @Override
    public boolean deleteComment(int commentId) {
        if(commentId>0){
            try {
                int effectNum=commentDao.deleteComment(commentId);
                if(effectNum>0){
                    return true;
                }else{
                    throw new RuntimeException("删除评论失败");
                }
            }catch (Exception e){
                throw  new RuntimeException("添加评论失败:"+e.toString()); }
            }
        else{
                throw new RuntimeException("评论Id不能为空");
        }
    }

    @Override
    public void updateCommentLike(Integer id, Integer change) {
        commentDao.updateCommentLike(id,change);
    }

    @Override
    public List<CommentVO> getLimitedComment(Integer movieId, Integer limited) {
        List<CommentVO> commentVOS=this.queryCommentByMovieId(movieId);
        if(commentVOS.size()<=limited){
            return commentVOS;
        }else{
            return commentVOS.subList(0,limited);
        }
    }
}
