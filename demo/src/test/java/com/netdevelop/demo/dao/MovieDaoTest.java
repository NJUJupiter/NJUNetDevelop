package com.netdevelop.demo.dao;

import com.netdevelop.demo.po.Movie;
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
class MovieDaoTest {

    @Autowired MovieDao movieDao;

    @Test
    public void getSpecifiedMovieType(){
        List<Movie> movieList=movieDao.getSpecifiedMovieType(1);
        assertEquals(1,movieList.size());
    }

    @Test
    public void queryMovieById(){
        Movie movie=movieDao.queryMovieById(1);
        assertEquals("猪猪侠的奇幻冒险",movie.getMovieName());
    }

    @Test
    public void getAllMovies(){
        List<Movie> movies=movieDao.getAllMovies();
        assertEquals(3,movies.size());
    }

    @Test
    public void insertMovie(){
        Movie movie=new Movie();
        movie.setMovieName("zzx");
        movie.setActors("zzx");
        movie.setDirector("zzx");
        movie.setImgUrl("zzx");
        movie.setLikes(0);
        movie.setDescription("zzx");
        LocalDate localDate = LocalDate.now();
        LocalTime localTime = LocalTime.now();
        LocalDateTime localDateTime = LocalDateTime.of(localDate,localTime);
        movie.setReleaseTime(localDateTime);
        movie.setType(2);
        movie.setScore(7.8);
        int effectnum=movieDao.insertMovie(movie);
        assertEquals(effectnum,1);
    }

}