package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.LikeReviewDto;
import com.kosmo.movieing.service.LikeReviewService;

@Service("likeReviewService")
public class LikeReviewServiceImpl implements LikeReviewService{

	@Resource(name="likeReviewDao")
	private LikeReviewDao dao;


	@Override
	public boolean isLogin(Map map) {

		return dao.isLogin(map);
	}

	@Override
	public List<LikeReviewDto> selectList(Map map) {

		return dao.selectList(map);
	}

	@Override
	public int getTotalCount(Map map) {

		return dao.getTotalCount(map);
	}

	@Override
	public LikeReviewDto selectOne(Map map) {

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
	public int getTotalCountByMe(Map map) {

		return dao.getTotalCountByMe(map);
	}

	@Override
	public int getTotalCountByAll(Map map) {

		return dao.getTotalCountByAll(map);
	}

	@Override
	public List<LikeReviewDto> selectReviewNoList(Map map) {

		return dao.selectReviewNoList(map);
	}

}
