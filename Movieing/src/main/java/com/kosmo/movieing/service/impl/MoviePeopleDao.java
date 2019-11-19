package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.MoviePeopleDto;
import com.kosmo.movieing.service.MoviePeopleService;
@Repository
public class MoviePeopleDao implements MoviePeopleService{

	@Resource(name="template")
	private SqlSessionTemplate template;


	@Override
	public boolean isMember(Map map) {
		return false;
	}

	@Override
	public List<MoviePeopleDto> selectList(Map map) {
		return null;
	}

	@Override
	public int getTotalCount(Map map) {
		return 0;
	}

	@Override
	public MoviePeopleDto selectOne(Map map) {
		return null;
	}

	@Override
	public int insert(Map map) {
		return 0;
	}

	@Override
	public int update(Map map) {
		return 0;
	}

	@Override
	public int delete(Map map) {
		return 0;
	}


	@Override
	public List<MoviePeopleDto> selectListPeople(Map map) {
		return template.selectList("selectListPeople",map);
	}

}
