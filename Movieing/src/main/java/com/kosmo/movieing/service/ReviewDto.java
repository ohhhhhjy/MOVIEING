package com.kosmo.movieing.service;

import java.sql.Date;
//dto의 멤버변수명은 반드시 테이블의 칼럼명과 동일하게 써야하고, 카멜표기법으로 바꾸어 써야한다. 그래야 마이바티스가 읽을 수 있다. 예)review_content >> reviewContent
public class ReviewDto {

	String reviewNo;
	String userId;
	String movieNo;
	String reviewContent;
	Date reviewPostdate;
	String publicPrivate;

	//프로그램 효율성을 위한 속성 추가]
	//별점
	String grade;//테이블 칼럼속성 변경 필요(문자->숫자로!)
	//좋아요 수
	String likeCount;
	//댓글 수
	String commentCount;
	//영화제목
	String movieTitle;

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(String likeCount) {
		this.likeCount = likeCount;
	}

	public String getMovieTitle() {
		return movieTitle;
	}

	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}

	public String getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getMovieNo() {
		return movieNo;
	}

	public void setMovieNo(String movieNo) {
		this.movieNo = movieNo;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Date getReviewPostdate() {
		return reviewPostdate;
	}

	public void setReviewPostdate(Date reviewPostdate) {
		this.reviewPostdate = reviewPostdate;
	}

	public String getPublicPrivate() {
		return publicPrivate;
	}

	public void setPublicPrivate(String publicPrivate) {
		this.publicPrivate = publicPrivate;
	}

	public String getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(String commentCount) {
		this.commentCount = commentCount;
	}




}
