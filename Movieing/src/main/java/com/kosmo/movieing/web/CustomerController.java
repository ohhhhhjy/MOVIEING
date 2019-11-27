package com.kosmo.movieing.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.movieing.service.QnaService;

@Controller
public class CustomerController {
	
	@Resource(name = "qnaService")
	private QnaService qnaService;

	@RequestMapping(value = "/Movieing/Customer/Write.mov", method = RequestMethod.POST)
	public String qnaWrite(@RequestParam Map map, Model model, Authentication auth) {
		String id = auth.getName();
		map.put("userId", id);
		System.out.println("id : "+id+", 제목 : "+map.get("qnaTitle")+"내용 : "+map.get("qnaContent"));
		qnaService.insert(map);
		return "forward:/Movieing/my/Customer.mov";
	}
	
	
}
