<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<style>
/* 드롭다운 css */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #002941; /* #002941 */
	min-width: 120px;
	padding: 5px;
	border-radius: 4px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2)
}



.dropdown-content a {
	font-size: 0.8em;
	font-weight: bold;
	color: black;
	padding: 8px;
	text-decoration: none;
	display: block;
}

.dropItem {
	color: white;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropdown-button {
	
}

/* 원형이미지들 */
.radiusImg {
	width: 400px;
	height: 400px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 200px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}
.radiusSmallImg {
	width: 45px;
	height: 45px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}

.line {
	color: white;
	border: thick;
}

.nav-item{
font-size: large;
}


</style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"
	style="background-color: #002941">
	<div class="container">
		<sec:authorize access="isAuthenticated()">
			<a class="navbar-brand js-scroll-trigger"
				href="<c:url value='/Movieing/Movie/Home.mov'/>"><img alt="logo"
				src="<c:url value='/resources/img/logos/logo.png'/>" /></a>
		</sec:authorize>
		<sec:authorize access="isAnonymous()">
			<a class="navbar-brand js-scroll-trigger" href="<c:url value='/'/>"><img
				alt="logo" src="<c:url value='/resources/img/logos/logo.png'/>" /></a>
		</sec:authorize>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fas fa-bars"></i>
		</button>


		<div class="collapse navbar-collapse" id="navbarResponsive">
			<%-- <c:if test="" > 여기는 로그인시에만 보이는 메뉴들--%>
			<sec:authorize access="isAuthenticated()">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value='/Movieing/Movie/AllMovie.mov'/>">전체영화</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value='/Movieing/Movie/screening/RatingMovie.mov'/>">평가</a>
					</li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value='/Movieing/Movie/Recommend.mov'/>">추천</a></li>
					<li class="nav-item">
						<div class="dropdown">
							<a class="nav-link js-scroll-trigger dropdown-button" href="<c:url value='/Movieing/Blog/BlogMain.mov'/>"
								>블로그</a>
							<div class="dropdown-content">
								<a class="dropItem"
									href="<c:url value='/Movieing/Blog/BlogMain.mov'/>"
									style="color: white"><i class="fas fa-history"
									style="padding-right: 5px"></i>나의 피드</a> <a class="dropItem"
									href="<c:url value='/Movieing/Blog/MyActivity.mov'/>"
									style="color: white"><i class="far fa-heart"
									style="padding-right: 5px"></i>나의 활동</a> <a class="dropItem"
									href="<c:url value='/Movieing/Blog/MovieingFriends.mov'/>"
									style="color: white"><i class="far fa-comments"
									style="padding-right: 5px"></i>무빙프렌즈</a> <a class="dropItem"
									href="<c:url value='/Movieing/Blog/WritePage.mov'/>"
									style="color: white"><i class="far fa-edit"
									style="padding-right: 5px"></i>리뷰쓰기</a>
							</div>
						</div>
					</li>
					<li class="nav-item">
						<div class="dropdown">
							<a class="nav-link js-scroll-trigger " href="<c:url value ='/Movieing/News/News.mov'/>"
								>소식</a>
							<div class="dropdown-content">
								<a class="dropItem"
									href="<c:url value ='/Movieing/News/Exhibition.mov'/>"
									style="color: white"><i class="fas fa-video"
									style="padding-right: 5px"></i>영화제</a> 
									<a class="dropItem"
									href="<c:url value ='/Movieing/News/News.mov'/>"
									style="color: white"><i class="far fa-calendar-alt"
									style="padding-right: 5px"></i>캘린더</a>
							</div>
						</div>
					</li>
					<li class="nav-item">
					<a class="nav-link js-scroll-trigger " href="<c:url value ='/Movieing/Movie/Threater/ThreaterInfo.mov'/>">영화관</a>
						<%-- <div class="dropdown">
							<div class="dropdown-content">
								<a class="dropItem"
									href="<c:url value ='/Movieing/Movie/Threater/ThreaterInfo.mov'/>"
									style="color: white"><i class="fas fa-building"
									style="padding-right: 5px"></i>상영관</a> 
									<a class="dropItem"
									href="<c:url value =''/>"
									style="color: white"><i class="fas fa-gift"
									style="padding-right: 5px"></i>굿즈몰</a>
							</div>
						</div> --%>
					</li>
				</ul>
				<ul class="navbar-nav text-uppercase ml-auto">
					<li>&nbsp;</li>
				</ul>
				<ul class="navbar-nav text-uppercase ml-auto">
					<li>&nbsp;</li>
				</ul>
				<ul class="navbar-nav text-uppercase ml-auto">
					<li>&nbsp;</li>
				</ul>
				<ul class="navbar-nav text-uppercase ml-auto">
					<li>&nbsp;</li>
				</ul>
				<ul class="navbar-nav text-uppercase ml-auto">
					<li>&nbsp;</li>
				</ul>

				<ul class="navbar-nav text-uppercase ml-auto">

					<!-- <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="#contact">마이페이지</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">로그아웃</a>
          </li>
          
           -->
					<li>
						<div id="custom-search-input">
							<div class="input-group col-md-12">
								<form action="<c:url value='/Movieing/Movie/SearchResult.mov'/>" method="get" style="display: inherit;" >
									<input type="text" class="form-control input-lg" placeholder="검색어를 입력하세요" name="searchWord"  style="float:left; display: inline;"/> 
									<span class="input-group-btn" style="display:inline; float: right;">
										<button class="btn btn-info btn-lg" type="submit">
										<img src="<c:url value='/resources/img/search.png'/>" alt="검색" class="rounded-circle"/>
										</button>
									</span>
								</form>
							</div>
						</div>
					</li>
					<li><span>&nbsp;&nbsp;</span></li>
				</ul>

				<ul style="list-style: none;">
					<!-- 프로필 드롭다운 -->
					<li class="nav-item">
						<div class="dropdown">
							<a class="nav-link js-scroll-trigger dropdown-button" href="#" >
							<img id="img" 
								alt="user" src="" class="radiusSmallImg"
								style="width: 50px; height: 50px" /></a>
							<div class="dropdown-content" style="width: 120px">



								<a class="dropItem"
									href="<c:url value='/Movieing/Blog/MyPage.mov'/>"
									style="color: white">
									<i class="far fa-user-circle"
									style="padding-right: 5px"></i>마이페이지</a> 
								<a class="dropItem"
									href="<c:url value='/Movieing/Blog/MyPage_Notice.mov'/>"
									style="color: white"><i class="far fa-bell"
									style="padding-right: 5px"></i>알림</a>
								<a class="dropItem"
									href="<c:url value='/Movieing/my/Customer.mov'/>"
									style="color: white"><i class="far fa-question-circle" style="padding-right: 5px"></i>고객센터</a>
									
								 <a class="dropItem"
									href="javascript:logout()"
									style="color: white"><i class="fas fa-sign-out-alt"
									style="padding-right: 5px"></i>로그아웃</a> 

								
							</div>
						</div>

					</li>

				</ul>

			</sec:authorize>



			<sec:authorize access="isAnonymous()">
				<%--  </c:if> --%>
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link portfolio-link"
						href="<c:url value='/Movieing/Member/Login.mov'/>">로그인</a></li>
				</ul>
			</sec:authorize>
		</div>

	</div>
</nav>
<div></div>

<!--action은 스프링 씨큐리티의 디폴트 로그아웃 URL지정 -->
<form id="logoutForm" method="post" action="<c:url value='/logout'/>">
   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

<script>
   
   var imageUrl;
   //var img = ${img};
   
   $(function () {
		
	   $.ajax({
			url : "<c:url  value='/Ajax/TopImage.mov'/>",
		    type : 'post',
		    dataType:'text', 
			beforeSend : function(xhr)
             {  
                 xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
             }, 
			success : function(data) {
				console.log(data);
				imageUrl = data;
				$("#img").attr("src", data);
			}
				
		});
	   
	
});
   
   function logout(){
      $('#logoutForm').submit();
      
   }
   

</script>