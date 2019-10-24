<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->

<style>
  /* 사이드바 래퍼 스타일 */
  
  #page-wrapper {
    padding-left: 250px;
  }
  
  #sidebar-wrapper {
    position: fixed;
    width: 250px;
    height: 100%;
    margin-left: -250px;
    background: #000;
    overflow-x: hidden;
    overflow-y: auto;
    margin-top: 100px;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  /* 사이드바 스타일 */
  
  .sidebar-nav {
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 1.5em;
    line-height: 2.8em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999;
  }
  
  .sidebar-nav li a:hover {
    color: #fff;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
  }
  
  .mvimg{
  	width:230px;
  	height:300px
  }

</style>
<script >
$(function() {
	$('a').click(function(){
		
		$('#options').html($(this).html());
	});
});
</script>

<div id="page-wrapper">

  <!-- 사이드바 -->
  <div id="sidebar-wrapper">
  
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <span style="font-weight: bold;color:white;" >영화</span>
      </li>
      <li><a href="#">랜덤 영화</a></li>
      <li><a href="#">역대 100만관객돌파 영화</a></li>
      <li><a href="#">전세계흥행 TOP 영화</a></li>
      <li><a href="#">국내누적관객수 TOP 영화</a></li>
      <li><a href="#">전문가 고평점 영화</a></li>
      <li><a href="#">고전 영화</a></li>
      <li><a href="#">느와르 영화</a></li>
      <li><a href="#">슈퍼 히어로 영화</a></li>
       <li><a href="#">스포츠 영화</a></li>
       <li><a href="#">범죄</a></li>
       <li><a href="#">드라마</a></li>
       <li><a href="#">코미디</a></li>
       <li><a href="#">로맨스/멜로</a></li>
       <li><a href="#">공포/스릴러</a></li>
       <li><a href="#">로맨틱코미디</a></li>
       <li><a href="#">전쟁</a></li>
       <li><a href="#">가족</a></li>
       <li><a href="#">판타지</a></li>
       <li><a href="#">액션</a></li>
       <li><a href="#">SF</a></li>
       <li><a href="#">애니메이션</a></li>
       <li><a href="#">다큐멘터리</a></li>

      
       
    </ul>
  </div>
  <!-- /사이드바 -->

  <!-- 본문 -->
  <div id="page-content-wrapper">
   <div class="container-fluid" style="margin-top: 110px;">
      <div class="row" >
      <span id="options" class="font-weight-bold"></span>
      </div>
      <div class="row">
		<a class="btn btn-default" href="<c:url value='/Movieing/Movie/NewMovie.mov'/>">최신</a>
		<a class="btn btn-primary" href="<c:url value='/Movieing/Movie/Popular.mov'/>">인기</a>
		<a class="btn btn-default" href="<c:url value='/Movieing/Movie/Genre.mov'/>">평균별점 순</a>
		
		
	</div>
      	<div class="row" style="margin-top: 20px" >
		<div class="col-md-2 col-sm-6 movie-poster" >
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg"  src="<c:url value='/resources/img/movie/aladdin.jpg'/>"   alt=""/></a>
		 
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg"  src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg"  src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg"  src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"   alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div> 
  	</div>
  	
  	<div class="row" style="margin-top: 20px" >
		<div class="col-md-2 col-sm-6 movie-poster">
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div>
    	<div class="col-md-2 col-sm-6 movie-poster">
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
			<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div>  
    	<div class="col-md-2 col-sm-6 movie-poster">
			<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
			<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg"  src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
			<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div> 
    
  	</div>
  	
  	<div class="row" style="margin-top: 20px" >
		<div class="col-md-2 col-sm-6 movie-poster">
		 	<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg"  src="<c:url value='/resources/img/movie/aladdin.jpg'/>"  alt=""/></a>
    	</div>
    	<div class="col-md-2 col-sm-6 movie-poster">
			<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"   alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
			<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"   alt=""/></a>
    	</div>  
    	<div class="col-md-2 col-sm-6 movie-poster">
			<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg"  src="<c:url value='/resources/img/movie/aladdin.jpg'/>"   alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
		 <a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"   alt=""/></a>
    	</div> 
    	<div class="col-md-2 col-sm-6 movie-poster">
		<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
		 <img class="mvimg" src="<c:url value='/resources/img/movie/aladdin.jpg'/>"   alt=""/></a>
    	</div> 
    
  	</div>
  	
  	
  
  
  
 	
 	</div>
</div>

<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->

 