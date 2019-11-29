package com.notification;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterKey")
public class RegisterKey extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public static Connection con = null;
    public static Statement stmt = null;
    String sql = null;
    String token = null;
    String requestMethod = null;

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost:8080","MOVIEING","MOV1205");
            stmt = con.createStatement();
            System.out.println("DB연결 성공");
            stmt.executeQuery("use notification");

            token = request.getParameter("Token");

            if( token==null ){
                System.out.println("토큰값이 전달 되지 않았습니다.");
            }else{
                // 토큰값 전달시 쿼리문 입력할곳임
                sql = "INSERT INTO USER_table(Token) VALUES('"+ token +"')";
                stmt.executeUpdate(sql);
            }
        }catch(Exception e){
            System.out.println("DB연결 실패");
            e.printStackTrace();
        }
    }

}
