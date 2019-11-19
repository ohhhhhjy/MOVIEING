package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ThreaterController {

	// 영화상영시간표]
	@RequestMapping("/Movieing/Movie/Threater/ThreaterInfo.mov")
	public String admin_main() {
		return "movie/threater/ThreaterInfo.tiles";
	}


}//////// class
