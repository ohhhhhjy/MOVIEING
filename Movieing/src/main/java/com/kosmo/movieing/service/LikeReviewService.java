package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface LikeReviewService {

	//로그인
	boolean isLogin(Map map);
	//목록
	List<LikeReviewDto> selectList(Map map);
	//내가 특정리뷰에 누른 좋아요 갯수
	int getTotalCount(Map map);
	//내가 누른 모든리뷰에 대한 총 좋아요 갯수
	int getTotalCountByMe(Map map);
	//모든유저가 특정리뷰에 누른 좋아요 갯수
	int getTotalCountByAll(Map map);

	//상세보기 용
	LikeReviewDto selectOne(Map map);
	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	//좋아요삭제
	int delete(Map map);

	//내가 좋아요 누른 리뷰 리스트
	List<LikeReviewDto> selectReviewNoList(Map map);

}
