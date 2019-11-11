package com.kosmo.movieing.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SeleniumController {

	// 병렬화 수행을 위해 2개의 웹드라이버 생성
	private WebDriver driver; // 기본 드라이버
	private WebDriver driver2;
	// 웹드라이버에 필요한 기본 소스
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver"; // 각 브라우저에 따라 다름
	public static final String WEB_DRIVER_PATH = "D:/Jsoup/chromedriver_win32/chromedriver.exe"; // 각 브라저에 맞는 드라이버 다운로드
																									// 후 경로 설정

	private String base_url; // 연결할 웹페이지 링크
	WebDriverWait wait; // 페이지 로딩시 까지 대기해주는 클래스

	List<WebElement> elements = null;
	List<WebElement> elements2 = null;
	List<String> smName = new Vector<String>();
	
	Map<String, List> crawlingData = new HashMap<String, List>();

	private String mcode;// 영화코드

	public SeleniumController() {
		// 기본셋팅
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		ChromeOptions options = new ChromeOptions();
		options.setHeadless(true);

		// 두개의 드라이버 구현
		driver = new ChromeDriver(options);
		// driver2 = new ChromeDriver(options);

		wait = new WebDriverWait(driver, 5);
		// wait = new WebDriverWait(driver2,5);

		// base_url = "https://www.justwatch.com/kr/%EC%98%81%ED%99%94/alradin-2019";
		// https://www.justwatch.com/kr/%EC%98%81%ED%99%94
		// https://www.justwatch.com/kr
	}

	public SeleniumController(int amount) {

		if (amount == 2) {

			System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
			ChromeOptions options = new ChromeOptions();
			options.setHeadless(true);
			// 두개의 드라이버 구현
			driver = new ChromeDriver(options);
			driver2 = new ChromeDriver(options);

			wait = new WebDriverWait(driver, 5);
			wait = new WebDriverWait(driver2,5);

		

		}
	}


	// 생성자
	// {"rental",리스트}
	// {"buy",리스트}
	public String infoCrawl(String mname) {
		try {

			base_url = "http://www.kobis.or.kr/kobis/business/mast/mvie/searchMovieList.do"; // 접속할 웹페이지
			driver.get(base_url);
			/*
			 * //홈페이지 내 자바스크립트 요소 가져올때 까지 대기 //영화 상세보기 들어가는 소스 WebElement wElement =
			 * wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(
			 * "/html/body/div[3]/div[1]/div/div[2]/ion-tab/ion-content/div[4]/div/div/div/div[2]/div[2]/a/div/img"
			 * ))); wElement.click();
			 */

			// 원하는 요소 가져올때까지 대기
			wait.until(ExpectedConditions
					.visibilityOfElementLocated(By.xpath("//*[@id=\"searchForm\"]/div[1]/div[1]/div/input")));
			// System.out.println("가지오기 성공");
			String inputMname = mname;

			// 텍스트에 커서가 없을 시 클릭이 안되므로 텍스트를 찾아줘서 클릭해주자
			WebElement elementName = driver.findElement(By.xpath("//*[@id=\"searchForm\"]/div[1]/div[1]/div/input"));
			// System.out.println("찾기까지 성공");
			elementName.click();
			// System.out.println("클릭 성공");
			elementName.sendKeys(inputMname);
			// System.out.println("입력 성공");
			elementName.findElement(By.xpath("//*[@id=\"searchForm\"]/div[1]/div[5]/button[1]"));
			// System.out.println("버튼 찾기 성공");
			// 웹페이지의 몇몇버튼은 클릭이 안될 수 있음 그럴때 sendKey(Keys.ENTER)로 클릭
			elementName.sendKeys(Keys.ENTER);
			// System.out.println("버튼 클릭 성공");

			// wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@id=\"content\"]/div[4]/div[1]/span")));
			Thread.sleep(1000);
			// System.out.println("조회결과 가져올떄가지 대기 성공");
//			elementName.findElement(By.xpath("//*[@id=\"content\"]/div[4]/table/tbody/tr/td[3]"));
			WebElement elementName2 = driver
					.findElement(By.xpath("//*[@id=\"content\"]/div[4]/table/tbody/tr/td[3]/span"));
			// String mname = elementName.getAttribute("value");
			mcode = elementName2.getText();

			// System.out.println("영화코드 값 : "+mname);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			// driver.close();
		}

		return mcode;

	}

	public List listCrawl() {

		base_url = "https://series.naver.com/movie/top100List.nhn?page=1&rankingTypeCode=PC_D"; // 접속할 웹페이지

		try {
			driver.get(base_url);
			driver2.get(base_url);

			wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@id=\"content\"]/div[2]/ul[4]")));
			// 첫페이지 영화리스트 가져오기
			elements = driver.findElements(By.xpath("//*[@id=\"content\"]/div[2]/ul/li/a"));
			
			// driver2의 페이지 이동
			WebElement welement = driver2.findElement(By.xpath("//*[@id=\"content\"]/div/div[2]/a[1]"));
			welement.click();
			elements2 = driver2.findElements(By.xpath("//*[@id=\"content\"]/div[2]/ul/li/a"));

			// 전체 영화 리스트에 추가
			elements.addAll(elements2);
			
			for(int i=0;i<40;i++) {
				//System.out.println("영화 리스트 제목"+i+" :"+elements.get(i).getText());				
				//System.out.println("영화 리스트 속성"+i+" :"+elements.get(i).getAttribute("title"));	
				String smsName = elements.get(i).getAttribute("title");
				int idx = smsName.indexOf("(");	
				if(smsName.contains("(")) {
					smsName = smsName.substring(0,idx);
				}
				smName.add(smsName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// driver.close();
		}

		return smName;
	}
}