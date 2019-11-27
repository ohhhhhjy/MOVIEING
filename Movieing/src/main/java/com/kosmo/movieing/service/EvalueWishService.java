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
	//내가 별점준 영화 한편만
	EvaluationDto selectReviewEvalue(Map map);
	//내가 별점준 영화 한편만인데 방식다른]
	EvaluationDto selectEvalueOne(Map map);

	//평점
	double selectGradeAvg(Map map);

	//해당영화에 남긴 별점이 있는지 확인
	boolean isEvalue(Map map);

	//별점 전체 레코드 수
	int getTotalEvalueCount(Map map);

	//보고싶어요 전체 레코드 수
	int getTotalWishCount(Map map);

	//보고싶아 한개만 카운트
	int getEvalueOneLikeCount(Map map);


	//상세보기 용
	EvaluationDto selectOne(Map map);

	//각 별점 카운트
	int getEachEvalue(Map map);

	// 별점 입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);

	//보고싶어요 입력/수정/삭제
	int insertWish(Map map);
	int updateWish(Map map);
	int deleteWish(Map map);

	//평가 리스트에 넣기
	int insertEvalue(Map map);

	//평점 준 유무
	int selectEvalueCount(Map map);
	int selectEvalueCountAll(Map map);

}
