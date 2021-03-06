package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface MoviePeopleService {

	//기존에 있는 id/닉네임 인지 확인용
	boolean isMember(Map map);
	//목록
	List<MoviePeopleDto> selectList(Map map);
	//감독  정보가 져오기
	MoviePeopleDto selectPeople(Map map);
	//감독 영화정보
	MoviePeopleDto selectPeopleMovie(Map map);
	//전체 레코드 수
	int getTotalCount(Map map);
	//상세보기 용
	MoviePeopleDto selectOne(Map map);
	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);


	List<MoviePeopleDto> selectListPeople(Map map);

	//감독 리스트
	List<MoviePeopleDto> selectDiretorList(Map map);

	//배우 리스트
	List<MoviePeopleDto> selectActorList(Map map);

	List<MoviePeopleDto> selectPeopleNoList(Map map);
	//Filmography 에서 영화인 이름으로 영화인 번호 찾는 쿼리
	MoviePeopleDto selectMoviePeopleNameOne(Map map);
}
