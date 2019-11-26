package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

	//ReviewDao 객체 주입
	@Resource(name="reviewDao")
	private ReviewDao dao;

	@Override
	public boolean isLogin(Map map) {

		return dao.isLogin(map);
	}

	@Override
	public List<ReviewDto> reviewSelectMyList(Map map) {

		return dao.reviewSelectMyList(map);
	}

	@Override
	public List<ReviewDto> selectList(Map map) {

		return dao.selectList(map);
	}

	@Override
	public int getTotalCount(Map map) {

		return dao.getTotalCount(map);
	}

	@Override
	public ReviewDto selectOne(Map map) {

		return dao.selectOne(map);
	}

	//무빙프렌즈
	@Override
	public ReviewDto selectMovieingOne(Map map) {
		return dao.selectMovieingOne(map);
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
	public List<ReviewDto> reviewSelectLikeList(Map map) {

		return dao.reviewSelectLikeList(map);
	}

	@Override
	public List<ReviewDto> selectMyPageList(Map map) {
		return dao.selectMyPageList(map);
	}

	@Override
	public List<ReviewDto> selectNotReviewList(Map map) {
		return dao.selectNotReviewList(map);
	}

	//리뷰 insert
	@Override
	public int insertReview(Map map) {
		return dao.insertReview(map);
	}

	@Override
	public List<ReviewDto> selectReviewList(Map map) {
		return dao.selectReviewList(map);
	}

	@Override
	public int getTotalMovieReviewCount(Map map) {

		return dao.getTotalMovieReviewCount(map);
	}

	@Override
	public List<ReviewDto> selectMovieReviewList(Map map) {

		return dao.selectMovieReviewList(map);
	}


	@Override
	public List<ReviewDto> selectFriendsList(Map map) {
		return dao.selectFriendsList(map);
	}

	@Override
	public List<ReviewDto> selectReviewNos(Map map) {
		return dao.selectReviewNos(map);
	}


	@Override
	public List<ReviewDto> friendsReviewList1(Map map) {
		return dao.friendsReviewList1(map);
	}

	@Override
	public List<ReviewDto> friendsReviewList2(Map map) {
		return dao.friendsReviewList2(map);
	}
	@Override
	public List<ReviewDto> selectSearchReviewList(Map map) {
		return dao.selectSearchReviewList(map);
	}

	@Override
	public List<ReviewDto> selectBestReviewList() {

		return dao.selectBestReviewList();
	}

	@Override
	public ReviewDto selectMyReviewOne(Map map) {
		return dao.selectMyReviewOne(map);
	}





}
