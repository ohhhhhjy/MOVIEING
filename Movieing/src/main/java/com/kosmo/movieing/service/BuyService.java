package com.kosmo.movieing.service;

import java.util.Map;

public interface BuyService {

	// 상세보기 용
	BuyDto selectOne(Map map);
	
	// 입력/삭제
	int insert(Map map);


	int delete(Map map);
	
}
