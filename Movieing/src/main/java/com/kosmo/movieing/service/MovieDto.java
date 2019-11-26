package com.kosmo.movieing.service;

public class MovieDto {

	private String movieNo; //영화코드
	private String movieTitle; //영화제목
	private String movieContent; //영화내용
	private String movieGrade; //영화등급
	private String movieYear; //제작년도
	private String movieOrgTitle; //원제
	private String movieCountry; //제작국가
	private String movieGenre; //영화장르
	// 11/13 추가
    private String movieImg; //영화이미지
    private String movieDirector; //영화 감독
    private String movieActor; //영화배우
    private String naverPrice;
    private String wavvePrice;
    private String googlePrice;
    private String grade;



	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getMovieNo() {
		return movieNo;
	}
	public void setMovieNo(String movieNo) {
		this.movieNo = movieNo;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getMovieContent() {
		return movieContent;
	}
	public void setMovieContent(String movieContent) {
		this.movieContent = movieContent;
	}
	public String getMovieGrade() {
		return movieGrade;
	}
	public void setMovieGrade(String movieGrade) {
		this.movieGrade = movieGrade;
	}
	public String getMovieYear() {
		return movieYear;
	}
	public void setMovieYear(String movieYear) {
		this.movieYear = movieYear;
	}
	public String getMovieOrgTitle() {
		return movieOrgTitle;
	}
	public void setMovieOrgTitle(String movieOrgTitle) {
		this.movieOrgTitle = movieOrgTitle;
	}
	public String getMovieCountry() {
		return movieCountry;
	}
	public void setMovieCountry(String movieCountry) {
		this.movieCountry = movieCountry;
	}
	public String getMovieGenre() {
		return movieGenre;
	}
	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}
	public String getMovieImg() {
		return movieImg;
	}
	public void setMovieImg(String movieImg) {
		this.movieImg = movieImg;
	}
	public String getMovieDirector() {
		return movieDirector;
	}
	public void setMovieDirector(String movieDirector) {
		this.movieDirector = movieDirector;
	}
	public String getMovieActor() {
		return movieActor;
	}
	public void setMovieActor(String movieActor) {
		this.movieActor = movieActor;
	}
	public String getNaverPrice() {
		return naverPrice;
	}
	public void setNaverPrice(String naverPrice) {
		this.naverPrice = naverPrice;
	}
	public String getWavvePrice() {
		return wavvePrice;
	}
	public void setWavvePrice(String wavvePrice) {
		this.wavvePrice = wavvePrice;
	}
	public String getGooglePrice() {
		return googlePrice;
	}
	public void setGooglePrice(String googlePrice) {
		this.googlePrice = googlePrice;
	}




}
