<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<style>
.main {
	background: #f3f3f3;
	color: black;
	font-weight: bold;
}
</style>


<div class="container" style="padding-top: 150px">
	<!-- Top header -->

	<div class="w-50 px-3 py-3 pt-md-4 pb-md-4 mx-auto text-center">
		<img src="<c:url value='/resources/img/cart.png'/>"
			style="width: 150px; height: 130px;">
		<div style="padding-bottom: 20px"></div>
		<div class="row text-center" align="center" style="padding-left: 60px">
			<h1 class="display-5 font-weight-bold">결제가</h1>
			&nbsp&nbsp
			<h1 class="display-5 font-weight-bold" style="color: red">완료</h1>
			&nbsp&nbsp
			<h1 class="display-5 font-weight-bold">되었습니다!</h1>
		</div>
	</div>





	<!-- Cards container -->
	<div class="container text-center">
		<div class="row">

			<!-- Card #1, Starter -->
			<div class="col-lg-9 d-block m-auto">

				<table class="table" cellspacing="0" style="text-align: left;border: medium;">
					<tbody>
						<tr>
							<td class="main">결제자</td>
							<td>오지윤</td>
						</tr>
						<tr>
							<td class="main">결제내용</td>
							<td>서울독립영화제</td>
						</tr>
						<tr>
							<td class="main">결제일시</td>
							<td>2019.11.27</td>
						</tr>
						<tr>
							<td class="main">결제금액</td>
							<td>72000원</td>
						</tr>
						<tr>
							<td class="main">접수상태</td>
							<td>결제완료</td>
						</tr>
						<tr>
							<td class="main">결제방법</td>
							<td>카드</td>
						</tr>
					</tbody>
				</table>

			</div>


		</div>
	</div>


	<div style="padding-top: 40px"></div>
	<div class="container text-center">
		<button type="button" class="btn btn-secondary" onclick="location.href='<c:url value='/'/>'">홈으로 가기</button>
		&nbsp&nbsp&nbsp&nbsp
		<button type="button" class="btn btn-secondary" onclick="location.href='<c:url value='/Movieing/Blog/MyPage_Permit.mov'/>'">마이페이지</button>
	</div>
</div>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"
	integrity="sha384-pjaaA8dDz/5BgdFUPX6M/9SUZv4d12SUPF0axWc+VRZkx5xU3daN+lYb49+Ax+Tl"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>


</div>