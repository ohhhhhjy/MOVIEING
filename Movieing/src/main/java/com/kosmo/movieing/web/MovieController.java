package com.kosmo.movieing.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

   @RequestMapping("/Movieing/Movie/AllMovie.mov")
   public String movieMain() {
      
      
      return "movie/list/AllMovie.tiles";
   }
   @RequestMapping("/Movieing/Movie/Genre.mov")
   public String movieGenre() {
      return "movie/list/Genre.tiles";
   }
   
}