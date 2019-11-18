package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.MovieDto;
import com.kosmo.movieing.service.MoviePeopleDto;
import com.kosmo.movieing.service.MoviePeopleService;

@Service("moviePeopleService")
public class MoviePeopleServiceImpl implements MoviePeopleService {

	@Resource(name="moviePeopleDao")
	private MoviePeopleDao dao;

	@Override
	public List<MoviePeopleDto> selectListPeople(Map map) {
		return dao.selectListPeople(map);
	}

	
	
	
}
