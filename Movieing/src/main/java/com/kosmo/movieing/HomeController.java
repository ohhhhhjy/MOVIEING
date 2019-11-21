package com.kosmo.movieing;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosmo.movieing.service.UserService;


@Controller
public class HomeController {

	
	
	@ExceptionHandler(Exception.class)
	public String error(Model model) {
		return "index.tiles";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Authentication auth) {
		if(auth.getAuthorities()!=null) {
			
			return "forward:/Movieing/Movie/Home.mov";
		}
		return "index.tiles";
	}


}
