<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>무빙</title>
 <!-- Bootstrap core CSS -->
  <link href='<c:url value="/resources/vendor/bootstrap/css/bootstrap.css" />' rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="<c:url value='/resources/vendor/fontawesome-free/css/all.css'/>" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="<c:url value='/resources/css/agency.css'/>" rel="stylesheet">
  
  <!-- 제이쿼리  -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
   
  </head>

  	<div style="padding-bottom: 20px"></div>
  <body>
  	<!-- 탑 부분 -->
  	<tiles:insertAttribute name="Top"/>
  	
  	
  	<!--바디 부분 -->
  	<tiles:insertAttribute name="Body"/>
 
  	<div class="row">&nbsp;</div>

  	<!-- 푸터 부분 -->
  	<tiles:insertAttribute name="Footer"/>
  	
  	  <!-- Bootstrap core JavaScript -->
	  <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
	  <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	 
	 
	
	  <!-- Plugin JavaScript -->
	  <script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
	
	  <!-- Contact form JavaScript -->
	  <script src="<c:url value='/resources/js/jqBootstrapValidation.js'/>"></script>
	  <script src="<c:url value='/resources/js/contact_me.js'/>"></script>
	
	
	  <!-- Custom scripts for this template -->
	  <script src="<c:url value='/resources/js/agency.min.js'/>"></script>
  </body>
</html>