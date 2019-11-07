package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.EvaluationDto;
import com.kosmo.movieing.service.EvaluationService;

@Service("evaluationService")
public class EvaluationServiceImpl implements EvaluationService{

	//ReviewDao 객체 주입
	@Resource(name="evaluationDao")
	private EvaluationDao dao;

	@Override
	public boolean isLogin(Map map) {

		return dao.isLogin(map);
	}

	@Override
	public List<EvaluationDto> selectList(Map map) {

		return dao.selectList(map);
	}

	@Override
	public int getTotalCount(Map map) {

		return dao.getTotalCount(map);
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

}
