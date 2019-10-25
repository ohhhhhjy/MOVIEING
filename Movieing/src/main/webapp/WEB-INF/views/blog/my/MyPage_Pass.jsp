<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<link href="<c:url value='/resources/css/friendsLayout.css'/>"
	rel="stylesheet" type="text/css">
<!------ Include the above in your HEAD tag ---------->

<!-- 프사진가져온것 -->

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script>
	$(document).ready(function() {

		var readURL = function(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('.avatar').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$(".file-upload").on('change', function() {
			readURL(this);
		});
	});

	/*비밀번호 확인*/
	$("input[type=password]").keyup(function() {
		var ucase = new RegExp("[A-Z]+");
		var lcase = new RegExp("[a-z]+");
		var num = new RegExp("[0-9]+");

		if ($("#password1").val().length >= 8) {
			$("#8char").removeClass("glyphicon-remove");
			$("#8char").addClass("glyphicon-ok");
			$("#8char").css("color", "#00A41E");
		} else {
			$("#8char").removeClass("glyphicon-ok");
			$("#8char").addClass("glyphicon-remove");
			$("#8char").css("color", "#FF0004");
		}

		if (ucase.test($("#password1").val())) {
			$("#ucase").removeClass("glyphicon-remove");
			$("#ucase").addClass("glyphicon-ok");
			$("#ucase").css("color", "#00A41E");
		} else {
			$("#ucase").removeClass("glyphicon-ok");
			$("#ucase").addClass("glyphicon-remove");
			$("#ucase").css("color", "#FF0004");
		}

		if (lcase.test($("#password1").val())) {
			$("#lcase").removeClass("glyphicon-remove");
			$("#lcase").addClass("glyphicon-ok");
			$("#lcase").css("color", "#00A41E");
		} else {
			$("#lcase").removeClass("glyphicon-ok");
			$("#lcase").addClass("glyphicon-remove");
			$("#lcase").css("color", "#FF0004");
		}

		if (num.test($("#password1").val())) {
			$("#num").removeClass("glyphicon-remove");
			$("#num").addClass("glyphicon-ok");
			$("#num").css("color", "#00A41E");
		} else {
			$("#num").removeClass("glyphicon-ok");
			$("#num").addClass("glyphicon-remove");
			$("#num").css("color", "#FF0004");
		}

		if ($("#password1").val() == $("#password2").val()) {
			$("#pwmatch").removeClass("glyphicon-remove");
			$("#pwmatch").addClass("glyphicon-ok");
			$("#pwmatch").css("color", "#00A41E");
		} else {
			$("#pwmatch").removeClass("glyphicon-ok");
			$("#pwmatch").addClass("glyphicon-remove");
			$("#pwmatch").css("color", "#FF0004");
		}
	});
</script>
<style>

/* 원형이미지들 */
.radiusImg {
	width: 250px;
	height: 250px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}
</style>



<div class="container" style="padding-top: 150px">



	<div class="row">

		<div class="col-md-3">
			<!-- col-md-3시작 -->

			<!--프사 -->
			<div style="text-align: center">
				<img src="<c:url value='/resources/img/friends/dahee.jpg'/>"
					class="radiusImg img-thumbnail" alt="프로필 사진"
					style="display: block; margin: 0px auto;">
			</div>


			<div class="text-center" style="padding-bottom: 50px">
				<div>
					<h1 style="padding-bottom: 10px;text-align: center;padding-top: 10px">이다희 님</h1>
				</div>
				<input type="file" class="text-center center-block file-upload">
			</div>


			<div class="row">

				<a href="<c:url value='/Movieing/Blog/MyPage.mov'/>"
					class="list-group-item list-group-item-action ">프로필
					편집</a> <a href="<c:url value='/Movieing/Blog/MyPage_Pass.mov'/>"
					class="list-group-item list-group-item-action active">비밀번호
					설정</a> <a href="<c:url value='/Movieing/Blog/MyPage_Permit.mov'/>"
					class="list-group-item list-group-item-action">공개범위
					설정</a> <a href="<c:url value='/Movieing/Blog/MyPage_Notice.mov"'/>"
					class="list-group-item list-group-item-action">알림
					메시지</a> <a href="<c:url value='/Movieing/Blog/MyPage_QnA.mov'/>"
					class="list-group-item list-group-item-action">문의글</a>
				<a href="<c:url value='/Movieing/Blog/MyPage_Help.mov'/>" class="list-group-item list-group-item-action">도움말</a>

			</div>
		</div>
		<!-- col-md-3끝 -->

		<!-- 내용 상세보기 시작-->
		<div class="col-md-9">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>비밀번호 변경</h4>
							<hr>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-12" style="padding-top: 40px">


									<form method="post" id="passwordForm">
										<div class="form-group row">
											<h5 id="username" class="col-3 col-form-label"
												style="text-align: right;font-weight: bold;">이전 비밀번호</h5>
											<div class="col-9">
												<input type="password" class="input-lg form-control"
													name="password1" id="password1" placeholder="이전 비밀번호 입력"
													autocomplete="off" style="padding-right: 30px">
											</div>
										</div>
										

										<!-- 비밀번호 재입력 -->

										<div class="form-group row">
											<h5 id="username" class="col-3 col-form-label"
												style="text-align: right;font-weight: bold;">새 비밀번호</h5>
											<div class="col-9">
												<input type="password" class="input-lg form-control"
													name="password2" id="password2" placeholder="새 비밀번호 입력"
													autocomplete="off" style="padding-right: 30px">
											</div>
										</div>
										<!-- 비밀번호 유효성 검사 -->
										<!--  
										<div class="row">
											<div class="col-md-3"></div>
											<div class="col-md-3 .col-md-offset-6">
												<span id="8char" class="glyphicon glyphicon-remove"
													style="color: #FF0004;"></span> 8 글자 이상<br> <span
													id="ucase" class="glyphicon glyphicon-remove"
													style="color: #FF0004;"></span> 대문자 1글자이상 포함
											</div>
											<div class="col-md-3">
												<span id="lcase" class="glyphicon glyphicon-remove"
													style="color: #FF0004;"></span> 소문자 1글자이상 포함<br> <span
													id="num" class="glyphicon glyphicon-remove"
													style="color: #FF0004;"></span> 숫자 한번 포함
											</div>
										</div>
-->

										<!-- 비밀번호 확인 -->

										<div class="form-group row">
											<h5 id="username" class="col-3 col-form-label"
												style="text-align: right;font-weight: bold;">새 비밀번호 확인</h5>
											<div class="col-9">
												<input type="password" class="input-lg form-control"
													name="password3" id="password3" placeholder="새 비밀번호 확인"
													autocomplete="off" style="padding-right: 30px">
											</div>
										</div>

										<div class="row">
											<div class="col-sm-12" style="text-align: center;">
												<span id="pwmatch" class="glyphicon glyphicon-remove"
													style="color: #FF0004;"></span> 비밀번호 일치여부 확인
											</div>
										</div>

										<div style="text-align: right;">
										<input type="submit"
											class="col-xs-12 btn btn-primary btn-load btn-default"
											data-loading-text="비밀번호 변경" value="비밀번호 변경"
											>
											</div>
									</form>
								</div>
								<!--/col-md-12-->
							</div>
							<!--/row-->
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- sm-9끝 -->


	</div>
	<!-- row -->
</div>