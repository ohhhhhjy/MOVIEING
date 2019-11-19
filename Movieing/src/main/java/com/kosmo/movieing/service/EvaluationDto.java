package com.kosmo.movieing.service;

import java.sql.Date;

//별점테이블(평가테이블)+보고싶어요(위시)테이블
public class EvaluationDto {

	private String userId;
	private String movieNo;
	private String evaluationGrade;
	private Date evaluationDate;

	//프로그램 효율성을 위한 속성 추가]
	//영화제목
	private String movieTitle;
	//영화이미지
	private String movieImg;
	//이미지url(이제 사용안함.)
	private String imgUrl;


	public String getMovieImg() {
		return movieImg;
	}
	public void setMovieImg(String movieImg) {
		this.movieImg = movieImg;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
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
	public String getEvaluationGrade() {
		return evaluationGrade;
	}
	public void setEvaluationGrade(String evaluationGrade) {
		this.evaluationGrade = evaluationGrade;
	}
	public Date getEvaluationDate() {
		return evaluationDate;
	}
	public void setEvaluationDate(Date evaluationDate) {
		this.evaluationDate = evaluationDate;
	}



}///
