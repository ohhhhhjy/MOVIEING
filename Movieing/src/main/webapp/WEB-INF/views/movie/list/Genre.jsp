<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	margin-top: 0px;
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

.sidebar-nav>.sidebar-brand {
	font-size: 1.3em;
	line-height: 3em;
}

.mvimg {
	width: 230px;
	height: 300px
}

  @media ( max-width: 480px ) {
      
        #sidebar-wrapper{
          float: none;
          width: auto;
        }
      }

</style>
<script >
$(function() {
	$('.genreTag').click(function() {
		//$('#options').html($(this).html());
		$('.genreTag').css('backgroundColor','black');
		$('.genreTag').css('color','#999');
		$(this).css('color','black');
		$(this).css('backgroundColor','#999'); 
		
		var genre = $(this).html();
		
	});
	
});

var ajax = function(genre){
	$.ajax({
		url:"<c:url value='/Movieing/Movie/movieAjax.mov'/>",
		type:'post',
		dataType:'json',
		data:
			{genre:genre},
    beforeSend : function(xhr)
      {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
          xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
      },	
		success:function(data){//서버로 부터 정상적인 응답을 받았을 때(200번)
			makingList(data);
		},	
		error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
			console.log("에러:"+data.responseText);
		} 
	});
};

function makingList(data){
	var imgUrl = '';
	var listString = '';

	$.each(data,function(index,element){
		imgUrl = '<c:url value="/Movieing/Movie/MovieDetails.mov?movieNo='+element['movieNo']+'"/>';
		listString +='<div class="col-md-2 col-sm-6 movie-poster"style="margin-bottom: 5px">'+
						'<a href="'+imgUrl+'">'+
							'<img class="mvimg" src="'+element['movieImg']+'" alt="영화포스터" />'+
						'</a>'+
					'</div>';
	});
	
	$('#listDiv').html(listString);
}
</script>

<div id="page-wrapper">

  <!-- 사이드바 -->
  <div id="sidebar-wrapper">
  
    <ul class="sidebar-nav">
   	  <li style="height: 100px"></li>
      <li class="sidebar-brand">
        <span style="font-weight: bold;color:white;" >영화</span>
      </li>
			<li><a href="#" class="genreTag">역대 100만관객돌파 영화</a></li>
			<li><a href="#" class="genreTag">전세계흥행 TOP 영화</a></li>
			<li><a href="#" class="genreTag">국내누적관객수 TOP 영화</a></li>
			<li><a href="#" class="genreTag">전문가 고평점 영화</a></li>
			<li><a href="#" class="genreTag">슈퍼 히어로 영화</a></li>
			<li><a href="#" class="genreTag">스포츠</a></li>
			<li><a href="#" class="genreTag">범죄</a></li>
			<li><a href="javascript:ajax('drama');" class="genreTag">드라마</a></li>
			<li><a href="#" class="genreTag">코미디</a></li>
			<li><a href="#" class="genreTag">로맨스/멜로</a></li>
			<li><a href="#" class="genreTag">공포/스릴러</a></li>
			<li><a href="#" class="genreTag">SF</a></li>
			<li><a href="javascript:ajax('animation');" class="genreTag">애니메이션</a></li>
			<li><a href="#" class="genreTag">액션</a></li>
			<li><a href="#" class="genreTag">전쟁</a></li>
			<li><a href="#" class="genreTag">판타지</a></li>
			<li><a href="#" class="genreTag">로맨틱코미디</a></li>
			<li><a href="#" class="genreTag">고전 영화</a></li>
			<li><a href="#" class="genreTag">느와르 영화</a></li>
			<li><a href="#" class="genreTag">랜덤 영화</a></li>	
			<li><a href="#" class="genreTag">가족</a></li>
			<li><a href="#" class="genreTag">다큐멘터리</a></li>

      
       
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
		<a class="btn btn-default" href="<c:url value='/Movieing/Movie/Popular.mov'/>">인기</a>
		<a class="btn btn-primary" href="<c:url value='/Movieing/Movie/Genre.mov'/>">평균별점 순</a>
		
		
	</div>
    	
			<div class="row" style="margin-top: 20px" id="listDiv">
			
				<c:forEach items="${StarMovieList}" var="movie" begin="0" end="29">

					<div class="col-md-2 col-sm-6 movie-poster"style="margin-bottom: 5px">
						<a
							href="<c:url value='/Movieing/Movie/MovieDetails.mov?mcode=${movie.movieNo}'/>">
							<img class="mvimg" src="${movie.movieImg}" alt="" />
						</a>



					</div>


				</c:forEach>
			</div>
  
  
  
 	
 	</div>
</div>

<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->

 