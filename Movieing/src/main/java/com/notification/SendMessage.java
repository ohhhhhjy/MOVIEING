package com.notification;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.android.gcm.server.Message;
import com.google.android.gcm.server.MulticastResult;
import com.google.android.gcm.server.Sender;

@WebServlet("/SendMessage")
public class SendMessage extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public static Connection con = null;
    public static Statement stmt = null;
    ResultSet rs = null;

    ArrayList<String> token = new ArrayList<String>();                //token값을 ArrayList에 저장
    String MESSAGE_ID = String.valueOf(Math.random() % 100 + 1);    //메시지 고유 ID
    boolean SHOW_ON_IDLE = false;                                    //옙 활성화 상태일때 보여줄것인지
    int LIVE_TIME = 1;                                                //옙 비활성화 상태일때 FCM가 메시지를 유효화하는 시간
    int RETRY = 2;                                                    //메시지 전송실패시 재시도 횟수

    String simpleApiKey ="AAAA5vn50wE:APA91bFT7wITkLCAGVjXJCryGksDWgwE_2pUpdvA2yi6rwCgFcmqRmGuIZYvWLZL50II44NV1ILFFdJBoZyglVGmsGOuPMAAxupGIsr7LisDT2xQ6tLkw_6nv_PRUAbT_8OQmIhWeusE";// 파이어 베이스 서버키
    String gcmURL = "https://android.googleapis.com/fcm/send";

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String msg = request.getParameter("message");

        if(msg==null || msg.equals("")) msg="";

        msg = new String(msg.getBytes("UTF-8"), "UTF-8");   //메시지 한글깨짐 처리

        try {
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","MOVIEING","MOV1205");
            stmt = con.createStatement();
            System.out.println("DB연결 성공");
            stmt.executeQuery("use notification");

            String sql = "select token from user_table WHERE USER_ID='KIM'";
            rs = stmt.executeQuery(sql);

            //모든 등록ID를 리스트로 묶음
            while(rs.next()){
                token.add(rs.getString("Token"));
                System.out.println(rs.getString("Token"));
            }
            con.close();

            Sender sender = new Sender(simpleApiKey);
            Message message = new Message.Builder()
            .collapseKey(MESSAGE_ID)
            .delayWhileIdle(SHOW_ON_IDLE)
            .timeToLive(LIVE_TIME)
            .addData("message",msg)
            .build();
            MulticastResult result1 = sender.send(message,token,RETRY);
            if (result1 != null) {
                List<Result> resultList = result1.getResults();
                for (Result result : resultList) {
                    System.out.println(result.getErrorCodeName());
                }
            }

        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("DB연결 실패");
            e.printStackTrace();
        }
    }



}
