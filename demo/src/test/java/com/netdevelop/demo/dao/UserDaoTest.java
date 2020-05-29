package com.netdevelop.demo.dao;

import com.netdevelop.demo.po.User;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.jupiter.api.Assertions.*;


@RunWith(SpringRunner.class)
@SpringBootTest
class UserDaoTest {

    @Autowired UserDao userDao;
    @Test
    public void queryUserByUserId(){
        User user=userDao.queryUserByUserId(1);
        assertEquals("zzx",user.getUserName());
    }

    @Test
    public  void  insertUser(){
        User user=new User();
        user.setUserImg("uus");
        user.setUserName("iuy");
        int effectNum=userDao.insertUser(user);
        assertEquals(1,effectNum);
    }

    @Test
    public  void  registerUser(){

        User user=userDao.registerUser("zzx");
        assertEquals("zzx",user.getUserName());
    }

    @Test
    public  void  updateInfo(){

        int effectNum=userDao.updateInfo("zzx","zzx","zzx","zzx");
        assertEquals(1,effectNum);
    }
}