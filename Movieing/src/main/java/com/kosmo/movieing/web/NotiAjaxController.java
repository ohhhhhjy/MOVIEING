package com.kosmo.movieing.web;

import java.security.Principal;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.movieing.service.UserService;

@Controller
public class NotiAjaxController {
	
	@Resource(name="userService")
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/Ajax/Noti.mov",method = RequestMethod.POST)
	public int noti(Principal principal) {
		
		String id = principal.getName();
		
		
		return 0;
	}

}
