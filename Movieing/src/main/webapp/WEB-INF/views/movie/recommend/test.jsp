<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<style media="screen">
.wrap {
	width: 1500px;
	height: 250px;
	overflow-x: scroll;
	margin-left: 130px;
	white-space: nowrap
}

.wrap img {
	width: 200px;
	height: 100%;
}

</style>




<div class="card text-white bg-dark mb-3" style="max-width: 10rem; margin-top:120px;margin-left:150px">
  <div class="card-header">추천인기영화</div>
   <a href="<c:url value='/Movieing/Movie/test.mov'/>" class="card-link" style="float:none; margin:0 auto">더보기></a>
  
	</div>
	
  <div class="wrap" style="margin-top: 20px">
		
	  <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
	  <img class="movie1"  src="<c:url value='/resources/img/movie/mo.jpg'/>"  alt=""/></a>
	  <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/blood.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/end.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/exit.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/gemini.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/gostop.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/joker.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/jang.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/ki.jpg'/>"  alt=""/></a>
     
  </div>
  
  <div class="card text-white bg-dark mb-3" style="max-width: 10rem;margin-top: 50px;margin-left:150px ">
  <div class="card-header">취향분석영화</div>
  <a href="<c:url value='/Movieing/Movie/AllMovie.mov'/>" class="card-link" style="float:none; margin:0 auto">더보기></a>
	</div>
   <div class="wrap" style="margin-top: 20px">
   	  <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/kim.jpg'/>" alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/mul.jpg'/>" alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/perfect.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/toystory.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/you.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/jang.jpg'/>" alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/ki.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/mn.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/end.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="w-100"  src="<c:url value='/resources/img/movie/exit.jpg'/>" alt=""/></a>
      
  </div>
  	
  	<div class="card text-white bg-dark mb-3" style="max-width: 10rem;margin-top: 50px;margin-left:150px">
  	<div class="card-header">색다른영화</div>
  	 <a href="<c:url value='/Movieing/Movie/AllMovie.mov'/>" class="card-link" style="float:none; margin:0 auto">더보기></a>
	</div>
   <div class="wrap" style="margin-top: 20px">
   	  <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie1.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie5.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie3.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie4.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie11.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie2.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie9.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie8.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie13.jpg'/>"  alt=""/></a>
      <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
      <img class="movie1"  src="<c:url value='/resources/img/movie/movie7.jpg'/>"  alt=""/></a>
      
  </div>

</div>
</div>