package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

	// 관리자페이지]
	@RequestMapping("/Movieing/admin/admin_main.mov")
	public String admin_main() {
		return "admin/admin_main.tiles";
	}

	// 관리자페이지2]
	@RequestMapping("/Movieing/admin/admin2.mov")
	public String admin2() {
		return "admin/admin2.tiles";
	}


}//////// class
