package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	//로그인 화면
	@RequestMapping("/Movieing/Movie/Login.mov")
	public String Login() {
		return "movie/login/Login.tiles";
	}

	
}//////// class
