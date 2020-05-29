package com.netdevelop.demo.service.impl;

import com.netdevelop.demo.dao.RecordDao;
import com.netdevelop.demo.po.Record;
import com.netdevelop.demo.service.MovieService;
import com.netdevelop.demo.service.RecordService;
import com.netdevelop.demo.vo.MovieVO;
import com.netdevelop.demo.vo.RecordVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.LinkedList;
import java.util.List;

@Service
public class RecordServiceImpl implements RecordService {

    @Autowired
    private RecordDao recordDao;
    @Autowired
    private MovieService movieService;

    @Override
    public List<MovieVO> queryMovieIdByUserId(int userId) {
        List<Integer> list=recordDao.queryMovieIdByUserId(userId);
        List<MovieVO> movieList=new LinkedList<>();
        for(Integer movieId:list){
            movieList.add(movieService.queryMovieById(movieId));
        }
        return movieList;
    }

    @Transactional
    @Override
    public int insertRecord(RecordVO recordVO) {
        if(recordVO.getUserId()>0&&recordVO.getMovieId()>0){
            try {
                int exist=recordDao.existMovieId(recordVO.getUserId(),recordVO.getMovieId());
                if(exist>0){
                    recordDao.updateRecord(recordVO.getUserId(),recordVO.getMovieId(),recordVO.getWatchTime());
                    return exist;
                }else{
                    Record record=new Record();
                    BeanUtils.copyProperties(recordVO,record);
                    int effectNum=recordDao.insertRecord(record);
                    if(effectNum>0){
                        return effectNum;
                    }else{
                        throw new RuntimeException("浏览记录出错");
                    }
                }

            }catch (Exception e){
                throw new RuntimeException("浏览记录出错： "+e.toString());
            }
        }else{
            throw new RuntimeException("浏览者Id和电影不能为空！");
        }
    }


}
