package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.EvaluationDto;
import com.kosmo.movieing.service.EvalueWishService;

@Service("evalueWishService")
public class EvalueWishServiceImpl implements EvalueWishService{

	//ReviewDao 객체 주입
	@Resource(name="evalueWishDao")
	private EvalueWishDao dao;

	@Override
	public boolean isLogin(Map map) {

		return dao.isLogin(map);
	}

	@Override
	public EvaluationDto selectOne(Map map) {

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
	public List<EvaluationDto> selectEvalueList(Map map) {

		return dao.selectEvalueList(map);
	}

	@Override
	public List<EvaluationDto> selectWishList(Map map) {

		return dao.selectWishList(map);
	}


	@Override
	public int getTotalEvalueCount(Map map) {

		return dao.getTotalEvalueCount(map);
	}


	@Override
	public int getTotalWishCount(Map map) {

		return dao.getTotalWishCount(map);
	}

}