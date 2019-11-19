package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.RealTimeSearchDto;
import com.kosmo.movieing.service.RealTimeSearchService;
@Service("realTimeSearchService")
public class RealTimeSearchServiceImpl implements RealTimeSearchService {

	
	@Resource(name="realTimeSearchDao")
	private RealTimeSearchDao dao;

	
	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public List<RealTimeSearchDto> selectRTSearchList(Map map) {
		return dao.selectRTSearchList(map);
	}

}
