package com.kosmo.movieing.service;
import java.sql.Blob;
//리뷰 테이블
import java.sql.Date;
//dto의 멤버변수명은 반드시 테이블의 칼럼명과 동일하게 써야하고, 카멜표기법으로 바꾸어 써야한다. 그래야 마이바티스가 읽을 수 있다. 예)review_content >> reviewContent
public class ReviewDto {

	private String reviewNo;
	private String userId;
	private String movieNo;
	private String reviewContent;
	private Date reviewPostdate;
	private String publicPrivate;

	//프로그램 효율성을 위한 속성 추가]
	//별점
	private int grade;//테이블 칼럼속성 변경 필요(문자->숫자로!)
	//좋아요 수
	private String likeCount;
	//댓글 수
	private String commentCount;
	//영화제목
	private String movieTitle;
	//영화이미지url
	private String imgUrl;
	//유저이름]
	private String userName;
	//자기소개]
	private String userSelf;
	//이메일
	private String userMail;
	//유저닉네임
	private String userNick;
	//유저 프로필이미지
	private Blob userProfile;

	//장르
	private String movieGenre ;
	//개봉연도
	private String movieYear;
	//국가
	private String movieCountry;

	//원제목
	private String movieOrgTitle;



	public String getMovieOrgTitle() {
		return movieOrgTitle;
	}

	public void setMovieOrgTitle(String movieOrgTitle) {
		this.movieOrgTitle = movieOrgTitle;
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

	public String getMovieCountry() {
		return movieCountry;
	}

	public void setMovieCountry(String movieCountry) {
		this.movieCountry = movieCountry;
	}

	public String getMovieYear() {
		return movieYear;
	}

	public void setMovieYear(String movieYear) {
		this.movieYear = movieYear;
	}

	public String getMovieGenre() {
		return movieGenre;
	}

	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserSelf() {
		return userSelf;
	}

	public void setUserSelf(String userSelf) {
		this.userSelf = userSelf;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
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
