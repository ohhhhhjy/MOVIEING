package com.kosmo.movieing.web;


import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.movieing.service.CommentService;
import com.kosmo.movieing.service.UserService;

@Controller
public class NotiAjaxController {

	@Resource(name = "commentService")
	private CommentService commentService;

	@Resource(name="userService")
	private UserService userService;

	@ResponseBody
	@RequestMapping(value = "/Ajax/Noti.mov")
	public String noti(Authentication auth) {
		//System.out.println("맵에서 꺼낸거 : "+map.get("id"));
		String id = auth.getName();
		int count = commentService.getCountNoti(id);
		if(count==16) {
			System.out.println("댓글 12개");
			return "1";
		}
		return "0";
	}

	@ResponseBody
	@RequestMapping(value = "/Ajax/TopImage.mov")
	public String topImage(Authentication auth) {
		String id = auth.getName();
		String imagePath = userService.selectImage(id);
		return imagePath;
	}

}
