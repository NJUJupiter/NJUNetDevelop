package com.netdevelop.demo.controller;


import com.netdevelop.demo.po.Reply;
import com.netdevelop.demo.service.CommentService;
import com.netdevelop.demo.service.ReplyService;
import com.netdevelop.demo.vo.CommentVO;
import com.netdevelop.demo.vo.ReplyVO;
import com.netdevelop.demo.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private ReplyService replyService;

    @GetMapping("/getCommentsByMid")
    public ResponseVO getCommentsBymid(@RequestParam Integer movieId){
        return ResponseVO.buildSuccess(commentService.queryCommentByMovieId(movieId));
    }

    /**
     * 时间倒序
     * @param movieId
     * @return
     */
    @GetMapping("/getCommentsByMidTD")
    public ResponseVO getCommentsByMidTD(@RequestParam Integer movieId){
        return ResponseVO.buildSuccess(commentService.queryCommentOrderByTime(movieId));
    }


    /**
     * 评分倒序
     * @param movieId
     * @return
     */
    @GetMapping("/getCommentsByMidSD")
    public ResponseVO getCommentsByMidSD(@RequestParam Integer movieId){
        return ResponseVO.buildSuccess(commentService.queryCommentOrderByScoreDesc(movieId));
    }


    /**
     * 评分正序
     * @param movieId
     * @return
     */
    @GetMapping("/getCommentsByMidSA")
    public ResponseVO getCommentsByMidSA(@RequestParam Integer movieId){
        return ResponseVO.buildSuccess(commentService.queryCommentOrderByScoreAsc(movieId));
    }


    /**
     * 点赞倒序
     * @param movieId
     * @return
     */
    @GetMapping("/getCommentsByMidFD")
    public ResponseVO getCommentsByMidFD(@RequestParam Integer movieId){
        return ResponseVO.buildSuccess(commentService.queryCommentOrderByFavor(movieId));
    }


    @PostMapping("/addComment")
    public ResponseVO addComment(@RequestBody CommentVO comment){

        return ResponseVO.buildSuccess(commentService.insertComment(comment));
    }

    @GetMapping("/getCommentsByUid")
    public ResponseVO getCommentsByuid(@RequestParam Integer userId){
        return ResponseVO.buildSuccess(commentService.queryCommentByuserId(userId));
    }

    @GetMapping("/deleteComment")
    public ResponseVO deleteCommentsByCid(@RequestParam Integer commentId){
        return ResponseVO.buildSuccess(commentService.deleteComment(commentId));
    }

    @GetMapping("/updateCommentLike")
    public ResponseVO updateCommentLike(@RequestParam Integer id,@RequestParam Integer change){
        commentService.updateCommentLike(id,change);
        return ResponseVO.buildSuccess();
    }

    /**
     * 当offset大于评论总长时返回null
     * @param movieId
     * @param limited
     * @param offset
     * @return
     */
    @GetMapping("/getLimitedComments")
    public ResponseVO getLimitedComments(@RequestParam Integer movieId, @RequestParam Integer limited, @RequestParam Integer offset){
        return ResponseVO.buildSuccess(commentService.getLimitedComment(movieId,limited,offset));
    }

    @PostMapping("/insertReply")
    public ResponseVO addReply(@RequestBody ReplyVO replyVO){
        return replyService.insertReply(replyVO);
    }

    @GetMapping("/updateReplyLike")
    public ResponseVO updateReplyLike(@RequestParam Integer id,@RequestParam Integer change){
        return replyService.updateReplyLike(id,change);
    }

    @GetMapping("/deleteReply")
    public ResponseVO deleteReply(@RequestParam Integer id){
        return ResponseVO.buildSuccess(replyService.deleteReply(id));
    }


}
