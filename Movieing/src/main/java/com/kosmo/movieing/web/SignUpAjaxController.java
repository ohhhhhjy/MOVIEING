package com.kosmo.movieing.web;

import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.kosmo.movieing.service.UserService;

@Controller
public class SignUpAjaxController {
	
	@Resource(name="userService")
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/Ajax/isMember.mov",method = RequestMethod.POST)
	public String ajaxText(@RequestParam Map map) {
		System.out.println(map.get("userid"));
		boolean isMember = userService.isMember(map);
//		JSONObject json = new JSONObject();
//		json.put("isMember", isMember?"Y":"N");
//		return json.toJSONString();	
		return isMember?"Y":"N";
		//return null;
	}
	
	
	@RequestMapping("/Ajax/hello.mov")
	public String test() {
		System.out.println("bbbbbbbbbbbbbbbb");
		return "hello";
	}
	
}
