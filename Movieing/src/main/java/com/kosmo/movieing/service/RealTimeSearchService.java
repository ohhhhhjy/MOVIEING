package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface RealTimeSearchService {

	int insert(Map map);
	int update(Map map);
	
	List<RealTimeSearchDto> selectRTSearchList(Map map);
	
}
