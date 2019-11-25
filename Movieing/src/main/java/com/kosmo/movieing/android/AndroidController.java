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

		List<Map> collections = new Vector<Map>();
		for(MovieDto dto:movieList) {
			Map record = new HashMap();
			record.put("movieNo",dto.getMovieNo());
			record.put("movieTitle",URLEncoder.encode(dto.getMovieTitle(), "UTF-8"));
			record.put("movieImg", dto.getMovieImg());
			record.put("movieCountry", URLEncoder.encode(dto.getMovieCountry(), "UTF-8"));
			record.put("movieYear", dto.getMovieYear());


			collections.add(record);
		}
		return JSONArray.toJSONString(collections);
	}//evalueList


	//별점 남기기
	@ResponseBody
	@RequestMapping(value="/Movieing/Android/EvalueInsert.mov")
	public void evalueInsert(@RequestParam Map map) {

		map.put("id","KIM");//우선 하드코딩

		if(evalueWishService.isEvalue(map)) {//이미 남긴 별점이 있다면,
			System.out.println("업데이트");
			evalueWishService.update(map);
		}
		else {//별점을 새로 입력하는 경우라면,
			System.out.println("인서트");
			evalueWishService.insert(map);
		}
	}//evalueList


}
