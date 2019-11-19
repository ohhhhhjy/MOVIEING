package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface NoticeService {

	// 목록
	List<NoticeDto> selectList(Map map);

	// 상세보기 용
	NoticeDto selectOne(Map map);
	
	// 입력/수정/삭제
	int insert(Map map);

	int update(Map map);

	int delete(Map map);
	
}
