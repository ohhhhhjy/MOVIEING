package com.kosmo.movieing.service;

import java.sql.Blob;
import java.util.Date;

public class CommentDto {


	private int commentNo;
	private String commentContent;
	private Date commentDate;
	private String userId;
	private int reviewNo;

	//효율성을 위해 따로 추가
	private String userNick;
	private Blob userProfile;
	private String stringDate;


	public String getStringDate() {
		return stringDate;
	}
	public void setStringDate(String stringDate) {
		this.stringDate = stringDate;
	}
	public Blob getUserProfile() {
		return userProfile;
	}
	public void setUserProfile(Blob userProfile) {
		this.userProfile = userProfile;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}



}
