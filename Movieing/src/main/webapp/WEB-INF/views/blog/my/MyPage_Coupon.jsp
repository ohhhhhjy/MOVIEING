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

	/*입력완료 경고창*/
	$(document).ready(function() {
		function success() {
			if (username.value == "") {
				return false;
			} else if (nick.value == "") {
				return false;
			} else if (phone.value == "") {
				return false;
			} else if (email.value == "") {
				return false;
			} else if (publicinfo.value == "") {
				return false;
			} else {
				alert("성공적으로 수정되었습니다");
			}

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
/*쿠폰*/
.coupon .kanan {
	border-left: 1px dashed #ddd;
	width: 40% !important;
	position: relative;
}

.coupon .kanan .info::after, .coupon .kanan .info::before {
	content: '';
	position: absolute;
	width: 20px;
	height: 20px;
	background: #dedede;
	border-radius: 100%;
}

.coupon .kanan .info::before {
	top: -10px;
	left: -10px;
}

.coupon .kanan .info::after {
	bottom: -10px;
	left: -10px;
}

.coupon .time {
	font-size: 1.6rem;
}
</style>


<div class="container" style="padding-top: 150px">

	<div class="row">

		<div class="col-md-3">
			<!-- col-md-3시작 -->
			<!--프사 -->
			<div style="text-align: center">
				<img src="${mypage.userProfile }" class="radiusImg img-thumbnail"
					alt="프로필 사진" style="display: block; margin: 0px auto;">

			</div>

			<div class="text-center" style="padding-bottom: 50px">
				<div>
					<h1
						style="padding-bottom: 10px; text-align: center; padding-top: 10px">${mypage.userName }
						님</h1>
				</div>
				<!-- 파일선택 -->
				<form id="imgForm" method="post" id="frm"
					enctype="multipart/form-data"
					action="<c:url value='/Movieing/Blog/ImageUpdate.mov?${_csrf.parameterName}=${_csrf.token}'/>">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}">
					<div class="row">
						<div class="col-md-9">
							<input type="file" id="image" name="image"
								class="text-center center-block file-upload">
						</div>

					</div>
				</form>
			</div>
			<div class="row">
				<a href="<c:url value='/Movieing/Blog/MyPage.mov'/>"
					class="list-group-item list-group-item-action ">프로필 편집</a> <a
					href="<c:url value='/Movieing/Blog/MyPage_Pass.mov'/>"
					class="list-group-item list-group-item-action">비밀번호 설정</a> <a
					href="<c:url value='/Movieing/Blog/MyPage_Coupon.mov'/>"
					class="list-group-item list-group-item-action active">내 쿠폰함</a> <a
					href="<c:url value='/Movieing/Blog/MyPage_Permit.mov'/>"
					class="list-group-item list-group-item-action">결제내역 </a> <a
					href="<c:url value='/Movieing/Blog/MyPage_Notice.mov"'/>"
					class="list-group-item list-group-item-action">알림 메시지</a> <a
					href="<c:url value='/Movieing/Blog/MyPage_QnA.mov'/>"
					class="list-group-item list-group-item-action">문의글</a>
			</div>
		</div>
		<!-- col-md-3끝 -->



		<!-- 내용 상세보기 시작-->
		<div class="col-md-9">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>내 쿠폰함</h4>
							<hr>
						</div>
					</div>
					

					
					<div class="row">
						<div class="col-md-12">
						<div class="row">
							<h6 style="color: orange;font-weight: bold;padding-left: 20px">1개</h6>
							<h6>의 쿠폰이 있습니다.</h6>
						</div>

							<!-- 내 쿠폰 리스트 -->
							<div class="col-sm-12" style="padding-bottom: 10px;border-color: gray;">
								<div
									class="coupon bg-white rounded mb-3 d-flex justify-content-between">
									<div class="kiri p-3">
										<div class="icon-container ">
											<div class="icon-container_box">
												<img
													src="data:image/png;base64,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"
													width="85" alt="totoprayogo.com" class="" />
											</div>
										</div>
									</div>
									<div class="tengah py-3 d-flex w-100 justify-content-start">
										<div>
											<span class="badge badge-success">제휴</span>
											<h3 class="lead">신규 회원 10,000원 할인</h3>
											<p class="text-muted mb-0">2019.12.04 ~ 2019.12.14</p>
										</div>
									</div>
									<div class="kanan">
										<div class="info m-3 d-flex align-items-center">
											<div class="w-100">
												<div class="block">
													<span class="time font-weight-light"> <span>10일 남음</span>
													</span>
												</div>
												<a href="<c:url value='/Movieing/News/Exhibition.mov'/>" target="_blank"
													class="btn btn-sm btn-outline-danger btn-block"> 사용하기 </a>
											</div>
										</div>
									</div>
								</div>
							</div>
						


						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- sm-9끝 -->





	</div>
	<!-- row -->
</div>

<script>
	var form = $('form')[0];
	//FormData parameter에 담아줌
	var formData = new FormData(form);

	$(function() {

		$("#image").change(function(e) {

			console.log($('input[type=file]')[0].files[0].name); //파일이름

			$.ajax({

				url : "<c:url  value='/Ajax/ImageChange.mov'/>",
				processData : false,
				contentType : false,
				data : formData,
				type : 'POST',
				success : function(result) {
					alert("업로드 성공!!");
				}

			});

		});

	});
</script>