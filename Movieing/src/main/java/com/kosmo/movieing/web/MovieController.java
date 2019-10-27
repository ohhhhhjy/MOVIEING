package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

	@RequestMapping("/Movieing/Movie/AllMovie.mov")
	public String movieMain() {
		return "movie/list/AllMovie.tiles";
	}
	@RequestMapping("/Movieing/Movie/MovieDetails.mov")
	public String movieDetail() {
		return "movie/info/MovieDetails.tiles";
	}
	@RequestMapping("/Movieing/Movie/Filmography.mov")
	public String filmography() {
		return "movie/info/Filmography.tiles";
	}
	
	@RequestMapping("/Movieing/Movie/RatingMovie.mov")
	public String ratingMovie() {
		return "movie/screening/RatingMovie.tiles";
	}
	
	///////////////////////////////////////////////////////
	
	@RequestMapping("/Movieing/Movie/Genre.mov")
	public String movieGenre() {
		return "movie/list/Genre.tiles";
	}
	@RequestMapping("/Movieing/Movie/NewMovie.mov")
	public String movieNew() {
		return "movie/list/NewMovie.tiles";
	}
	@RequestMapping("/Movieing/Movie/Popular.mov")
	public String moviePopular() {
		return "movie/list/Popular.tiles";
	}
	
	
	@RequestMapping("/Movieing/Movie/SearchResult.mov")
	public String searchResult() {
		return "movie/list/SearchResult.tiles";
	}
	
	
	
	//상세 테스팅
	@RequestMapping("/Movieing/Movie/MovieDetailsTest.mov")
	public String movieDetailsTest() {
		return "movie/info/MovieDetailsTest.tiles";
	}
}
