package com.netdevelop.demo.controller;


import com.netdevelop.demo.service.RecordService;
import com.netdevelop.demo.vo.RecordVO;
import com.netdevelop.demo.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/record")
public class RecordController {

    @Autowired
    private RecordService recordService;

    @PostMapping("/addRecord")
    private ResponseVO addRecord(@RequestBody RecordVO record){
        return ResponseVO.buildSuccess(recordService.insertRecord(record));
    }

    @GetMapping("/getRecordByUid")
    private ResponseVO getRecordByUid(Integer userId){
        return ResponseVO.buildSuccess(recordService.queryMovieIdByUserId(userId));
    }

}
