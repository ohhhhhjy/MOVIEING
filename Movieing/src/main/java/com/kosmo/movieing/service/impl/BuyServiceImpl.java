package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.BuyDto;
import com.kosmo.movieing.service.BuyService;

@Service("buyService")
public class BuyServiceImpl implements BuyService {

	@Resource(name="buyDao")
	private BuyDao dao;


	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public int totalCount(Map map) {
		return dao.totalCount(map);
	}

	@Override
	public List<BuyDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int totalAmount(Map map) {
		return dao.totalAmount(map);
	}
	
}
