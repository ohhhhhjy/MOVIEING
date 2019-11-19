package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.CommentDto;
import com.kosmo.movieing.service.CommentService;

@Service("commentService")
public class CommentServiceImpl implements CommentService{

	//Dao주입
	@Resource(name="commentDao")
	private CommentDao dao;

	@Override
	public boolean isMember(Map map) {
		return dao.isMember(map);
	}

	@Override
	public List<CommentDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalCount(Map map) {
		return dao.getTotalCount(map);
	}

	@Override
	public CommentDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public int getCommentCount(Map map) {
		return dao.getCommentCount(map);
	}
	@Override
	public List<CommentDto> selectSearchCommentList(Map map) {
		return dao.selectSearchCommentList(map);
	}



}
