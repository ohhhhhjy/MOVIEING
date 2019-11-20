package com.kosmo.movieing.web;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ThreaterController {

	private WebDriver driver;
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	//	public static final String WEB_DRIVER_PATH = "C:/KHJ/Selenium/chromedriver_win32/chromedriver.exe";
	public static final String WEB_DRIVER_PATH = "D:/Jsoup/chromedriver_win32/chromedriver.exe";
	private String base_url;
	WebDriverWait wait;

	List<WebElement> elements = null;
	List<WebElement> dElements = null;//2d,4d
	List<WebElement> tElements = null;//시간표 1개
	List<WebElement> sElements = null;//시간표 스팬1개
	List<WebElement> xElements = null;//시간표 스팬1개
	Map<String, Object> crawlingData = new HashMap<String, Object>();


	public ThreaterController() {

	}//생성자

	// 영화상영시간표]
	@RequestMapping("/Movieing/Movie/Threater/ThreaterInfo.mov")
	public String admin_main(Model model) {

//		model.addAttribute("timeTableMap",crawl());
//		System.out.println(crawl());
		return "movie/threater/ThreaterInfo.tiles";
	}

	//영화상영시간표 크롤링해서 json에 담기
//	public HashMap<String, Object> crawl(){
	@ResponseBody
	@RequestMapping(value="/Movieing/Movie/Threater/ThreaterAjax.mov")
	public String crawl(){
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		ChromeOptions options = new ChromeOptions();
		options.setHeadless(true);// 활성화 시 웹페이지 안나옴 -> 속도 개선
		driver = new ChromeDriver(options);
		wait = new WebDriverWait(driver, 60);
		base_url = "http://www.lottecinema.co.kr/LCHS/Contents/ticketing/movie-schedule.aspx";//롯데시네마
//		HashMap<String, Object> movieTimeMap = new HashMap<String, Object>();
		JSONObject obj = new JSONObject();


		try {
			driver.get(base_url);

			//클릭할 요소 가져오기
			//날짜 클릭
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@id=\"content\"]/div[1]/div/div[3]/fieldset/div/label[1]"))).click();
			WebElement wElement = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@id=\"content\"]/div[2]/ul/li[1]/div/ul/li[1]/a")));//가산은1
			wElement.click();


			elements = driver.findElements(By.xpath("//*[@id=\"content\"]/div[4]/div[1]/div/dl/dt"));//영화제목
			int titleSize = elements.size();

			//더보기클릭
			if(titleSize>3) {//영화갯수가 3개미만이라 애초에 더보기 버튼이 없는애들은 아래코드 추가시 에러가 난다 그래서 size>3이라는 조건을 줬다
				WebElement moreBtn = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@id=\"aMore2\"]")));

				while(moreBtn.isDisplayed()) {
					moreBtn.click();
					if(!moreBtn.isDisplayed()) break;
				}
			}//더보기 처리 끝


			obj = new JSONObject();
			JSONArray movieListArray = new JSONArray();
			JSONArray dimensionListArray = new JSONArray();
			JSONArray timeListArray = new JSONArray();

			elements =driver.findElements(By.xpath("//*[@id=\"content\"]/div[4]/div[1]/div/dl/dt"));
			int index = 1;
			for(WebElement el:elements) {//김지영,터미네이터..
				dElements =driver.findElements(By.xpath("//*[@id=\"content\"]/div[4]/div[1]/div/dl["+index+"]/dd/ul/li/ul[1]"));
				int dIndex = 1;
				for(WebElement del:dElements) {//2d,4d,...
					tElements = driver.findElements(By.xpath("//*[@id=\"content\"]/div[4]/div[1]/div/dl["+index+"]/dd/ul/li["+dIndex+"]/ul[2]/li/a"));//영화시간표 스팬
					int tIndex=1;
					for(WebElement tElement:tElements) {//영화별 + 2d/4d별 +상영시간표 목록
						xElements = driver.findElements(By.xpath("//*[@id=\"content\"]/div[4]/div[1]/div/dl["+index+"]/dd/ul/li["+dIndex+"]/ul[2]/li["+tIndex+"]/a/span"));
						obj = new JSONObject();
						obj.put("seat", URLEncoder.encode(xElements.get(0).getText(), "UTF-8"));//관
						obj.put("time", xElements.get(1).getText());//시간
						obj.put("seatCount", URLEncoder.encode(xElements.get(2).getText(), "UTF-8") );//객석수
						timeListArray.add(obj);
						tIndex++;
					}
					dIndex++;
					obj = new JSONObject();
					obj.put("timeList", timeListArray);//시간표리스트
					timeListArray = new JSONArray();
					obj.put("dimension", URLEncoder.encode(del.getText(),"UTF-8"));//차원
					dimensionListArray.add(obj);
				}
				index++;
				obj = new JSONObject();
				obj.put("dimensionList", dimensionListArray);//차원리스트
				dimensionListArray = new JSONArray();
				String title = el.getText();

				if(title.contains("all")) {
					title = title.substring(3);
				}
				else {
				title = title.substring(2);
				}
				System.out.println(title);

				obj.put("movieTitle",  URLEncoder.encode(title, "UTF-8"));//영화제목
				movieListArray.add(obj);
			}
			obj = new JSONObject();
			obj.put("movieList", movieListArray);
			System.out.println(obj);
//			//JSON
//			ObjectMapper mapper = new ObjectMapper();
//			movieTimeMap = mapper.readValue(obj.toJSONString(), HashMap.class);

			driver.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return obj.toJSONString();

	}//crawl

}//////// class
