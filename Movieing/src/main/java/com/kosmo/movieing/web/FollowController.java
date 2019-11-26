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

	//팔로우하기]
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
	//팔로우하기]-무빙프렌즈
	@ResponseBody
	@RequestMapping("/Movieing/Ajax/FollowFriends.mov")
	public void followFriends(@RequestParam Map map,Authentication auth) {
		String id = auth.getName();
		System.out.println("유저닉네임:"+map.get("userNick").toString());
		map.put("id", id);
		followService.insert(map);
		System.out.println("팔로우성공");

	}


	//팔로우언팔]
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
