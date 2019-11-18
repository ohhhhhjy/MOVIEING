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

	//영화이미지
	//전체영화리스트 가져오기
	List<MovieDto> selectListMovie(Map map);
	//영화 한개만 가져오기
	MovieDto selectOneMovie(Map map);
	//호러영화찾기
	List<MovieDto> selectListHorror(Map map);
	//로맨스영화찾기
	List<MovieDto> selectListRomance(Map map);
	//코미디영화찾기
	List<MovieDto> selectListComedy(Map map);
	//무빙의인기영화 랜덤 찾기
	List<MovieDto> selectListRandom(Map map);
	//전체영화 최신 랜덤 뿌리기
	List<MovieDto> selectListNewRandom(Map map);
	//랜덤용
	List<MovieDto> selectListARandom(Map map);

	//영화감독 리스트 가져오기
	List<MovieDto> selectListDirector(Map map);

	//검색 영화 용
	List<MovieDto> selectListSearchRadom(Map map);
	//검색 사람 용
	List<MovieDto> selectListSearchPeople(Map map);


}
