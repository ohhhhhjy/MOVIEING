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

	@Override
	public List<MoviePeopleDto> selectDiretorList(Map map) {

		return template.selectList("selectDiretorList",map);
	}

	@Override
	public List<MoviePeopleDto> selectActorList(Map map) {

		return template.selectList("selectActorList",map);
	}

	@Override
	public MoviePeopleDto selectPeople(Map map) {
		return template.selectOne("selectPeople", map);
	}

	@Override
	public MoviePeopleDto selectPeopleMovie(Map map) {
		return template.selectOne("selectPeopleMovie", map);
	}

	@Override
	public List<MoviePeopleDto> selectPeopleNoList(Map map) {
		return template.selectList("selectPeopleNoList",map);
	}

	@Override
	public MoviePeopleDto selectMoviePeopleNameOne(Map map) {
		return template.selectOne("selectMoviePeopleNameOne",map);
	}

}
