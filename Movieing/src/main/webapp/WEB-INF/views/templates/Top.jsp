<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
/* 드롭다운 css */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;/* #002941 */
	min-width: 90px;
	padding: 5px;
	border-radius: 4px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2)
}
.dropdown-content a {
	font-size:0.8em;
	font-weight:bold;
	color: black;
	padding: 8px;
	text-decoration: none;
	display: block;
}
.dropdown:hover .dropdown-content { display: block; }
.dropdown:hover .dropdown-button { }

</style>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color:#002941">
    <div class="container">
    <c:if test="${! empty sessionScope.id }" var="isLogin">
      <a class="navbar-brand js-scroll-trigger" href="<c:url value='/Movieing/Movie/Main.mov'/>"><img alt="logo" src="<c:url value='/resources/img/logos/logo.png'/>"/></a>
      </c:if>
      <c:if test="${!isLogin }">
      <a class="navbar-brand js-scroll-trigger" href="<c:url value='/'/>"><img alt="logo" src="<c:url value='/resources/img/logos/logo.png'/>"/></a>
      </c:if>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive" >
      <%-- <c:if test="" > 여기는 로그인시에만 보이는 메뉴들--%>
     <c:if test="${isLogin}">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="<c:url value='/Movieing/Movie/AllMovie.mov'/>">전체영화</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="<c:url value='/Movieing/Movie/RatingMovie.mov'/>">평가</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="<c:url value='/Movieing/Movie/Recommend.mov'/>">추천</a>
          </li>
          <li class="nav-item">
           	<div class="dropdown">
            	 <a class="nav-link js-scroll-trigger dropdown-button" href="<c:url value='/Movieing/Blog/BlogMain.mov'/>">블로그</a>    
				  <div class="dropdown-content" >
				    <a href="<c:url value='/Movieing/Blog/BlogMain.mov'/>">나의 피드</a>
				    <a href="<c:url value='/Movieing/Blog/MyActivity.mov?page=a'/>">나의 활동</a>
				    <a href="<c:url value='/Movieing/Blog/MovieingFriends.mov'/>">무빙프렌즈</a>
				    <a href="<c:url value='/Movieing/Blog/MyPage.mov'/>">마이페이지</a>
				  </div>
            </div> 
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger " href="<c:url value ='/Movieing/News/News.mov'/>">소식</a>
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
        
        <ul class="navbar-nav text-uppercase ml-auto" >
        
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
                  <button class="btn btn-info btn-lg" type="button" onclick="location.href='<c:url value='/Movieing/Movie/SearchResult.mov'/>' ">
                     <img src="<c:url value='/resources/img/search.png'/>" alt="검색" />
                  </button>
               </span>
            </div>
         </div>
         </li>
         <li><span>&nbsp;&nbsp;&nbsp;</span></li>
         <li>
         <a href="https://www.naver.com">
         <img  alt="user" src="<c:url value='/resources/img/user.png'/>"/>
      </a>
          </li>
          
          
        </ul>
        
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link portfolio-link" href="<c:url value='/Movieing/Member/Logout.mov'/>">로그아웃</a>
          </li>
          </ul>
        
      </c:if>
      
      
      
      
      <c:if test="${!isLogin }">
      <%--  </c:if> --%>
       <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link portfolio-link" href="<c:url value='/Movieing/Member/Login.mov'/>">로그인</a>
          </li>
          </ul>
         </c:if>
      </div>
      
    </div>
  </nav>
  <div ></div>