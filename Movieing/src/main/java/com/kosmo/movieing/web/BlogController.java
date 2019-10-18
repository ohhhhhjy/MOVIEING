package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	
	//메인페이지]
	@RequestMapping("/Movieing/Blog/BlogMain.mov")
	public String blogMain() {

		return "blog/my/BlogMain.tiles";
	}

	// 무빙프렌즈1]
	@RequestMapping("/Movieing/Blog/MovieingFriends.mov")
	public String blogFriends() {
		return "blog/my/MovieingFriends.tiles";
	}

	// 무빙프렌즈2]
	@RequestMapping("/Movieing/Blog/MovieingFriends2.mov")
	public String blogFriends2() {
		return "blog/my/MovieingFriends_2.tiles";
	}

	//마이페이지]
	@RequestMapping("/Movieing/Blog/MyPage.mov")
	public String myPage() {
		return "blog/my/MyPage.tiles";
	}
	
}//////// class
