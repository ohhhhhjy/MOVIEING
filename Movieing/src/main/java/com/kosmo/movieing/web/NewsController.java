package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController {
	@RequestMapping("/Movieing/News/News.mov")
	public String movieMain() {
		
		
		return "news/Calendar.tiles";
	}
	
	@RequestMapping("/Movieing/Ticket/Buy.mov")
	public String buyTicket() {
		return "news/Buy.tiles";
	}

}
