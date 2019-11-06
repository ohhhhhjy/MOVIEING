package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;

@Repository
public class ReviewDao implements ReviewService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	//로그인용
	@Override
	public boolean isLogin(Map map) {

		return (Integer)template.selectOne("reviewLogin",map)==1?true:false;
	}

	//전체목록
	@Override
	public List<ReviewDto> selectList(Map map) {
		return template.selectList("reviewSelectList",map);
	}

	@Override
	public int getTotalCount(Map map) {

		return template.selectOne("reviewTotal",map);
	}

	@Override
	public ReviewDto selectOne(Map map) {

		return template.selectOne("reviewSelectOne", map);
	}

	@Override
	public int insert(Map map) {

		return template.insert("reviewInsert", map);
	}

	@Override
	public int update(Map map) {

		return template.update("reviewUpdate", map);
	}

	@Override
	public int delete(Map map) {

		template.delete("commentDeleteByNo", map);
		return template.delete("reviewDelete", map);
	}

}
