package com.kosmo.movieing.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.movieing.service.UserService;

@Controller
public class SignUpController {
	
	@Resource(name="userService")
	private UserService userService;

	@RequestMapping(value = "/Movieing/member/SignUp.mov" , method = RequestMethod.POST)
	public String SingUp(@RequestParam Map map) {
		userService.insert(map);
		
		return "";
	}
	
}
