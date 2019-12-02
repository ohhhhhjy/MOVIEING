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
</style>


<div class="container" style="padding-top: 150px">

	<div class="row">	

		<div class="col-md-3">
			<!-- col-md-3시작 -->
			<!--프사 -->
			<div style="text-align: center">
				<img src="${mypage.userProfile }"
					class="radiusImg img-thumbnail" alt="프로필 사진"
					style="display: block; margin: 0px auto;">
				
			</div>

			<div class="text-center" style="padding-bottom: 50px">
				<div>
					<h1
						style="padding-bottom: 10px; text-align: center; padding-top: 10px">${mypage.userName }
						님</h1>
				</div>
				<!-- 파일선택 -->
					<form id="imgForm" method="post" id="frm" enctype="multipart/form-data" 
						action="<c:url value='/Movieing/Blog/ImageUpdate.mov?${_csrf.parameterName}=${_csrf.token}'/>">
					<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}"> 
					<div class="row">
						<div class="col-md-9">
							<input type="file" id="image" name="image" class="text-center center-block file-upload">
						</div>
						
					</div>
					</form>
			</div>
			<div class="row">
			<a href="<c:url value='/Movieing/Blog/MyPage.mov'/>"
					class="list-group-item list-group-item-action ">프로필
					편집</a> 
					<a href="<c:url value='/Movieing/Blog/MyPage_Pass.mov'/>"
					class="list-group-item list-group-item-action">비밀번호
					설정</a> 
					<a href="<c:url value='/Movieing/Blog/MyPage_Coupon.mov'/>"
					class="list-group-item list-group-item-action active">내 쿠폰함</a>
					<a href="<c:url value='/Movieing/Blog/MyPage_Permit.mov'/>"
					class="list-group-item list-group-item-action">결제내역
					</a> 
					<a href="<c:url value='/Movieing/Blog/MyPage_Notice.mov"'/>"
					class="list-group-item list-group-item-action">알림
					메시지</a> 
					<a href="<c:url value='/Movieing/Blog/MyPage_QnA.mov'/>"
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

							<!-- 내 쿠폰 리스트 -->
							
							
							
							
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
	var form =  $('form')[0];
	//FormData parameter에 담아줌
	var formData = new FormData(form);

	$(function () {
	
		
		$("#image").change(function(e){
			 
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