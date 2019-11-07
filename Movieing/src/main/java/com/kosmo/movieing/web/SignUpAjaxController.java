package com.kosmo.movieing.web;

import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.movieing.service.impl.UserDao;

@Controller
public class SignUpAjaxController {
	
	@Resource(name="userDao")
	private UserDao dao;
	
	@ResponseBody
	@RequestMapping(value = "/Ajax/isMember.mov", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String ajaxText(@RequestParam Map map) {
		boolean isMember = dao.isMember(map);
		JSONObject json = new JSONObject();
		json.put("isMember", isMember?"Y":"N");
		return json.toJSONString();
	}
}
