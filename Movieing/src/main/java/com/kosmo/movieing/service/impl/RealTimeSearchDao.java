package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.RealTimeSearchDto;
import com.kosmo.movieing.service.RealTimeSearchService;
@Repository
public class RealTimeSearchDao implements RealTimeSearchService {

	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public int insert(Map map) {
		return template.insert("searchInsert",map);
	}

	@Override
	public int update(Map map) {
		return template.update("searchUpdate",map);
	}

	@Override
	public List<RealTimeSearchDto> selectRTSearchList(Map map) {
		return template.selectList("selectRTSearchList", map);
	}

	
}
