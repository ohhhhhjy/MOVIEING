package com.kosmo.movieing.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.movieing.service.MovieDto;
import com.kosmo.movieing.service.MovieService;
//
@Controller
public class RecommendController {

	@Resource(name = "movieService")
	private MovieService movieService;



	@RequestMapping("/Movieing/Movie/Recommend.mov")
	public String recommend(Model model, @RequestParam Map map) throws Exception {

		List<MovieDto> movieList = movieService.selectListMovie(map);
		List<MovieDto> movieRomanceList = movieService.selectListRomance(map);
		List<MovieDto> movieHorrorList = movieService.selectListHorror(map);
		List<MovieDto> movieRamdomList = movieService.selectListRandom(map);
		List<MovieDto> movieComedyList = movieService.selectListComedy(map);

		model.addAttribute("movieList", movieList);
		model.addAttribute("movieRandomList", movieRamdomList);
		model.addAttribute("movieRomanceList", movieRomanceList);
		model.addAttribute("movieHorrorList", movieHorrorList);
		model.addAttribute("movieComedyList", movieComedyList);

		return "movie/recommend/Recommend.tiles";
		/*
		List mNames = new Vector();
		List mDate = new Vector();
		List mList = movieTrain();
		JSONObject json = new JSONObject();
		JSONArray jArray = new JSONArray();
		try {
		for(int i=0; i<6;i++) {
			mNames.add(movieImgUrl((String) mList.get(i)).get("realUrl"));
			mDate.add(movieImgUrl((String) mList.get(i)).get("date"));
			JSONObject obj = new JSONObject();
			obj.put("realUrl",mNames.get(i));
			obj.put("date",mDate.get(i));
			obj.put("mname", mList.get(i));
			jArray.add(obj);
			if(i%5==0) {
				Thread.sleep(1000);
			}
		}
		}
		catch(Exception e) {e.printStackTrace();}
		model.addAttribute("movieImgDate",jArray);
		*/
	}

	@RequestMapping("/Movieing/Movie/test.mov")
	public String test() {
		return "movie/recommend/test.tiles";
	}


//	@RequestMapping("/Movieing/Movie/First_like.mov")
//	public String first_like() {
//		return "movie/recommend/First_like.tiles";
//	}

	//무비리스트 가져오기
	public List movieTrain() throws Exception{

		List<String> movieList = new Vector(); // 무비 리스트

		//최신영화
		String base_url = "https://movie.naver.com/movie/running/current.nhn?view=list&tab=normal&order=likeCount"; // 가져올 주소
		try {

			Document doc = Jsoup.connect(base_url).get(); // 웹페이지 연결
			for (int i = 1; i <= 6; i++) {

				String movieName = doc.select("#content > div.article > div:nth-child(1) > div.lst_wrap > ul > li:nth-child(" + i+ ")> dl > dt > a").html().trim();

//				String movieName = doc.select("#content > div.article > div:nth-child(1) > div.lst_wrap > ul > li:nth-child(" + i+ ")> dl > dt > a").html().trim();
				//*[@id="content"]/div[1]/div[1]/div[3]/ul/li[1]/dl/dt/a
				//*[@id="content"]/div[1]/div[1]/div[3]/ul/li[2]/dl/dt

				// Element movieName = doc.selectFirst("#content > div.article >
				// div:nth-child(1) > div.lst_wrap > ul > li:nth-child(1) > dl > dt");
				// System.out.println("무비갯수 :"+movieName.size());
				//System.out.println("영화 제목 가져오는 중 :" + movieNameㅇㅇ);
				movieList.add(movieName);
			}
			//System.out.println("----------------------------");
			//for (String movie : movieList) {
			//	System.out.println(movie);
			//}
		} catch (Exception e) {
			e.printStackTrace();
		}//catch

		return movieList;
	}/////////////////////////////////movieTrain

	//네이버 영화 40개 긁어오기
	public List movie40Get() throws Exception{
		SeleniumController seleniumController = new SeleniumController(2);

		List movieCode = seleniumController.listCrawl();

		return movieCode;
	}

	//네이버의 고화질 영화포스터 이미지url을 얻기위한 메소드
		//public String movieImgUrl(String movieNm) throws Exception {
		public Map movieImgUrl(String movieNm) throws Exception {

	        String clientId = "T1e73cqxyZeqqNbXbMLa";//애플리케이션 클라이언트 아이디값";
	        String clientSecret = "cqCUwiyR31";//애플리케이션 클라이언트 시크릿값";

	        Map dataMap = new HashMap();


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

	    		//System.out.println("제이슨:"+movieInfoMap);

	    		String imgStr = movieInfoMap.get("items").get(0).get("link").toString();
	    		String dateStr = movieInfoMap.get("items").get(0).get("pubDate").toString().trim().replaceAll(" ", "");



	    		//System.out.println("dateStr:"+dateStr);
	    		//System.out.println(imgStr);
	    		String movieCode = imgStr.substring(imgStr.indexOf('=')+1);
	    		//System.out.println("movieCode: " + movieCode);
	    		//위의 모든 코드는 네이버의 영화코드를 얻기위해서 작성함...

	    		String realImgStr = "https://movie.naver.com/movie/bi/mi/photoViewPopup.nhn?movieCode="+movieCode;


	    		//크롤링
	    		Document doc = Jsoup.connect(realImgStr).get();
	    		Elements descs = doc.select("#targetImage");
	    		String realUrl =descs.get(0).attr("src");
	    		//System.out.println("realImgStr : "+realImgStr);
	    		//System.out.println("realUrl :"+realUrl);

	    		dataMap.put("realUrl",realUrl);
	    		dataMap.put("date",dateStr);
	    		//return realUrl;
	    		return dataMap;


		}///movieImgMap

}
