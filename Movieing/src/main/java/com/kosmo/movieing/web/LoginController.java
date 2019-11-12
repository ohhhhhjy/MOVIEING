package com.kosmo.movieing.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;

@Controller
public class LoginController {

	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;




	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
	this.naverLoginBO = naverLoginBO;
	}
	//로그인 화면
	@RequestMapping(value = "/Movieing/Member/Login.mov",  method = { RequestMethod.GET, RequestMethod.POST })
	public String Login(Model model, HttpSession session) {
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		model.addAttribute("url", naverAuthUrl);
		return "member/Login.tiles";
	}




//	@RequestMapping("/Movieing/Member/LoginProcess.mov")
//	public String process(HttpSession session, @RequestParam  Map map, Model model) throws Exception {
//		System.out.println("뭐냐고");
////		//서비스 호출
////		boolean flag=isLogin(map);
////		if(flag) {//회원
////
////			model.addAttribute("dailyResult", boxofficeResult());//박스오피스JSON을 모델에 넘겨준다
////
////			session.setAttribute("id", map.get("id"));
////			return "main_logined.tiles";
////		}
////		else{//비회원/아이디 오류
////			//model.addAttribute("NotMember", "아이디와 비밀번호가 틀려요");
////		return "member/Login.tiles";
////		}
//
//		return "main_logined.tiles";
//	}////

//	@RequestMapping("/Movieing/Member/Logout.mov")
//	public String logout(HttpSession session) {
//    	//로그아웃
//		session.invalidate();
//		return "index.tiles";
//	}

	//회원가입
	@RequestMapping("/Movieing/Member/SignUp.mov")
	public String movieMain() {
		return "member/SignUp.tiles";
	}

//	@RequestMapping(value = "/Movieing/Movie/Main.mov",  method = { RequestMethod.GET, RequestMethod.POST })
//	public String loginMain(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception{
//		OAuth2AccessToken oauthToken;
//		oauthToken = naverLoginBO.getAccessToken(session, code, state);
//		//1. 로그인 사용자 정보를 읽어온다.
//		apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터
//		//2. String형식인 apiResult를 json형태로 바꿈
//		JSONParser parser = new JSONParser();
//		Object obj = parser.parse(apiResult);
//		JSONObject jsonObj = (JSONObject) obj;
//		//3. 데이터 파싱
//		//Top레벨 단계 _response 파싱
//		JSONObject response_obj = (JSONObject)jsonObj.get("response");
//		//response의 nickname값 파싱
//		String nickname = (String)response_obj.get("nickname");
//		System.out.println(nickname);
//		//4.파싱 닉네임 세션으로 저장
//		session.setAttribute("sessionId",nickname); //세션 생성
//		model.addAttribute("result", apiResult);
//		model.addAttribute("dailyResult", boxofficeResult());//박스오피스JSON을 모델에 넘겨준다
//		return "main_logined.tiles";
//	}

	@RequestMapping("/Movieing/Movie/Home.mov")
	public String goToHome(Model model) throws Exception {
		model.addAttribute("dailyResult", boxofficeResult());
		return "main_logined.tiles";
	}


//	public boolean isLogin(Map map) {
//		if("KIM".equals(map.get("id")) && "1234".equals(map.get("pwd"))) {
//			return true;
//		}
//		return false;
//	}

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
