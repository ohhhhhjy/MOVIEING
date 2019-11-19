package com.kosmo.movieing.service;

import java.sql.Date;

public class NoticeDto {
	
	String notiNo;
	String notiTitle;
	String notiContent;
	Date notiDate;
	
	
	public String getNotiNo() {
		return notiNo;
	}
	public String getNotiTitle() {
		return notiTitle;
	}
	public String getNotiContent() {
		return notiContent;
	}
	public Date getNotiDate() {
		return notiDate;
	}
	
	
}
