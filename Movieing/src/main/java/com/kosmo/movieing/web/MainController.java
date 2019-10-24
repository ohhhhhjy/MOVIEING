package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	//로그인 화면
	@RequestMapping("/Movieing/main_logined.mov")
	public String Login() {
		return "main_logined.tiles";
	}

	
}//////// class
