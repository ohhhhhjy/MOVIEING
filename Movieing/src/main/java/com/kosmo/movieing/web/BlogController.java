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
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.movieing.service.EvaluationDto;
import com.kosmo.movieing.service.EvaluationService;
import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;

@Controller
public class BlogController {

	@Resource(name="reviewService")
	private ReviewService reviewService;

	@Resource(name="evaluationService")
	private EvaluationService evaluationService;

	// 블로그메인
	@RequestMapping("/Movieing/Blog/BlogMain.mov")
	public String blogMain() {
		return "blog/my/BlogMain.tiles";
	}

	// 블로그-내 활동
	@RequestMapping("/Movieing/Blog/MyActivity.mov")
	public String myActiviy(@RequestParam Map map, Model model) throws Exception {
		String id= "KIM";//임시

		map.put("id", id);

		String page = map.get("page")==null?"a":map.get("page").toString();
		model.addAttribute("page", page);

		//1.별점
		List<EvaluationDto> evaluationList = evaluationService.selectList(map);
		System.out.println("뭐야"+evaluationList);
//		System.out.println("야 나와:"+evaluationList.get(0).getMovieNo());
		//가져온 리스트에 사진url담아주기
		for(EvaluationDto record:evaluationList) {
			record.setImgUrl(naverDefaultMovieImgUrl(record.getMovieTitle()));
		}
		//2.리뷰
		List<ReviewDto> reviewList = reviewService.selectList(map);
		//가져온 리스트에 사진url담아주기
		for(ReviewDto record:reviewList) {
			record.setImgUrl(naverDefaultMovieImgUrl(record.getMovieTitle()));
		}

		//3.좋아요


		//4.보고싶어요

		model.addAttribute("evaluationList",evaluationList);
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

	//네이버가 제공하는 기본 영화포스터 이미지url을 얻기위한 메소드(고화질 아님.작은 이미지라 저화질이어도 괜찮음.)
		public String naverDefaultMovieImgUrl(String movieNm) throws Exception {

	        String clientId = "T1e73cqxyZeqqNbXbMLa";//애플리케이션 클라이언트 아이디값";
	        String clientSecret = "cqCUwiyR31";//애플리케이션 클라이언트 시크릿값";

	            String text = URLEncoder.encode(movieNm, "UTF-8");
	            String apiURL = "https://openapi.naver.com/v1/search/movie?query="+ text; // json 결과
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("X-Naver-Client-Id", clientId);
	            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  // 에러 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            br.close();

	            //JSON
	    		ObjectMapper mapper = new ObjectMapper();
	    		HashMap<String,List<Map>> movieInfoMap = mapper.readValue(response.toString(), HashMap.class);
	    		String imgStr = movieInfoMap.get("items").get(0).get("image").toString();
//	    		String movieCode = imgStr.substring(imgStr.indexOf('=')+1);
//	    		//위의 모든 코드는 네이버의 영화코드를 얻기위해서 작성함...
//
//	    		String realImgStr = "https://movie.naver.com/movie/bi/mi/photoViewPopup.nhn?movieCode="+movieCode;
//
//
//	    		//크롤링
//	    		Document doc = Jsoup.connect(realImgStr).get();
//	    		Elements descs = doc.select("#targetImage");
//	    		String realUrl =descs.get(0).attr("src");

	    		return imgStr;



		}///movieImgMap

}//////// class
