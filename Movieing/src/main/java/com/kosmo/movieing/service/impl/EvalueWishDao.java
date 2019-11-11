package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.EvaluationDto;
import com.kosmo.movieing.service.EvalueWishService;

@Repository
public class EvalueWishDao implements EvalueWishService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	//로그인용
	@Override
	public boolean isLogin(Map map) {

		return (Integer)template.selectOne("evaluationLogin",map)==1?true:false;
	}

	@Override
	public EvaluationDto selectOne(Map map) {

		return template.selectOne("evaluationSelectOne", map);
	}

	@Override
	public int insert(Map map) {

		return template.insert("evaluationInsert", map);
	}

	@Override
	public int update(Map map) {

		return template.update("evaluationUpdate", map);
	}

	@Override
	public int delete(Map map) {

//		template.delete("commentDeleteByNo", map);
		return template.delete("evaluationDelete", map);
	}

	@Override
	public List<EvaluationDto> selectEvalueList(Map map) {

		return template.selectList("selectEvalueList",map);
	}

	@Override
	public List<EvaluationDto> selectWishList(Map map) {

		return template.selectList("selectWishList",map);
	}


	@Override
	public int getTotalEvalueCount(Map map) {

		return template.selectOne("getTotalEvalueCount",map);
	}


	@Override
	public int getTotalWishCount(Map map) {

		return template.selectOne("getTotalWishCount",map);
	}

}
