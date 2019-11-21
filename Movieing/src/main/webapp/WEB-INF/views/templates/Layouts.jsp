<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>무빙</title>
<!-- Bootstrap core CSS -->
<link
	href='<c:url value="/resources/vendor/bootstrap/css/bootstrap.css" />'
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="<c:url value='/resources/vendor/fontawesome-free/css/all.css'/>"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/agency.css'/>" rel="stylesheet">

<!-- 제이쿼리  -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

<style>

/*배너*/
#floatMenu {
	position: absolute;
	right: 80px;
	top: 800px;
}
</style>
<script>
	/*배너*/
	$(document).ready(function() {

		// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
		var floatPosition = parseInt($("#floatMenu").css('top'));
		// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

		$(window).scroll(function() {
			// 현재 스크롤 위치를 가져온다.
			var scrollTop = $(window).scrollTop();
			var newPosition = scrollTop + floatPosition + "px";

			/* 애니메이션 없이 바로 따라감
			 $("#floatMenu").css('top', newPosition);
			 */

			$("#floatMenu").stop().animate({
				"top" : newPosition
			}, 500);

		}).scroll();

	});

	//단비
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement(s);
		js.id = id;
		js.src = "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'frogue-embed'));

</script>

</head>

<div style="padding-bottom: 20px"></div>
<body>
	<!-- 탑 부분 -->
	<tiles:insertAttribute name="Top" />


	<!--바디 부분 -->
	<tiles:insertAttribute name="Body" />

	<div class="row">&nbsp;</div>
	<!-- -
	<div id="floatMenu">
		<img src="<c:url value='/resources/img/mup.png'/>">
	</div>
-->
	<div id="frogue-container" class="position-right-bottom"
		data-chatbot="2d452dd6-73a1-4756-b4cc-960cc9366064" data-user="mnn01400"
		data-init-key="value"></div>
	<!-- data-init-식별키=값 으로 셋팅하면 챗플로우에 파라미터와 연동가능. 식별키는 소문자만 가능 -->
	
	<!-- 푸터 부분 -->
	<tiles:insertAttribute name="Footer" />

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
	<script
		src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>



	<!-- Plugin JavaScript -->
	<script
		src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

	<!-- Contact form JavaScript -->
	<script src="<c:url value='/resources/js/jqBootstrapValidation.js'/>"></script>
	<script src="<c:url value='/resources/js/contact_me.js'/>"></script>


	<!-- Custom scripts for this template -->
	<script src="<c:url value='/resources/js/agency.min.js'/>"></script>
</body>
</html>