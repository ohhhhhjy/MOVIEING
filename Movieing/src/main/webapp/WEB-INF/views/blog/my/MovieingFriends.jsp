<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

/*라인 줄*/
.my-3 {
	border: 0;
	height: 2px;
	background: #ccc;
}

/* 원형이미지들 */
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
	width: 180px;
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

/*모달 위치*/
.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

/*더보기 ...조건*/
.card-text {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 9; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1.2em;
	height: 10.7em;
}
</style>


<!-- 위에 패딩주기 -->
<div style="padding-top: 150px; background-color: white;"></div>


<!-- 버튼 두개 만들기 -->
<div
	style="padding-left: 40px; background-color: white; padding-right: 40px">
	<div class="row">
		<a class="btn btn-secondary btn-default"
			href="<c:url value='/Movieing/Blog/BlogMain.mov'/>"
			style="text-align: center;">◁ 블로그 메인</a>

		<div style="padding-left: 450px">
			<h3 style="color: orange; font-weight: bold;">팔로우 유저들의 활동로그</h3>
		</div>
		<div style="padding-left: 200px;">
			<h3 style="color: black">
				<a href="<c:url value="/Movieing/Blog/MovieingFriends2.mov"/>">모든
					활동 로그</a>
			</h3>
		</div>


	</div>
	<!-- 중간줄 -->
	<hr class="my-3">
</div>



<!-- 피드보이기시작 -->

<div style="background-color: white; padding-top: 10px">

	<div class="container gedf-wrapper" style="background-color: white;">

		<div class="row">

			<div class="col-md-9" style="background-color: white">

				<!--- \\\\\\\Post-->
				<div class="card gedf-card">
					<div class="card-header">
						<div class="d-flex justify-content-between align-items-center">
							<div class="d-flex justify-content-between align-items-center">
								<div class="mr-2">
									<img class="rounded-circle" width="45"
										src="https://picsum.photos/50/50" alt="">
								</div>
								<div class="ml-2" style="padding-right: 570px">
									<div class="h5 m-0" style="color: black;">@_mongjiee</div>
									<div class="h7 text-muted">안양 CGV</div>
								</div>


								<!-- 모달 띄우기 -->
								<div style="text-align: right;">
									<button class="btn btn-link dropdown-toggle" type="button"
										id="gedf-drop1" data-toggle="modal" aria-haspopup="true"
										aria-expanded="false" data-target="#myModal"
										style="text-align: right;">
										<i class="fa fa-ellipsis-h"></i>
									</button>
									<div class="modal fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: red">부적절한
													콘텐츠로 신고</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: red">팔로우
													취소</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;">게시물로
													이동</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;">퍼가기</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;"
													data-dismiss="modal">취소</button>

											</div>
										</div>
									</div>
									<!-- 모달 끝 -->
								</div>
							</div>


						</div>

					</div>
					<div class="card-body">
						<div class="row">

							<div class="col-sm-3" align="center" style="padding-left: 20px">
								<img class="effect"
									src="<c:url value="/resources/img/friends/pic1.jpg"/>"
									alt="Image">
							</div>
							<div class="col-sm-9">

								<div class="row" style="height: 30px">
									<h4 class="card-title"
										style="color: black; font-weight: bold; padding-left: 20px">조커(Joker)</h4>

									<h4 style="padding-left: 350px">
										<span class="badge badge-pill badge-danger"
											style="text-align: center;">★4.5</span>
									</h4>

								</div>



								<!-- 중간줄 -->
								<hr class="my-3">



								<p class="card-text" style="color: black;">조커를 봤다. 너무 재밌었다.
									너무 재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다 더하기 재밌었고, 너무 재밌어서 너무 재밌을
									뻔했다. 너무 재밌는 영화였다.
									조커를 봤다. 너무 재밌었다.
									너무 재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다 더하기 재밌었고, 너무 재밌어서 너무 재밌을
									뻔했다. 너무 재밌는 영화였다.</p>
								<h6
									style="text-align: center; text-decoration: underline; padding-bottom: 10px">
									<a href="">+더보기</a>
								</h6>

								<div style="padding-left: 30px" class="row">
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#조커</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#재밌음</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#요즘추천영화</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#스릴러</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#어두운영화</span>
									</h6>
									<h6>
										<span class="badge badge-secondary">#호아킨피닉스</span>
									</h6>
								</div>



							</div>
							<!-- sm-9 -->

						</div>

						<div class="text-muted h7 mb-2" style="padding-top: 20px">
							<i class="fa fa-clock-o"
								style="padding-bottom: 10px; padding-left: 5px"></i>10분 전
							<div class="row">

								<h6 style="padding-left: 20px">좋아요 788개</h6>
								<h6 style="padding-left: 20px">댓글 599개</h6>
							</div>

						</div>
					</div>
					<div class="card-footer">
						<a href="#" class="card-link"><i class="fa fa-gittip"></i> 좋아요</a>
						<a href="#" class="card-link"><i class="fa fa-comment"></i> 댓글</a>
						<div class="input-group" style="padding-top: 10px">
							<input type="text" class="form-control col-sm-12"
								placeholder="댓글 달기.." aria-describedby="basic-addon2">
							<button type="button" class="btn btn-secondary disabled"
								style="padding-left: 10px">게시</button>

						</div>

					</div>
				</div>
				<!-- Post /////-->
				<!-- 게시물 간격 주기 -->
				<div style="padding-bottom: 50px"></div>

				<!--- \\\\\\\Post-->
				<div class="card gedf-card">
					<div class="card-header">
						<div class="d-flex justify-content-between align-items-center">
							<div class="d-flex justify-content-between align-items-center">
								<div class="mr-2">
									<img class="rounded-circle" width="45"
										src="https://picsum.photos/50/50" alt="">
								</div>
								<div class="ml-2" style="padding-right: 570px">
									<div class="h5 m-0" style="color: black;">@_mongjiee</div>
									<div class="h7 text-muted">안양 CGV</div>
								</div>


								<!-- 모달 띄우기 -->
								<div style="text-align: right;">
									<button class="btn btn-link dropdown-toggle" type="button"
										id="gedf-drop1" data-toggle="modal" aria-haspopup="true"
										aria-expanded="false" data-target="#myModal"
										style="text-align: right;">
										<i class="fa fa-ellipsis-h"></i>
									</button>
									<div class="modal fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: red">부적절한
													콘텐츠로 신고</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: red">팔로우
													취소</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;">게시물로
													이동</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;">퍼가기</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;"
													data-dismiss="modal">취소</button>

											</div>
										</div>
									</div>
									<!-- 모달 끝 -->
								</div>
							</div>


						</div>

					</div>
					<div class="card-body">
						<div class="row">

							<div class="col-sm-3" align="center" style="padding-left: 20px">
								<img class="effect"
									src="<c:url value="/resources/img/friends/pic1.jpg"/>"
									alt="Image">
							</div>
							<div class="col-sm-9">

								<div class="row" style="height: 30px">
									<h4 class="card-title"
										style="color: black; font-weight: bold; padding-left: 20px">조커(Joker)</h4>

									<h4 style="padding-left: 350px">
										<span class="badge badge-pill badge-danger"
											style="text-align: center;">★4.5</span>
									</h4>

								</div>



								<!-- 중간줄 -->
								<hr class="my-3">


								<p class="card-text" style="color: black;">조커를 봤다. 너무 재밌었다.
									너무 재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다 더하기 재밌었고, 너무 재밌어서 너무 재밌을
									뻔했다. 너무 재밌는 영화였다.</p>
								<h6
									style="text-align: center; text-decoration: underline; padding-bottom: 10px">
									<a href="">+더보기</a>
								</h6>

								<div style="padding-left: 30px" class="row">
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#조커</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#재밌음</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#요즘추천영화</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#스릴러</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#어두운영화</span>
									</h6>
									<h6>
										<span class="badge badge-secondary">#호아킨피닉스</span>
									</h6>
								</div>



							</div>
							<!-- sm-9 -->

						</div>

						<div class="text-muted h7 mb-2" style="padding-top: 20px">
							<i class="fa fa-clock-o"
								style="padding-bottom: 10px; padding-left: 5px"></i>10분 전
							<div class="row">

								<h6 style="padding-left: 20px">좋아요 788개</h6>
								<h6 style="padding-left: 20px">댓글 599개</h6>
							</div>

						</div>
					</div>
					<div class="card-footer">
						<a href="#" class="card-link"><i class="fa fa-gittip"></i> 좋아요</a>
						<a href="#" class="card-link"><i class="fa fa-comment"></i> 댓글</a>
						<div class="input-group" style="padding-top: 10px">
							<input type="text" class="form-control col-sm-12"
								placeholder="댓글 달기.." aria-describedby="basic-addon2">
							<button type="button" class="btn btn-secondary disabled"
								style="padding-left: 10px">게시</button>

						</div>

					</div>
				</div>
				<!-- Post /////-->
				<!-- 게시물 간격 주기 -->
				<div style="padding-bottom: 50px"></div>


				<!--- \\\\\\\Post-->
				<div class="card gedf-card">
					<div class="card-header">
						<div class="d-flex justify-content-between align-items-center">
							<div class="d-flex justify-content-between align-items-center">
								<div class="mr-2">
									<img class="rounded-circle" width="45"
										src="https://picsum.photos/50/50" alt="">
								</div>
								<div class="ml-2" style="padding-right: 570px">
									<div class="h5 m-0" style="color: black;">@_mongjiee</div>
									<div class="h7 text-muted">안양 CGV</div>
								</div>


								<!-- 모달 띄우기 -->
								<div style="text-align: right;">
									<button class="btn btn-link dropdown-toggle" type="button"
										id="gedf-drop1" data-toggle="modal" aria-haspopup="true"
										aria-expanded="false" data-target="#myModal"
										style="text-align: right;">
										<i class="fa fa-ellipsis-h"></i>
									</button>
									<div class="modal fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: red">부적절한
													콘텐츠로 신고</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: red">팔로우
													취소</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;">게시물로
													이동</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;">퍼가기</button>
												<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;"
													data-dismiss="modal">취소</button>

											</div>
										</div>
									</div>
									<!-- 모달 끝 -->
								</div>
							</div>


						</div>

					</div>
					<div class="card-body">
						<div class="row">

							<div class="col-sm-3" align="center" style="padding-left: 20px">
								<img class="effect"
									src="<c:url value="/resources/img/friends/pic1.jpg"/>"
									alt="Image">
							</div>
							<div class="col-sm-9">

								<div class="row" style="height: 30px">
									<h4 class="card-title"
										style="color: black; font-weight: bold; padding-left: 20px">조커(Joker)</h4>

									<h4 style="padding-left: 350px">
										<span class="badge badge-pill badge-danger"
											style="text-align: center;">★4.5</span>
									</h4>

								</div>



								<!-- 중간줄 -->
								<hr class="my-3">


								<p class="card-text" style="color: black;">조커를 봤다. 너무 재밌었다.
									너무 재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다. 조커를 봤다. 너무 재밌었다. 너무
									재밌었고, 너무 재밌어서 너무 재밌을 뻔했다. 너무 재밌는 영화였다 더하기 재밌었고, 너무 재밌어서 너무 재밌을
									뻔했다. 너무 재밌는 영화였다.</p>
								<h6
									style="text-align: center; text-decoration: underline; padding-bottom: 10px">
									<a href="">+더보기</a>
								</h6>

								<div style="padding-left: 30px" class="row">
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#조커</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#재밌음</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#요즘추천영화</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#스릴러</span>
									</h6>
									<h6 style="padding-right: 10px">
										<span class="badge badge-secondary">#어두운영화</span>
									</h6>
									<h6>
										<span class="badge badge-secondary">#호아킨피닉스</span>
									</h6>
								</div>



							</div>
							<!-- sm-9 -->

						</div>

						<div class="text-muted h7 mb-2" style="padding-top: 20px">
							<i class="fa fa-clock-o"
								style="padding-bottom: 10px; padding-left: 5px"></i>10분 전
							<div class="row">

								<h6 style="padding-left: 20px">좋아요 788개</h6>
								<h6 style="padding-left: 20px">댓글 599개</h6>
							</div>

						</div>
					</div>
					<div class="card-footer">
						<a href="#" class="card-link"><i class="fa fa-gittip"></i> 좋아요</a>
						<a href="#" class="card-link"><i class="fa fa-comment"></i> 댓글</a>
						<div class="input-group" style="padding-top: 10px">
							<input type="text" class="form-control col-sm-12"
								placeholder="댓글 달기.." aria-describedby="basic-addon2">
							<button type="button" class="btn btn-secondary disabled"
								style="padding-left: 10px">게시</button>

						</div>

					</div>
				</div>
				<!-- Post /////-->
			</div>






			<div class="col-md-3">
				<!-- 마이 프로필보이기 -->



				<div class="row" style="padding-bottom: 50px">
					<h5></h5>

					<div style="padding-right: 10px">
						<img class="radiusImg" alt="프사진"
							src="<c:url value='/resources/img/friends/oubin.png'/>" />
					</div>
					<div style="padding-right: 15px">
						<span class="actorSpan" style="font-size: 1.4em; color: black;">Road_dong</span>
						<h6 class="actorSpan" style="font-size: 0.8em; color: black;">우빈이</h6>

					</div>

					<div style="padding-top: 10px">

						<button type="button" class="btn btn-primary"
							style="width: 80px; height: 35px"
							onclick="location.href='<c:url value="/Movieing/Blog/WritePage.mov"/>'">글쓰기</button>

					</div>

				</div>




				<!-- 버튼: 시간순/인기순 -->



				<div style="padding-bottom: 50px">
					<select class="form-control" style="width: 130px">
						<option>시간 순</option>
						<option>좋아요 순</option>
						<option>댓글 순</option>

					</select>
				</div>



				<div class="card">

					<div class="card-body">
						<div class="h5">@Road_dong</div>
						<div class="h7 text-muted">우빈이</div>
						<div class="h7">스릴러를 좋아하는 우빈이라고 합니다</div>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="h6 text-muted">Followers</div>
							<div class="h5">325</div>
						</li>
						<li class="list-group-item">
							<div class="h6 text-muted">Following</div>
							<div class="h5">278</div>
						</li>
					</ul>
				</div>






				<div style="padding-bottom: 50px"></div>

				<!-- 타임라인 -->

				<div class="card gedf-card">

					<div class="card bg-light text-dark">
						<div class="card-body">
							<div class="row" style="padding-left: 10px; height: 15px">
								<img
									src="<c:url value='/resources/img/friends/passage-of-time.png'/>"
									alt="타임라인 로고" style="width: 25px; height: 25px" />
								<h6 class="card-title;"
									style="padding-left: 5px; font-weight: bold; padding-right: 40px">타임
									라인</h6>
								<a style="text-decoration: underline;"
									href="<c:url value='/Movieing/Blog/MF_Timeline.mov'/>">모두
									보기</a>

							</div>





							<div>
								<!-- 중간줄 -->
								<hr class="my-3">
							</div>

							<!-- 팔로우 프사 보이기(시간순) -->
							<div>


								<!-- 제일큰 바디 다이브 -->
								<div
									style="overflow: auto; overflow-x: hidden; width: 220px; height: 300px;">

									<!-- 한 사람 시작 -->
									<div class="row profileForm" style="padding-left: 10px">
										<div style="padding-left: 10px">
											<img class="radiusSmallImg" alt="배우사진"
												src="<c:url value='/resources/img/friends/boy.png'/>" />
										</div>
										<div style="padding-left: 10px">
											<span class="timeLineText"
												style="font-size: 1.0em; color: black;">__mongjiee</span>
											<h6 class="actorSpan" style="font-size: 0.5em; color: black;">1시간전</h6>

										</div>

									</div>
									<!-- 한 사람 끝 -->

									<div class="row profileForm" style="padding-left: 10px">
										<div style="padding-left: 10px">
											<img class="radiusSmallImg" alt="배우사진"
												src="<c:url value='/resources/img/friends/boy(1).png'/>" />
										</div>
										<div style="padding-left: 10px">
											<span class="timeLineText"
												style="font-size: 1.0em; color: black;">ohhhhhjy_</span>

											<h6 class="actorSpan" style="font-size: 0.5em; color: black;">2시간전</h6>

										</div>
									</div>

									<div class="row profileForm" style="padding-left: 10px">
										<div style="padding-left: 10px">
											<img class="radiusSmallImg" alt="배우사진"
												src="<c:url value='/resources/img/friends/girl.png'/>" />
										</div>
										<div style="padding-left: 10px">
											<span class="timeLineText"
												style="font-size: 1.0em; color: black;">light_hj</span>
											<h6 class="actorSpan" style="font-size: 0.5em; color: black;">3시간전</h6>

										</div>
									</div>

									<div class="row profileForm" style="padding-left: 10px">
										<div style="padding-left: 10px">
											<img class="radiusSmallImg" alt="배우사진"
												src="<c:url value='/resources/img/friends/man.png'/>" />
										</div>

										<div style="padding-left: 10px">
											<span class="timeLineText"
												style="font-size: 1.0em; color: black;">dragon_stone</span>
											<h6 class="actorSpan" style="font-size: 0.5em; color: black;">4시간전</h6>

										</div>
									</div>

									<div class="row profileForm" style="padding-left: 10px">
										<div style="padding-left: 10px">

											<img class="radiusSmallImg" alt="배우사진"
												src="<c:url value='/resources/img/friends/man(1).png'/>" />
										</div>

										<div style="padding-left: 10px">
											<span class="timeLineText"
												style="font-size: 1.0em; color: black;">ssuminxx_</span>
											<h6 class="actorSpan" style="font-size: 0.5em; color: black;">5시간전</h6>

										</div>
									</div>
								</div>
								<!-- 카드 레이아웃 팔로우 유저보이기 div끝 -->



								<!-- 팔로우 끝 -->

								<!--  
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the ca..fsd.rd'ㄻㄴs content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
							-->

							</div>
							<!-- 제일 큰 바디 다이브끝 -->
						</div>

					</div>

					<!-- 
					<div class="card gedf-card">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="card-link">Card link</a> <a href="#"
								class="card-link">Another link</a>
						</div>
					</div>

-->

				</div>



			</div>
		</div>
	</div>
</div>




