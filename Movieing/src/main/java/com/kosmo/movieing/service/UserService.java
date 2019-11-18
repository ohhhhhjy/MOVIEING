package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface UserService {

	//기존에 있는 id/닉네임 인지 확인용
	boolean isMember(Map map);
	//목록
	List<UserDto> selectList(Map map);
	//전체 레코드 수
	int getTotalCount(Map map);
	//상세보기 용
	UserDto selectOne(Map map);
	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);
	
	//회원가입 시 시큐리티 권한주기
	int insertSec(Map map);

	//팔로워 유저 목록
	List<UserDto> selectFollowerList(Map map);
	//팔로잉 유저 목록
	List<UserDto> selectFollowingList(Map map);
}
