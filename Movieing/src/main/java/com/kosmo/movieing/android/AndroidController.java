package com.kosmo.movieing.android;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.movieing.service.EvalueWishService;
import com.kosmo.movieing.service.MovieDto;
import com.kosmo.movieing.service.MovieService;
import com.kosmo.movieing.service.UserService;

@Controller
public class AndroidController {

	@Resource(name="userService")
	private UserService userService;

	@Resource(name="evalueWishService")
	private EvalueWishService evalueWishService;

	@Resource(name="movieService")
	private MovieService movieService;

	//로그인
	@ResponseBody
	@RequestMapping(value="/Movieing/Android/Login.mov")
	public String login(@RequestParam Map map) {

		boolean isLogin = userService.androidIsLogin(map);
		JSONObject json = new JSONObject();
		json.put("isLogin", isLogin?"Y":"N");

		return json.toJSONString();
	}


	//별점매길 리스트 뿌려주기
	@ResponseBody
	@RequestMapping(value="/Movieing/Android/EvalueList.mov")
	public String evalueList(@RequestParam Map map) throws UnsupportedEncodingException {

		map.put("id","KIM");//우선 하드코딩
		//int evalueCount = evalueWishService.getTotalEvalueCount(map);

		List<MovieDto> movieList = movieService.selectListMovie(map);

		int evalueCount = evalueWishService.getTotalEvalueCount(map);

		List<Map> collections = new Vector<Map>();
		for(MovieDto dto:movieList) {
			Map record = new HashMap();
			record.put("movieNo",dto.getMovieNo());
			record.put("movieTitle",URLEncoder.encode(dto.getMovieTitle(), "UTF-8"));
			record.put("movieImg", dto.getMovieImg());
			record.put("movieCountry", URLEncoder.encode(dto.getMovieCountry(), "UTF-8"));
			record.put("movieYear", dto.getMovieYear());
			record.put("evalueCount",evalueCount);

			collections.add(record);
		}


		return JSONArray.toJSONString(collections);
	}//evalueList


	//별점 남기기
	@ResponseBody
	@RequestMapping(value="/Movieing/Android/EvalueInsert.mov")
	public void evalueInsert(@RequestParam Map map) {

		map.put("id","KIM");//우선 하드코딩

		if(map.get("grade").equals("0")) return;

		if(evalueWishService.isEvalue(map)) {//이미 남긴 별점이 있다면,
			System.out.println("업데이트");
			evalueWishService.update(map);
		}
		else {//별점을 새로 입력하는 경우라면,
			System.out.println("인서트");
			evalueWishService.insert(map);
		}
	}//evalueList

	//추천 리스트 뿌려주기
	@ResponseBody
	@RequestMapping(value="/Movieing/Android/RecommendList.mov")
	public String recommendList(@RequestParam Map map) throws UnsupportedEncodingException {

		map.put("id","KIM");//우선 하드코딩
		//int evalueCount = evalueWishService.getTotalEvalueCount(map);

		List<MovieDto> movieList = movieService.selectListBestRecommendMovie(map);

		List<Map> collections = new Vector<Map>();
		for(MovieDto dto:movieList) {
			Map record = new HashMap();
			record.put("movieNo",dto.getMovieNo());
			record.put("movieTitle",URLEncoder.encode(dto.getMovieTitle(), "UTF-8"));
			record.put("movieImg", dto.getMovieImg());
			record.put("movieCountry", URLEncoder.encode(dto.getMovieCountry(), "UTF-8"));
			record.put("movieGenre", URLEncoder.encode(dto.getMovieGenre(), "UTF-8"));
			record.put("movieOrgTitle",dto.getMovieOrgTitle());
			record.put("movieYear", dto.getMovieYear());
			record.put("grade",dto.getGrade());
			collections.add(record);
		}


		return JSONArray.toJSONString(collections);
	}//evalueList


	@ResponseBody
	@RequestMapping(value="/Movieing/Android/MovieOne.mov")
	public String movieOne(@RequestParam Map map) throws UnsupportedEncodingException {

		map.put("id","KIM");//우선 하드코딩
		//int evalueCount = evalueWishService.getTotalEvalueCount(map);

		MovieDto dto = movieService.selectOne(map);


		JSONObject json = new JSONObject();

		json.put("movieNo",dto.getMovieNo());
		json.put("movieTitle",URLEncoder.encode(dto.getMovieTitle(), "UTF-8"));
		json.put("movieImg", dto.getMovieImg());
		json.put("movieCountry", URLEncoder.encode(dto.getMovieCountry(), "UTF-8"));
		json.put("movieGenre", URLEncoder.encode(dto.getMovieGenre(), "UTF-8"));
		json.put("movieOrgTitle",dto.getMovieOrgTitle());
		json.put("movieYear", dto.getMovieYear());
		json.put("grade",dto.getGrade());
		//가격
		json.put("naverPrice",dto.getNaverPrice());
		json.put("wavvePrice",dto.getWavvePrice());
		json.put("googlePrice",dto.getGooglePrice());

		json.put("movieContent", URLEncoder.encode(dto.getMovieContent(), "UTF-8"));
		json.put("movieDirector", URLEncoder.encode(dto.getMovieDirector()==null?"감독":dto.getMovieDirector(), "UTF-8"));
		json.put("movieGrade", URLEncoder.encode(dto.getMovieGrade(), "UTF-8"));//영화관람가

		return json.toJSONString();
	}//evalueList


}
