package com.kosmo.movieing.web;


import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FCMController {


	@RequestMapping(value="/Movieing/RegisterToken.mov")
	public void registerToken(HttpServletRequest request) throws UnsupportedEncodingException, SQLException {
		Connection conn = null;
	    PreparedStatement pstm = null;
	    String sql = null;
	    String token = null;
	    String requestMethod = null;

	    request.setCharacterEncoding("utf-8");

	    try{
	    	Class.forName("oracle.jdbc.OracleDriver");
	        String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	        conn = DriverManager.getConnection(url,"SPRING","SPRING");

	        System.out.println("연결성공");
	    }catch(Exception e){
	    	System.out.println("연결실패");
	        e.printStackTrace();
	    }
	    token = request.getParameter("token");
	    System.out.println("token:"+token);
	    if( token ==null || token.equals("") ){
	        System.out.println("토큰값이 전달 되지 않았습니다.");
	    }else{
	        // 토큰값 전달시 쿼리문 입력할곳임
	        sql = "INSERT INTO FCM_TOKENS(ID,TOKEN) VALUES(TOKENS_SEQ.NEXTVAL,?)";
	        pstm = conn.prepareStatement(sql);
	        pstm.setString(1,token);
	        pstm.executeUpdate();
	        System.out.println("토큰값이 입력되었습니다.");
	    }

	    pstm.close();
	    conn.close();
	}





}//////// class
