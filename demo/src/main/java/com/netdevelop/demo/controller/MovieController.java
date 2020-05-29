package com.netdevelop.demo.controller;

import com.netdevelop.demo.service.MovieService;
import com.netdevelop.demo.vo.MovieVO;
import com.netdevelop.demo.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/movie")
public class MovieController {

    @Autowired
    private MovieService movieService;

    @GetMapping("/type")
    private ResponseVO getMovieByType(Integer type){
        return ResponseVO.buildSuccess(movieService.getSpecifiedMovieType(type));
    }

    @GetMapping("/{movieId}")
    private ResponseVO getMovieById(@PathVariable Integer movieId){
        return ResponseVO.buildSuccess(movieService.queryMovieById(movieId));
    }
    @PostMapping("/add")
    private ResponseVO insertMovie(@RequestBody MovieVO movieVO){
        return ResponseVO.buildSuccess(movieService.insertMovie(movieVO));
    }
    @GetMapping("/search")
    private ResponseVO searchByKeyWords(@RequestParam String key){
        return ResponseVO.buildSuccess(movieService.searchByKeyWords(key));
    }
}
