package com.kosmo.movieing.service;

import java.sql.Date;

public class BuyDto {
	
	String key;
	String naming;
	String price;
	int quantity;
	Date buydate;
	
	String userId;
	int goodsNo;
	
	
	public String getUserId() {
		return key;
	}
	public void setUserId(String userId) {
		this.key = userId;
	}
	public String getNaming() {
		return naming;
	}
	public void setNaming(String naming) {
		this.naming = naming;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getBuydate() {
		return buydate;
	}
	public void setBuydate(Date buydate) {
		this.buydate = buydate;
	}
	
}
