package com.kosmo.movieing.service;

public class MoviePeopleDto {


	String moviePeopleNo;
	String moviePeopleName;
	String moviePeopleJob;
	String moviePeopleCountry;
	String moviePeopleImg;

	//효율성
	//감독수
	int count;

	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getMoviePeopleNo() {
		return moviePeopleNo;
	}
	public void setMoviePeopleNo(String moviePeopleNo) {
		this.moviePeopleNo = moviePeopleNo;
	}
	public String getMoviePeopleName() {
		return moviePeopleName;
	}
	public void setMoviePeopleName(String moviePeopleName) {
		this.moviePeopleName = moviePeopleName;
	}
	public String getMoviePeopleJob() {
		return moviePeopleJob;
	}
	public void setMoviePeopleJob(String moviePeopleJob) {
		this.moviePeopleJob = moviePeopleJob;
	}
	public String getMoviePeopleCountry() {
		return moviePeopleCountry;
	}
	public void setMoviePeopleCountry(String moviePeopleCountry) {
		this.moviePeopleCountry = moviePeopleCountry;
	}
	public String getMoviePeopleImg() {
		return moviePeopleImg;
	}
	public void setMoviePeopleImg(String moviePeopleImg) {
		this.moviePeopleImg = moviePeopleImg;
	}


}
