package com.kosmo.movieing.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.kosmo.movieing.android.FCMService;
import com.kosmo.movieing.service.CommentDto;
import com.kosmo.movieing.service.CommentService;
import com.kosmo.movieing.service.EvaluationDto;
import com.kosmo.movieing.service.EvalueWishService;
import com.kosmo.movieing.service.FilmographyDto;
import com.kosmo.movieing.service.FilmographyService;
import com.kosmo.movieing.service.LikeReviewDto;
import com.kosmo.movieing.service.LikeReviewService;
import com.kosmo.movieing.service.MovieDto;
import com.kosmo.movieing.service.MoviePeopleDto;
import com.kosmo.movieing.service.MoviePeopleService;
import com.kosmo.movieing.service.MovieService;
import com.kosmo.movieing.service.PagingUtil;
import com.kosmo.movieing.service.RealTimeSearchDto;
import com.kosmo.movieing.service.RealTimeSearchService;
import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;
import com.kosmo.movieing.service.StillCutDto;
import com.kosmo.movieing.service.StillCutService;
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

	@Resource(name = "evalueWishService")
	private EvalueWishService evalueWishService;

	@Resource(name = "movieService")
	private MovieService movieService;

	@Resource(name = "moviePeopleService")
	private MoviePeopleService moviePeopleService;

	@Resource(name = "realTimeSearchService")
	private RealTimeSearchService realTimeSearchService;

	@Resource(name = "stillCutService")
	private StillCutService stillCutService;

	@Resource(name = "filmographyService")
	private FilmographyService filmoGraphyService;

	@Resource(name = "likeReviewService")
	private LikeReviewService likeReviewService;

	// 전체영화
	@RequestMapping("/Movieing/Movie/AllMovie.mov")
	public String movieMain(Model model, @RequestParam Map map, Authentication auth) throws Exception {
		if (map.get("genre") != null) {
			model.addAttribute("genre", "animation");
		}
		map.put("id", auth.getName());
		System.out.println("AllMovie - 1 디비 가져오기 전");
		List<MovieDto> movieList = movieService.selectListNewRandom(map);
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
	public String movieNew(Model model, @RequestParam Map map, Authentication auth) throws Exception {
		map.put("id", auth.getName());
		System.out.println("NewMovie 1 - DB 받아오기 전");
		List<MovieDto> newMovieList = movieService.selectListNewRandom(map);
		System.out.println("NewMovie 2 - newMoveList 생성 완료");
		model.addAttribute("newMovieList", newMovieList);
		System.out.println("NewMovie 3 - movieList 전달 완료");

		return "movie/list/NewMovie.tiles";
		/*
		 * // List<Map> mData = new Vector<Map>(); // Map<K, V> mNameDate = new
		 * HashMap(); List mNames = new Vector(); List mDate = new Vector(); List mList
		 * = movieTrain(); JSONObject json = new JSONObject(); JSONArray jArray = new
		 * JSONArray(); /* for(int j=0; j<3;j++) { for(int i=j*6; i<j*6+6; i++) {
		 * System.out.println(i); System.out.println(mlist.get(i));
		 * mNames.add(movieImgUrl((String) mlist.get(i)));
		 * //System.out.println(mNames.get(i)); //System.out.println(); } } try { for
		 * (int i = 0; i < 18; i++) { mNames.add(movieImgUrl((String)
		 * mList.get(i)).get("realUrl")); mDate.add(movieImgUrl((String)
		 * mList.get(i)).get("date")); JSONObject obj = new JSONObject();
		 * obj.put("realUrl", mNames.get(i)); obj.put("date", mDate.get(i));
		 * obj.put("mname", mList.get(i)); jArray.add(obj); //
		 * mNameDate.put((movieImgUrl((String) //
		 * mList.get(i)).get("realUrl")),(movieImgUrl((String) //
		 * mList.get(i)).get("date"))); // mNameDate.put("mImgUrl",movieImgUrl((String)
		 * mList.get(i)).get("realUrl")); // mNameDate.put("mPubDate",
		 * movieImgUrl((String) mList.get(i)).get("date")); // mData.add(mNameDate); if
		 * (i % 5 == 0) { Thread.sleep(1000); } //
		 * System.out.println("영화 제목 "+i+":"+mList.get(i)); //
		 * System.out.println("이미지 소스 "+i+":"+mNameDate.get("mImgUrl")); //
		 * System.out.println("영화 제작 년도 "+i+":"+mNameDate.get("mPubDate")); //
		 * System.out.println("영화 ?? "+i+":"+mNameDate.get(i)); //
		 * System.out.println("이미지 소스 "+i+":"+mNames.get(i)); //
		 * System.out.println("영화 제작 년도 "+i+":"+mDate.get(i)); }
		 *
		 * } catch (Exception e) { e.printStackTrace(); } // 영화이미지
		 */
		// System.out.println("이미지소스 리스트 :"+mNames);
		// System.out.println("영화제작년도 리스트 :"+mDate);
		// System.out.println("제이슨 객체 :"+jArray);
		// model.addAttribute("movieImgUrl", mNames);
		// model.addAttribute("moviePubDate", mDate);
		// model.addAttribute("movieName", mList);
		// model.addAttribute("movieImgDate", mNameDate);
		// model.addAttribute("movieImgDate", jArray);
	}/////////////////
		// NewMovie.jsp
		//////////////////////////////////////////////////////////////////////////////////////////////

	@RequestMapping("/Movieing/Movie/Popular.mov")
	public String moviePopular(Model model, @RequestParam Map map, Authentication auth) throws Exception {
		map.put("id", auth.getName());
		System.out.println("popMovie 1 - DB 받아오기 전");
		List<MovieDto> popMovieList = movieService.selectListRandom(map);
		System.out.println("popMovie 2 - popMovieList 생성 완료");
		model.addAttribute("popMovieList", popMovieList);
		System.out.println("popMovie 3 - popMovieList 전달 완료");

		return "movie/list/Popular.tiles";
		/*
		 * // List<Map> mData = new Vector<Map>(); // Map<K, V> mNameDate = new
		 * HashMap(); List mNames = new Vector(); List mDate = new Vector(); List mList
		 * = movieTrain2(); JSONObject json = new JSONObject(); JSONArray jArray = new
		 * JSONArray(); /* for(int j=0; j<3;j++) { for(int i=j*6; i<j*6+6; i++) {
		 * System.out.println(i); System.out.println(mlist.get(i));
		 * mNames.add(movieImgUrl((String) mlist.get(i)));
		 * //System.out.println(mNames.get(i)); //System.out.println(); } } try { for
		 * (int i = 0; i < 18; i++) { mNames.add(movieImgUrl((String)
		 * mList.get(i)).get("realUrl")); mDate.add(movieImgUrl((String)
		 * mList.get(i)).get("date")); JSONObject obj = new JSONObject();
		 * obj.put("realUrl", mNames.get(i)); obj.put("date", mDate.get(i));
		 * obj.put("mname", mList.get(i)); jArray.add(obj); //
		 * mNameDate.put((movieImgUrl((String) //
		 * mList.get(i)).get("realUrl")),(movieImgUrl((String) //
		 * mList.get(i)).get("date"))); // mNameDate.put("mImgUrl",movieImgUrl((String)
		 * mList.get(i)).get("realUrl")); // mNameDate.put("mPubDate",
		 * movieImgUrl((String) mList.get(i)).get("date")); // mData.add(mNameDate); if
		 * (i % 5 == 0) { Thread.sleep(1000); } //
		 * System.out.println("영화 제목 "+i+":"+mList.get(i)); //
		 * System.out.println("이미지 소스 "+i+":"+mNameDate.get("mImgUrl")); //
		 * System.out.println("영화 제작 년도 "+i+":"+mNameDate.get("mPubDate")); //
		 * System.out.println("영화 ?? "+i+":"+mNameDate.get(i)); //
		 * System.out.println("이미지 소스 "+i+":"+mNames.get(i)); //
		 * System.out.println("영화 제작 년도 "+i+":"+mDate.get(i)); }
		 *
		 * } catch (Exception e) { e.printStackTrace(); } // 영화이미지 //
		 * System.out.println("이미지소스 리스트 :"+mNames); //
		 * System.out.println("영화제작년도 리스트 :"+mDate); //
		 * System.out.println("제이슨 객체 :"+jArray); // model.addAttribute("movieImgUrl",
		 * mNames); // model.addAttribute("moviePubDate", mDate); //
		 * model.addAttribute("movieName", mList); // model.addAttribute("movieImgDate",
		 * mNameDate); model.addAttribute("movieImgDate", jArray); return
		 * "movie/list/Popular.tiles";
		 */
	}//////////////////////// moviePopular

	@RequestMapping("/Movieing/Movie/Genre.mov")
	public String movieGenre(Model model, @RequestParam Map map, Authentication auth) throws Exception {
		map.put("id", auth.getName());
		System.out.println("GradeMovie 1 - DB 받아오기 전");
		List<MovieDto> StarMovieList = movieService.selectListRandom(map);
		System.out.println("GradeMovie 2 - popMovieList 생성 완료");
		model.addAttribute("StarMovieList", StarMovieList);
		System.out.println("GradeMovie 3 - popMovieList 전달 완료");

		return "movie/list/Genre.tiles";
		/*
		 * // List<Map> mData = new Vector<Map>(); // Map<K, V> mNameDate = new
		 * HashMap(); List mNames = new Vector(); List mDate = new Vector(); List mList
		 * = movieTrain3();
		 *
		 * JSONObject json = new JSONObject(); JSONArray jArray = new JSONArray();
		 *
		 * /* for(int j=0; j<3;j++) { for(int i=j*6; i<j*6+6; i++) {
		 * System.out.println(i); System.out.println(mlist.get(i));
		 * mNames.add(movieImgUrl((String) mlist.get(i)));
		 * //System.out.println(mNames.get(i)); //System.out.println(); } }
		 *
		 * try { for (int i = 0; i < 18; i++) {
		 *
		 * mNames.add(movieImgUrl((String) mList.get(i)).get("realUrl"));
		 * mDate.add(movieImgUrl((String) mList.get(i)).get("date"));
		 *
		 * JSONObject obj = new JSONObject(); obj.put("realUrl", mNames.get(i));
		 * obj.put("date", mDate.get(i)); obj.put("mname", mList.get(i));
		 *
		 * jArray.add(obj);
		 *
		 * // mNameDate.put((movieImgUrl((String) //
		 * mList.get(i)).get("realUrl")),(movieImgUrl((String) //
		 * mList.get(i)).get("date")));
		 *
		 * // mNameDate.put("mImgUrl",movieImgUrl((String)
		 * mList.get(i)).get("realUrl")); // mNameDate.put("mPubDate",
		 * movieImgUrl((String) mList.get(i)).get("date"));
		 *
		 * // mData.add(mNameDate);
		 *
		 * if (i % 5 == 0) { Thread.sleep(1000); } //
		 * System.out.println("영화 제목 "+i+":"+mList.get(i)); //
		 * System.out.println("이미지 소스 "+i+":"+mNameDate.get("mImgUrl")); //
		 * System.out.println("영화 제작 년도 "+i+":"+mNameDate.get("mPubDate")); //
		 * System.out.println("영화 ?? "+i+":"+mNameDate.get(i)); //
		 * System.out.println("이미지 소스 "+i+":"+mNames.get(i)); //
		 * System.out.println("영화 제작 년도 "+i+":"+mDate.get(i));
		 *
		 * }
		 *
		 * } catch (Exception e) { e.printStackTrace(); }
		 *
		 * // 영화이미지 // System.out.println("이미지소스 리스트 :"+mNames); //
		 * System.out.println("영화제작년도 리스트 :"+mDate); //
		 * System.out.println("제이슨 객체 :"+jArray);
		 *
		 * // model.addAttribute("movieImgUrl", mNames); //
		 * model.addAttribute("moviePubDate", mDate); // model.addAttribute("movieName",
		 * mList); // model.addAttribute("movieImgDate", mNameDate);
		 * model.addAttribute("movieImgDate", jArray); return "movie/list/Genre.tiles";
		 * ///////////////// movieGenre
		 */
	}

	// 영화 상세 페이지
	@RequestMapping("/Movieing/Movie/MovieDetails.mov")
	public String movieDetailsTest(HttpServletRequest req, @RequestParam Map map, Model model,
			@RequestParam String movieNo, Authentication auth) throws Exception {

		if(map.get("move")!=null) {
			model.addAttribute("move", true);
		}

		// 지우지마
		map.put("id", auth.getName());
		List<UserDto> movieUserList = userService.selectMovieUserList(map);
		model.addAttribute("movieUserList", movieUserList.isEmpty() ? null : movieUserList);
		map.put("movieNo", movieNo);


		MovieDto movieInfo = movieService.selectOne(map);

		StillCutDto stillCut = stillCutService.searchStillCut(map);


		if (movieInfo.getNaverPrice() != null) {
			String naverPrice = movieInfo.getNaverPrice().substring(0, movieInfo.getNaverPrice().indexOf("."))
					.toString();
			movieInfo.setNaverPrice(naverPrice);

		}
		if (movieInfo.getWavvePrice() != null) {
			String wavvePrice = movieInfo.getWavvePrice().substring(0, movieInfo.getWavvePrice().indexOf("."));
			movieInfo.setWavvePrice(wavvePrice);
		}
		if (movieInfo.getGooglePrice() != null) {
			String googlePrice = movieInfo.getGooglePrice().substring(0, movieInfo.getGooglePrice().indexOf("."));
			movieInfo.setGooglePrice(googlePrice);
		}
		model.addAttribute("movieNo", map.get("movieNo"));
		model.addAttribute("movieInfo", movieInfo);
		model.addAttribute("movieInfoMap", movieInfoMap(movieNo));
		model.addAttribute("stillCut", stillCut==null ? null : stillCut);
		/*
		 * System.out.println("RequestMethod.GET"); System.out.println("name : " +
		 * mname); System.out.println("date : " + date);
		 *
		 * String mcode = moviecdGet(mname);
		 *
		 * String mImgSource = (String) movieImgUrl(mname).get("realUrl");
		 *
		 * // 영화상세정보 model.addAttribute("movieInfoMap", movieInfoMap(mcode));// 아직 해당영화
		 * 코드 가져올 방법이 없으므로 하드코딩 // 영화이미지 model.addAttribute("movieImgUrl", mImgSource);
		 * System.out.println("movieImgUrl : " + movieImgUrl(mname));
		 */
		// 넘겨받은 영화코드 : movieNo. 임시로 넣어줌

		// 페이징을 위한 로직]
		int pageSize = 4;
		int blockPage = 3;
		int nowPage = map.get("nowPage")==null?1:Integer.parseInt(map.get("nowPage").toString());// 임시
		System.out.println("지금 몇페이지냐?"+nowPage);

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
		model.addAttribute("pagingString", pagingString);

		List<LikeReviewDto> likeReviewNoList = likeReviewService.selectReviewNoList(map);

		// 영화 리뷰 다 뿌려주자
		List<ReviewDto> reviewList = reviewService.selectMovieReviewList(map);
		for (ReviewDto record : reviewList) {
			record.setReviewContent(record.getReviewContent().replace("\r\n", "<br/>"));
			record.setLikeReviewEqual(false);
			for (LikeReviewDto dto : likeReviewNoList) {
				if (dto.getReviewNo().equals(record.getReviewNo())) {
					record.setLikeReviewEqual(true);
				}
			}
		}

		// System.out.println("MovieDetails - 6 reviewList.getUserId 값
		// :"+reviewList.get(0).getUserId());
		model.addAttribute("reviewList", reviewList.isEmpty() ? null : reviewList);

		model.addAttribute("userNick", userService.userSelectList(map).get(0).getUserNick());

		//보고싶어요한 영화 평점 뿌리기]일단 가져와
		//내가 평가를 했는지의 유무]
		if(evalueWishService.selectEvalueCount(map)==1) {//평가한 영화가 있다
			EvaluationDto selectEvalueOne=evalueWishService.selectEvalueOne(map);
			model.addAttribute("selectEvalueOne", selectEvalueOne);
		}else {
			model.addAttribute("selectEvalueOne", null);
		}

		//평점
		//평점이 있는지의 유무]
		if(evalueWishService.selectEvalueCountAll(map)>=1) {//있으면
			double selectGradeAvg=evalueWishService.selectGradeAvg(map);
			model.addAttribute("selectGradeAvg",Math.round(selectGradeAvg*100)/100.0);//둘째짜리
		}else {
			model.addAttribute("selectGradeAvg",null);//둘째짜리
		}
		//보고싶어요 유무]
		String userId = auth.getName();
		map.put("id", userId.toString());
		//보고싶어요 누른경우 유무]
		int getEvalueOneLikeCount=evalueWishService.getEvalueOneLikeCount(map);
		if(getEvalueOneLikeCount==1) {//눌럿네
			model.addAttribute("getEvalueOneLikeCount", "y");
		}else {
			model.addAttribute("getEvalueOneLikeCount", "n");
		}




		return "movie/info/MovieDetails.tiles";
	}
	//////////////////////////////////////////////////////////////////////////////////////

	// 영화 평가 보여주기
	@RequestMapping("/Movieing/Movie/screening/RatingMovie.mov")
	public String ratingMovie(Model model, @RequestParam Map map, Authentication auth) throws Exception {

		// 이거지우지마 영화평가 갯수넘겨줘야해
		map.put("id", auth.getName());
		int evalueCount = evalueWishService.getTotalEvalueCount(map);
		model.addAttribute("evalueCount", evalueCount);

		System.out.println("RatingMovie - 1 DB 가져오기 전");
		List<MovieDto> movieList = movieService.selectListMovie(map);

		System.out.println("RatingMovie - 2 movieList 값 저장");
		model.addAttribute("movieList", movieList);

		System.out.println("RatingMovie - 3 값 전송 완료");

		// id
		model.addAttribute("id", auth.getName());

		return "movie/screening/RatingMovie.tiles";

		/*
		 * List movie40List = movie40Get(); JSONObject json = new JSONObject();
		 * JSONArray jArray = new JSONArray(); List mImgUrl = new Vector(); List mDate =
		 * new Vector(); for (int i = 0; i < 40; i++) { System.out.println("리스트 " + i +
		 * "번째 제목 : " + movie40List.get(i)); } try { for (int i = 0; i < 40; i++) {
		 * mImgUrl.add(movieImgUrl((String) movie40List.get(i)).get("realUrl"));
		 * mDate.add(movieImgUrl((String) movie40List.get(i)).get("date")); JSONObject
		 * obj = new JSONObject(); obj.put("mname", movie40List.get(i));
		 * obj.put("mImgUrl", mImgUrl.get(i)); obj.put("mdate", mDate.get(i));
		 * jArray.add(obj); if (i % 4 == 0) { Thread.sleep(500); } } } catch (Exception
		 * e) { e.printStackTrace(); } System.out.println("이미지소스 리스트 :" + movie40List);
		 * System.out.println("영화제작년도 리스트 :" + mDate); System.out.println("json 객체 :" +
		 * jArray); model.addAttribute("movieImgName", jArray);
		 */
	}
///////////////////////////////////////////ratingMovie

	// 필모그래피]-감독
	@RequestMapping("/Movieing/Movie/Filmography.mov")

	/*
	 * public String filmography(@RequestParam Map map,Model model) { //사람 이름받기
	 * String movieDirector=map.get("movieDirector").toString();
	 * System.out.println("감독이름:"+movieDirector);
	 *
	 * //이름에 맞는 정보가져오기-감독 MoviePeopleDto
	 * selectPeople=moviePeopleService.selectPeople(map);
	 * model.addAttribute("selectPeople", selectPeople); //영화정보 MoviePeopleDto
	 * selectPeopleMovie=moviePeopleService.selectPeopleMovie(map);
	 * model.addAttribute("selectPeopleMovie", selectPeopleMovie);
	 */
	public String filmography(@RequestParam Map map, @RequestParam String moviePeopleName, Model model) {
		System.out.println("Filmography -1 : map 실어 값 보내기 성공");
		// 영화인 이름
		map.put("moviePeopleName", moviePeopleName);

		// 영화인 이름으로 영화인 번호 가져오기
		// List<MoviePeopleDto> selectNoList =
		// moviePeopleService.selectPeopleNoList(map);
		MoviePeopleDto moviePeopleInfo = moviePeopleService.selectMoviePeopleNameOne(map);
		// 영화인 코드, 영화 코드 반환
		System.out.println("Filmograph -2.1 : moviePeopleInfo.getName : " + moviePeopleInfo.getMoviePeopleName());
		System.out.println("Filmograph -2.2 : moviePeopleInfo.getNo : " + moviePeopleInfo.getMoviePeopleNo());

		String moviePeopleNo = moviePeopleInfo.getMoviePeopleNo();
		System.out.println("Filmograph -3 : moviePeople :" + moviePeopleNo);
		map.put("moviePeopleNo", moviePeopleNo);
		// 번호 집어넣기

		// 관련 영화 정보 가져오기
		List<FilmographyDto> selectFilmoList = filmoGraphyService.selectFilmoList(map);
		System.out.println("Filmography -4 : selectFilmoList 생성 완료 : " + selectFilmoList);
		for (int i = 0; i < selectFilmoList.size(); i++) {
			System.out.println("Filmography -4.1 : selectFilmoList(필모그래피 리스트).getMovieNo : "
					+ selectFilmoList.get(i).getMovieNo());
			System.out.println("Filmography -4.2 : selectFilmoList(필모그래피 리스트).getMoviePeopleNo : "
					+ selectFilmoList.get(i).getMoviePeopleNo());
		}
		String movieNo;
		MovieDto movieInfo;
		List<MovieDto> movieInfoList = new Vector<MovieDto>();

		for (int i = 0; i < selectFilmoList.size(); i++) {
			movieNo = selectFilmoList.get(i).getMovieNo();
			map.put("movieNo", movieNo);
			movieInfo = movieService.selectOne(map);
			movieInfoList.add(movieInfo);

			System.out.println("Filmography 5 : movieInfoList : " + movieInfoList.get(i));

		}

		model.addAttribute("moviePeopleInfo", moviePeopleInfo);
		model.addAttribute("movieInfoList", movieInfoList);
		// 감독 출현작
		// List<MovieDto> selectListDirector=movieService.selectListDirector(map);
		// model.addAttribute("selectListDirector", selectListDirector);

		model.addAttribute("selectFilmoList", selectFilmoList);
		// model.addAttribute("movieInfo",movieInfo);
		// model.addAttribute("selectMovieList",selectMovieList);

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

	// 전체영화 ajax
	@ResponseBody
	@RequestMapping(value = "/Movieing/Movie/movieAjax.mov")
	public String movieAjax(@RequestParam Map map, Authentication auth) {

		List<MovieDto> movieList;
		if (map.get("genre").toString().equals("drama")) {
			movieList = movieService.selectListDrama(map);
		} else {
			movieList = movieService.selectListAni(map);
		}

		List<Map> movieJsonArray = new Vector<Map>();
		for (MovieDto dto : movieList) {
			Map record = new HashMap();
			record.put("movieNo", dto.getMovieNo());
			record.put("movieImg", dto.getMovieImg());
			movieJsonArray.add(record);
		}

		return JSONArray.toJSONString(movieJsonArray);
	}

	// 영화상세 페이지의 별점ajax
	@ResponseBody
	@RequestMapping(value = "/Movieing/Movie/starAjax.mov")
	public void starAjax(@RequestParam Map map, Authentication auth) {
		String userId = auth.getName();
		map.put("id", userId.toString());

		if (evalueWishService.isEvalue(map)) {// 이미 남긴 별점이 있다면,
			evalueWishService.update(map);
		} else {// 별점을 새로 입력하는 경우라면,
			evalueWishService.insert(map);
		}
	}

	// 영화상세 페이지의 보고싶어요ajax
	@ResponseBody
	@RequestMapping(value = "/Movieing/Movie/wishAjax.mov")
	public void wishAjax(@RequestParam Map map, Authentication auth) {
		String userId = auth.getName();
		map.put("id", userId.toString());
		System.out.println("무비넘버"+map.get("movieNo"));
		if (map.get("isInsert").equals("true")) {// 보고싶어요에 추가하는 경우
			evalueWishService.insertWish(map);
			System.out.println("보고싶어요 추가됨");
		} else {// 보고싶어요에서 삭제하는 경우
			evalueWishService.deleteWish(map);
		}


	}
	//영화 상세 보고싶어요 눌럿냐]

	@ResponseBody
	@RequestMapping(value = "/Movieing/Movie/wishAjax_ok.mov")
	public String wishAjax_ok(@RequestParam Map map, Authentication auth) {
		String userId = auth.getName();
		map.put("id", userId.toString());
		//보고싶어요 누른경우 유무]
		int getEvalueOneLikeCount=evalueWishService.getEvalueOneLikeCount(map);
		if(getEvalueOneLikeCount==1) {//눌럿네
			return "y";
		}else {
			return "n";
		}
	}


	// 영화상세페이지의 리뷰 뿌리기
	@ResponseBody // produces="text/html; charset=UTF-8"
					// ,produces="application/json;charset=UTF-8" , consumes =
					// {"application/json;charset=UTF-8"}
	@RequestMapping(value = "/Movieing/Movie/ReviewAjax.mov", method = RequestMethod.POST)
	public String reviewAjax(@RequestParam Map map) throws UnsupportedEncodingException {

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
			record.put("nowPage", nowPage);
			record.put("movieNo", dto.getMovieNo());
			reviewJsonArray.add(record);
		}

		return JSONArray.toJSONString(reviewJsonArray);
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 리뷰상세페이지
	@RequestMapping("/Movieing/Movie/MovieReviews.mov")
	public String movieReviews(@RequestParam Map map, Model model, Authentication auth) {

		if(map.get("prevPage")!=null) {
			model.addAttribute("prevPage", map.get("prevPage").toString());
		System.out.println("들어온 프리브페이지:"+map.get("prevPage"));
		}

		map.put("id", auth.getName());
		String reviewNo = map.get("reviewNo").toString();
		System.out.println("리뷰 넘버:" + reviewNo);

		UserDto user = userService.selectOne(map);
		model.addAttribute("user", user);
		ReviewDto review = reviewService.selectOne(map);
		review.setReviewContent(review.getReviewContent().replace("\r\n", "<br>"));
		//likeReviewEqual
		review.setLikeReviewEqual(false);
		boolean flag = false;
		List<LikeReviewDto> likeReviewNoList = likeReviewService.selectReviewNoList(map);
		for (LikeReviewDto dto : likeReviewNoList) {
			if (dto.getReviewNo().equals(review.getReviewNo())) {
				review.setLikeReviewEqual(true);
				flag=true;
			}

			if(flag) break;
		}


		SimpleDateFormat format = new SimpleDateFormat("yyyy. MM. dd");

		model.addAttribute("date", format.format(review.getReviewPostdate()));

		model.addAttribute("review", review);

		List<CommentDto> commentList = commentService.selectList(map);
		for (CommentDto record : commentList) {
			record.setCommentContent(record.getCommentContent().replace("\r\n", "<br>"));
			record.setStringDate(format.format(record.getCommentDate()));
		}

		model.addAttribute("commentList", commentList);

		return "movie/info/MovieReviews.tiles";
	}//////////////////////////////////

	//리뷰상세페이지에서 뒤로가기했을때 가는 페이지!
	@RequestMapping("/Movieing/Movie/prevMovieReviews.mov")
	public String prevMovieReviews(@RequestParam Map map) {
		String page="";
		String nowPage = map.get("prevPage").toString();
		String[] nowPageArray ;
		switch(map.get("prevPage").toString()) {
		case "BlogMain": page="redirect:/Movieing/Blog/BlogMain.mov";break;
		case "MyActivityB": page = "redirect:/Movieing/Blog/MyActivity.mov?page=b";break;
		case "MyActivityC":page = "redirect:/Movieing/Blog/MyActivity.mov?page=c";break;
		case "MF_1":page="redirect:/Movieing/Blog/MovieingFriends.mov";break;
		case "MF_2":page="redirect:/Movieing/Blog/MovieingFriends2.mov";break;
		default:
			nowPageArray = nowPage.split("_");
			page="redirect:/Movieing/Movie/MovieDetails.mov?movieNo="+nowPageArray[1] +"&nowPage="+nowPageArray[2]+"&move=y";

		}

		return page;
	}

	// 리뷰댓글 ajax]-날짜
	@ResponseBody
	@RequestMapping(value = "/Movieing/Movie/CommentAjax.mov", method = RequestMethod.POST)
	public String commentAjax(@RequestParam Map map,HttpServletRequest req) {

		commentService.insert(map);
		String otherNick = userService.userSelectList(map).get(0).getUserNick().toString();
		String reviewOwnerNick = reviewService.selectOne(map).getUserNick().toString();
		FCMService fcm = new FCMService();
		try {
			fcm.send(req,String.format("%s님이 %s님의 리뷰에 댓글을 남겼어요♥", otherNick,reviewOwnerNick));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		SimpleDateFormat format = new SimpleDateFormat("yyyy. MM. dd");
		Date date = new Date();

		/*
		 * //댓글개수 가져오기 ReviewDto review = reviewService.selectOne(map);
		 *
		 * //json형태로 담아서 보내기 JSONObject obj =new JSONObject(); obj.put("date",
		 * date.toString()); obj.put("review", review.getCommentCount().toString());
		 *
		 */

		return format.format(date).toString();
	}

	// 리뷰댓글 ajax]-댓글수
	@ResponseBody
	@RequestMapping(value = "/Movieing/Movie/CommentAjax2.mov", method = RequestMethod.POST)
	public String commentAjax2(@RequestParam Map map) {
		System.out.println("제발ㄹ,,,");
		// 댓글개수 가져오기
		ReviewDto review = reviewService.selectOne(map);

		return review.getCommentCount().toString();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	@RequestMapping("/Movieing/Movie/SearchResult.mov")
	public String searchResult(@RequestParam Map map, @RequestParam String searchWord, Model model) {

		map.put("searchWord", searchWord);
		map.put("searchWord%", searchWord + "%");
		map.put("%searchWord", "%" + searchWord);
		map.put("%searchWord%", "%" + searchWord + "%");

		// map.put("searchPeople%", searchWord+"%");
		/*
		 * System.out.println("searchReuslt - 1 searchWord 값 : "+searchWord);
		 */

		List<RealTimeSearchDto> searchRealTimeList = realTimeSearchService.selectRTSearchList(map);
		System.out.println("searchResult -1 searchRealTimeLsit 값 : " + searchRealTimeList);
		if (searchRealTimeList.size() == 0) {
			realTimeSearchService.insert(map);
		} // if
		else {
			int check = 0;
			for (int i = 0; i < searchRealTimeList.size(); i++) {
				if (searchRealTimeList.get(i).getKeyword().equals(searchWord)) {
					realTimeSearchService.update(map);
					System.out.println("여긴 업데이트" + searchRealTimeList.get(i).getKeyword());
					break;
				} else {
					check++;
				}
			} // for
			if (check == searchRealTimeList.size()) {
				realTimeSearchService.insert(map);
			}

		}

		List<MovieDto> searchMovieList = movieService.selectListSearchRadom(map);
		List<MoviePeopleDto> searchPeopleList = moviePeopleService.selectListPeople(map);
		List<UserDto> searchUserList = userService.selectSearchList(map);
		List<ReviewDto> searchReviewList = reviewService.selectSearchReviewList(map);
		List<CommentDto> searchCommentList = commentService.selectSearchCommentList(map);

		/*
		 * System.out.println("searchResult -2 searchMovieList 값 : "+searchMovieList);
		 * System.out.println("searchResult -3 searchPeopleList 값 : "+searchPeopleList);
		 * System.out.println("searchResult -4 searchUserList 값 : "+searchUserList);
		 * System.out.println("searchResult -5 searchReviewList 값 : "+searchReviewList);
		 */

		model.addAttribute("searchWord", searchWord);
		model.addAttribute("searchMovieList", searchMovieList);
		model.addAttribute("searchPeopleList", searchPeopleList);
		model.addAttribute("searchUserList", searchUserList);
		model.addAttribute("searchReviewList", searchReviewList);
		model.addAttribute("searchCommentList", searchCommentList);

		model.addAttribute("searchRealTimeList", searchRealTimeList);

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

		String movieTitle = map.get("movieTitle").toString();
		System.out.println("영화제목" + movieTitle);
		// 영화네임에 따른 영화넘버 가져오기
		String movieNo = movieService.selectMovieNo(map);
		System.out.println("영화넘버" + movieNo);
		map.put("movieNo", movieNo);
		//영화넘버와 아이디에 따른 평가점수가져오기
		EvaluationDto selectEvalueOne=evalueWishService.selectEvalueOne(map);
		map.put("evaluationGrade", selectEvalueOne.getEvaluationGrade());
		model.addAttribute("evaluationGrade", selectEvalueOne.getEvaluationGrade());//평가점수
		//System.out.println("evaluationGrade"+selectEvalueOne.getEvaluationGrade());


		model.addAttribute("movieTitle", movieTitle);

		return "movie/info/MovieWrite.tiles";
	}////////////////////////////////////////////



}
