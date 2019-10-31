package com.kosmo.movieing.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;

@Controller
public class LoginController {

	
	//로그인 화면
	@RequestMapping("/Movieing/Member/Login.mov")
	public String Login() {
		return "member/Login.tiles";
	}
	
	@RequestMapping("/Movieing/Member/LoginProcess.mov")
	public String process(HttpSession session, @RequestParam  Map map, Model model) throws Exception {
		//서비스 호출
		boolean flag=isLogin(map);
		if(flag) {//회원
			
			model.addAttribute("dailyResult", boxofficeResult());//박스오피스JSON을 모델에 넘겨준다
			
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
	
	@RequestMapping("/Movieing/Movie/Main.mov")
	public String loginMain(Model model)  throws Exception{
		model.addAttribute("dailyResult", boxofficeResult());//박스오피스JSON을 모델에 넘겨준다
		return "main_logined.tiles";
	}
	
	
	public boolean isLogin(Map map) {
		if("KIM".equals(map.get("id")) && "1234".equals(map.get("pwd"))) {
			return true;
		}
		return false;
	}
	
	public HashMap<String,Object> boxofficeResult() throws Exception {
		//어제날짜 구하기(박스오피스는 가장최신이 어제날짜)
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		Calendar cal = new GregorianCalendar();
		cal.add(Calendar.DATE, -1);
		
		//kobis api적용
		String targetDt = format.format(cal.getTime());
		String itemPerPage ="10";

		String key = "094699f8b0bafb4aa9ba1fa2eca21b67";//API키
		KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);//키를 통한 서비스 호출

		//Kobis서비스의 get메소드 : 반환값은 String(JSON형태) 
		String dailyResponse = service.getDailyBoxOffice(true, targetDt, itemPerPage, null, null, null);

		//JSON
		ObjectMapper mapper = new ObjectMapper();
		//서비스에서 받은 json스트링을 맵형태로 바꾸어 dailyResult에 저장
		HashMap<String,Object> dailyResult = mapper.readValue(dailyResponse, HashMap.class);
		
		return dailyResult;
	}
	
	

	
}//////// class
