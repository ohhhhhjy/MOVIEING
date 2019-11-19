package com.kosmo.movieing.web;

import java.security.Principal;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.movieing.service.ReviewService;
import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

@Controller
public class MyController {

	@Resource(name = "reviewService")
	private ReviewService reviewService;
	@Resource(name="userService")
	private UserService userService;

	// 마이페이지1]
	@RequestMapping(value = "/Movieing/Blog/MyPage.mov" ,method=RequestMethod.GET)
	public String myPage(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		System.out.println("내정보 가져오기 성공적");

		return "blog/my/MyPage.tiles";
	}

	// 마이페이지2]
	@RequestMapping(value = "/Movieing/Blog/MyPage2.mov" ,method=RequestMethod.POST)
	public String myPage2(@RequestParam Map map, Model model, Principal principal) {
		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		System.out.println("이름:"+map.get("username"));
		System.out.println("닉네임:"+map.get("nick"));
		System.out.println("펀:"+map.get("phone"));
		System.out.println("이메일:"+map.get("email"));
		System.out.println("자소:"+map.get("publicinfo"));

		//수정한 정보업데이트
		int userUpdate=userService.update(map);
		//model.addAttribute("userUpdate", userUpdate);
		System.out.println("수정햇음");

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);

		return "blog/my/MyPage.tiles";

	}




	// 마이페이지_비밀번호]
	@RequestMapping("/Movieing/Blog/MyPage_Pass.mov")
	public String myPage_Pass(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_Pass.tiles";
	}

	// 마이페이지_허용범위]
	@RequestMapping("/Movieing/Blog/MyPage_Permit.mov")
	public String myPage_Permit(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_Permit.tiles";
	}

	// 마이페이지_알림]
	@RequestMapping("/Movieing/Blog/MyPage_Notice.mov")
	public String myPage_Notice(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_Notice.tiles";
	}

	// 마이페이지_문의]
	@RequestMapping("/Movieing/Blog/MyPage_QnA.mov")
	public String myPage_QnA(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_QnA.tiles";
	}

	// 마이페이지_도움말]
	@RequestMapping("/Movieing/Blog/MyPage_Help.mov")
	public String myPage_Help(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_Help.tiles";
	}
///////////////////////////////////////////////////////////////

	// 고객센터_메인
	@RequestMapping("/Movieing/my/Customer.mov")
	public String Customer() {
		return "my/Customer.tiles";
	}

	// 고객센터_글작성
	@RequestMapping("/Movieing/my/Customer_Write.mov")
	public String Customer_Write() {
		return "my/Customer_Write.tiles";
	}

	// 공지 보기
	@RequestMapping("/Movieing/my/Notice.mov")
	public String notice() {
		return "my/Notice.tiles";
	}

	// 작성글보기
	@RequestMapping("/Movieing/my/Customer_View.mov")
	public String Customer_View() {
		return "my/Customer_View.tiles";
	}

}
