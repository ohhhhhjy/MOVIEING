package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface FollowService {

	//기존에 있는 id/닉네임 인지 확인용
	boolean isMember(Map map);
	//목록
	List<FollowDto> selectFollowList(Map map);
	//전체 팔로잉 수
	int getTotalFollowingCount(Map map);
	//전체 팔로워 수
	int getTotalFollowerCount(Map map);

	//상세보기 용
	FollowDto selectOne(Map map);
	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);

}
