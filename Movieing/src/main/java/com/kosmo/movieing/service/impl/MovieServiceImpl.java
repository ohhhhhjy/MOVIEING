package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.MovieDto;
import com.kosmo.movieing.service.MovieService;
@Service("movieService")
public class MovieServiceImpl implements MovieService{

	@Resource(name="movieDao")
	private MovieDao dao;

	@Override
	public boolean isLogin(Map map) {
		return dao.isLogin(map);
	}

	@Override
	public List<MovieDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalCount(Map map) {
		return dao.getTotalCount(map);
	}

	@Override
	public MovieDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public String selectMovieNo(Map map) {
		return dao.selectMovieNo(map);
	}

	@Override
	public List<MovieDto> selectListHorror(Map map) {
		return dao.selectListHorror(map);
	}

	@Override
	public List<MovieDto> selectListRomance(Map map) {
		return dao.selectListRomance(map);
	}

	@Override
	public List<MovieDto> selectListComedy(Map map) {
		return dao.selectListComedy(map);
	}

	@Override
	public List<MovieDto> selectListRandom(Map map) {
		return dao.selectListRandom(map);
	}

	@Override
	public List<MovieDto> selectListMovie(Map map) {
		return dao.selectListMovie(map);
	}

	@Override
	public MovieDto selectOneMovie(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public List<MovieDto> selectListNewRandom(Map map) {
		return dao.selectListNewRandom(map);
	}

	@Override
	public List<MovieDto> selectListARandom(Map map) {
		return dao.selectListARandom(map);
	}

}
