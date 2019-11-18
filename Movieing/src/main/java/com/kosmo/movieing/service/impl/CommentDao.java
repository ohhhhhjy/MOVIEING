package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.CommentDto;
import com.kosmo.movieing.service.CommentService;
@Repository
public class CommentDao implements CommentService{

	 @Resource(name="template")
	   private SqlSessionTemplate template;

	@Override
	public boolean isMember(Map map) {
		return false;
	}

	@Override
	public List<CommentDto> selectList(Map map) {
		return template.selectList("selectCommentList", map);
	}

	@Override
	public int getTotalCount(Map map) {
		return 0;
	}

	@Override
	public CommentDto selectOne(Map map) {
		return null;
	}

	@Override
	public int insert(Map map) {
		return template.insert("commentInsert", map);
	}

	@Override
	public int update(Map map) {
		return 0;
	}

	@Override
	public int delete(Map map) {
		return template.delete("commentDelete", map);
	}

	@Override
	public int getCommentCount(Map map) {
		return template.selectOne("getCommentCount", map);
	}

}
