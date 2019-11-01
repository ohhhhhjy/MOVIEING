package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChatController {


	@RequestMapping("/Movieing/ChatLayout.mov")
	public String chatLayout() {
		return "ChatLayout.tiles";
	}

}//////// class
