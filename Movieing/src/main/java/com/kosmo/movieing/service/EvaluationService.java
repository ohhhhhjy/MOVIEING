package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface EvaluationService {

	//로그인
	boolean isLogin(Map map);
	//목록
	List<EvaluationDto> selectList(Map map);
	//전체 레코드 수
	int getTotalCount(Map map);
	//상세보기 용
	EvaluationDto selectOne(Map map);
	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);

}
