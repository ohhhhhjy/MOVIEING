package com.kosmo.movieing.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;

@Controller
public class BlogController {

	@Resource(name="reviewService")
	private ReviewService reviewService;

	// 블로그메인
	@RequestMapping("/Movieing/Blog/BlogMain.mov")
	public String blogMain() {
		return "blog/my/BlogMain.tiles";
	}

	// 블로그-내 활동
	@RequestMapping("/Movieing/Blog/MyActivity.mov")
	public String myActiviy(@RequestParam Map map, Model model) {
		String id= "KIM";//임시

		map.put("id", id);

		String page = map.get("page")==null?"a":map.get("page").toString();
		model.addAttribute("page", page);

		List<ReviewDto> reviewList = reviewService.selectList(map);
		model.addAttribute("reviewList", reviewList);


		return "blog/my/MyActivity.tiles";
	}

	/////////////////////////////////////////////////////////////////////////////////////

	// 무빙프렌즈1]
	@RequestMapping("/Movieing/Blog/MovieingFriends.mov")
	public String blogFriends(@RequestParam Map map,Model model) {

		List<ReviewDto> reviewList=reviewService.selectList(map);//리스트전체조회
		model.addAttribute("reviewList",reviewList);

		return "blog/my/MovieingFriends.tiles";
	}

	// 무빙프렌즈2]
	@RequestMapping("/Movieing/Blog/MovieingFriends2.mov")
	public String blogFriends2() {
		return "blog/my/MovieingFriends_2.tiles";
	}

	// 무빙프렌즈-타임라인]
	@RequestMapping("/Movieing/Blog/MF_Timeline.mov")
	public String mf_Timeline() {
		return "blog/my/MF_Timeline.tiles";
	}

	// 마이페이지]
	@RequestMapping("/Movieing/Blog/MyPage.mov")
	public String myPage() {
		return "blog/my/MyPage.tiles";
	}

	// 마이페이지_비밀번호]
	@RequestMapping("/Movieing/Blog/MyPage_Pass.mov")
	public String myPage_Pass() {
		return "blog/my/MyPage_Pass.tiles";
	}

	// 마이페이지_허용범위]
	@RequestMapping("/Movieing/Blog/MyPage_Permit.mov")
	public String myPage_Permit() {
		return "blog/my/MyPage_Permit.tiles";
	}

	// 마이페이지_알림]
	@RequestMapping("/Movieing/Blog/MyPage_Notice.mov")
	public String myPage_Notice() {
		return "blog/my/MyPage_Notice.tiles";
	}

	// 마이페이지_문의]
	@RequestMapping("/Movieing/Blog/MyPage_QnA.mov")
	public String myPage_QnA() {
		return "blog/my/MyPage_QnA.tiles";
	}

	// 마이페이지_도움말]
	@RequestMapping("/Movieing/Blog/MyPage_Help.mov")
	public String myPage_Help() {
		return "blog/my/MyPage_Help.tiles";
	}

	//글쓰기 페이지]
	@RequestMapping("/Movieing/Blog/WritePage.mov")
	public String write() {
		return "blog/my/WritePage.tiles";
	}



}//////// class
