<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<%@ page session="false"%>




<script>
$('.carousel').carousel({
	interval: 2000;
});

</script>
<style>
/* Carousel base class */
.carousel {
	margin-bottom: 4rem;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
	z-index: 10;
	bottom: 3rem;
}

@media ( min-width : 40em) {
	/* Bump up size of carousel content */
	.carousel-caption p {
		margin-bottom: 1.25rem;
		font-size: 1.25rem;
		line-height: 1.4;
	}
	.featurette-heading {
		font-size: 50px;
	}
}

@media ( min-width : 62em) {
	.featurette-heading {
		margin-top: 7rem;
	}
}
/*비디오*/
.video-fluid {
	width: 100%;
	height: auto;
}

/*별점*/
.checked {
	color: orange;
}

/* 평론가*/
.social-card-header {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-pack: center;
	justify-content: center;
	height: 96px;
}

.social-card-header i {
	font-size: 32px;
	color: #FFF;
}

.bg-facebook {
	background-color: #3b5998;
}

.text-facebook {
	color: #3b5998;
}

.bg-google-plus {
	background-color: #dd4b39;
}

.text-google-plus {
	color: #dd4b39;
}

.bg-twitter {
	background-color: #1da1f2;
}

.text-twitter {
	color: #1da1f2;
}

.bg-pinterest {
	background-color: #bd081c;
}

.text-pinterest {
	color: #bd081c;
}

.share:hover {
	text-decoration: none;
	opacity: 0.8;
}

/*전시회*/
.blog .carousel-indicators {
	left: 0;
	top: auto;
	bottom: -40px;
}

/* The colour of the indicators */
.blog .carousel-indicators li {
	background: #a3a3a3;
	border-radius: 50%;
	width: 8px;
	height: 8px;
}

.blog .carousel-indicators .active {
	background: #707070;
}

/*예고편*/
.video-list-thumbs {
	
}

.video-list-thumbs>li {
	margin-bottom: 12px;
}

.video-list-thumbs>li:last-child {
	
}

.video-list-thumbs>li>a {
	display: block;
	position: relative;
	background-color: #111;
	color: #fff;
	padding: 8px;
	border-radius: 3px transition:all 500ms ease-in-out;
	border-radius: 4px
}

.video-list-thumbs>li>a:hover {
	box-shadow: 0 2px 5px rgba(0, 0, 0, .3);
	text-decoration: none
}

.video-list-thumbs h2 {
	bottom: 0;
	font-size: 14px;
	height: 33px;
	margin: 8px 0 0;
}

.video-list-thumbs .glyphicon-play-circle {
	font-size: 60px;
	opacity: 0.6;
	position: absolute;
	right: 39%;
	top: 31%;
	text-shadow: 0 1px 3px rgba(0, 0, 0, .5);
	transition: all 500ms ease-in-out;
}

.video-list-thumbs>li>a:hover .glyphicon-play-circle {
	color: #fff;
	opacity: 1;
	text-shadow: 0 1px 3px rgba(0, 0, 0, .8);
}

.video-list-thumbs .duration {
	background-color: rgba(0, 0, 0, 0.4);
	border-radius: 2px;
	color: #fff;
	font-size: 11px;
	font-weight: bold;
	left: 12px;
	line-height: 13px;
	padding: 2px 3px 1px;
	position: absolute;
	top: 12px;
	transition: all 500ms ease;
}

.video-list-thumbs>li>a:hover .duration {
	background-color: #000;
}

@media ( min-width :320px) and (max-width: 480px) {
	.video-list-thumbs .glyphicon-play-circle {
		font-size: 35px;
		right: 36%;
		top: 27%;
	}
	.video-list-thumbs h2 {
		bottom: 0;
		font-size: 12px;
		height: 22px;
		margin: 8px 0 0;
	}
}

/*카드*/
/* 배우감독이름 스팬 */
.actorSpan {
	font-size: 1.2em;
	font-weight: bold;
	line-height: 55px;
}

/* 필모그램 스팬 */
.filmoSpan {
	line-height: 65px;
}

/* 원형이미지들 */
.radiusImg {
	width: 55px;
	height: 55px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}

/*새로넣거*/

/* remove defaults from responsive cols */
.nopadding {
	padding: 2px !important;
	margin: 0 !important;
	outline: 2px solid #333;
	background: #333;
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


/*배너위치*/
#floatMenu {
	position: absolute;
	left: 300px;
	top: 200px;
}

/*배너 안 디자인*/
.left, .right {
	top: 50%;
	float: left;
	transform: translateY(125%);
}

.left {
	background: #337ab7;
	display: inline-block;
	white-space: nowrap;
	width: 50px;
	transition: width .5s;
}

.right {
	background: #fff;
	width: 350px;
	transition: width 1s;
	border-style: solid;
	border-color: #ccc;
	border-width: 1px;
}
/*
.left:hover {
	width: 100px;
}
*/

.item:hover {
	background-color: #222;
}


.left .fas {
	margin: 15px;
	width: 20px;
	color: #fff;
}

i.fas {
	font-size: 17px;
	vertical-align: middle !important;
}

.item {
	height: 50px;
	overflow: hidden;
	color: #fff;
}
</style>


<script>

$(document).ready(function() {
	  $('#rateMe1').mdbRate();
	});
	
/*전시회*/	
//optional
$('#blogCarousel').carousel({
		interval: 5000
});


/*배너*/
$(document).ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

		/* 애니메이션 없이 바로 따라감
		 $("#floatMenu").css('top', newPosition);
		 */

		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);

	}).scroll();

});

$(function(){
$( '#top' ).click( function() {
	$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
	return false;
} );
});

</script>



<body id="page-top">

<!-- 플로팅 배너 ---------------------------------------------------------------->
	<div id="floatMenu">
		<div class="left">
			<div class="item">
				<a href="<c:url value='/Movieing/Blog/BlogMain.mov'/>"><i class="fas fa-home"></i></a><!-- 내 블로그메인으로-->
			</div>
			<div class="item">
				<a href="#followModal" data-toggle="modal" id="followerModal" class="followModal"><i class="fas fa-users"></i></a> <!--  팔로우보기-->
			</div>
			<div class="item">
				<a href="<c:url value='/Movieing/my/Notice.mov'/>"><i class="fas fa-bell" style="padding-left: 2px"></i></a> <!-- 알림 -->
			</div>
			<div class="item">
				<a href="<c:url value='/Movieing/Blog/WritePage.mov'/>"><i class="fas fa-user-edit" style="padding-left: 2px"style="padding-left: 2px"></i></a> <!-- 글쓰기 -->
			</div>
			<div class="item" id="top">
			<a href="#"><i class="fas fa-arrow-circle-up" style="padding-left: 2px"></i></a> 상단으로
			</div>
		</div>

	</div>
	<!-- ----------------------------옆에 리모컨- 끝----------------------------------- -->



	<!-- Header -->
	<header class="masthead" style="padding-top: 100px">
		<div>

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>
				
				
				
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="first-slide" style="width: 100%; height: 860px"
							src="<c:url value='/resources/img/main/movie3.jpg'/>"
							alt="First slide">
						<div class="container-fluid">
							<div class="carousel-caption d-none d-md-block text-left">
								<h1>무빙 최고 인기작</h1>
								<p>조커, 말레피센트, 겨울왕국2, 퍼펙트 게임 등</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">상세보기</a>
								</p>
							</div>
						</div>
					</div>




					<div class="carousel-item">
						<img class="second-slide" style="width: 100%; height: 860px"
							src="<c:url value='/resources/img/main/movie2.jpg'/>"
							alt="Second slide">
						<div class="container-fluid">
							<div class="carousel-caption d-none d-md-block">
								<h1>10월 3주 신작</h1>
								<p>국가부도의 날,항거:유관순 이야기 등</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">상세보기</a>
								</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img class="third-slide" style="width: 100%; height: 860px"
							src="<c:url value='/resources/img/main/movie7.jpg'/>"
							alt="Third slide">
						<div class="container-fluid">
							<div class="carousel-caption d-none d-md-block text-right">
								<h1>으슬으슬 무서운 영화</h1>
								<p>에나벨, 인시디어스 등</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">상세보기</a>
								</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img class="second-slide" style="width: 100%; height: 860px"
							src="<c:url value='/resources/img/main/movie1.jpg'/>"
							alt="Second slide">
						<div class="container-fluid">
							<div class="carousel-caption d-none d-md-block">
								<h1>SF와 감성이 만나면</h1>
								<p>차가운 가슴이 전하는 따듯한 울림</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">상세보기</a>
								</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img class="third-slide" style="width: 100%; height: 860px"
							src="<c:url value='/resources/img/main/movie6.jpg'/>"
							alt="Third slide">
						<div class="container-fluid">
							<div class="carousel-caption d-none d-md-block text-right">
								<h1>아이가 보기에 좋은 영화</h1>
								<p>토이스토리, 알라딘 등</p>
								<p>
									<a class="btn btn-lg btn-primary" href="<c:url value='/Movieing/Movie/AllMovie.mov?genre=animation'/>" role="button">상세보기</a>
								</p>
							</div>
						</div>
					</div>



				</div>

			</div>


			<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#myCarousel"
				"
				data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>

		</div>
	</header>
	<!-- 헤더끝 -->


	<!-- ---------------------------------------------------헤더끝--------------------------------------------------------- -->





	<!-- Services -->
	<section class="page-section" id="services"
		style="border-color: #f7f2f5;margin-top: -80px">
		<div class="container">


			<!-- 1행 -->

			<div class="row">
				<div class="col-md-8">
					<h5 style="font-weight: bold;">인기 트레일러</h5>

					<DIV>
						<!--  
						<iframe width="100%" height="400px"
							src="https://www.youtube.com/embed/sXjwpMDrMnY?autoplay=1"
							frameborder="0"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
							-->
						<c:set var="title" value="겨울왕국2"></c:set>
						<c:set var="result" value="[${title }]메인예고편" />
						<iframe id="ytplayer1" type="text/html" width="100%"
							height="400px"
							src="https://www.youtube.com/embed/?listType=search&list='${result}'&autoplay=1"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							frameborder="0" allowfullscreen></iframe>
					</DIV>




				</div>

				<!-- 검색어 순위 div -->
				<div>


					<h5 style="font-weight: bold;">상영영화 일간 박스오피스</h5>

					<!--Table-->
					<table id="tablePreview" class="table table-hover table-sm table-borderless"
						style="width: auto; height: 400px;border: 1px solid #444444;border-left: none;border-right: none">
						<!--Table head-->

						<thead style="background-color: black;color: white;font-size: medium;">
							<tr>
								<th>순위</th>
								<th>영화명</th>
								<th style="text-align: center;">누적관객수</th>
							</tr>
						</thead>
						<!--Table head-->
						<!--Table body-->
						<tbody>
							<!-- <tr>
								<th scope="row" style="text-align: center;">1</th>
								<td>말레피센트2</td>
								링크걸기
								<td style="color: gray; text-align: right;">5732559653명</td>

							</tr> -->
							<c:if
								test="${not empty dailyResult.boxOfficeResult.dailyBoxOfficeList }"
								var="result">
								<c:forEach
									items="${dailyResult.boxOfficeResult.dailyBoxOfficeList }"
									var="item">
									<tr>
										<th scope="row" style="text-align: center;"><c:out
												value="${item.rank }" /></th>
										<td><c:out value="${item.movieNm }" /></td>
										<td style="color: gray; text-align: right;"><c:out
												value="${item.audiAcc }" />명</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>

						<!--Table body-->
					</table>
					<label style="color: gray;font-size: small;">영화진흥위원회 자료제공(2019년 12월 03일 기준)</label><!--  -->
					<!--Table-->

				</div>
			</div>
			<!-- row -->
			<!-- 중간줄 -->
			<!-- 여기서부터 오른쪽 -->
			<!--
			<div class=" col-md-4  rightSide"
				style="border-left-width: 1px; border-left-style: solid; border-left-color: #a8a5a5">




			</div>
  -->


			<div>
				<br />
			</div>



			<!-- 2행 -->
			<div>
				<!-- <div class="col-xl-12">
					<h5 style="font-weight: bold;">할인 영화</h5>
				</div> -->

				<%-- <div id="carouselSixColumn" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselSixColumn" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselSixColumn" data-slide-to="1"></li>
						<li data-target="#carouselSixColumn" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/1.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">애드 아스드라</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/2.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">쿵푸보이</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/3.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">우리집</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/4.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title" style="font-size: small;">잃어버린
												세계를 찾아서</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/5.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">47미터2</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/6.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">마리아칼라스</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/1.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">애드 아스드라</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/2.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">쿵푸보이</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/3.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">우리집</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/4.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title" style="font-size: small;">잃어버린
												세계를 찾아서</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/5.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">47미터2</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/6.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">마리아칼라스</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/1.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">애드 아스드라</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/2.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">쿵푸보이</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/3.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">우리집</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/4.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title" style="font-size: small;">잃어버린
												세계를 찾아서</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/5.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">47미터2</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/6.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">마리아칼라스</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselSixColumn"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselSixColumn"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>




					<!-- 2행 div끝 -->
				</d iv>--%>

				<div>
					<!-- 3행 div시작 ------------------------------------>
				
						<h5 style="font-weight: bold;">무비 블로그 인기 글</h5>
					<!-- Card group -->
					<div class="card-group">
						
						<c:forEach items="${bestReviewList }" var="review" begin="0" end="2" varStatus="status">
							<!-- Card -->
							<div class="card mb-4">
								<!-- Card image -->
								<div class="view overlay d-flex justify-content-center py-2">
									<img class="card-img-top"
										src="${review.movieImg }"
										alt="Card image cap" style="width: 320px; height: 420px">
									<a href="#!">
										<div class="mask rgba-white-slight"></div>
									</a>
								</div>
								<!-- Card content -->
								<div class="card-body">
	
									<!-- Title -->
									<h4 class="card-title">
										<!-- <div style="align-content: right;">
											<span class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
										</div> -->
									</h4>
									<!-- Text -->
									<p class="card-text">${review.reviewContent }</p>
									<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
									<div class="row actorForm">
										<div class="col-sm-3">
											<img class="radiusImg" alt="감독사진"
												src="${review.userProfile }" />
										</div>
										<div class="col-sm-9">
											<span class="actorSpan">${review.userNick }</span>
										</div>
									</div>
								</div>
								<!-- Card content -->
							</div>
							<!-- Card -->
							<div style="padding-left: 20px"></div>
						</c:forEach>
					</div>
					<!-- Card group -->

					<!--  
				<div class="col-md-6">
				-->



				</div>


				<%-- <div style="padding-top: 60px"></div>
				<div>
					<h5 style="font-weight: bold;">평론가 인기글</h5>


					<div class="card flex-md-row mb-4 shadow-sm h-md-250">
						<div class="card-body d-flex flex-column align-items-start">
							<strong class="d-inline-block mb-2 text-primary">오지윤 평론가</strong>
							<h6 class="mb-0">
								<a class="text-dark" href="#" style="font-weight: bold;">영화
									알라딘은 동심을 자극하는 따뜻한 영화이다.</a>
							</h6>
							<div class="mb-1 text-muted small">10월 24일</div>
							<br />

							<p class="card-text mb-auto">
								내 마음속에 지니가 살아 숨쉬고 있다.<br />오지윤의 지는 지니의 지다.아라비안 나이트는 내 인생노래다 .<br />
								12월 6일이 된다면, 나도 지니처럼 자유의 몸이 되겠지 내 마음속에 지니가 살아 숨쉬고 있다.<br />
							</p>
							<br /> <a class="btn btn-outline-primary btn-sm" role="button"
								href="http://www.jquery2dotnet.com/">자세히 읽기</a>
						</div>
						<img class="card-img-right flex-auto d-none d-lg-block"
							alt="Thumbnail [200x250]"
							src="<c:url value='/resources/img/main/alra.jpg'/>"
							class="profile-avatar" style="width: 300px; height: 320px;">
					</div>




				</div> --%>

				<!-- 4행시작 -->
				<div style="padding-top: 60px"></div>
				<div class="row blog">
				<div  style="padding-left:15px"></div>
					<h5 style="font-weight: bold;">영화제</h5>
					<div class="col-md-12">
						<div id="blogCarousel" class="carousel slide" data-ride="carousel">

							<ol class="carousel-indicators">
								<li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#blogCarousel" data-slide-to="1"></li>
							</ol>

							<!-- Carousel items -->
							<div class="carousel-inner">

								<div class="carousel-item active">
									<div class="row">
										<div class="col-md-3">
											<a href="<c:url value='/Movieing/News/Exhibition.mov'/>"> <img
												src="<c:url value='/resources/img/main/jun1.PNG'/>"
												alt="Image" style="max-width: 100%;">
											</a>
										</div>
										<div class="col-md-3">
											<a href="<c:url value='/Movieing/News/Exhibition.mov'/>"> <img
												src="<c:url value='/resources/img/main/jun2.PNG'/>"
												alt="Image" style="max-width: 100%;">
											</a>
										</div>
										<div class="col-md-3">
											<a href="<c:url value='/Movieing/News/Exhibition.mov'/>"> <img
												src="<c:url value='/resources/img/main/jun3.PNG'/>"
												alt="Image" style="max-width: 100%;">
											</a>
										</div>
										<div class="col-md-3">
											<a href="<c:url value='/Movieing/News/Exhibition.mov'/>"> <img
												src="<c:url value='/resources/img/main/jun4.PNG'/>"
												alt="Image" style="max-width: 100%;">
											</a>
										</div>
									</div>
									<!--.row-->
								</div>
								<!--.item-->


								<div class="carousel-item">
									<div class="row">
										<div class="col-md-3">
											<a href="<c:url value='/Movieing/News/Exhibition.mov'/>"> <img
												src="<c:url value='/resources/img/main/jun1.PNG'/>"
												alt="Image" style="max-width: 100%;">
											</a>
										</div>
										<div class="col-md-3">
											<a href="<c:url value='/Movieing/News/Exhibition.mov'/>"> <img
												src="<c:url value='/resources/img/main/jun2.PNG'/>"
												alt="Image" style="max-width: 100%;">
											</a>
										</div>
										<div class="col-md-3">
											<a href="<c:url value='/Movieing/News/Exhibition.mov'/>"> <img
												src="<c:url value='/resources/img/main/jun3.PNG'/>"
												alt="Image" style="max-width: 100%;">
											</a>
										</div>
										<div class="col-md-3">
											<a href="<c:url value='/Movieing/News/Exhibition.mov'/>"> <img
												src="<c:url value='/resources/img/main/jun4.PNG'/>"
												alt="Image" style="max-width: 100%;">
											</a>
										</div>
									</div>
									<!--.row-->
								</div>
								<!--.item-->

							</div>
							<!--.carousel-inner-->
						</div>
						<!--.Carousel-->

					</div>
				</div>
				<!-- 4행 끝 -->



				<div style="padding-top: 60px"></div>


				<!-- 5행 시작 -->
				<h5 style="font-weight: bold;">최신 예고편</h5>




				<ul class="list-unstyled video-list-thumbs row">
					<li class="col-lg-3 col-sm-4 col-xs-6">
							<iframe id="ytplayer1" type="text/html" width="100%"
							height="100%"
							src="https://www.youtube.com/embed/?listType=search&list=감쪽같은그녀메인&autoplay=1"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							frameborder="0" allowfullscreen></iframe>
					</li>
					<li class="col-lg-3 col-sm-4 col-xs-6">
							<iframe id="ytplayer1" type="text/html" width="100%"
							height="100%"
							src="https://www.youtube.com/embed/?listType=search&list=굿라이어&autoplay=1"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							frameborder="0" allowfullscreen></iframe>
					</li>
					<li class="col-lg-3 col-sm-4 col-xs-6">
							<iframe id="ytplayer1" type="text/html" width="100%"
							height="100%"
							src="https://www.youtube.com/embed/?listType=search&list=라스트크리스마스 메인&autoplay=1"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							frameborder="0" allowfullscreen></iframe>
					</li>
					<li class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
							<iframe id="ytplayer1" type="text/html" width="100%"
							height="100%"
							src="https://www.youtube.com/embed/?listType=search&list=백두산 메인&autoplay=1"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							frameborder="0" allowfullscreen></iframe>
					</li>
				</ul>















				<%-- <ul class="list-unstyled video-list-thumbs row">
					<li class="col-lg-3 col-sm-4 col-xs-6"><a href="<c:url value='/Movieing/Movie/MovieDetailsTest.mov'/>"
						title="터미네이터 : 다크페이트">
							<img src="<c:url value='/resources/img/main/pre1.PNG'/>"
							alt="Barca" class="img-responsive" width="240px"  height="167px" />
							<h2>감쪽같은 그녀</h2> <span
							class="glyphicon glyphicon-play-circle"></span> <span
							class="duration">03:15</span>
							
							
					</a></li>
					<li class="col-lg-3 col-sm-4 col-xs-6"><a href="<c:url value='/Movieing/Movie/MovieDetailsTest.mov'/>"
						title="날씨의 아이">
								<img src="<c:url value='/resources/img/main/pre1.PNG'/>"
							alt="Barca" class="img-responsive" width="240px"  height="167px" />
							<h2>날씨의 아이</h2> <span class="glyphicon glyphicon-play-circle"></span>
							<span class="duration">03:15</span>
					</a></li>
					<li class="col-lg-3 col-sm-4 col-xs-6"><a href="<c:url value='/Movieing/Movie/MovieDetailsTest.mov'/>"
						title="우먼 헐리우드">
								<img src="<c:url value='/resources/img/main/pre1.PNG'/>"
							alt="Barca" class="img-responsive" width="240px"  height="167px" />
							<h2>우먼 헐리우드</h2> <span class="glyphicon glyphicon-play-circle"></span>
							<span class="duration">03:15</span>
					</a></li>
					<li class="col-lg-3 col-md-4 col-sm-4 col-xs-6"><a href="<c:url value='/Movieing/Movie/MovieDetailsTest.mov'/>"
						title="니나 내나">
								<img src="<c:url value='/resources/img/main/pre1.PNG'/>"
							alt="Barca" class="img-responsive" width="240px"  height="167px" />
							<h2>니나 내나</h2> <span class="glyphicon glyphicon-play-circle"></span>
							<span class="duration">03:15</span>
					</a></li>
				</ul> --%>




			</div>




			<!-- container끝 -->
	</section>
<!-- 모달시작 -->
<div class="modal" id="followModal">

	<div class="modal-dialog" role="document">

		<div class="modal-content" style="padding-bottom: 20px; width: 380px">
			<!-- 모달 클로즈 버튼 -->
			<div align="right" style="padding: 10px">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>


			<!-- 모달 헤더 -->
			<ul class="nav nav-pills nav-justified " role="tablist" style="">
				<li class="nav-item"><a class="nav-link " href="#follower"
					data-toggle="pill" aria-controls="pills-follower"
					id="pills-follower-tab">팔로워</a></li>
				<li class="nav-item"><a class="nav-link" href="#following"
					data-toggle="pill" aria-controls="pills-following"
					id="pills-following-tab">팔로잉</a></li>
			</ul>

			<!-- 모달컨텐츠 -->
			<div class="tab-content " id="myTabContent"
				style="height: 477px; overflow-y: scroll; overflow-x: hidden; background-color: #f2f0f0; padding-top: 20px">

				<!-- 모달컨텐츠1.팔로워 -->
				<div class="tab-pane fade " id="follower" role="tabpanel"
					aria-labelledby="pills-follower-tab">
					<c:if test="${empty followerList }" var="isEmpty">
						<h5>아직 팔로워가 없어요</h5>
					</c:if>
					<c:if test="${!isEmpty }">
						<c:forEach items="${followerList }" var="user" varStatus="status">
							<div class="row followForm">
								<div class="col-sm-4">
									<img class="radiusImg" alt="팔로워사진"
										src="${user.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png': user.userProfile}" />
								</div>
								<div class="col-sm-5">
									<a
										href="<c:url value='/Movieing/Blog/BlogMain.mov?userNick=${user.userNick }'/>"><span
										class="actorSpan">${user.userNick }</span> </a>
								</div>

								<!-- 스위치 : 스위치의 input-id와 label-for값이 같아야 스위치가 작동한다-->
								<div class="custom-control custom-switch col-sm-3">
									<c:if test="${user.isFollow }" var="isFollow">
										<input type="checkbox" class="custom-control-input"
											id="aSwitch${status.index }" checked="checked">
									</c:if>
									<c:if test="${!isFollow }">
										<input type="checkbox" class="custom-control-input"
											id="aSwitch${status.index }">
									</c:if>

									<label class="custom-control-label"
										for="aSwitch${status.index }" style=""></label>
								</div>

							</div>
							<hr class="my-3" style="width: 450px">
						</c:forEach>
					</c:if>
				</div>

				<!-- 모달컨텐츠2:팔로잉 -->
				<div class="tab-pane fade" id="following" role="tabpanel"
					aria-labelledby="pills-following-tab">
					<c:if test="${empty followingList }" var="isEmpty">
						<h5>아직 팔로잉한 친구들이 없어요</h5>
					</c:if>
					<c:if test="${!isEmpty }">
						<c:forEach items="${followingList }" var="user" varStatus="status">
							<div class="row followForm">
								<div class="col-sm-4">
									<img class="radiusImg" alt="팔로잉사진"
										src="${user.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png': user.userProfile}" />
								</div>
								<div class="col-sm-5">
									<a
										href="<c:url value='/Movieing/Blog/BlogMain.mov?userNick=${user.userNick }'/>"><span
										class="actorSpan">${user.userNick }</span> </a>
								</div>

								<!-- 스위치 -->
								<div class="custom-control custom-switch col-sm-3">
									<input type="checkbox" class="custom-control-input"
										id="bSwitch${status.index }" checked="checked"> <label
										class="custom-control-label" for="bSwitch${status.index }"
										style=""></label>
								</div>

							</div>
							<hr class="my-3" style="width: 450px">
						</c:forEach>
					</c:if>
				</div>
			</div>

		</div>
	</div>
</div>

<!-- 모달끝 -->






	<script type="text/javascript">
		function btnChange() {
			var btn = document.getElementsByClassName('btn btn-outline-light');

		}
		$('.btn-outline-light').click(function() {
			$(this).toggleClass('btn-light');
			$(this).toggleClass('btn-outline-light');
		});

		//$('.btn-light').click(function() {
		//	$(this).attr('class', 'btn btn-outline-light');
		//});
	</script>



</body>

</html>
