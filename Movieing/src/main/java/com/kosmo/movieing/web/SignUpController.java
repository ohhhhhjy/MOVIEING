package com.kosmo.movieing.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kosmo.movieing.service.UserService;

@Controller
public class SignUpController {
	
	@Resource(name="userService")
	private UserService userService;

	@RequestMapping(value = "/Movieing/member/SignUp.mov" , method = RequestMethod.POST)
	public String SingUp(@RequestParam Map map, Model model) {
		userService.insert(map);
		userService.insertSec(map);
		model.addAttribute("userid", map.get("userid"));
		return "member/SignUpProfile.tiles";
	}
	
}
