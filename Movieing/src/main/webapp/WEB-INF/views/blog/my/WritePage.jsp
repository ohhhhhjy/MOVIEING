<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<!-- include libraries(jQuery, bootstrap) -->

<!-- include summernote css/js-->
<link href="<c:url value='/resources/css/summernote.css'/>"
	rel="stylesheet">
<script src="<c:url value='/resources/js/summernote.js'/>"></script>
<script src="<c:url value='/resources/js/summernote-ko-KR.js'/>"></script>




<script>
	function validateForm() {
		var name = document.getElementById('name').value;
		if (name == "") {
			document.getElementById('status').innerHTML = "Name cannot be empty";
			return false;
		}
		var email = document.getElementById('email').value;
		if (email == "") {
			document.getElementById('status').innerHTML = "Email cannot be empty";
			return false;
		} else {
			var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			if (!re.test(email)) {
				document.getElementById('status').innerHTML = "Email format invalid";
				return false;
			}
		}
		var subject = document.getElementById('subject').value;
		if (subject == "") {
			document.getElementById('status').innerHTML = "Subject cannot be empty";
			return false;
		}
		var message = document.getElementById('message').value;
		if (message == "") {
			document.getElementById('status').innerHTML = "Message cannot be empty";
			return false;
		}
		document.getElementById('status').innerHTML = "Sending...";
		document.getElementById('contact-form').submit();

	}

	/*ajax로 보내기*/

	/*별점*/
	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	});
	/*썸머노트*/
	$(document).ready(function() {
		$('#summernote').summernote();
	});
</script>

<style>
/* 별점 */
.starR1 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR2 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}
</style>





<div class="container">
	<!--Section: Contact v.2-->
	<section>

		<!--Section heading-->
		<h2 class="h1-responsive font-weight-bold text-center my-4">영화 후기
			쓰기</h2>
		<!--Section description-->
		<p class="text-center w-responsive mx-auto mb-5">여기에 무빙에서 추천해 준
			영화를 보고 난 후의 후기를 자유롭게 작성해주세요 :)</p>



		<!--Grid column-->
		<div>
			<form id="contact-form" name="contact-form" action="mail.php"
				method="POST">

				<!--Grid row-->

				<!--Grid column-->
				<div style="padding-bottom: 10px">
					<h5>영화명</h5>
					<div class="row">
						<button type="button" class="btn btn-primary">영화선택</button>
						<div class="col-md-10">
							<input type="text" class="form-control"
								aria-label="Sizing example input"
								aria-describedby="inputGroupMaterial-sizing-default">
						</div>
					</div>

				</div>



				<!--Grid column-->
				<div style="padding-bottom: 10px">


					<h5>평점</h5>
					<div class="starRev">
						<span class="starR1 on">별1_왼쪽</span> <span class="starR2">별1_오른쪽</span>
						<span class="starR1">별2_왼쪽</span> <span class="starR2">별2_오른쪽</span>
						<span class="starR1">별3_왼쪽</span> <span class="starR2">별3_오른쪽</span>
						<span class="starR1">별4_왼쪽</span> <span class="starR2">별4_오른쪽</span>
						<span class="starR1">별5_왼쪽</span> <span class="starR2">별5_오른쪽</span>
					</div>
				</div>

				<!--Grid column-->

				<div style="padding-bottom: 10px">
					<h5>장소</h5>
					<div class="row">
						<button class="btn btn-blue-grey">위치검색</button>
						<input type="text" class="form-control"
							aria-label="Sizing example input"
							aria-describedby="inputGroupMaterial-sizing-default">
					</div>


				</div>

				<!--Grid column-->

				<!--Grid row-->

				<!--Grid row-->

				<div style="padding-bottom: 10px">

					<h5>공개여부</h5>


					<!-- Default inline 1-->
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input"
							id="defaultInline1" name="inlineDefaultRadiosExample"> <label
							class="custom-control-label" for="defaultInline1">나만보기</label>
					</div>

					<!-- Default inline 2-->
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input"
							id="defaultInline2" name="inlineDefaultRadiosExample"> <label
							class="custom-control-label" for="defaultInline2">팔로우만 공개</label>
					</div>

					<!-- Default inline 3-->
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input"
							id="defaultInline3" name="inlineDefaultRadiosExample"> <label
							class="custom-control-label" for="defaultInline3">전체공개</label>
					</div>



				</div>

				<!--Grid row-->


				<!--Grid row-->
				<div class="row" style="padding-bottom: 10px">

					<!--Grid column-->

					<div class="md-form">
						<h5>내용</h5>
						<textarea name="content" id="summernote" value=""></textarea>


					</div>



				</div>
				<!-- 해쉬태그 -->
				<h5>해쉬태그</h5>
				<div class="row" style="padding-bottom: 10px">
				
					<div class="chip">
						#재밌음 <i class="close fas fa-times"></i>
					</div>
					<div class="chip">
						#재밌음<i class="close fas fa-times"></i>
					</div>
					<div class="chip">
						#재밌음<i class="close fas fa-times"></i>
					</div>

				</div>

				<!--Grid row-->


			</form>

			<div>

				<button class="btn btn-info">취소</button>
				<button class="btn btn-danger"
					onclick="document.getElementById('contact-form').submit();">등록</button>

			</div>
			<div class="status"></div>
		</div>
		<!--Grid column-->






	</section>
	<!--Section: Contact v.2-->





</div>