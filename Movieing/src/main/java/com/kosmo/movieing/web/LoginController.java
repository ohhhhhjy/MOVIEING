package com.kosmo.movieing.web;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	
	//로그인 화면
	@RequestMapping("/Movieing/Member/Login.mov")
	public String Login() {
		return "member/Login.tiles";
	}
	
	@RequestMapping("/Movieing/Member/LoginProcess.mov")
	public String process(HttpSession session, @RequestParam  Map map, Model model) {
		//서비스 호출
		boolean flag=isLogin(map);
		if(flag) {//회원
			session.setAttribute("id", map.get("id"));
			return "main_logined.tiles";
		}
		else{//비회원/아이디 오류
			//model.addAttribute("NotMember", "아이디와 비밀번호가 틀려요");
		return "member/Login.tiles";
		}
	}////
	
	@RequestMapping("/Movieing/Member/Logout.mov")
	public String logout(HttpSession session) {
    	//로그아웃
		session.invalidate();
		return "index.tiles";
	}
	
	@RequestMapping("/Movieing/Member/SignUp.mov")
	public String movieMain() {
		return "member/SignUp.tiles";
	}
	
	public boolean isLogin(Map map) {
		if("KIM".equals(map.get("id")) && "1234".equals(map.get("pwd"))) {
			return true;
		}
		return false;
	}
	
	

	
}//////// class
