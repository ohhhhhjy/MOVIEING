package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;

@Repository
public class ReviewDao implements ReviewService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	//로그인용
	@Override
	public boolean isLogin(Map map) {

		return (Integer)template.selectOne("reviewLogin",map)==1?true:false;
	}

	//전체목록
	@Override
	public List<ReviewDto> reviewSelectMyList(Map map) {
		return template.selectList("reviewSelectMyList",map);
	}

	@Override
	public int getTotalCount(Map map) {

		return template.selectOne("reviewTotal",map);
	}

	@Override
	public ReviewDto selectOne(Map map) {

		return template.selectOne("reviewSelectOne", map);
	}



	@Override
	public int insert(Map map) {

		return template.insert("reviewInsert", map);
	}

	@Override
	public int update(Map map) {

		return template.update("reviewUpdate", map);
	}

	@Override
	public int delete(Map map) {

		//template.delete("commentDeleteByNo", map);
		return template.delete("reviewDelete", map);
	}

	@Override
	public List<ReviewDto> reviewSelectLikeList(Map map) {

		return template.selectList("reviewSelectLikeList",map);
	}
	//무빙 셀프소개
	@Override
	public ReviewDto selectMovieingOne(Map map) {
		return template.selectOne("selectMovieingOne",map);
	}

	@Override
	public  List<ReviewDto> selectMyPageList(Map map) {
		return template.selectList("selectMyPageList",map);
	}

	@Override
	public List<ReviewDto> selectList(Map map) {

		return template.selectList("selectList",map);
	}

	@Override
	public List<ReviewDto> selectNotReviewList(Map map) {
		return template.selectList("selectNotReviewList",map);
	}

	//리뷰 insert
	@Override
	public int insertReview(Map map) {
		return template.insert("insertReview",map);
	}

	//내글 가져오기 보기
	@Override
	public List<ReviewDto> selectReviewList(Map map) {
		return template.selectList("selectReviewList", map);
	}

	@Override
	public int getTotalMovieReviewCount(Map map) {

		return template.selectOne("getTotalMovieReviewCount",map);
	}

	@Override
	public List<ReviewDto> selectMovieReviewList(Map map) {

		return template.selectList("selectMovieReviewList",map);
	}

	@Override
	public List<ReviewDto> selectFriendsList(Map map) {
		return template.selectList("selectFriendsList", map);
	}

	@Override
	public List<ReviewDto> selectReviewNos(Map map) {
		return template.selectList("selectReviewNos", map);
	}

	@Override
	public List<ReviewDto> friendsReviewList1(Map map) {
		return template.selectList("friendsReviewList1", map);
	}

	@Override
	public List<ReviewDto> friendsReviewList2(Map map) {
		return template.selectList("friendsReviewListFollower", map);
	}



}
