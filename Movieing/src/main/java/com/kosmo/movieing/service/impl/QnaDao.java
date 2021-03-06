package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.QnaDto;
import com.kosmo.movieing.service.QnaService;

@Repository
public class QnaDao implements QnaService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	

	@Override
	public List<QnaDto> selectList() {
		return template.selectList("selectQnaList");
	}


	@Override
	public QnaDto selectOne(Map map) {
		return template.selectOne("selectQnaOne",map);
	}


	@Override
	public int insert(Map map) {
		return template.insert("insertQna",map);
	}

	@Override
	public int update(Map map) {
		return template.update("updateQna",map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("deleteQna",map);
	}

	@Override
	public int reply(Map map) {
		return template.update("replyQna",map);
	}


}
