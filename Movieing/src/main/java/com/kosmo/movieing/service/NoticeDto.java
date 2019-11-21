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
	public void setNotiNo(String notiNo) {
		this.notiNo = notiNo;
	}
	public void setNotiTitle(String notiTitle) {
		this.notiTitle = notiTitle;
	}
	public void setNotiContent(String notiContent) {
		this.notiContent = notiContent;
	}
	public void setNotiDate(Date notiDate) {
		this.notiDate = notiDate;
	}
	
	
}
