package com.kosmo.movieing.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;

@Controller
public class MovieController {

	@RequestMapping("/Movieing/Movie/AllMovie.mov")
	public String movieMain() {
		return "movie/list/AllMovie.tiles";
	}
	@RequestMapping("/Movieing/Movie/MovieDetails.mov")
	public String movieDetail() {
		return "movie/info/MovieDetails.tiles";
	}
	@RequestMapping("/Movieing/Movie/Filmography.mov")
	public String filmography() {
		return "movie/info/Filmography.tiles";
	}
	
	@RequestMapping("/Movieing/Movie/RatingMovie.mov")
	public String ratingMovie() {
		return "movie/screening/RatingMovie.tiles";
	}
	
	///////////////////////////////////////////////////////
	
	@RequestMapping("/Movieing/Movie/Genre.mov")
	public String movieGenre() {
		return "movie/list/Genre.tiles";
	}
	@RequestMapping("/Movieing/Movie/NewMovie.mov")
	public String movieNew() {
		return "movie/list/NewMovie.tiles";
	}
	@RequestMapping("/Movieing/Movie/Popular.mov")
	public String moviePopular() {
		return "movie/list/Popular.tiles";
	}
	
	
	@RequestMapping("/Movieing/Movie/SearchResult.mov")
	public String searchResult() {
		return "movie/list/SearchResult.tiles";
	}
	
	
	
	//상세 테스팅
	@RequestMapping("/Movieing/Movie/MovieDetailsTest.mov")
	public String movieDetailsTest(@RequestParam  Map map, Model model)throws Exception {
		//영화상세정보
		model.addAttribute("movieInfoMap", movieInfoMap("20182669"));//아직 해당영화 코드 가져올 방법이 없으므로 하드코딩
		//영화이미지
		model.addAttribute("movieImgMap", movieImgMap("툴리"));
		return "movie/info/MovieDetailsTest.tiles";
	}
	
	@RequestMapping("/Movieing/Movie/MovieReviews.mov")
	public String movieReviews() {
		return "movie/info/MovieReviews.tiles";
	}
	
	
	public HashMap<String,Object> movieInfoMap(String movieCd) throws Exception {

		//kobis api적용
		String key = "474596ac7909435a74aaf59de4aedefb";//API키
		KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);//키를 통한 서비스 호출

		//Kobis서비스의 get메소드 : 반환값은 String(JSON형태) 
		//getMovieInfo는 영화코드로만 정보를 가져올 수 있지만 우리가 원하는 정보를 다준다.
		String movieInfoResponse = service.getMovieInfo(true, movieCd);
		//getMovieList는 영화명,코드,어쩌구저쩌구로  정보를 다 가져올 수 있지만, 배우정보는 주지 않는다
		//String movieInfoResponse =service.getMovieList(true, null, null, "툴리", null, null, null, null, null, null, null);
		
		System.out.println(movieInfoResponse);
		//JSON
		ObjectMapper mapper = new ObjectMapper();
		//서비스에서 받은 json스트링을 맵형태로 바꾸어 dailyResult에 저장
		HashMap<String,Object> movieInfoMap = mapper.readValue(movieInfoResponse, HashMap.class);
		
		return movieInfoMap;
	}//movieInfoMap
	
	public String movieImgMap(String movieNm) throws Exception {
		
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
    		//서비스에서 받은 json스트링을 맵형태로 바꾸어 dailyResult에 저장
    		HashMap<String,List<Map>> movieInfoMap = mapper.readValue(response.toString(), HashMap.class);
    		String imgStr = movieInfoMap.get("items").get(0).get("link").toString();	
    		String movieCode = imgStr.substring(imgStr.indexOf('=')+1);
    		String realImgStr = "https://movie.naver.com/movie/bi/mi/photoViewPopup.nhn?movieCode="+movieCode;
    		
    		
    		//크롤링
    		Document doc = Jsoup.connect(realImgStr).get();
    		Elements descs = doc.select("#targetImage");
    		String realUrl =descs.get(0).attr("src");
    		
    		return realUrl;
        
            
        
	}///movieImgMap
	
}
