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
