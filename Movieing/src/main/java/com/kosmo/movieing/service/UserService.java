package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface UserService {

	//기존에 있는 id/닉네임 인지 확인용
	boolean isMember(Map map);
	//목록
	List<UserDto> selectList(Map map);
	//유저
	List<UserDto> userSelectList(Map map);
	//나제외 모든 유저 닉
	List<UserDto> AllUserNick(Map map);

	//전체 레코드 수
	int getTotalCount(Map map);
	int getCountByDate(Map map);
	
	//상세보기 용
	UserDto selectOne(Map map);
	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);

	//회원가입 시 시큐리티 권한주기
	int insertSec(Map map);

	//회원가입 시 이미지 넣기
	int updateImage(Map map);

	//팔로워 유저 목록
	List<UserDto> selectFollowerList(Map map);
	//팔로잉 유저 목록
	List<UserDto> selectFollowingList(Map map);

	//유저닉네임으로 아이디 알아내기
	String selectUserId(String userNick);
	//검색 용
	List<UserDto> selectSearchList(Map map);

	//영화본 친구
	List<UserDto> selectMovieUserList(Map map);


	//유저 전체 검색용
	List<UserDto> selectAllUserList(Map map);

	//관리자 판단용
	boolean isAdmin(String id);

	//Top에서 쓸 이미지 가져오기용
	String selectImage(String id);






	//안드로이드 로그인 확인용
	boolean androidIsLogin(Map map);
	
	//비번변경
	int updatePass(Map map);



}
