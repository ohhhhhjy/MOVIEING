package com.kosmo.movieing.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.movieing.service.CalendarDto;
import com.kosmo.movieing.service.CalendarService;

@Controller
public class CalendarAjaxController {
	
	@Resource(name="calendarService")
	private CalendarService calendarService;
	
	@ResponseBody
	@RequestMapping(value = "/Ajax/Calendar.mov")
	public String ajaxJsonArray() {
		Map map = new HashMap();
		//calendarService.selectList(map);
		List<CalendarDto> list = calendarService.selectList(map);
		String array="[";
		for(CalendarDto dto : list) {
			array+="{title:'"+ dto.getEventName()+"',start:'"+dto.getEventStart().toString()+"',end:'"+dto.getEventEnd().toString()+"'},";
		}
		array+="]";
		System.out.println(array);		
		return array;
		
	}	
	
	
}
