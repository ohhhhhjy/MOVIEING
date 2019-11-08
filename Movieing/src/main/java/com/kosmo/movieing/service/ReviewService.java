package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface ReviewService {

	//로그인
	boolean isLogin(Map map);
	List<ReviewDto> selectList(Map map);
	//나의 리뷰 목록
	List<ReviewDto> reviewSelectMyList(Map map);
	//내가 좋아요한 리뷰 목록
	List<ReviewDto> reviewSelectLikeList(Map map);


	//전체 레코드 수
	int getTotalCount(Map map);
	//상세보기 용
	ReviewDto selectOne(Map map);

	//무빙프렌즈 유저정보]
	ReviewDto selectMovieingOne(Map map);

	//마이페이지]
	List<ReviewDto> selectMyPageList(Map map);

	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);

}
