package com.kosmo.movieing.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.movieing.service.EvaluationDto;
import com.kosmo.movieing.service.EvalueWishService;
import com.kosmo.movieing.service.FollowService;
import com.kosmo.movieing.service.LikeReviewService;
import com.kosmo.movieing.service.MovieService;
import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;

@Controller
public class BlogController {

	@Resource(name = "reviewService")
	private ReviewService reviewService;

	@Resource(name = "evalueWishService")
	private EvalueWishService evalueWishService;

	@Resource(name = "likeReviewService")
	private LikeReviewService likeReviewService;


	@Resource(name = "movieService")
	private MovieService movieService;

	@Resource(name = "followService")
	private FollowService followService;



	// 블로그메인
	@RequestMapping(value = "/Movieing/Blog/BlogMain.mov", method = RequestMethod.GET)
	public String blogMain(@RequestParam Map map, Model model) {
		String id = "kim";// 임시

		map.put("id", id);
		model.addAttribute("id", id);

		// [유저정보] count 별.리.좋.보. 팔로워.팔로잉.
		// 별점 카운트
		int evalueCount = evalueWishService.getTotalEvalueCount(map);
		model.addAttribute("evalueCount", evalueCount);
		// 리뷰 카운트
		int reviewCount = reviewService.getTotalCount(map);
		model.addAttribute("reviewCount", reviewCount);
		// 좋아요 카운트
		int likeCount = likeReviewService.getTotalCountByMe(map);
		model.addAttribute("likeCount", likeCount);
		// 보고싶어요 카운트
		int wishCount = evalueWishService.getTotalWishCount(map);

		model.addAttribute("wishCount", wishCount);

		//팔로잉 카운트
		int followingCount = followService.getTotalFollowingCount(map);
		model.addAttribute("followingCount",followingCount);
		//팔로우 카운트
		int followerCount = followService.getTotalFollowerCount(map);
		model.addAttribute("followerCount",followerCount);


		List<ReviewDto> selectReviewList=reviewService.selectReviewList(map);// 쓴글 가져오기
		model.addAttribute("selectReviewList", selectReviewList);

		return "blog/my/BlogMain.tiles";
	}/////////////////////////////////////////////



	@RequestMapping(value = "/Movieing/Blog/BlogMain.mov", method = RequestMethod.POST)
	public String blogMain2(@RequestParam Map map, Model model) {
		String id = "kim";// 임시
		map.put("id", id);
		model.addAttribute("id", id);

		String reviewNo="4";//계속 바꿔야
		map.put("reviewNo", reviewNo);
		model.addAttribute("reviewNo", reviewNo);


		// 리뷰남김거 받기]
		// map에 write으로 map형태로 받음

		String movieTitle = map.get("movieTitle").toString();
		String grade = map.get("grade").toString();
		String reviewContent = map.get("reviewContent").toString();
		String publicPrivate = map.get("publicPrivate").toString();

		String movieNo = movieService.selectMovieNo(map);
		map.put("movieNo", movieNo);

		model.addAttribute("movieTitle", movieTitle);
		model.addAttribute("movieNo", movieNo);// 영화번호
		model.addAttribute("grade", grade);// 평점
		model.addAttribute("reviewContent", reviewContent);// 내용



		System.out.println("영화제목:" + movieTitle);
		System.out.println("영화번호:" + movieNo);
		System.out.println("평점:" + grade);
		System.out.println("리뷰내용:" + reviewContent);
		System.out.println("공개여부:" + publicPrivate);

		int insertReview = reviewService.insertReview(map);

		// 공개여부
		// publicPrivate=2?"Y":"N";//공개여부면 Y로 저장,나만보기는 N으로 저장

		model.addAttribute("insertReview", insertReview);// 리뷰테이블에 insert

		List<ReviewDto> selectReviewList=reviewService.selectReviewList(map);// 쓴글 가져오기
		model.addAttribute("selectReviewList", selectReviewList);

		// 해쉬태그 추가해야함

		return "blog/my/BlogMain.tiles";

	}////////////////////////////////


	// 블로그-내 활동
	@RequestMapping("/Movieing/Blog/MyActivity.mov")
	public String myActiviy(@RequestParam Map map, Model model) throws Exception {
		String id = "KIM";// 임시

		map.put("id", id);
		model.addAttribute("id", id);

		String page = map.get("page") == null ? "a" : map.get("page").toString();
		model.addAttribute("page", page);

		// 1.별점
		List<EvaluationDto> evaluationList = evalueWishService.selectEvalueList(map);
		// 가져온 리스트에 사진url담아주기
		for (EvaluationDto record : evaluationList) {
			record.setImgUrl(naverDefaultMovieImgUrl(record.getMovieTitle()));
		}
		// 2.리뷰
		List<ReviewDto> reviewList = reviewService.reviewSelectMyList(map);
		// 가져온 리스트에 사진url담아주기
		for (ReviewDto record : reviewList) {
			record.setImgUrl(naverDefaultMovieImgUrl(record.getMovieTitle()));
		}

		// 3.좋아요
		List<ReviewDto> reviewLikeList = reviewService.reviewSelectLikeList(map);
		// 가져온 리스트에 사진url담아주기
		for (ReviewDto record : reviewLikeList) {
			record.setImgUrl(naverDefaultMovieImgUrl(record.getMovieTitle()));
		}

		// 4.보고싶어요
		List<EvaluationDto> wishList = evalueWishService.selectWishList(map);
		// 가져온 리스트에 사진url담아주기
		for (EvaluationDto record : wishList) {
			record.setImgUrl(naverDefaultMovieImgUrl(record.getMovieTitle()));
		}

		model.addAttribute("evaluationList", evaluationList);// 별점
		model.addAttribute("reviewList", reviewList);// 리뷰
		model.addAttribute("reviewLikeList", reviewLikeList);// 좋아요
		model.addAttribute("wishList", wishList);// 보고싶어요

		return "blog/my/MyActivity.tiles";
	}

	// 좋아요 삭제
	@ResponseBody
	@RequestMapping(value="/Movieing/Blog/LikeRemove.mov", method = RequestMethod.POST)
	public String likeRemove(@RequestParam Map map) {
		String id = "KIM";// 임시
		int reviewNo = Integer.parseInt(map.get("reviewNo").toString());
		map.put("reviewNo", reviewNo);
		map.put("id", id);
		likeReviewService.delete(map);
		int count = likeReviewService.getTotalCountByAll(map);
		return String.valueOf(count);
	}

	// 좋아요 입력
	@ResponseBody
	@RequestMapping(value="/Movieing/Blog/LikeInsert.mov", method = RequestMethod.POST)
	public String likeInsert(@RequestParam Map map) {
		String id = "KIM";// 임시
		int reviewNo = Integer.parseInt(map.get("reviewNo").toString());
		map.put("reviewNo", reviewNo);
		map.put("id", id);
		likeReviewService.insert(map);
		int count = likeReviewService.getTotalCountByAll(map);
		return String.valueOf(count);
	}

	/////////////////////////////////////////////////////////////////////////////////////

	// 무빙프렌즈1]
	@RequestMapping("/Movieing/Blog/MovieingFriends.mov")
	public String blogFriends(@RequestParam Map map, Model model) {
		// 세션아이디
		String id = "kim";// 임시

		map.put("id", id);
		List<ReviewDto> reviewList = reviewService.reviewSelectMyList(map);// 리스트전체조회
		model.addAttribute("reviewList", reviewList);

		// 피드 글보이기]
		List<ReviewDto> friendsReviewList = reviewService.selectList(map);// 리스트전체조회
		model.addAttribute("friendsReviewList", friendsReviewList);

		// 유저자기소개]
		ReviewDto friendsSelf = reviewService.selectMovieingOne(map);// 1개
		model.addAttribute("friendsSelf", friendsSelf);

		// 리뷰 넘버 임시]
		int reviewNo = 1;
		map.put("reviewNo", reviewNo);

		// 좋아요]
		int friendsLike = likeReviewService.getTotalCountByAll(map);// 1개
		model.addAttribute("friendsLike", friendsLike);

		return "blog/my/MovieingFriends.tiles";
	}///////////////////////////////////////////////////////////////////////////////

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
	public String myPage(@RequestParam Map map, Model model) {

		// 세션아이디
		String id = "kim";// 임시

		map.put("id", id);

		// 내 정보뿌려주기
		ReviewDto mypage = reviewService.selectMovieingOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);

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

	// 글쓰기 페이지]
	@RequestMapping("/Movieing/Blog/WritePage.mov")
	public String write(@RequestParam Map map, Model model) {

		// 세션아이디
		String id = "kim";// 임시

		map.put("id", id);

		// 내 정보뿌려주기
		List<ReviewDto> write = reviewService.selectNotReviewList(map);// 리스트전체조회
		model.addAttribute("write", write);

		return "blog/my/WritePage.tiles";
	}////////////////////////////////////////////

	// 네이버가 제공하는 기본 영화포스터 이미지url을 얻기위한 메소드(고화질 아님.작은 이미지라 저화질이어도 괜찮음.)
	public String naverDefaultMovieImgUrl(String movieNm) throws Exception {
		String clientId = "T1e73cqxyZeqqNbXbMLa";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "cqCUwiyR31";// 애플리케이션 클라이언트 시크릿값";

		String text = URLEncoder.encode(movieNm, "UTF-8");
		String apiURL = "https://openapi.naver.com/v1/search/movie?query=" + text; // json 결과
		URL url = new URL(apiURL);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("X-Naver-Client-Id", clientId);
		con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
		int responseCode = con.getResponseCode();
		BufferedReader br;
		if (responseCode == 200) { // 정상 호출
			br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		} else { // 에러 발생
			br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		}
		String inputLine;
		StringBuffer response = new StringBuffer();
		while ((inputLine = br.readLine()) != null) {
			response.append(inputLine);
		}
		br.close();

		// JSON
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, List<Map>> movieInfoMap = mapper.readValue(response.toString(), HashMap.class);
		String imgStr = movieInfoMap.get("items").get(0).get("image").toString();

		return imgStr;

	}/// movieImgMap

}//////// class
