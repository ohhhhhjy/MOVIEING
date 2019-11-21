package com.kosmo.movieing.web;


import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.movieing.service.CommentService;

@Controller
public class NotiAjaxController {
	
	@Resource(name = "commentService")
	private CommentService commentService;
	
	@ResponseBody
	@RequestMapping(value = "/Ajax/Noti.mov")
	public String noti(Authentication auth) {
		System.out.println("들어오는지");
		//System.out.println("맵에서 꺼낸거 : "+map.get("id"));
		String id = auth.getName();
		int count = commentService.getCountNoti(id);
		System.out.println(count);
		if(count==16) {
			System.out.println("댓글 12개");
			return "1";
		}
		return "0";
	}

}
