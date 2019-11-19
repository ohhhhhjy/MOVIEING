package com.kosmo.movieing.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.movieing.service.CommentDto;
import com.kosmo.movieing.service.CommentService;
import com.kosmo.movieing.service.EvalueWishService;
import com.kosmo.movieing.service.MovieDto;
import com.kosmo.movieing.service.MoviePeopleDto;
import com.kosmo.movieing.service.MoviePeopleService;
import com.kosmo.movieing.service.MovieService;
import com.kosmo.movieing.service.PagingUtil;
import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;
import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;

@Controller
public class MovieController {

	@Resource(name = "reviewService")
	private ReviewService reviewService;

	@Resource(name = "userService")
	private UserService userService;

	@Resource(name = "commentService")
	private CommentService commentService;

	@Resource(name="evalueWishService")
	private EvalueWishService evalueWishService;

	@Resource(name = "movieService")
	private MovieService movieService;

	@Resource(name = "moviePeopleService")
	private MoviePeopleService moviePeopleService;


	// 전체영화
	@RequestMapping("/Movieing/Movie/AllMovie.mov")
	public String movieMain(Model model, @RequestParam Map map) throws Exception {

		System.out.println("AllMovie - 1 디비 가져오기 전");
		List<MovieDto> movieList = movieService.selectListMovie(map);
		System.out.println("AllMovie - 2 movieList 생성");

		System.out.println("AllMovie - 3 moveList 값 : " + movieList);
		System.out.println("AllMovie - 4 movieName 값 : " + movieList.get(0).getMovieTitle());

		model.addAttribute("movieList", movieList);
		System.out.println("AllMovie - 5 model에 실어 값 전송 완료");

		/*
		 * List mNames = new Vector(); List mDate = new Vector(); List mList =
		 * movieTrain(); JSONObject json = new JSONObject(); JSONArray jArray = new
		 * JSONArray(); /* for(int j=0; j<3;j++) { for(int i=j*6; i<j*6+6; i++) {
		 * System.out.println(i); System.out.println(mlist.get(i));
		 * mNames.add(movieImgUrl((String) mlist.get(i)));
		 * //System.out.println(mNames.get(i)); //System.out.println(); } } try {
		 * for(int i=0; i<18;i++) { mNames.add(movieImgUrl((String)
		 * mList.get(i)).get("realUrl")); mDate.add(movieImgUrl((String)
		 * mList.get(i)).get("date")); JSONObject obj = new JSONObject();
		 * obj.put("realUrl",mNames.get(i)); obj.put("date",mDate.get(i));
		 * obj.put("mname", mList.get(i)); jArray.add(obj);
		 * //mNameDate.put((movieImgUrl((String)
		 * mList.get(i)).get("realUrl")),(movieImgUrl((String)
		 * mList.get(i)).get("date"))); //mNameDate.put("mImgUrl",movieImgUrl((String)
		 * mList.get(i)).get("realUrl")); //mNameDate.put("mPubDate",
		 * movieImgUrl((String) mList.get(i)).get("date")); //mData.add(mNameDate);
		 * if(i%5==0) { Thread.sleep(1000); }
		 * //System.out.println("영화 제목 "+i+":"+mList.get(i));
		 * //System.out.println("이미지 소스 "+i+":"+mNameDate.get("mImgUrl"));
		 * //System.out.println("영화 제작 년도 "+i+":"+mNameDate.get("mPubDate")); //
		 * System.out.println("영화 ?? "+i+":"+mNameDate.get(i));
		 * //System.out.println("이미지 소스 "+i+":"+mNames.get(i));
		 * //System.out.println("영화 제작 년도 "+i+":"+mDate.get(i)); } } catch(Exception e)
		 * {e.printStackTrace();} //영화이미지 //System.out.println("이미지소스 리스트 :"+mNames);
		 * //System.out.println("영화제작년도 리스트 :"+mDate);
		 * //System.out.println("제이슨 객체 :"+jArray); //model.addAttribute("movieImgUrl",
		 * mNames); //model.addAttribute("moviePubDate", mDate);
		 * //model.addAttribute("movieName", mList);
		 * //model.addAttribute("movieImgDate", mNameDate);
		 * model.addAttribute("movieImgDate",jArray);
		 */
		return "movie/list/AllMovie.tiles";
	}////////////////// movieMain


	@RequestMapping("/Movieing/Movie/NewMovie.mov")
	public String movieNew(Model model, @RequestParam Map map) throws Exception {

		System.out.println("NewMovie 1 - DB 받아오기 전");
			List<MovieDto> newMovieList = movieService.selectListNewRandom(map);
		System.out.println("NewMovie 2 - newMoveList 생성 완료");
			model.addAttribute("newMovieList", newMovieList);
		System.out.println("NewMovie 3 - movieList 전달 완료");

		return "movie/list/NewMovie.tiles";
		/*
		// List<Map> mData = new Vector<Map>();
		// Map<K, V> mNameDate = new HashMap();
		List mNames = new Vector();
		List mDate = new Vector();
		List mList = movieTrain();
		JSONObject json = new JSONObject();
		JSONArray jArray = new JSONArray();
		/*
		 * for(int j=0; j<3;j++) { for(int i=j*6; i<j*6+6; i++) { System.out.println(i);
		 * System.out.println(mlist.get(i)); mNames.add(movieImgUrl((String)
		 * mlist.get(i))); //System.out.println(mNames.get(i)); //System.out.println();
		 * } }
		try {
			for (int i = 0; i < 18; i++) {
				mNames.add(movieImgUrl((String) mList.get(i)).get("realUrl"));
				mDate.add(movieImgUrl((String) mList.get(i)).get("date"));
				JSONObject obj = new JSONObject();
				obj.put("realUrl", mNames.get(i));
				obj.put("date", mDate.get(i));
				obj.put("mname", mList.get(i));
				jArray.add(obj);
				// mNameDate.put((movieImgUrl((String)
				// mList.get(i)).get("realUrl")),(movieImgUrl((String)
				// mList.get(i)).get("date")));
				// mNameDate.put("mImgUrl",movieImgUrl((String) mList.get(i)).get("realUrl"));
				// mNameDate.put("mPubDate", movieImgUrl((String) mList.get(i)).get("date"));
				// mData.add(mNameDate);
				if (i % 5 == 0) {
					Thread.sleep(1000);
				}
				// System.out.println("영화 제목 "+i+":"+mList.get(i));
				// System.out.println("이미지 소스 "+i+":"+mNameDate.get("mImgUrl"));
				// System.out.println("영화 제작 년도 "+i+":"+mNameDate.get("mPubDate"));
				// System.out.println("영화 ?? "+i+":"+mNameDate.get(i));
				// System.out.println("이미지 소스 "+i+":"+mNames.get(i));
				// System.out.println("영화 제작 년도 "+i+":"+mDate.get(i));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 영화이미지*/
		// System.out.println("이미지소스 리스트 :"+mNames);
		// System.out.println("영화제작년도 리스트 :"+mDate);
		// System.out.println("제이슨 객체 :"+jArray);
		// model.addAttribute("movieImgUrl", mNames);
		// model.addAttribute("moviePubDate", mDate);
		// model.addAttribute("movieName", mList);
		// model.addAttribute("movieImgDate", mNameDate);
		//model.addAttribute("movieImgDate", jArray);
	}/////////////////
	//NewMovie.jsp
	//////////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping("/Movieing/Movie/Popular.mov")
	public String moviePopular(Model model, @RequestParam Map map) throws Exception {

		System.out.println("popMovie 1 - DB 받아오기 전");
		List<MovieDto> popMovieList = movieService.selectListRandom(map);
	System.out.println("popMovie 2 - popMovieList 생성 완료");
		model.addAttribute("popMovieList", popMovieList);
	System.out.println("popMovie 3 - popMovieList 전달 완료");

		return "movie/list/Popular.tiles";
		/*
		// List<Map> mData = new Vector<Map>();
		// Map<K, V> mNameDate = new HashMap();
		List mNames = new Vector();
		List mDate = new Vector();
		List mList = movieTrain2();
		JSONObject json = new JSONObject();
		JSONArray jArray = new JSONArray();
		/*
		 * for(int j=0; j<3;j++) { for(int i=j*6; i<j*6+6; i++) { System.out.println(i);
		 * System.out.println(mlist.get(i)); mNames.add(movieImgUrl((String)
		 * mlist.get(i))); //System.out.println(mNames.get(i)); //System.out.println();
		 * } }
		try {
			for (int i = 0; i < 18; i++) {
				mNames.add(movieImgUrl((String) mList.get(i)).get("realUrl"));
				mDate.add(movieImgUrl((String) mList.get(i)).get("date"));
				JSONObject obj = new JSONObject();
				obj.put("realUrl", mNames.get(i));
				obj.put("date", mDate.get(i));
				obj.put("mname", mList.get(i));
				jArray.add(obj);
				// mNameDate.put((movieImgUrl((String)
				// mList.get(i)).get("realUrl")),(movieImgUrl((String)
				// mList.get(i)).get("date")));
				// mNameDate.put("mImgUrl",movieImgUrl((String) mList.get(i)).get("realUrl"));
				// mNameDate.put("mPubDate", movieImgUrl((String) mList.get(i)).get("date"));
				// mData.add(mNameDate);
				if (i % 5 == 0) {
					Thread.sleep(1000);
				}
				// System.out.println("영화 제목 "+i+":"+mList.get(i));
				// System.out.println("이미지 소스 "+i+":"+mNameDate.get("mImgUrl"));
				// System.out.println("영화 제작 년도 "+i+":"+mNameDate.get("mPubDate"));
				// System.out.println("영화 ?? "+i+":"+mNameDate.get(i));
				// System.out.println("이미지 소스 "+i+":"+mNames.get(i));
				// System.out.println("영화 제작 년도 "+i+":"+mDate.get(i));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 영화이미지
		// System.out.println("이미지소스 리스트 :"+mNames);
		// System.out.println("영화제작년도 리스트 :"+mDate);
		// System.out.println("제이슨 객체 :"+jArray);
		// model.addAttribute("movieImgUrl", mNames);
		// model.addAttribute("moviePubDate", mDate);
		// model.addAttribute("movieName", mList);
		// model.addAttribute("movieImgDate", mNameDate);
		model.addAttribute("movieImgDate", jArray);
		return "movie/list/Popular.tiles";
		*/
	}//////////////////////// moviePopular

	@RequestMapping("/Movieing/Movie/Genre.mov")
	public String movieGenre(Model model, @RequestParam Map map) throws Exception {

		System.out.println("GradeMovie 1 - DB 받아오기 전");
			List<MovieDto> StarMovieList = movieService.selectListRandom(map);
		System.out.println("GradeMovie 2 - popMovieList 생성 완료");
			model.addAttribute("StarMovieList", StarMovieList);
		System.out.println("GradeMovie 3 - popMovieList 전달 완료");


		return "movie/list/Genre.tiles";
		/*
		// List<Map> mData = new Vector<Map>();
		// Map<K, V> mNameDate = new HashMap();
		List mNames = new Vector();
		List mDate = new Vector();
		List mList = movieTrain3();

		JSONObject json = new JSONObject();
		JSONArray jArray = new JSONArray();

		/*
		 * for(int j=0; j<3;j++) { for(int i=j*6; i<j*6+6; i++) { System.out.println(i);
		 * System.out.println(mlist.get(i)); mNames.add(movieImgUrl((String)
		 * mlist.get(i))); //System.out.println(mNames.get(i)); //System.out.println();
		 * } }

		try {
			for (int i = 0; i < 18; i++) {

				mNames.add(movieImgUrl((String) mList.get(i)).get("realUrl"));
				mDate.add(movieImgUrl((String) mList.get(i)).get("date"));

				JSONObject obj = new JSONObject();
				obj.put("realUrl", mNames.get(i));
				obj.put("date", mDate.get(i));
				obj.put("mname", mList.get(i));

				jArray.add(obj);

				// mNameDate.put((movieImgUrl((String)
				// mList.get(i)).get("realUrl")),(movieImgUrl((String)
				// mList.get(i)).get("date")));

				// mNameDate.put("mImgUrl",movieImgUrl((String) mList.get(i)).get("realUrl"));
				// mNameDate.put("mPubDate", movieImgUrl((String) mList.get(i)).get("date"));

				// mData.add(mNameDate);

				if (i % 5 == 0) {
					Thread.sleep(1000);
				}
				// System.out.println("영화 제목 "+i+":"+mList.get(i));
				// System.out.println("이미지 소스 "+i+":"+mNameDate.get("mImgUrl"));
				// System.out.println("영화 제작 년도 "+i+":"+mNameDate.get("mPubDate"));
				// System.out.println("영화 ?? "+i+":"+mNameDate.get(i));
				// System.out.println("이미지 소스 "+i+":"+mNames.get(i));
				// System.out.println("영화 제작 년도 "+i+":"+mDate.get(i));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 영화이미지
		// System.out.println("이미지소스 리스트 :"+mNames);
		// System.out.println("영화제작년도 리스트 :"+mDate);
		// System.out.println("제이슨 객체 :"+jArray);

		// model.addAttribute("movieImgUrl", mNames);
		// model.addAttribute("moviePubDate", mDate);
		// model.addAttribute("movieName", mList);
		// model.addAttribute("movieImgDate", mNameDate);
		model.addAttribute("movieImgDate", jArray);
		return "movie/list/Genre.tiles";
	///////////////// movieGenre
		*/
	}







	// 영화 상세 페이지
	@RequestMapping("/Movieing/Movie/MovieDetails.mov")
	public String movieDetailsTest(HttpServletRequest req, @RequestParam Map map, Model model) throws Exception {


		System.out.println("MovieDetails 1  - map에 mname, date 넣기 전 :");
		map.put("movieNo", map.get("movieNo"));
		model.addAttribute("movieNo", map.get("movieNo"));

		System.out.println("MovieDetails 2 - map에 mname, date 넣기 성공");

		System.out.println("MovieDetails 3 - 디비에서 가져오기 전");
		MovieDto movieInfo = movieService.selectOne(map);
		System.out.println("MovieDetails 4 - movieInfo 값 :" + movieInfo);

		model.addAttribute("movieInfo", movieInfo);
		/*
		System.out.println("RequestMethod.GET");
		System.out.println("name : " + mname);
		System.out.println("date : " + date);

		String mcode = moviecdGet(mname);

		String mImgSource = (String) movieImgUrl(mname).get("realUrl");

		// 영화상세정보
		model.addAttribute("movieInfoMap", movieInfoMap(mcode));// 아직 해당영화 코드 가져올 방법이 없으므로 하드코딩
		// 영화이미지
		model.addAttribute("movieImgUrl", mImgSource);
		System.out.println("movieImgUrl : " + movieImgUrl(mname));
		*/
		// 넘겨받은 영화코드 : movieNo. 임시로 넣어줌


		// 페이징을 위한 로직]
		int pageSize = 5;
		int blockPage = 3;
//			int nowPage=map.get("nowPage")==null?1:(Integer)map.get("nowPage");//임시
		int nowPage = 1;// 임시
		// 전체 리뷰 레코드 수
		int totalRecordCount = reviewService.getTotalMovieReviewCount(map);
		// 전체페이지 수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 rownum
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, 1);
		model.addAttribute("pagingString", pagingString);

		// 영화 리뷰 다 뿌려주자
		List<ReviewDto> reviewList = reviewService.selectMovieReviewList(map);
		for (ReviewDto record : reviewList) {
			record.setReviewContent(record.getReviewContent().replace("\r\n", "<br/>"));
		}
		model.addAttribute("reviewList", reviewList);

		return "movie/info/MovieDetails.tiles";
	}
	//////////////////////////////////////////////////////////////////////////////////////




	// 영화 평가 보여주기
	@RequestMapping("/Movieing/Movie/screening/First_like.mov")
	public String ratingMovie(Model model, @RequestParam Map map) throws Exception {

		System.out.println("RatingMovie - 1 DB 가져오기 전");
			List<MovieDto> movieList = movieService.selectListMovie(map);

		System.out.println("RatingMovie - 2 movieList 값 저장");
			model.addAttribute("movieList", movieList);

		System.out.println("RatingMovie - 3 값 전송 완료");
		return "movie/screening/First_like.tiles";

		/*
		List movie40List = movie40Get();
		JSONObject json = new JSONObject();
		JSONArray jArray = new JSONArray();
		List mImgUrl = new Vector();
		List mDate = new Vector();
		for (int i = 0; i < 40; i++) {
			System.out.println("리스트 " + i + "번째 제목 : " + movie40List.get(i));
		}
		try {
			for (int i = 0; i < 40; i++) {
				mImgUrl.add(movieImgUrl((String) movie40List.get(i)).get("realUrl"));
				mDate.add(movieImgUrl((String) movie40List.get(i)).get("date"));
				JSONObject obj = new JSONObject();
				obj.put("mname", movie40List.get(i));
				obj.put("mImgUrl", mImgUrl.get(i));
				obj.put("mdate", mDate.get(i));
				jArray.add(obj);
				if (i % 4 == 0) {
					Thread.sleep(500);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("이미지소스 리스트 :" + movie40List);
		System.out.println("영화제작년도 리스트 :" + mDate);
		System.out.println("json 객체 :" + jArray);
		model.addAttribute("movieImgName", jArray);
		 */
	}
///////////////////////////////////////////ratingMovie


	@RequestMapping("/Movieing/Movie/Filmography.mov")
	public String filmography(@RequestParam Map map,Model model) {
		//사람 이름받기
		String movieDirector=map.get("movieDirector").toString();
		System.out.println("감독이름:"+movieDirector);

		//이름에 맞는 정보가져오기
		List<MoviePeopleDto> selectPeople=moviePeopleService.selectList(map);
		model.addAttribute("selectPeople", selectPeople);
		//감독 출현작
		//List<MovieDto> selectListDirector=movieService.selectListDirector(map);
		//model.addAttribute("selectListDirector", selectListDirector);

		return "movie/info/Filmography.tiles";
	}

	///////////////////////////////////////////////////////


	// 전체영화 보여주기

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//		@RequestMapping("/Movieing/Movie/MovieDetails.mov")
//		public String movieDetail(@RequestParam Map map,Model model) throws Exception {
//
//		String mname = map.get("mname").toString();
//		String mcode = moviecdGet(map.get("mname").toString());
//
//		String mImgSource = (String) movieImgUrl(map.get("mname").toString()).get("realUrl");
//
//		//영화상세정보
//		model.addAttribute("movieInfoMap", movieInfoMap(mcode));//아직 해당영화 코드 가져올 방법이 없으므로 하드코딩
//		//영화이미지
//		model.addAttribute("movieImgUrl", mImgSource);
//		System.out.println("movieImgUrl : "+movieImgUrl(mname));
//
//		//넘겨받은 영화코드 : movieNo. 임시로 넣어줌
//		String movieNo = "1";
//		map.put("movieNo", movieNo);
//
//		//페이징을 위한 로직]
//		int pageSize = 5;
//		int blockPage = 3;
////		int nowPage=map.get("nowPage")==null?1:(Integer)map.get("nowPage");//임시
//		int nowPage=1;//임시
//		//전체 리뷰 레코드 수
//		int totalRecordCount = reviewService.getTotalMovieReviewCount(map);
//		//전체페이지 수
//		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);
//		//시작 및 끝 rownum
//		int start = (nowPage-1)*pageSize+1;
//	 	int end   = nowPage*pageSize;
//	 	//페이징을 위한 로직 끝]
//	 	map.put("start", start);
//	 	map.put("end", end);
//
//		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, 1);
//		model.addAttribute("pagingString", pagingString);
//
//		//영화 리뷰 다 뿌려주자
//		List<ReviewDto> reviewList = reviewService.selectMovieReviewList(map);
//		for(ReviewDto record : reviewList) {
//			record.setReviewContent(record.getReviewContent().replace("\r\n", "<br/>"));
//		}
//		model.addAttribute("reviewList",reviewList);
//
//
//		return "movie/info/MovieDetails.tiles";
//	}
//
	//영화상세 페이지의 별점ajax
	@ResponseBody
	@RequestMapping(value="/Movieing/Movie/starAjax.mov")
	public void starAjax(@RequestParam Map map,Authentication auth) {
		String userId = auth.getName();
		map.put("id",userId.toString());

		if(evalueWishService.isEvalue(map)) {//이미 남긴 별점이 있다면,
			evalueWishService.update(map);
		}
		else {//별점을 새로 입력하는 경우라면,
			evalueWishService.insert(map);
		}
	}

	//영화상세 페이지의 보고싶어요ajax
	@ResponseBody
	@RequestMapping(value="/Movieing/Movie/wishAjax.mov")
	public void wishAjax(@RequestParam Map map,Authentication auth) {
		String userId = auth.getName();
		map.put("id",userId.toString());

		if(map.get("isInsert").equals("true")) {//보고싶어요에 추가하는 경우
			evalueWishService.insertWish(map);
		}
		else {//보고싶어요에서 삭제하는 경우
			evalueWishService.deleteWish(map);
		}
	}

	//영화상세페이지의 리뷰 뿌리기
	@ResponseBody//produces="text/html; charset=UTF-8" ,produces="application/json;charset=UTF-8"   , consumes = {"application/json;charset=UTF-8"}
	@RequestMapping(value="/Movieing/Movie/ReviewAjax.mov", method = RequestMethod.POST)
	public String reviewAjax(@RequestParam Map map) throws UnsupportedEncodingException {

		//넘겨받은 영화코드 : movieNo. 임시로 넣어줌
		String movieNo = "1";
		map.put("movieNo", movieNo);

		int nowPage = Integer.parseInt(map.get("nowPage").toString());
		// 페이징을 위한 로직]
		int pageSize = 5;
		int blockPage = 3;
		// 전체 리뷰 레코드 수
		int totalRecordCount = reviewService.getTotalMovieReviewCount(map);
		// 전체페이지 수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 rownum
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);

		// 영화 리뷰 다 뿌려주자
		List<ReviewDto> reviewList = reviewService.selectMovieReviewList(map);

		List<Map> reviewJsonArray = new Vector<Map>();
		for (ReviewDto dto : reviewList) {
			Map record = new HashMap();
			record.put("userProfile", dto.getUserProfile() == null ? null : dto.getUserProfile().toString());
//			record.put("userNick",dto.getUserNick());
			record.put("userNick", URLEncoder.encode(dto.getUserNick(), "UTF-8"));
			record.put("reviewContent", URLEncoder.encode(dto.getReviewContent(), "UTF-8"));
			record.put("likeCount", dto.getLikeCount());
			record.put("commentCount", dto.getCommentCount());
			record.put("grade", dto.getGrade());
			record.put("reviewNo", dto.getReviewNo());
			record.put("pagingString", pagingString);
			reviewJsonArray.add(record);
		}

		return JSONArray.toJSONString(reviewJsonArray);
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 리뷰상세페이지
	@RequestMapping("/Movieing/Movie/MovieReviews.mov")
	public String movieReviews(@RequestParam Map map, Model model, Authentication auth) {
		map.put("id", auth.getName());
		String reviewNo=map.get("reviewNo").toString();
		System.out.println("리뷰 넘버:"+reviewNo);

		UserDto user = userService.selectOne(map);
		model.addAttribute("user", user);
		ReviewDto review = reviewService.selectOne(map);
		review.setReviewContent(review.getReviewContent().replace("\r\n", "<br>"));
		model.addAttribute("review",review);


		List<CommentDto> commentList = commentService.selectList(map);
		for(CommentDto record:commentList) {
			record.setCommentContent(record.getCommentContent().replace("\r\n", "<br>"));
		}

		model.addAttribute("commentList",commentList);

		return "movie/info/MovieReviews.tiles";
	}//////////////////////////////////

	// 리뷰댓글 ajax
	@ResponseBody
	@RequestMapping(value = "/Movieing/Movie/CommentAjax.mov", method = RequestMethod.POST)
	public void commentAjax(@RequestParam Map map) {
		commentService.insert(map);
	}



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	@RequestMapping("/Movieing/Movie/SearchResult.mov")
	public String searchResult(@RequestParam Map map, @RequestParam String searchWord, Model model ) {

		map.put("searchWord%", searchWord+"%");
		map.put("%searchWord", "%"+searchWord);
		map.put("%searchWord%", "%"+searchWord+"%");

		//map.put("searchPeople%", searchWord+"%");

		System.out.println("searchReuslt - 1 searchWord 값 : "+searchWord);

		List<MovieDto> searchMovieList = movieService.selectListSearchRadom(map);
		List<MoviePeopleDto> searchPeopleList = moviePeopleService.selectListPeople(map);
		List<UserDto> searchUserList = userService.selectSearchList(map);

		System.out.println("searchResult -2 searchMovieList 값 : "+searchMovieList);
		System.out.println("searchResult -3 searchPeopleList 값 : "+searchPeopleList);
		System.out.println("searchResult -4 searchUserList 값 : "+searchUserList);

		model.addAttribute("searchMovieList",searchMovieList);
		model.addAttribute("searchPeopleList",searchPeopleList);
		model.addAttribute("searchUserList",searchUserList);

		return "movie/list/SearchResult.tiles";
	}

	// 무비리스트 가져오기
	public List movieTrain() throws Exception {

		List<String> movieList = new Vector(); // 무비 리스트

		// 최신영화
		String base_url = "https://movie.naver.com/movie/running/current.nhn"; // 가져올 주소
		try {

			Document doc = Jsoup.connect(base_url).get(); // 웹페이지 연결
			for (int i = 1; i <= 18; i++) {

				String movieName = doc
						.select("#content > div.article > div:nth-child(1) > div.lst_wrap > ul > li:nth-child(" + i
								+ ")> dl > dt > a")
						.html().trim();

//				String movieName = doc.select("#content > div.article > div:nth-child(1) > div.lst_wrap > ul > li:nth-child(" + i+ ")> dl > dt > a").html().trim();
				// *[@id="content"]/div[1]/div[1]/div[3]/ul/li[1]/dl/dt/a
				// *[@id="content"]/div[1]/div[1]/div[3]/ul/li[2]/dl/dt

				// Element movieName = doc.selectFirst("#content > div.article >
				// div:nth-child(1) > div.lst_wrap > ul > li:nth-child(1) > dl > dt");
				// System.out.println("무비갯수 :"+movieName.size());
				// System.out.println("영화 제목 가져오는 중 :" + movieNameㅇㅇ);
				movieList.add(movieName);
			}
			// System.out.println("----------------------------");
			// for (String movie : movieList) {
			// System.out.println(movie);
			// }
		} catch (Exception e) {
			e.printStackTrace();
		} // catch

		return movieList;
	}///////////////////////////////// movieTrain

	// 무비리스트 인기영화 가져오기2
	public List movieTrain2() throws Exception {

		List<String> movieList = new Vector(); // 무비 리스트

		// 인기영화
		String base_url = "https://movie.naver.com/movie/running/current.nhn?view=list&tab=normal&order=likeCount"; // 가져올
																													// 주소
		try {

			Document doc = Jsoup.connect(base_url).get(); // 웹페이지 연결
			for (int i = 1; i <= 18; i++) {
				String movieName = doc
						.select("#content > div.article > div:nth-child(1) > div.lst_wrap > ul > li:nth-child(" + i
								+ ")> dl > dt > a")
						.html().trim();

				// *[@id="content"]/div[1]/div[1]/div[3]/ul/li[1]/div/a/img
				// *[@id="content"]/div[1]/div[1]/div[3]/ul/li[1]/dl/dt/a
				// *[@id="content"]/div[1]/div[1]/div[3]/ul/li[2]/dl/dt
				// Element movieName = doc.selectFirst("#content > div.article >
				// div:nth-child(1) > div.lst_wrap > ul > li:nth-child(1) > dl > dt");
				// System.out.println("무비갯수 :"+movieName.size());
				// System.out.println("영화 제목 가져오는 중 :" + movieNameㅇㅇ);
				movieList.add(movieName);
			}
			// System.out.println("----------------------------");
			// for (String movie : movieList) {
			// System.out.println(movie);
			// }
		} catch (Exception e) {
			e.printStackTrace();
		} // catch

		return movieList;
	}////////////////////////////// movieTrain2

	// 영화진흥원에서 제목으로 코드 검색하기
	public String moviecdGet(String mname) throws Exception {

		SeleniumController seleniumController = new SeleniumController();

		String movieCode = seleniumController.infoCrawl(mname);

		return movieCode;
	}

	// 무비리스트 평가영화 가져오기3
	public List movieTrain3() throws Exception {

		List<String> movieList = new Vector(); // 무비 리스트

		// 평가별영화
		String base_url = "https://movie.naver.com/movie/running/current.nhn?view=list&tab=normal&order=point"; // 가져올
																												// 주소
		try {

			Document doc = Jsoup.connect(base_url).get(); // 웹페이지 연결
			for (int i = 1; i <= 18; i++) {
				String movieName = doc
						.select("#content > div.article > div:nth-child(1) > div.lst_wrap > ul > li:nth-child(" + i
								+ ")> dl > dt > a")
						.html().trim();
				// *[@id="content"]/div[1]/div[1]/div[3]/ul/li[1]/div/a/img
				// *[@id="content"]/div[1]/div[1]/div[3]/ul/li[1]/dl/dt/a
				// *[@id="content"]/div[1]/div[1]/div[3]/ul/li[2]/dl/dt
				// Element movieName = doc.selectFirst("#content > div.article >
				// div:nth-child(1) > div.lst_wrap > ul > li:nth-child(1) > dl > dt");
				// System.out.println("무비갯수 :"+movieName.size());
				// System.out.println("영화 제목 가져오는 중 :" + movieNameㅇㅇ);
				movieList.add(movieName);
			}
			// System.out.println("----------------------------");
			// for (String movie : movieList) {
			// System.out.println(movie);
			// }
		} catch (Exception e) {
			e.printStackTrace();
		} // catch

		return movieList;
	}

	// 네이버 영화 40개 긁어오기
	public List movie40Get() throws Exception {
		SeleniumController seleniumController = new SeleniumController(2);

		List movieCode = seleniumController.listCrawl();

		return movieCode;
	}

	// 영화진흥위원회에서 영화상세정보를 얻기위한 메소드(영화제목,원제목,제작년도,장르,감독,배우)
	public HashMap<String, Object> movieInfoMap(String movieCd) throws Exception {

		// kobis api적용
		String key = "474596ac7909435a74aaf59de4aedefb";// API키
		KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);// 키를 통한 서비스 호출

		// Kobis서비스의 get메소드 : 반환값은 String(JSON형태)
		// getMovieInfo는 영화코드로만 정보를 가져올 수 있지만 우리가 원하는 정보를 다준다.
		String movieInfoResponse = service.getMovieInfo(true, movieCd);
		// getMovieList는 영화명,코드,어쩌구저쩌구로 정보를 다 가져올 수 있지만, 배우정보는 주지 않는다
		// String movieInfoResponse =service.getMovieList(true, null, null, "툴리", null,
		// null, null, null, null, null, null);

		// JSON
		ObjectMapper mapper = new ObjectMapper();
		// 서비스에서 받은 json스트링을 맵형태로 바꾸어 dailyResult에 저장
		HashMap<String, Object> movieInfoMap = mapper.readValue(movieInfoResponse, HashMap.class);

		return movieInfoMap;
	}// movieInfoMap

	// 네이버의 고화질 영화포스터 이미지url을 얻기위한 메소드
	// public String movieImgUrl(String movieNm) throws Exception {
	public Map movieImgUrl(String movieNm) throws Exception {

		String clientId = "T1e73cqxyZeqqNbXbMLa";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "cqCUwiyR31";// 애플리케이션 클라이언트 시크릿값";

		Map dataMap = new HashMap();

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

		// System.out.println("제이슨:"+movieInfoMap);

		String imgStr = movieInfoMap.get("items").get(0).get("link").toString();
		String dateStr = movieInfoMap.get("items").get(0).get("pubDate").toString().trim().replaceAll(" ", "");

		// System.out.println("dateStr:"+dateStr);
		// System.out.println(imgStr);
		String movieCode = imgStr.substring(imgStr.indexOf('=') + 1);
		// System.out.println("movieCode: " + movieCode);
		// 위의 모든 코드는 네이버의 영화코드를 얻기위해서 작성함...

		String realImgStr = "https://movie.naver.com/movie/bi/mi/photoViewPopup.nhn?movieCode=" + movieCode;

		// 크롤링
		Document doc = Jsoup.connect(realImgStr).get();
		Elements descs = doc.select("#targetImage");
		String realUrl = descs.get(0).attr("src");
		// System.out.println("realImgStr : "+realImgStr);
		// System.out.println("realUrl :"+realUrl);

		dataMap.put("realUrl", realUrl);
		dataMap.put("date", dateStr);
		// return realUrl;
		return dataMap;

	}/// movieImgMap


	// 글쓰기 페이지]
	@RequestMapping("/Movieing/Movie/MovieWrite.mov")
	public String write(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();
		map.put("id", id);

		//String movieNo=map.get("movieNo").toString();
		String movieTitle=map.get("movieTitle").toString();
		System.out.println("영화제목"+movieTitle);
		//영화네임에 따른 영화넘버 가져오기
		String movieNo =movieService.selectMovieNo(map);
		System.out.println("영화넘버"+movieNo);
		map.put("movieNo", movieNo);
		//평가테이블에 insert
		int insertEvalue=evalueWishService.insertEvalue(map);
		System.out.println("평가테이블에 insert");

		model.addAttribute("movieTitle", movieTitle);

		return "/movie/info/MovieWrite.tiles";
	}////////////////////////////////////////////

}
