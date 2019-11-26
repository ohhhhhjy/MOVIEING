package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface BuyService {

	// 상세보기 용
	List<BuyDto> selectList(Map map);
	
	// 입력/삭제
	int insert(Map map);


	int delete(Map map);
	
	int totalCount(Map map);
	
	int totalAmount(Map map);
	
}
