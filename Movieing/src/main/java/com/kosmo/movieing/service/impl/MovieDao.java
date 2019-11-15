package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.MovieDto;
import com.kosmo.movieing.service.MovieService;

@Repository
public class MovieDao implements MovieService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean isLogin(Map map) {
		return (Integer)template.selectOne("evaluationLogin",map)==1?true:false;
	}

	@Override
	public List<MovieDto> selectList(Map map) {
		return template.selectList("selectList", map);
	}

	@Override
	public int getTotalCount(Map map) {
		return 0;
	}

	@Override
	public MovieDto selectOne(Map map) {
		return template.selectOne("selectOne", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("evaluationInsert", map);
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
	public String selectMovieNo(Map map) {
		return template.selectOne("selectMovieNo",map);
	}

	@Override
	public List<MovieDto> selectListHorror(Map map) {
		return template.selectList("selectListHorror",map);
	}

	@Override
	public List<MovieDto> selectListRomance(Map map) {
		return template.selectList("selectListRomance",map);
	}

	@Override
	public List<MovieDto> selectListComedy(Map map) {
		return template.selectList("selectListComedy",map);
	}

	@Override
	public List<MovieDto> selectListRandom(Map map) {
		return template.selectList("selectListRandom",map);
	}

	@Override
	public List<MovieDto> selectListMovie(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("selectListMovie",map);
	}

	@Override
	public MovieDto selectOneMovie(Map map) {
		return template.selectOne("selectOneMovie", map);
	}
	@Override
	public List<MovieDto> selectListNewRandom(Map map) {
		return template.selectList("selectListNewRandom",map);
	}

	@Override
	public List<MovieDto> selectListARandom(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("selectListARandom",map);
	}


}
