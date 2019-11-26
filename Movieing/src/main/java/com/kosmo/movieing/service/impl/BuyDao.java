package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.BuyDto;
import com.kosmo.movieing.service.BuyService;

@Repository
public class BuyDao implements BuyService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public int insert(Map map) {
		return template.insert("buyInsert",map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("buyDelete",map);
	}

	@Override
	public int totalCount(Map map) {
		return template.selectOne("buyListTotal",map);
	}

	@Override
	public List<BuyDto> selectList(Map map) {
		return template.selectList("buySelect",map);
	}

	@Override
	public int totalAmount(Map map) {
		return template.selectOne("buyAmountTotal",map);
	}
	
}
