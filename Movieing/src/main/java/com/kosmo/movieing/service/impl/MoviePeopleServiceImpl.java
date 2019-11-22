package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.MoviePeopleDto;
import com.kosmo.movieing.service.MoviePeopleService;
@Service("moviePeopleService")
public class MoviePeopleServiceImpl implements MoviePeopleService {

	@Resource(name="moviePeopleDao")
	private MoviePeopleDao dao;

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
		return dao.selectListPeople(map);
	}

	@Override
	public List<MoviePeopleDto> selectDiretorList(Map map) {

		return dao.selectDiretorList(map);
	}

	@Override
	public List<MoviePeopleDto> selectActorList(Map map) {

		return dao.selectActorList(map);
	}

	@Override
	public MoviePeopleDto selectPeople(Map map) {
		return dao.selectPeople(map);
	}

	@Override
	public MoviePeopleDto selectPeopleMovie(Map map) {
		return dao.selectPeopleMovie(map);
	}
	@Override
	public List<MoviePeopleDto> selectPeopleNoList(Map map) {
		return dao.selectPeopleNoList(map);
	}

	@Override
	public MoviePeopleDto selectMoviePeopleNameOne(Map map) {
		return dao.selectMoviePeopleNameOne(map);
	}

}
