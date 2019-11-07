package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//
@Controller
public class MyController {

	// 고객센터_메인
	@RequestMapping("/Movieing/my/Customer.mov")
	public String Customer() {
		return "my/Customer.tiles";
	}

	// 고객센터_글작성
	@RequestMapping("/Movieing/my/Customer_Write.mov")
	public String Customer_Write() {
		return "my/Customer_Write.tiles";
	}

	// 공지 보기
	@RequestMapping("/Movieing/my/Notice.mov")
	public String notice() {
		return "my/Notice.tiles";
	}

	// 작성글보기
	@RequestMapping("/Movieing/my/Customer_View.mov")
	public String Customer_View() {
		return "my/Customer_View.tiles";
	}

}
