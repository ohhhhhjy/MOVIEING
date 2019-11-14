<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->

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
* 원형이미지들 * /
.radiusImg {
	width: 65px;
	height: 65px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}

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

/*영화 이미지 그림자효과*/
.effect {
	border: 1px solid #888888;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	width: 200px;
	height: 270px;
}

/*스크롤바*/
header {
	font-family: 'Lobster', cursive;
	text-align: center;
	font-size: 25px;
}

#info {
	font-size: 18px;
	color: #555;
	text-align: center;
	margin-bottom: 25px;
}

a {
	color: #074E8C;
}

.scrollbar {
	margin-left: 30px;
	float: left;
	height: 300px;
	width: 65px;
	background: #F5F5F5;
	overflow-y: scroll;
	margin-bottom: 25px;
}

.force-overflow {
	min-height: 450px;
}

#wrapper {
	text-align: center;
	width: 500px;
	margin: auto;
}
/*댓글*/
/* CSS Test begin */
.comment-box {
	margin-top: 30px !important;
}
/* CSS Test end */
.comment-box img {
	width: 50px;
	height: 50px;
}

.comment-box .media-left {
	padding-right: 10px;
	width: 65px;
}

/*댓글 칸 크기*/
.media-body {
	width: 700px;
	height: auto;
}

.comment-box .media-body p {
	border: 1px solid #ddd;
	padding: 10px;
}

.comment-box .media-body .media p {
	margin-bottom: 0;
}

.comment-box .media-heading {
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	padding: 7px 10px;
	position: relative;
	margin-bottom: -1px;
}

.comment-box .media-heading:before {
	content: "";
	width: 12px;
	height: 12px;
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	border-width: 1px 0 0 1px;
	-webkit-transform: rotate(-45deg);
	transform: rotate(-45deg);
	position: absolute;
	top: 10px;
	left: -6px;
}
</style>

<!-- 위에 패딩주기 -->
<div style="padding-top: 150px; background-color: white;"></div>



<div class="container">
<a class="btn btn-secondary btn-default"
			href="<c:url value='/Movieing/Blog/MovieingFriends.mov'/>"
			style="text-align: center;">◁ 무빙 프렌즈 피드</a>
			<div style="padding-bottom: 30px"></div>


	<div class="card gedf-card">


		<div class="card-footer">

			<div class="input-group" style="padding-top: 10px">
				<input type="text" class="form-control col-sm-12" id="comment"
					placeholder="댓글 달기.." aria-describedby="basic-addon2">
				<button type="button" class="btn btn-secondary" id="commentInsert"
					style="padding-left: 10px">게시</button>

			</div>


			<!-- 댓글 아코디언 -->

			<div class="row">
				<div class="media comment-box"
					style="padding-left: 20px; padding-right: 20px">
					<div class="media-left">
						<a href="#"> <img class="img-responsive user-photo"
							src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading"></h4>
						<p style="background-color: white;"></p>


					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="media comment-box"
					style="padding-left: 20px; padding-right: 20px">
					<div class="media-left">
						<a href="#"> <img class="img-responsive user-photo"
							src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading"></h4>
						<p style="background-color: white;"></p>


					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="media comment-box"
					style="padding-left: 20px; padding-right: 20px">
					<div class="media-left">
						<a href="#"> <img class="img-responsive user-photo"
							src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading"></h4>
						<p style="background-color: white;"></p>


					</div>
				</div>
			</div>
			




		</div>
	</div>
</div>