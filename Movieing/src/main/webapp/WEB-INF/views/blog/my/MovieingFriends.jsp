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

<link href="<c:url value='/resources/css/friendsLayout.css'/>"
	rel="stylesheet" type="text/css">




<!------ Include the above in your HEAD tag ---------->


<link href="https://fonts.googleapis.com/css?family=Rokkitt"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<style>
body {
	padding-top: 100px;
}

nav {
	width: 100%;
	height: 100px
}

.movieImage {
	width: 120px;
	height: 180px;
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

/* 배우감독이름 스팬 */
.actorSpan {
	font-size: 1.2em;
	font-weight: bold;
}

.actorForm {
	padding-bottom: 10px;
}

/*스크롤바*/
.wrap {
	width: 300px;
	height: 100px;
	display: inline;
	overflow-y: scroll;
}
</style>


<!-- ==============================================
	    Hero
	    =============================================== -->




<div class="container">

	<div class="row" style="padding-top: 20px">

		<div>
			<button type="button" class="btn btn-secondary">◁ 블로그 메인</button>
			<!-- 탑바 (선택2개)-링크로 넘어가기 -->

			<ul class="nav nav-tabs">

				<li class="nav-item" style="width: 665px; text-align: center;">
					<a class="nav-link" data-toggle="tab" href="#home">팔로우 유저들의
						활동로그 </a>
				</li>
				<li class="nav-item" style="width: 380px; text-align: center;">
					<a class="nav-link active" data-toggle="tab" href="#profile">모든
						활동 로그</a>
				</li>
			</ul>
		</div>
		<!-- 위에 줄긋기 -->

		<div
			style="border-bottom-width: 1px; border-bottom-style: solid; border-left-color: #a8a5a5"></div>



		<!-- 팔로우 유저들의 활동로그 -->
		<div class="col-sm-7 blog-main">
			<section class="hero">
				<div class="container">
					<div class="row">

						<div class="col-lg-10 offset-lg-1">

							<div class="cardbox shadow-lg bg-white">

								<div class="cardbox-heading">
									<!-- START dropdown-->
									<div class="dropdown float-right">
										<button class="btn btn-flat btn-flat-icon" type="button"
											data-toggle="dropdown" aria-expanded="false">
											<em class="fa fa-ellipsis-h"></em>
										</button>
										<div class="dropdown-menu dropdown-scale dropdown-menu-right"
											role="menu"
											style="position: absolute; transform: translate3d(-136px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
											<a class="dropdown-item" href="#">Hide post</a> <a
												class="dropdown-item" href="#">Stop following</a> <a
												class="dropdown-item" href="#">Report</a>
										</div>
									</div>
									<!--/ dropdown -->
									<div class="media m-0">
										<div class="d-flex mr-3">
											<a href=""><img class="img-fluid rounded-circle"
												src="http://www.themashabrand.com/templates/bootsnipp/post/assets/img/users/4.jpg"
												alt="User"></a>
										</div>
										<div class="media-body">
											<p class="m-0">__mongjiee</p>
											<small><span><i class="icon ion-md-pin"></i>
													Anyang, South Korea</span></small> <small><span><i
													class="icon ion-md-time"></i> 10 시간 전</span></small>
										</div>
									</div>
									<!--/ media -->
								</div>
								<!--/ cardbox-heading -->

								<div class="card-body">
									<div class="row">

										<div class="col-sm-3" align="center">
											<img class="img-fluid"
												src="<c:url value="/resources/img/friends/pic1.jpg"/>"
												alt="Image"
												style="padding-left: 1.2em; width: 250px; height: 100px">
										</div>
										<div class="col-sm-9">
											<h4 class="card-title">조커(Joker)</h4>
											<span class="badge badge-pill badge-danger">★4.5</span>
											<p class="card-text">조커를 봤다. 너무 재밌었다. 너무 재밌었고, 너무 재밌어서 너무
												재밌을 뻔했다. 너무 재밌는 영화였다.</p>
										</div>
									</div>
								</div>
								<!--/ cardbox-item -->
								<div class="cardbox-base">
									<ul class="float-right">
										<li><a><i class="fa fa-comments"></i></a></li>
										<li><a><em class="mr-5">12</em></a></li>
										<li><a><i class="fa fa-share-alt"></i></a></li>
										<li><a><em class="mr-3">03</em></a></li>
									</ul>
									<ul>
										<li><a><i class="fa fa-thumbs-up"></i></a></li>
										<li><a href="#"><img
												src="http://www.themashabrand.com/templates/bootsnipp/post/assets/img/users/3.jpeg"
												class="img-fluid rounded-circle" alt="User"></a></li>
										<li><a href="#"><img
												src="http://www.themashabrand.com/templates/bootsnipp/post/assets/img/users/1.jpg"
												class="img-fluid rounded-circle" alt="User"></a></li>
										<li><a href="#"><img
												src="http://www.themashabrand.com/templates/bootsnipp/post/assets/img/users/5.jpg"
												class="img-fluid rounded-circle" alt="User"></a></li>
										<li><a href="#"><img
												src="http://www.themashabrand.com/templates/bootsnipp/post/assets/img/users/2.jpg"
												class="img-fluid rounded-circle" alt="User"></a></li>
										<li><a><span>좋아요 242개</span></a></li>
									</ul>
								</div>
								<!--/ cardbox-base -->
								<div class="cardbox-comments">
									<span class="comment-avatar float-left"> <a href=""><img
											class="rounded-circle"
											src="http://www.themashabrand.com/templates/bootsnipp/post/assets/img/users/6.jpg"
											alt="..."></a>
									</span>
									<div class="search">
										<input placeholder="댓글 달기..." type="text">
										<button>
											<h6>게시</h6>
										</button>
									</div>
									<!--/. Search -->
								</div>
								<!--/ cardbox-like -->

							</div>
							<!--/ cardbox -->

						</div>

					</div>
					<!--/ row -->
				</div>
				<!--/ container -->
			</section>


		</div>
		<!-- 중간 줄 -->
		<div
			style="border-left-width: 1px; border-left-style: solid; border-left-color: #a8a5a5"></div>


		<div class="col-sm-4 col-sm-offset-1 blog-sidebar">

			<div class="sidebar-module sidebar-module-inset"
				style="padding-top: 30px">

				<h5></h5>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="프사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan" style="font-size: 1.5em">Road_dong</span>
						<h6 class="actorSpan" style="font-size: 0.9em">길동이</h6>
					</div>

				</div>


				<!-- 타임라인 -->
				<div style="padding: 10px">
					<h5>타임라인</h5>
					<div class="wrap">
						<div class="col-sm-3">
							<img class="radiusSmallImg" alt="프사진"
								src="<c:url value='/resources/img/friends/boy.png'/>">
						</div>
						<div class="col-sm-6">
							<h6 class="actorSpan" style="font-size: 0.9em">정길동</h6>
						</div>
					</div>

				</div>


				<!-- 여기가 두번째 창안까지 작성 -->
			</div>

		</div>





	</div>

</div>