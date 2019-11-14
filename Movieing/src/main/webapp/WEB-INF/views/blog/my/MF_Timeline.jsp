<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>


<link href="<c:url value='/resources/css/friendsLayout.css'/>"
	rel="stylesheet" type="text/css">


<style>
.radiusSmallImg {
	width: 45px;
	height: 45px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}

/*프로필 사진 패딩*/
.profileForm {
	padding-bottom: 20px;
}

/*라인 줄*/
.my-3 {
	border: 0;
	height: 2px;
	background: #ccc;
}
</style>

<!--  
<body style="background-color: #faf9e6">
-->


<div class="container"
	style="padding-top: 200px; padding-bottom: 100px; background-color: white;">



	<div class="row">
		<div class="col-md-3"></div>


		<div class="col-md-6">
			<div class="card gedf-card">
				<div class="card bg-light text-dark">
					<div class="card card-body">
						<div class="row" style="padding-left: 10px; height: 15px">
							<img
								src="<c:url value='/resources/img/friends/passage-of-time.png'/>"
								alt="타임라인 로고" style="width: 25px; height: 25px" />
							<h6 class="card-title;"
								style="padding-left: 5px; font-weight: bold; padding-right: 40px">타임
								라인</h6>

						</div>


						<div>
							<!-- 중간줄 -->
							<hr class="my-3" style="height: 3px; font-weight: bold;">
						</div>

						<!-- 한 유저시작 -->
						<c:forEach items="${allUser }" var="item">
							<div class="row" style="padding-bottom: 10px; padding-top: 10px">
								<div class="col-md-2"
									style="padding-left: 10px; text-align: right;">
									<img class="radiusSmallImg" alt="배우사진"
										src="<c:url value='/resources/img/friends/boy.png'/>" />
								</div>
								<div class="col-md-7" style="padding-left: 10px">
									<span class="timeLineText"
										style="font-size: 1.0em; color: black;">${item.userId}</span>
									<h6 class="actorSpan" style="font-size: 0.5em; color: black;">1시간전</h6>
								</div>
								<div class="col-md-3">
									<button type="button" class="btn btn-primary btn-sm">팔로우
										해제</button>
								</div>
							</div>
						</c:forEach>
						<!-- 한 유저끝 -->

					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3"></div>





	</div>

</div>

<!--  
</body>
-->