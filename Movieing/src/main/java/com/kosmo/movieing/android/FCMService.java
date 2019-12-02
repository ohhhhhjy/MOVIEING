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
   final String apiKey = "ccedNoFqzHY:APA91bFMRsguESH3mpvETj0f68mZSjrHIBA47GML4M2gSzGD58x8cI27Q6f0_28a2clSadsrigiMS3r1Fr8ygLUHEHcSuupX56SFBHzj49ADP6cDe1WdQ3_flWb82VRPYA1Jf_vMB-mZ";
   String gcmURL = "https://fcm.googleapis.com/fcm/send";

   JSONArray resultArray = new JSONArray();



      private void requestToFCMServer(String title, String message,String token) {

         try {

            URL url = new URL(gcmURL);
            HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
            httpConn.setUseCaches(false);
            httpConn.setDoInput(true);
            httpConn.setDoOutput(true);
            httpConn.setRequestMethod("POST");
            httpConn.setRequestProperty("Content-Type", "application/json");
            httpConn.setRequestProperty("Authorization", "key=" + apiKey);

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
            //요청 보내기
            int responseCode = httpConn.getResponseCode();
            //서버에서 보낸 응답 결과 받기
            BufferedReader reader = new BufferedReader(new InputStreamReader(httpConn.getInputStream()));
            String responseString;

            while ((responseString = reader.readLine()) != null) {
               System.out.println(responseString);
               resultArray.add(responseString);


            }
            reader.close();

         } catch (Exception e) {
            e.printStackTrace();
         }



    }

      public  void send(HttpServletRequest request) throws UnsupportedEncodingException {
         request.setCharacterEncoding("UTF-8");

         //token값저장용

         Connection conn = null;
         PreparedStatement psmt = null;
         ResultSet rs = null;

         String message = "메시지내용";
         String title = "제목";
         int successTokens = 0;
         try {
            Class.forName("oracle.jdbc.OracleDriver");

            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "SPRING", "SPRING");
            psmt = conn.prepareStatement("SELECT TOKEN FROM FCM_TOKENS");
            rs = psmt.executeQuery();

            while (rs.next()) {
               tokens.add(rs.getString(1));
               System.out.println("너냐"+rs.getString(1));
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