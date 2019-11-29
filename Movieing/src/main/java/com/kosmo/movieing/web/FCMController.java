package com.kosmo.movieing.web;


import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class FCMController {




	@RequestMapping("/Movieing/FCMTest.mov")
	public String FCMTest(@RequestParam Map map,Model model) {


		return "FCMTest.tiles";
	}




}//////// class
