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

//      template.delete("commentDeleteByNo", map);
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

	@Override
	public int getEachEvalue(Map map) {

		return template.selectOne("getEachEvalue",map);
	}

	@Override
	public boolean isEvalue(Map map) {

		return (Integer)template.selectOne("isEvalue",map)==1?true:false;
	}

	@Override
	public int insertWish(Map map) {

		return template.insert("insertWish",map);
	}

	@Override
	public int updateWish(Map map) {

		return 0;
	}

	@Override
	public int deleteWish(Map map) {

		return template.delete("deleteWish",map);
	}

	@Override
	public int insertEvalue(Map map) {
		return template.insert("insertEvalue", map);
	}

	@Override
	public EvaluationDto selectReviewEvalue(Map map) {
		return template.selectOne("selectReviewEvalue", map);
	}

	@Override
	public EvaluationDto selectEvalueOne(Map map) {
		return template.selectOne("selectEvalueOne", map);
	}

	@Override
	public double selectGradeAvg(Map map) {
		return template.selectOne("selectGradeAvg",map);
	}

	@Override
	public int selectEvalueCount(Map map) {
		return template.selectOne("selectEvalueCount", map);
	}

	@Override
	public int selectEvalueCountAll(Map map) {
		return template.selectOne("selectEvalueCountAll", map);
	}

	}