package com.kosmo.movieing.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.movieing.service.CalendarDto;
import com.kosmo.movieing.service.CalendarService;

@Controller
public class NewsController {
	
	@Resource(name = "calendarService")
	private CalendarService calendarService;
	
	@RequestMapping(value = "/Movieing/News/News.mov", method = RequestMethod.GET)
	public String movieMain(Model model) {
		
		List<CalendarDto> calendar = calendarService.selectList();
		model.addAttribute("calendar", calendar);
		
		return "news/Calendar.tiles";
	}

	@RequestMapping("/Movieing/News/Exhibition.mov")
	public String exhibition() {
		return "news/Exhibition.tiles";
	}



	@RequestMapping("/Movieing/Ticket/Buy.mov")
	public String buyTicket() {
		return "news/buy/Buy.tiles";
	}

	@RequestMapping("/Movieing/Ticket/Pay.mov")
	public String payTicket() {
		return "news/buy/Pay.tiles";
	}

	@RequestMapping("/Movieing/Ticket/PaySuccess.mov")
	public String paySuccess() {

		return "news/buy/PaySuccess.tiles";
	}
	@RequestMapping("/Movieing/Ticket/PayFail.mov")
	public String payFail() {
		return "news/buy/Buy.tiles";
	}

}
