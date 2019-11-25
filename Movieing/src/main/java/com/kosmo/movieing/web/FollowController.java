package com.kosmo.movieing.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.movieing.service.FollowService;

@Controller
public class FollowController {
	
	@Resource(name = "followService")
	private FollowService followService;

	@ResponseBody
	@RequestMapping("/Movieing/Ajax/Follow.mov")
	public void follow(Authentication auth, @RequestParam String userNick) {
		String id = auth.getName();
		System.out.println("id = "+id+", userNick = "+userNick);
		Map map = new HashMap();
		map.put("id", id);
		map.put("userNick", userNick);
		followService.insert(map);
		
		
	}
	
	@ResponseBody
	@RequestMapping("/Movieing/Ajax/UnFollow.mov")
	public void unfollow(Authentication auth, @RequestParam String userNick) {
		String id = auth.getName();
		System.out.println("id = "+id+", userNick = "+userNick);
		Map map = new HashMap();
		map.put("id", id);
		map.put("userNick", userNick);
		followService.delete(map);
		
		
	}
	
	
}
