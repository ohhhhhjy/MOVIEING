package com.kosmo.movieing.service;

import java.sql.Date;

public class UserDto {
	
	String userId;
	String userPwd;
	String userName;
	String userNick;
	String userContact;
	String userMail;
	Date userSignupDate;
	String userProfile;
	String userSelf;
	
	public String getUserId() {
		return userId;
	}
	public void setUserID(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public String getUserContact() {
		return userContact;
	}
	public void setUserContact(String userContact) {
		this.userContact = userContact;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public Date getUserSignupDate() {
		return userSignupDate;
	}
	public void setUserSignupDate(Date userSignupDate) {
		this.userSignupDate = userSignupDate;
	}
	public String getUserProfile() {
		return userProfile;
	}
	public void setUserProfile(String userProfile) {
		this.userProfile = userProfile;
	}
	public String getUserSelf() {
		return userSelf;
	}
	public void setUserSelf(String userSelf) {
		this.userSelf = userSelf;
	}

	

}
