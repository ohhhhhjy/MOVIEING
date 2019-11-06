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




<div class="container">
	<!--Section: Contact v.2-->
	<section>

		<!--Section heading-->
		<h2 class="h1-responsive font-weight-bold text-center my-4">문의글
			작성</h2>
		<!--Section description-->
		<p class="text-center w-responsive mx-auto mb-5">불편을 드려 죄송합니다 빠른 시일내로 답변드리도록 하겠습니다.</p>



		<!-- Default form contact -->
		<form class="border border-light" action="#!">

			<h5>제목</h5>
			<div style="padding-bottom: 10px"></div>
			<input type="text" class="form-control" placeholder="제목"
				aria-label="Example text with button addon"
				aria-describedby="MaterialButton-addon1">


			<div style="padding-bottom: 10px"></div>
			<!-- Message -->
			<h5>내용</h5>
			<div class="form-group">
				<textarea class="form-control rounded-0"
					id="exampleFormControlTextarea2" rows="3" placeholder=""></textarea>
			</div>




			<div class="custom-control custom-checkbox mb-4">
				<div class="row">
					<div>
						<label style="font-weight: bold;">공개여부</label>
					</div>
					<div style="padding-right: 50px"></div>
					<div class="row">
						<div class="form-check mb-3">
							<input class="form-check-input" type="radio" id="radio1"
								name="cmethod" value="phone" checked> <label
								class="form-check-label" for="radio1">전체공개</label>
						</div>
						<div style="padding-right: 10px"></div>
						<div class="form-check mb-3">
							<input class="form-check-input" type="radio" id="radio2"
								name="cmethod" value="mail"> <label
								class="form-check-label" for="radio2">나만보기</label>
						</div>
					</div>

				</div>
			</div>



			<!-- Send button -->
			<div class="mb-4">
				<button class="btn btn-info btn-block" type="submit"
					onclick="document.getElementById('contact-form').submit();">등록</button>
			</div>
		</form>
		<!-- Default form contact -->






	</section>
	<!--Section: Contact v.2-->





</div>
