package com.netdevelop.demo.dao;

import com.netdevelop.demo.po.Record;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;


@RunWith(SpringRunner.class)
@SpringBootTest
class RecordDaoTest {

    @Autowired RecordDao recordDao;
    @Test
    public void queryMovieIdByUserId(){
        List<Integer> list=recordDao.queryMovieIdByUserId(1);
        assertEquals(3,list.size());
    }

    @Test
    public void insertRecord(){
        Record record=new Record();
        record.setMovieId(1);
        record.setUserId(1);
        int effectNum=recordDao.insertRecord(record);
        assertEquals(1,effectNum);
    }
    @Test
    public void existMovieId(){
        int effectNum=recordDao.existMovieId(1,2);
        assertEquals(2,effectNum);
    }
    @Test
    public void updateRecord(){
        LocalDate localDate = LocalDate.now();
        LocalTime localTime = LocalTime.now();
        LocalDateTime localDateTime = LocalDateTime.of(localDate,localTime);
        int effectNum=recordDao.updateRecord(1,1,localDateTime);
        assertEquals(1,effectNum);
    }
}