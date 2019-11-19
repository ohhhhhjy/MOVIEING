package com.kosmo.movieing.service;

public class RealTimeSearchDto {

	private String Keyword;
	private int count;
	
	public String getKeyword() {
		return Keyword;
	}
	public void setKeyword(String keyword) {
		Keyword = keyword;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
}
