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
    private ResponseVO getCommentsBymid( Integer movieId){
        return ResponseVO.buildSuccess(commentService.queryCommentByMovieId(movieId));
    }

    @PostMapping("/addComment")
    private ResponseVO addComment(@RequestBody CommentVO comment){

        return ResponseVO.buildSuccess(commentService.insertComment(comment));
    }

    @GetMapping("/getCommentsByUid")
    private ResponseVO getCommentsByuid(Integer userId){
        return ResponseVO.buildSuccess(commentService.queryCommentByuserId(userId));
    }

    @GetMapping("/deleteComment")
    private ResponseVO deleteCommentsByCid(Integer commentId){
        return ResponseVO.buildSuccess(commentService.deleteComment(commentId));
    }

    @GetMapping("/updateCommentLike")
    private ResponseVO updateCommentLike(@RequestParam Integer id,@RequestParam Integer change){
        commentService.updateCommentLike(id,change);
        return ResponseVO.buildSuccess();
    }


}
