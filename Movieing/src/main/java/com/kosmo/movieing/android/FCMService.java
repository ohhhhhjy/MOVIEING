package com.kosmo.movieing.android;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;




public class FCMService {
	ArrayList<String> tokens = new ArrayList<String>();
	//Firebase Console->프로젝트 선택->설정->프로젝트 설정
	//->클라우드 메시징->서버키 복사
	final String apiKey = "AAAAxbboMa8:APA91bE3BaZXfDEtXfRksKvf0aDRwrOLjbSI-QRTH2TVaa99jOtscnMRSAls4wkkook6dWVygKC6IIVfcpi7uYRVfCBzOORd4ubdEpmkQhb9eLASB62EoZJ-XTmz-msDwExWYXBU0cph" ;


	String gcmURL = "https://fcm.googleapis.com/fcm/send";

	JSONArray resultArray = new JSONArray();




		private void requestToFCMServer(String title, String message,String token) {

			try {
				//토큰 임시로 하드코딩 - 권혜주 폰
				token = "cBKyW7271lI:APA91bHVwxxzfgJrB2tvJrvF5hZMVau7ed2dTsSs1mjNMPt5KOVQuPnf-i3wzTB4AFPQo7uiHMA0xGMWzPBh2ReFtKXaugyq8PLuNkMpTFg-qmluFGKjv8GDyUhXZOoIpDSKXl9pTSD0";





				URL url = new URL(gcmURL);
				HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
				httpConn.setDoOutput(true);
				httpConn.setRequestMethod("POST");
				httpConn.setRequestProperty("Content-Type", "application/json");
				httpConn.setRequestProperty("Authorization", "key=" + apiKey);
				httpConn.setRequestProperty("Accept", "application/json");
				httpConn.setRequestProperty("project_id", "992036377345");

				httpConn.connect();

				//백그라운드일때도   onMessageReceived를 호출하려면 키값을 data로 설정해야한다
				//notification일때는 백그라운드 상태에서 onMessageReceived가 호출이 안된다.
				/*
				{"data":{"제목키값":"제목","내용키값":"내용"},"to":"메시지는 보낼 토큰값"}

				*/
				String msg = String.format("{\"data\":{\"noti_title\":\"%s\",\"noti_message\":\"%s\"},\"to\":\"%s\"}",
						title, message, token);


				OutputStream os = httpConn.getOutputStream();

				//UTF-8로 인코딩:한글처리
				os.write(msg.getBytes("UTF-8"));
				os.flush();
				os.close();

				httpConn.connect();//추가
				//요청 보내기
				int responseCode = httpConn.getResponseCode();

				//서버에서 보낸 응답 결과 받기
				BufferedReader reader = new BufferedReader(new InputStreamReader(httpConn.getInputStream()));
				String responseString;

				while ((responseString = reader.readLine()) != null) {
					resultArray.add(responseString);


				}
				reader.close();


			} catch (Exception e) {
				e.printStackTrace();
			}



    }

		public void send(HttpServletRequest request,String message) throws UnsupportedEncodingException {
			request.setCharacterEncoding("UTF-8");

			//token값저장용

			Connection conn = null;
			PreparedStatement psmt = null;
			ResultSet rs = null;


			String title = "무빙 알림";
			int successTokens = 0;
			try {
				Class.forName("oracle.jdbc.OracleDriver");

				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "SPRING", "SPRING");
				psmt = conn.prepareStatement("SELECT TOKEN FROM FCM_TOKENS");
				rs = psmt.executeQuery();

				while (rs.next()) {
					tokens.add(rs.getString(1));
					System.out.println(rs.getString(1));
				}
				conn.close();
				for (String token : tokens) {
					requestToFCMServer(title, message, token);
				}



			} catch (Exception e) {
				e.printStackTrace();
			}
		}


}
