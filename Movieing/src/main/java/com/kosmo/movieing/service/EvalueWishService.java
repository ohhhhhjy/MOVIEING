package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;
//평가(별점) + 보고싶어요
public interface EvalueWishService {

	//로그인
	boolean isLogin(Map map);
	//평가 별점 목록
	List<EvaluationDto> selectEvalueList(Map map);
	//보고싶어요 목록
	List<EvaluationDto> selectWishList(Map map);


	//별점 전체 레코드 수
	int getTotalEvalueCount(Map map);

	//보고싶어요 전체 레코드 수
	int getTotalWishCount(Map map);

	//상세보기 용
	EvaluationDto selectOne(Map map);

	//각 별점 카운트
	int getEachEvalue(Map map);

	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);

}
