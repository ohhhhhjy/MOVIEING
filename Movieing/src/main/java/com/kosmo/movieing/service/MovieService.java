package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface MovieService {
	// 로그인
	boolean isLogin(Map map);

	// 목록
	List<MovieDto> selectList(Map map);

	// 개수
	int getTotalCount(Map map);

	// 상세보기 용
	MovieDto selectOne(Map map);
	//영화번호
	String selectMovieNo(Map map);

	// 입력/수정/삭제
	int insert(Map map);

	int update(Map map);

	int delete(Map map);

}
