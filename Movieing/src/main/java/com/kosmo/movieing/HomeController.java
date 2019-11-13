package com.kosmo.movieing;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
//		if(auth.getAuthorities()!=null)
//			return "forward:/Movieing/Movie/Home.mov";
		return "index.tiles";
	}


}
