package com.kosmo.movieing.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.movieing.service.CommentService;
import com.kosmo.movieing.service.EvaluationDto;
import com.kosmo.movieing.service.EvalueWishService;
import com.kosmo.movieing.service.FollowDto;
import com.kosmo.movieing.service.FollowService;
import com.kosmo.movieing.service.LikeReviewService;
import com.kosmo.movieing.service.MovieService;
import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;
import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

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

	@Resource(name = "commentService")
	private CommentService commentService;

	@Resource(name = "userService")
	private UserService userService;

	// 블로그메인
	@RequestMapping(value = "/Movieing/Blog/BlogMain.mov")
	public String blogMain(@RequestParam Map map, Model model, Authentication auth ,HttpServletRequest req ) throws Exception {

		String id = auth.getName();
		if(map.get("userNick")!=null) {
			id= userService.selectUserId(map.get("userNick").toString());
		}

		map.put("id", id);
		model.addAttribute("id", id);
		// [유저정보] count 별.리.좋.보. 팔로워.팔로잉.
		// 유저 정보
		UserDto userInfo = userService.selectOne(map);
		model.addAttribute("userInfo", userInfo);

		// 유저의 가입일수 구하기(뫄뫄님이 가입하신지 며칠째)..
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		java.util.Date today = new java.util.Date();
		long diff = (today.getTime() - userInfo.getUserSignupDate().getTime()) / 1000 / (60 * 60 * 24) + 1;
		model.addAttribute("signUpDays", diff);

		// 각 별점 카운트 리스트
		// 1
		map.put("number", 1);
		int evalue1 = evalueWishService.getEachEvalue(map);
		model.addAttribute("evalue1", evalue1);
		// 2
		map.put("number", 2);
		int evalue2 = evalueWishService.getEachEvalue(map);
		model.addAttribute("evalue2", evalue2);
		// 3
		map.put("number", 3);
		int evalue3 = evalueWishService.getEachEvalue(map);
		model.addAttribute("evalue3", evalue3);
		// 4
		map.put("number", 4);
		int evalue4 = evalueWishService.getEachEvalue(map);
		model.addAttribute("evalue4", evalue4);
		// 5
		map.put("number", 5);
		int evalue5 = evalueWishService.getEachEvalue(map);
		model.addAttribute("evalue5", evalue5);

		// 별점 카운트
		int evalueCount = evalueWishService.getTotalEvalueCount(map);
		model.addAttribute("evalueCount", evalueCount);

		// 좋아요 카운트
		int likeCount = likeReviewService.getTotalCountByMe(map);
		model.addAttribute("likeCount", likeCount);
		// 보고싶어요 카운트
		int wishCount = evalueWishService.getTotalWishCount(map);

		model.addAttribute("wishCount", wishCount);

		// 팔로잉 카운트
		int followingCount = followService.getTotalFollowingCount(map);
		model.addAttribute("followingCount", followingCount);
		// 팔로잉 유저 리스트
		List<UserDto> followingList = userService.selectFollowingList(map);
		model.addAttribute("followingList", followingList);
		// 팔로워 카운트
		int followerCount = followService.getTotalFollowerCount(map);
		model.addAttribute("followerCount", followerCount);
		// 팔로워 유저 리스트
		List<UserDto> followerList = userService.selectFollowerList(map);

		// 팔로워리스트 중 팔로잉된 사람 확인하기(맞팔여부)
		for (UserDto followerUser : followerList) {
			followerUser.setIsFollow(false);
			for (UserDto followingUser : followingList) {
				if (followerUser.getUserId().equals(followingUser.getUserId()))
					followerUser.setIsFollow(true);
			}
		}
		model.addAttribute("followerList", followerList);


		//post방식으로 들어올때
		if(req.getMethod().equals("POST")) {
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

			int insertReview = reviewService.insertReview(map);// 작성한 리뷰 insert 리뷰넘버있음
			// 평가 테이블에 평점 넣기]
			int updateGrade = evalueWishService.update(map);// 업데이트

			// 공개여부
			// publicPrivate=2?"Y":"N";//공개여부면 Y로 저장,나만보기는 N으로 저장

			model.addAttribute("insertReview", insertReview);// 리뷰테이블에 insert
		}


		// 내가 작성한 글]
		List<ReviewDto> selectList = reviewService.selectList(map);// 쓴글 가져오기

		for (ReviewDto times : selectList) {
			// 현재시각
			Date now = new Date();
			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();

			System.out.println("현재시각" + now);
			SimpleDateFormat formatter = new SimpleDateFormat("MM월 dd일");
			String nowFormat = formatter.format(now);// 현재시간 형식
			System.out.println("현재시간 형식:" + nowFormat);
			Date time = times.getReviewPostdate();// 게시 일자

			cal2.setTime(time);
			String postDateFormat = formatter.format(time);// 게시시간 형식
			System.out.println("현재시간 형식:" + postDateFormat);

			String reviewPostdate;
			if (nowFormat.equals(postDateFormat)) {
				reviewPostdate = "오늘";
			} else {// 날짜 다르면
				long diffSec = (cal1.getTimeInMillis() - cal2.getTimeInMillis()) / 1000;// 초
				long diffDay = diffSec / (60 * 60 * 24);
				System.out.println("두 날짜의 일 차이:" + diffDay);
				if (diffDay == 1.0) {
					reviewPostdate = "어제";
				} else {
					reviewPostdate = postDateFormat;
				}

			}
			map.put("reviewPostdate", reviewPostdate);
			model.addAttribute("reviewPostdate", reviewPostdate);

//			times.setImgUrl(naverDefaultMovieImgUrl(times.getMovieTitle())); 이제 더이상 사용하지 않아(크롤링 x.DB에서 꺼내옴)
			times.setReviewContent(times.getReviewContent().replace("\r\n", "<br>"));
		}

		// 영화포스터 + 리뷰 줄바꿈 처리
		for (ReviewDto record : selectList) {
//			record.setImgUrl(naverDefaultMovieImgUrl(record.getMovieTitle()));
			record.setReviewContent(record.getReviewContent().replace("\r\n", "<br/>"));
		}

		model.addAttribute("selectList",  selectList.isEmpty() ? null : selectList);

		// 리뷰 카운트
		int reviewCount = reviewService.getTotalCount(map);
		model.addAttribute("reviewCount", reviewCount);


		return "blog/my/BlogMain.tiles";
	}/////////////////////////////////////////////

	// 리뷰작성 후 메인으로
//	@RequestMapping(value = "/Movieing/Blog/BlogMain.mov", method = RequestMethod.POST)
//	public String blogMain2(@RequestParam Map map, Model model, Authentication auth) throws Exception {
//		String id = map.get("otherUserId") == null ? auth.getName() : map.get("otherUserId").toString();
//
//		map.put("id", id);
//		model.addAttribute("id", id);
//
//		// 리뷰남김거 받기]
//		// map에 write으로 map형태로 받음
//
//		String movieTitle = map.get("movieTitle").toString();
//		String grade = map.get("grade").toString();
//		String reviewContent = map.get("reviewContent").toString();
//		String publicPrivate = map.get("publicPrivate").toString();
//
//		String movieNo = movieService.selectMovieNo(map);
//		map.put("movieNo", movieNo);
//
//		model.addAttribute("movieTitle", movieTitle);
//		model.addAttribute("movieNo", movieNo);// 영화번호
//		model.addAttribute("grade", grade);// 평점
//		model.addAttribute("reviewContent", reviewContent);// 내용
//
//		int insertReview = reviewService.insertReview(map);// 작성한 리뷰 insert 리뷰넘버있음
//		// 평가 테이블에 평점 넣기]
//		int updateGrade = evalueWishService.update(map);// 업데이트
//
//		// 공개여부
//		// publicPrivate=2?"Y":"N";//공개여부면 Y로 저장,나만보기는 N으로 저장
//
//		model.addAttribute("insertReview", insertReview);// 리뷰테이블에 insert
//
//		// 내가 작성한 글
//		List<ReviewDto> selectList = reviewService.selectList(map);// 쓴글 가져오기
//
//		Date time = selectList.get(0).getReviewPostdate();// 게시 일자
//
//		for (ReviewDto times : selectList) {
//			// 현재시각
//			Date now = new Date();
//			Calendar cal1 = Calendar.getInstance();
//			Calendar cal2 = Calendar.getInstance();
//
//			System.out.println("현재시각" + now);
//			SimpleDateFormat formatter = new SimpleDateFormat("MM월 dd일");
//			String nowFormat = formatter.format(now);// 현재시간 형식
//			System.out.println("현재시간 형식:" + nowFormat);
//
//			cal2.setTime(time);
//			String postDateFormat = formatter.format(time);// 게시시간 형식
//			System.out.println("현재시간 형식:" + postDateFormat);
//
//			String reviewPostdate;
//			if (nowFormat.equals(postDateFormat)) {
//				reviewPostdate = "오늘";
//			} else {// 날짜 다르면
//				long diffSec = (cal1.getTimeInMillis() - cal2.getTimeInMillis()) / 1000;// 초
//				long diffDay = diffSec / (60 * 60 * 24);
//				System.out.println("두 날짜의 일 차이:" + diffDay);
//				if (diffDay == 1.0) {
//					reviewPostdate = "어제";
//				} else {
//					reviewPostdate = postDateFormat;
//				}
//
//			}
//			map.put("reviewPostdate", reviewPostdate);
//			model.addAttribute("reviewPostdate", reviewPostdate);
//
//			// 영화포스터
////			times.setImgUrl(naverDefaultMovieImgUrl(times.getMovieTitle()));
//			times.setReviewContent(times.getReviewContent().replace("\r\n", "<br>"));
//		}
//
//
//		// 영화포스터 + 리뷰 줄바꿈 처리
//		for (ReviewDto record : selectList) {
////			record.setImgUrl(naverDefaultMovieImgUrl(record.getMovieTitle()));
//			record.setReviewContent(record.getReviewContent().replace("\r\n", "<br/>"));
//		}
//
//		model.addAttribute("selectList", selectList.isEmpty() ? null : selectList);
//
//		// 해쉬태그 추가해야함
//
//		return "blog/my/BlogMain.tiles";
//
//	}////////////////////////////////


	// 블로그-내 활동
	@RequestMapping("/Movieing/Blog/MyActivity.mov")
	public String myActiviy(@RequestParam Map map, Model model, Authentication auth) throws Exception {
		String id = auth.getName();

		map.put("id", id);
		model.addAttribute("id", id);

		String page = map.get("page") == null ? "a" : map.get("page").toString();
		model.addAttribute("page", page);

		// 1.별점
		List<EvaluationDto> evaluationList = evalueWishService.selectEvalueList(map);
		// 2.리뷰
		List<ReviewDto> reviewList = reviewService.reviewSelectMyList(map);

		// 3.좋아요
		List<ReviewDto> reviewLikeList = reviewService.reviewSelectLikeList(map);

		// 4.보고싶어요
		List<EvaluationDto> wishList = evalueWishService.selectWishList(map);

		model.addAttribute("evaluationList", evaluationList.isEmpty() ? null : evaluationList);// 별점
		model.addAttribute("reviewList", reviewList.isEmpty() ? null : reviewList);// 리뷰
		model.addAttribute("reviewLikeList", reviewLikeList.isEmpty() ? null : reviewLikeList);// 좋아요
		model.addAttribute("wishList", wishList.isEmpty() ? null : wishList);// 보고싶어요

		return "blog/my/MyActivity.tiles";
	}

	// 좋아요 삭제
	@ResponseBody
	@RequestMapping(value = "/Movieing/Blog/LikeRemove.mov", method = RequestMethod.POST)
	public String likeRemove(@RequestParam Map map, Authentication auth) {
		String id = auth.getName();
		int reviewNo = Integer.parseInt(map.get("reviewNo").toString());
		map.put("reviewNo", reviewNo);
		map.put("id", id);
		likeReviewService.delete(map);
		int count = likeReviewService.getTotalCountByAll(map);
		return String.valueOf(count);
	}//////////////////////////////////////////////////

	// 좋아요 입력
	@ResponseBody
	@RequestMapping(value = "/Movieing/Blog/LikeInsert.mov", method = RequestMethod.POST)
	public String likeInsert(@RequestParam Map map, Authentication auth) {
		String id = auth.getName();

		System.out.println("뭐냐이게 되냐고" + map.get("reviewNo").toString());
		int reviewNo = Integer.parseInt(map.get("reviewNo").toString());

		// map.put("reviewNo", reviewNo);
		map.put("id", id);
		likeReviewService.insert(map);// 테이블에 INSERT
		int count = likeReviewService.getTotalCountByAll(map);

		return String.valueOf(count);
	}

	/////////////////////////////////////////////////////////////////////////////////////

	// 댓글 입력]
	@ResponseBody
	@RequestMapping(value = "/Movieing/Blog/CommentInsert.mov", method = RequestMethod.POST)
	public void commentInsert(@RequestParam Map map, Authentication auth) {
		// int commentNo=Integer.parseInt(map.get("commentNo").toString());
		String commentContent = map.get("commentContent").toString();

		String id = auth.getName();
		map.put("id", id);

		String reviewNo = map.get("reviewNo").toString();
		System.out.println("댓글내용:" + commentContent);
		System.out.println("아이디:" + id);
		System.out.println("리뷰번호:" + reviewNo);

		int insert = commentService.insert(map);// 댓글insert

	}///////////////////////////////

	// 무빙프렌즈1]
	@RequestMapping("/Movieing/Blog/MovieingFriends.mov")
	public String blogFriends(@RequestParam Map map, Model model, Authentication auth) throws Exception {
		// 세션아이디
		String id = auth.getName();
		System.out.println("로그인된 아이디:" + id);
		map.put("id", id);
		model.addAttribute("id", id);

		// 무빙프렌즈에서 피드 글보이기(전체공개면)]-모든 정보있음
		List<ReviewDto> friendsReviewList1 = reviewService.friendsReviewList1(map);// 리스트전체조회



		System.out.println("닉네임:" + friendsReviewList1.get(0).getUserNick());

		model.addAttribute("friendsReviewList1", friendsReviewList1);

		// 유저자기소개]
		ReviewDto friendsSelf = reviewService.selectMovieingOne(map);// 1개
		model.addAttribute("friendsSelf", friendsSelf);

		System.out.println("자기소개 가져오기완료");
		// 팔로우수]
		int follower = followService.getTotalFollowerCount(map);
		// 팔로잉수]
		int following = followService.getTotalFollowingCount(map);

		model.addAttribute("follower", follower);
		model.addAttribute("following", following);

		String reviewPostdate;

		for (ReviewDto times : friendsReviewList1) {
			// 현재시각
			Date now = new Date();
			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();

			System.out.println("현재시각" + now);
			SimpleDateFormat formatter = new SimpleDateFormat("MM월 dd일");
			String nowFormat = formatter.format(now);// 현재시간 형식
			System.out.println("현재시간 형식:" + nowFormat);
			Date time = times.getReviewPostdate();// 게시 일자

			cal2.setTime(time);
			String postDateFormat = formatter.format(time);// 게시시간 형식
			System.out.println("현재시간 형식:" + postDateFormat);

			if (nowFormat.equals(postDateFormat)) {
				reviewPostdate = "오늘";
			} else {// 날짜 다르면
				long diffSec = (cal1.getTimeInMillis() - cal2.getTimeInMillis()) / 1000;// 초
				long diffDay = diffSec / (60 * 60 * 24);
				System.out.println("두 날짜의 일 차이:" + diffDay);
				if (diffDay == 1.0) {
					reviewPostdate = "어제";
				} else {
					reviewPostdate = postDateFormat;
				}

			}

			times.setReviewContent(times.getReviewContent().replace("\r\n", "<br>"));
			// 가져온 리스트에 사진url담아주기
//			times.setImgUrl(naverDefaultMovieImgUrl(times.getMovieTitle()));

			map.put("reviewPostdate", reviewPostdate);
			model.addAttribute("reviewPostdate", reviewPostdate);
		} ////////////////////////////

		model.addAttribute("friendsReviewList1", friendsReviewList1.isEmpty()?null:friendsReviewList1);
		// 모든 아이디 리스트
		List<UserDto> allUser = userService.selectList(map);
		model.addAttribute("allUser", allUser.isEmpty()?null:allUser);

		return "blog/my/MovieingFriends.tiles";
	}///////////////////////////////////////////////////////////////////////////////

	
	
	// 내 글 삭제
	@ResponseBody
	@RequestMapping(value = "/Movieing/Blog/reviewRemove.mov", method = RequestMethod.POST)
	public void reviewRemove(@RequestParam Map map, Authentication auth) {
		String id = auth.getName();
		int reviewNo = Integer.parseInt(map.get("reviewNo").toString());
		System.out.println("삭제글번호" + reviewNo);
		map.put("reviewNo", reviewNo);
		map.put("id", id);
		likeReviewService.delete(map);// 좋아요삭제
		commentService.delete(map);// 댓글삭제
		reviewService.delete(map);// 리뷰삭제
		System.out.println("내 글이 삭제됨");
	}//////////////////////////////////////////////////

	// 무빙프렌즈2]
	@RequestMapping("/Movieing/Blog/MovieingFriends2.mov")
	public String blogFriends2(@RequestParam Map map, Model model, Authentication auth) throws Exception {

		// 세션아이디
		String id = auth.getName();
		System.out.println("로그인된 아이디:" + id);
		map.put("id", id);
		model.addAttribute("id", id);

		// 무빙프렌즈에서 피드 글보이기(전체공개면)]-모든 정보있음
		List<ReviewDto> friendsReviewList2 = reviewService.friendsReviewList2(map);// 리스트전체조회

		System.out.println("닉네임:" + friendsReviewList2.get(0).getUserNick());

		model.addAttribute("friendsReviewList1", friendsReviewList2);

		// 유저자기소개]
		ReviewDto friendsSelf = reviewService.selectMovieingOne(map);// 1개
		model.addAttribute("friendsSelf", friendsSelf);

		System.out.println("자기소개 가져오기완료");
		// 팔로우수]
		int follower = followService.getTotalFollowerCount(map);
		// 팔로잉수]
		int following = followService.getTotalFollowingCount(map);

		model.addAttribute("follower", follower);
		model.addAttribute("following", following);

		String reviewPostdate;

		for (ReviewDto times : friendsReviewList2) {
			// 현재시각
			Date now = new Date();
			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();

			System.out.println("현재시각" + now);
			SimpleDateFormat formatter = new SimpleDateFormat("MM월 dd일");
			String nowFormat = formatter.format(now);// 현재시간 형식
			System.out.println("현재시간 형식:" + nowFormat);
			Date time = times.getReviewPostdate();// 게시 일자

			cal2.setTime(time);
			String postDateFormat = formatter.format(time);// 게시시간 형식
			System.out.println("현재시간 형식:" + postDateFormat);

			if (nowFormat.equals(postDateFormat)) {
				reviewPostdate = "오늘";
			} else {// 날짜 다르면
				long diffSec = (cal1.getTimeInMillis() - cal2.getTimeInMillis()) / 1000;// 초
				long diffDay = diffSec / (60 * 60 * 24);
				System.out.println("두 날짜의 일 차이:" + diffDay);
				if (diffDay == 1.0) {
					reviewPostdate = "어제";
				} else {
					reviewPostdate = postDateFormat;
				}

			}

			times.setReviewContent(times.getReviewContent().replace("\r\n", "<br>"));
			// 가져온 리스트에 사진url담아주기
			//times.setImgUrl(naverDefaultMovieImgUrl(times.getMovieTitle()));

			map.put("reviewPostdate", reviewPostdate);
			model.addAttribute("reviewPostdate", reviewPostdate);
		} ////////////////////////////

		model.addAttribute("friendsReviewList2", friendsReviewList2);
		// 팔로우된 아이디 리스트
		List<FollowDto> selectFollowList=followService.selectFollowList(map);
		model.addAttribute("selectFollowList", selectFollowList);

		return "blog/my/MovieingFriends_2.tiles";
	}

	// 무빙프렌즈-타임라인]
	@RequestMapping("/Movieing/Blog/MF_Timeline.mov")
	public String mf_Timeline(@RequestParam Map map, Model model, Principal principal) {

		// 아이디
		String id = principal.getName();
		map.put("id", id);
		model.addAttribute("id", id);

		// 모든 아이디 리스트
		List<UserDto> allUser = userService.selectList(map);
		model.addAttribute("allUser", allUser);

		return "blog/my/MF_Timeline.tiles";
	}

	// 무빙프렌즈-댓글]
	@RequestMapping("/Movieing/Blog/MovieingFriendsComment.mov")
	public String movieingFriendsComment(@RequestParam Map map, Model model, Principal principal) {

		// 아이디
		String id = principal.getName();
		map.put("id", id);
		model.addAttribute("id", id);

		// 모든 아이디 리스트
		List<UserDto> allUser = userService.selectList(map);
		model.addAttribute("allUser", allUser);

		return "blog/my/MovieingFriendsComment.tiles";
	}
	

	


	// 글쓰기 페이지]
	@RequestMapping("/Movieing/Blog/WritePage.mov")
	public String write(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();
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
