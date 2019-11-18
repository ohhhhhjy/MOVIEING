package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.MovieDto;
import com.kosmo.movieing.service.MoviePeopleDto;
import com.kosmo.movieing.service.MoviePeopleService;
import com.kosmo.movieing.service.MovieService;

@Repository
public class MoviePeopleDao implements MoviePeopleService {

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<MoviePeopleDto> selectListPeople(Map map) {
		return template.selectList("selectListPeople",map);
	}
	
	

}
