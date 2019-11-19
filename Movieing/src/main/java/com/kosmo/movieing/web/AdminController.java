package com.kosmo.movieing.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.movieing.service.NoticeService;
import com.kosmo.movieing.service.QnaService;

@Controller
public class AdminController {
	
	@Resource(name="qnaService")
	private QnaService qnaService;
	
	@Resource(name="noticeService")
	private NoticeService noticeService;
	
	

	// 관리자페이지]
	@RequestMapping("/Movieing/admin/admin_main.mov")
	public String admin_main(@RequestParam Map map,Model model) {
		
		
		
		return "admin/admin_main.admin";
	}
	
	@RequestMapping("/Movieing/admin/admin_usermanagement.mov")
	public String admin_usermanagement() {
		return "admin/admin_usermanagement.admin";
	}
	
	@RequestMapping("/Movieing/admin/admin_qna.mov")
	public String admin_qna() {
		return "admin/admin_qna.admin";
	}

	@RequestMapping("/Movieing/admin/admin_announce.mov")
	public String admin_announce() {
		return "admin/admin_announce.admin";
	}
	@RequestMapping("/Movieing/admin/admin_awrite.mov")
	public String admin_announce_write() {
		return "admin/admin_awrite.admin";
	}


}//////// class
