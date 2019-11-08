<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
/* 드롭다운 css */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #002941; /* #002941 */
	min-width: 110px;
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

.line {
	color: white;
	border: thick;
}
</style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"
	style="background-color: #002941">
	<div class="container">
		<c:if test="${! empty sessionScope.id || ! empty sessionId}"
			var="isLogin">
			<a class="navbar-brand js-scroll-trigger"
				href="<c:url value='/Movieing/Movie/Home.mov'/>"><img alt="logo"
				src="<c:url value='/resources/img/logos/logo.png'/>" /></a>
		</c:if>
		<c:if test="${!isLogin }">
			<a class="navbar-brand js-scroll-trigger" href="<c:url value='/'/>"><img
				alt="logo" src="<c:url value='/resources/img/logos/logo.png'/>" /></a>
		</c:if>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fas fa-bars"></i>
		</button>


		<div class="collapse navbar-collapse" id="navbarResponsive">
			<%-- <c:if test="" > 여기는 로그인시에만 보이는 메뉴들--%>
			<c:if test="${isLogin}">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value='/Movieing/Movie/AllMovie.mov'/>">전체영화</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value='/Movieing/Movie/screening/First_like.mov'/>">평가</a>
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
									href="<c:url value ='/Movieing/News/News.mov'/>"
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
						<div class="dropdown">
							<a class="nav-link js-scroll-trigger " href="<c:url value ='#'/>"
								>영화관</a>
							<div class="dropdown-content">
								<a class="dropItem"
									href="<c:url value ='#'/>"
									style="color: white"><i class="fas fa-building"
									style="padding-right: 5px"></i>상영관</a> 
									<a class="dropItem"
									href="<c:url value ='#'/>"
									style="color: white"><i class="fas fa-gift"
									style="padding-right: 5px"></i>굿즈몰</a>
							</div>
						</div>
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
								<input type="text" class="form-control input-lg"
									placeholder="검색어를 입력하세요" /> <span class="input-group-btn">
									<button class="btn btn-info btn-lg" type="button"
										onclick="location.href='<c:url value='/Movieing/Movie/SearchResult.mov'/>' ">
										<img src="<c:url value='/resources/img/search.png'/>" alt="검색" />
									</button>
								</span>
							</div>
						</div>
					</li>
					<li><span>&nbsp;&nbsp;</span></li>
				</ul>


				<ul style="list-style: none;">
					<!-- 프로필 드롭다운 -->
					<li class="nav-item">
						<div class="dropdown">
							<a class="nav-link js-scroll-trigger dropdown-button" href="<c:url value='/Movieing/Blog/MyPage.mov'/>" ><img 
								alt="user" src="<c:url value='/resources/img/user.png'/>"
								style="width: 50px; height: 50px" /></a>
							<div class="dropdown-content" style="width: 120px">



								<a class="dropItem"
									href="<c:url value='/Movieing/Blog/MyPage.mov'/>"
									style="color: white">
									<i class="far fa-user-circle"
									style="padding-right: 5px"></i>마이페이지</a> 
								<a class="dropItem"
									href="<c:url value='/Movieing/my/Notice.mov'/>"
									style="color: white"><i class="far fa-bell"
									style="padding-right: 5px"></i>알림</a>
								 <a class="dropItem"
									href="<c:url value='/Movieing/Member/Logout.mov'/>"
									style="color: white"><i class="fas fa-sign-out-alt"
									style="padding-right: 5px"></i>로그아웃</a> 
								<a class="dropItem"
									href=""
									style="color: white">관리자</a>
								<a class="dropItem"
									href="<c:url value='/Movieing/my/Customer.mov'/>"
									style="color: white"><i class="far fa-question-circle" style="padding-right: 5px"></i>고객센터</a>

							</div>
						</div>



					</li>

				</ul>


			</c:if>



			<c:if test="${!isLogin }">
				<%--  </c:if> --%>
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link portfolio-link"
						href="<c:url value='/Movieing/Member/Login.mov'/>">로그인</a></li>
				</ul>
			</c:if>
		</div>

	</div>
</nav>
<div></div>