package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.CalendarDto;
import com.kosmo.movieing.service.CalendarService;

@Repository
public class CalendarDao implements CalendarService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<CalendarDto> selectList(Map map) {
		
		return template.selectList("calendarList",map);
	}
	
	
}
