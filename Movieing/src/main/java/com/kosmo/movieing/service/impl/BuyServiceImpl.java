package com.kosmo.movieing.service.impl;

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
	public BuyDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}
	
}
