package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface CommentService {

	//회원여부
	boolean isMember(Map map);
	//댓글목록
	List<CommentDto> selectList(Map map);
	//전체 레코드 수
	int getTotalCount(Map map);

	//댓글 갯수
	int getCommentCount(Map map);

	//상세보기
	CommentDto selectOne(Map map);
	//입력 수정 삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);

	//댓글 검색 
	List<CommentDto> selectSearchCommentList(Map map);
	
	//노티 테스트용
	int getCountNoti(String id);

}
