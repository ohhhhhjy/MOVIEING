<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->





<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->



<div class="container" style="padding-top: 150px">
	<div class="row d-flex justify-content-center">
		<div class="col-md-8" style="padding-left: 80px">
			<!-- Default form login -->
			<form class="text-center border border-light p-5" action="#!">

				<h1 class="page-title">
					<strong>로그인</strong>
				</h1>
				<br />
				<p>
					아직 무빙의 회원이 아니신가요?<br /> 무빙의 모든 서비스는 회원만 이용 가능합니다.
				</p>

				<div style="padding-bottom: 10px">
					<input type="email" class="form-control" id="inputEmail"
						placeholder="아이디를 입력해주세요.">
				</div>
				<div style="padding-bottom: 10px">
					<!-- Password -->
					<input type="password" class="form-control" id="inputPassword"
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
				<a class="btn btn-info btn-block my-4" role="button" type="submit" href="<c:url value='/Movieing/main_logined.mov'/>">
				Sign in</a>

				<!-- Register -->
				<div class="row" style="padding-left: 150px">
					<label>아이디 찾기</label>
					<div style="padding-left: 10px"></div>
					<label> | </label>
					<div style="padding-left: 10px"></div>
					<label>비밀번호 찾기</label>
					<div style="padding-left: 10px"></div>
					<label>| </label>
					<div style="padding-left: 10px"></div>
					<label>회원가입</label>

				</div>







			</form>
			<!-- Default form login -->
		</div>
	</div>


</div>


