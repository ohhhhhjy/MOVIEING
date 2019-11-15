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
		return "news/buy/Buy.tiles";
	}
	
	@RequestMapping("/Movieing/Ticket/Pay.mov")
	public String payTicket() {
		return "news/buy/Pay.tiles";
	}
	
	@RequestMapping("/Movieing/Ticket/PaySuccess.mov")
	public String paySuccess() {
		return "news/buy/PayComplete.tiles";
	}
	@RequestMapping("/Movieing/Ticket/PayFail.mov")
	public String payFail() {
		return "news/buy/Buy.tiles";
	}

}
