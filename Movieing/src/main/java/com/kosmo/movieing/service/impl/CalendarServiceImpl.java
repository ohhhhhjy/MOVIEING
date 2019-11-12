package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.CalendarDto;
import com.kosmo.movieing.service.CalendarService;

@Service("calendarService")
public class CalendarServiceImpl implements CalendarService{
	
	//UserDao 객체 주입
	@Resource(name="calendarDao")
	private CalendarDao dao;

	@Override
	public List<CalendarDto> selectList(Map map) {
		
		return dao.selectList(map);
	}

}
