package com.netdevelop.demo.controller;


import com.netdevelop.demo.service.UserService;
import com.netdevelop.demo.vo.ResponseVO;
import com.netdevelop.demo.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/getUser")
    private ResponseVO getUserById(Integer userId){
        return ResponseVO.buildSuccess(userService.queryUserByUserId(userId));
    }

    /**
     * 返回user对象
     * @param userVO
     * @return
     */
    @PostMapping("/login")
    private ResponseVO login(@RequestBody UserVO userVO){
        return userService.login(userVO);
    }

    /**
     * 更新user信息
     * @param sessionKey
     * @param userName
     * @param userImg
     * @param openId
     * @return
     */
    @GetMapping("/updateUserInfo")
    private ResponseVO updateUserInfo(@RequestParam String sessionKey,@RequestParam String userName,@RequestParam String userImg,@RequestParam String openId){
        return userService.updateUserInfo(sessionKey,userName,userImg,openId);
    }

}
