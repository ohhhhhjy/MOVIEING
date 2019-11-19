package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface QnaService {
	

	// 목록
	List<QnaDto> selectList(Map map);

	// 상세보기 용
	QnaDto selectOne(Map map);
	
	// 입력/수정/삭제/답변
	int insert(Map map);

	int update(Map map);

	int delete(Map map);
	
	int reply(Map map);
	
}
