package com.kosmo.movieing.service;

import java.sql.Date;

public class QnaDto {
	
	String qnaNo;
	String qnaTitle;
	String qnaContent;
	String userId;
	Date postdate;
	String qnaAnswer;
	
	public String getQnaNo() {
		return qnaNo;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public String getUserId() {
		return userId;
	}
	public Date getPostdate() {
		return postdate;
	}
	public String getQnaAnswer() {
		return qnaAnswer;
	}
	
	
}
