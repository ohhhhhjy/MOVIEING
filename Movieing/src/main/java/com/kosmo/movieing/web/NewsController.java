package com.kosmo.movieing.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NewsController {
	@RequestMapping(value = "/Movieing/News/News.mov", method = RequestMethod.POST)
	public String movieMain(@RequestParam Map map, Model model) {
		
			model.addAttribute("seoulDR", map.get("seoulDR").toString());
		
		return "news/Calendar.tiles";
	}
	@RequestMapping(value = "/Movieing/News/News.mov", method = RequestMethod.GET)
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
