package com.kosmo.movieing.android;

import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.movieing.service.UserService;

@Controller
public class AndroidController {

	@Resource(name="userService")
	private UserService userService;

	@ResponseBody
	@RequestMapping(value="/Movieing/Android/Login.mov")
	public String login(@RequestParam Map map) {

		boolean isLogin = userService.androidIsLogin(map);
		JSONObject json = new JSONObject();
		json.put("isLogin", isLogin?"Y":"N");

		return json.toJSONString();
	}
	
	@ResponseBody
	@RequestMapping(value="/Movieing/Android/EvalueList.mov")
	public String evalueList(@RequestParam Map map) {
		
		boolean isLogin = userService.androidIsLogin(map);
		JSONObject json = new JSONObject();
		json.put("isLogin", isLogin?"Y":"N");
		
		return json.toJSONString();
	}





}
