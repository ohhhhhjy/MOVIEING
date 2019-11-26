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
    <title>관리자 페이지</title>
    
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery-1.10.2.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>"></script>
		 <!-- Bootstrap core JavaScript -->
	  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	  <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
		<!-- Plugin JavaScript -->
	  <script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
	
	  <!-- Contact form JavaScript -->
	  <script src="<c:url value='/resources/js/jqBootstrapValidation.js'/>"></script>
	  <script src="<c:url value='/resources/js/contact_me.js'/>"></script>
	
 <link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/fonts/font-awesome/css/font-awesome.css'/>" />

<link id="themecss" rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/admin/theme.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/admin/dashboard.css'/>" />
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	 
	

  </head>

  
  <body>
  <div id="wrapper">
  	<!-- 탑 부분 -->
  	<tiles:insertAttribute name="Top"/>
  	
  	<!--바디 부분 -->
  	<tiles:insertAttribute name="Body"/>
  	<!-- 푸터 부분 -->
  	<tiles:insertAttribute name="Footer"/>
  	<input type="hidden" id="json"
					value="${userJson}">
  </div>
  	
  	 
	 
	 
	
	 
	<script type="text/javascript"
		src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
	
	<script type="text/javascript"
		src="<c:url value='/resources/js/admin/theme.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/admin/gridData.js'/>"></script>
	<script>
		jQuery(function($) {
			$("#editor").shieldEditor({
	            height: 350
	        });
		});
	</script>
	
  </body>
</html>