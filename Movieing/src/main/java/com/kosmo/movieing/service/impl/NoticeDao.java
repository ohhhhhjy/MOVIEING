package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.NoticeDto;
import com.kosmo.movieing.service.NoticeService;

@Repository
public class NoticeDao implements NoticeService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<NoticeDto> selectList(Map map) {
		return template.selectList("selectNotiList",map);
	}


	@Override
	public NoticeDto selectOne(Map map) {
		return template.selectOne("selectNotiOne",map);
	}


	@Override
	public int insert(Map map) {
		return template.insert("insertNotice",map);
	}

	@Override
	public int update(Map map) {
		return template.update("updateNotice",map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("deleteNotice",map);
	}
	

	

}
