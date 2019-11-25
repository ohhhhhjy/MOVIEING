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

	@Override
	public int getEachEvalue(Map map) {

		return dao.getEachEvalue(map);
	}

	@Override
	public boolean isEvalue(Map map) {

		return dao.isEvalue(map);
	}

	@Override
	public int insertWish(Map map) {

		return dao.insertWish(map);
	}

	@Override
	public int updateWish(Map map) {

		return dao.updateWish(map);
	}

	@Override
	public int deleteWish(Map map) {

		return dao.deleteWish(map);
	}

	@Override
	public int insertEvalue(Map map) {
		return dao.insertEvalue(map);
	}

	@Override
	public EvaluationDto selectReviewEvalue(Map map) {
		return dao.selectReviewEvalue(map);
	}

	@Override
	public EvaluationDto selectEvalueOne(Map map) {
		return dao.selectEvalueOne(map);
	}

	@Override
	public double selectGradeAvg(Map map) {
		return dao.selectGradeAvg(map);
	}

	@Override
	public int selectEvalueCount(Map map) {
		return dao.selectEvalueCount(map);
	}

	@Override
	public int selectEvalueCountAll(Map map) {
		return dao.selectEvalueCountAll(map);
	}

}
