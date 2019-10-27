<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
            <a class="nav-link js-scroll-trigger" href="<c:url value='/Movieing/Blog/BlogMain.mov'/>">블로그</a>   
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="<c:url value ='/Movieing/News/News.mov'/>">소식</a>
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
         <a href="<c:url value='/Movieing/admin/admin_main.mov'/>">
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