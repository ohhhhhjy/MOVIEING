package com.kosmo.movieing.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;

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
		model.addAttribute("movieInfoMap", movieInfoMap("20182669"));//아직 해당영화 코드 가져올 방법이 없으므로 하드코딩
		return "movie/info/MovieDetailsTest.tiles";
	}
	
	public HashMap<String,Object> movieInfoMap(String movieCd) throws Exception {

		//kobis api적용

		String key = "474596ac7909435a74aaf59de4aedefb";//API키
		KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);//키를 통한 서비스 호출

		//Kobis서비스의 get메소드 : 반환값은 String(JSON형태) 
		String movieInfoResponse = service.getMovieInfo(true, movieCd);
		//JSON
		ObjectMapper mapper = new ObjectMapper();
		//서비스에서 받은 json스트링을 맵형태로 바꾸어 dailyResult에 저장
		HashMap<String,Object> movieInfoMap = mapper.readValue(movieInfoResponse, HashMap.class);
		
		return movieInfoMap;
	}
	
	
}
