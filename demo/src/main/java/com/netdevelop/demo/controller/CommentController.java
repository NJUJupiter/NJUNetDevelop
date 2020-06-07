package com.netdevelop.demo.controller;


import com.netdevelop.demo.service.CommentService;
import com.netdevelop.demo.vo.CommentVO;
import com.netdevelop.demo.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;


    @GetMapping("/getCommentsByMid")
    public ResponseVO getCommentsBymid(@RequestParam Integer movieId){
        return ResponseVO.buildSuccess(commentService.queryCommentByMovieId(movieId));
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


}
