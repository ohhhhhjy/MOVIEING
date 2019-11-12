<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 구글 로그인에 필요한 소스 시작 -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="39236105074-b52uaeq079dn5uovhl9u9fr2m47ka1jr.apps.googleusercontent.com">
<!-- 구글 로그인에 필요한 소스 끝 -->

<!------ Include the above in your HEAD tag ---------->



<div class="container" style="padding-top: 150px">
	<div class="row d-flex justify-content-center">
		<div class="col-md-8" style="padding-left: 80px">
			<!-- Default form login -->
			<form class="text-center border border-light p-5"
				action="<c:url value='/Movieing/Member/LoginProcess.mov'/>">

				<h1 class="page-title">
					<strong>로그인</strong>
				</h1>
				<br />
				<p>
					아직 무빙의 회원이 아니신가요?<br /> 무빙의 모든 서비스는 회원만 이용 가능합니다.
				</p>

				<div style="padding-bottom: 10px">
					<input type="text" class="form-control" id="id" name="id"
						placeholder="아이디를 입력해주세요.">
				</div>
				<div style="padding-bottom: 10px">
					<!-- Password -->
					<input type="password" class="form-control" id="pwd" name="pwd"
						placeholder="비밀번호를 입력해주세요.">
				</div>
				<div class="d-flex justify-content-around">
					<div>
						<!-- Remember me -->
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="defaultLoginFormRemember"> <label
								class="custom-control-label" for="defaultLoginFormRemember">아이디
								저장</label>
						</div>
					</div>

				</div>

				<!-- Sign in button -->
				<button class="btn btn-info btn-block my-4" type="submit">
					Sign in</button>

				<%-- <div align="center">

					<a style="padding-right: 10px" href="<c:url value='/Movieing/member/GoogleLogin.mov'/>"> 
					<img src="<c:url value='/resources/img/login/face.png'/>"
						style="width: 50px; height: 50px" >
					</a> <a style="padding-right: 10px" href="${url }"> <img
						src="<c:url value='/resources/img/login/naver.jpg'/>"
						style="width: 50px; height: 50px">

					</a> <a href="#"> <img src="<c:url value='/resources/img/login/kakao.png'/>"
						style="width: 50px; height: 50px">
					</a>

				</div>
 --%>



				<!-- Register -->
				<div class="row" style="padding-left: 150px;padding-top: 10px">
					<label>아이디 찾기</label>
					<div style="padding-left: 10px"></div>
					<label> | </label>
					<div style="padding-left: 10px"></div>
					<label>비밀번호 찾기</label>
					<div style="padding-left: 10px"></div>
					<label>| </label>
					<div style="padding-left: 10px"></div>
					<label><a
						href="<c:url value='/Movieing/Member/SignUp.mov'/>">회원가입</a></label>

				</div>

			</form>
			<!-- Default form login -->
		</div>
	</div>


</div>
<!-- 네이버 로그인 창으로 이동 -->
<div class="row">
	<div class="col-8">
		<div id="naver_id_login" style="text-align:center"><a href="${url}">
		<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
		<div id="google_id_login" style="text-align: center">
		<a href="<c:url value='/Movieing/member/GoogleLogin.mov'/>"> <img width="230"
		src="${pageContext.request.contextPath}/resources/img/login/btn_google_signin_light_normal_web.png" /></a></div>
		<br>
	</div>
</div>

<div class="row d-flex justify-content-center" >
<div id="naver_id_login" style="text-align:center"><a href="${url}">
<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a>

	<div id="google_id_login"
		style="text-align: center; ">
		<div class="g-signin2" data-onsuccess="onSignIn"></div>
		<!-- data-onsucess: 로그인 성공시 onSignIn함수실행  -->

	</div>
	</div>
	
</div>


<%-- <a href="<c:url value='/Movieing/member/GoogleLogin.mov'/>"> <img width="230"
src="${pageContext.request.contextPath}/resources/img/login/btn_google_signin_light_normal_web.png" /></a></div>
<br> --%>
<script>
//구글 로그인 후, 호출되는 함수

function onSignIn(googleUser) {
   var profile = googleUser.getBasicProfile();
   console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
   console.log('Name: ' + profile.getName());
   console.log('Image URL: ' + profile.getImageUrl());
   console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
}
</script>

