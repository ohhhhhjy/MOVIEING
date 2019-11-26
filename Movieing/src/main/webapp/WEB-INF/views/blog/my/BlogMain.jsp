<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"> -->



<style>
body {
	padding-top: 125px;
}

.profileImage {
	width: 150px;
	height: 150px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
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
/* 배우감독이름 스팬 */
.actorSpan {
	font-size: 1.2em;
	font-weight: bold;
	line-height: 65px;
	color: black;
}

/* 필모그램 스팬 */
.filmoSpan {
	line-height: 65px;
	font-weight: bold;
}

/* 배우 스팬 */
.actorForm {
	padding-bottom: 20px;
}

/* 장르스팬 */
.genreSpan {
	color: #37C2AD;
	font-weight: bold;
	font-size: 1.2em;
}

/* 스위치스타일 */
.custom-switch {
	align-content: center;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 45px;
}

/* 팔로우팔로잉 평가코멘트갯수 스팬 */
.followSpan {
	font-size: 0.8em;
	color: #a8a5a5
}

.followForm {
	padding-left: 50px;
	padding-right: 30px;
}

/* 선호태그 스팬 */
.mySpan {
	color: #db147b;
}

.tagSpan {
	color: #db147b;
	position: absolute;
	/* font-size: 17px; */
	font-weight: bold;
	/* line-height: 23px; */
	font-style: normal;
	width: 64px;
	text-align: center;
	white-space: nowrap;
	transform-origin: center bottom;
	/* transform: translate(132px, 62px) rotate(0deg);  */
}

/*더보기 ...조건*/
.card-text {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 4; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1 .8em;
	height: 10 .8em;
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

/*새로운*/
/*------------------------------------
  Social color
------------------------------------*/
.text-facebook, .hover-facebook-text:hover i, .hover-facebook a:hover i
	{
	color: #3b5998;
}

.bg-facebook, .btn-facebook {
	background-color: #3b5998;
	color: #fff;
}

.text-twitter, .hover-twitter-text:hover i, .hover-twitter a:hover i {
	color: #00aced;
}

.bg-twitter, .btn-twitter {
	background-color: #00aced;
	color: #fff;
}

.text-instagram, .hover-instagram-text:hover i, .hover-instagram a:hover i
	{
	color: #b300ad;
}

.bg-instagram, .btn-instagram {
	background-color: #b300ad;
	color: #fff;
}

.text-youtube, .hover-youtube-text:hover i, .hover-youtube a:hover i {
	color: #bd0000;
}

.bg-youtube, .btn-youtube {
	background-color: #bd0000;
	color: #fff;
}

.text-gplus, .hover-gplus-text:hover i, .hover-gplus a:hover i {
	color: #eb5e4c;
}

.bg-gplus, .btn-gplus {
	background-color: #eb5e4c;
	color: #fff;
}

.text-vimeo, .hover-vimeo-text:hover i, .hover-vimeo a:hover i {
	color: #35c6ea;
}

.bg-vimeo, .btn-vimeo {
	background-color: #35c6ea;
	color: #fff;
}

.text-envelope, .hover-envelope-text:hover i, .hover-envelope a:hover i
	{
	color: #faa33d;
}

.bg-envelope, .btn-envelope {
	background-color: #faa33d;
	color: #fff;
}

.text-linkedin, .hover-linkedin-text:hover i, .hover-linkedin a:hover i
	{
	color: #6697ff;
}

.bg-linkedin, .btn-linkedin {
	background-color: #6697ff;
	color: #fff;
}

.text-telegram, .hover-telegram-text:hover i, .hover-telegram a:hover i
	{
	color: #30a8dc;
}

.bg-telegram, .btn-telegram {
	background-color: #30a8dc;
	color: #fff;
}

.text-pinterest, .hover-pinterest-text:hover i, .hover-pinterest a:hover i
	{
	color: #bd081b;
}

.bg-pinterest, .btn-pinterest {
	background-color: #bd081b;
	color: #fff;
}

.black a {
	color: #000;
}

.post-content ul {
	color: #474b5f;
}

.white a {
	color: #fff;
}
/*------------------------------------
	Member area
------------------------------------*/
.sidebar-item.active, .sidebar-item:hover {
	background-color: #fff;
	border: 1px solid #e6e7e9;
	border-right: 0;
	margin-right: -1px;
}

.sidebar-menu {
	border-bottom: 1px solid #e6e7e9;
	border-top: 1px solid #e6e7e9;
	border-right: 1px solid #e6e7e9;
	padding-bottom: 1rem;
	padding-top: 1rem;
	background-color: #f4f4f4;
}

.sidebar-item {
	position: relative;
	display: block;
	padding: 0.75rem 1.25rem;
	margin-bottom: 0.5rem;
	border: 1px solid transparent;
}

.sidebar-item.active:hover {
	background-color: #fff;
}

.card .icon-big {
	font-size: 3rem;
}

.card .icon-big .notif {
	position: absolute;
	min-width: 25px;
	border-radius: 5rem;
	font-size: 1rem;
	background: #dc3545;
	color: #fff;
}

.card .numbers {
	text-align: right;
}

.card .numbers p {
	font-size: 1rem;
	margin: 0;
}

.card .footer {
	padding: 0;
	line-height: 30px;
}

.side-notif {
	padding-left: 7px;
	padding-right: 7px;
	font-size: 0.8rem;
	border-radius: 5rem;
	background-color: #dc3545;
	color: #fff;
}

.statistics li {
	padding: 0.25rem 0;
}

.member-item:hover .card {
	background-color: #f4f4f4;
}

.table-striped tbody tr:nth-of-type(odd) {
	background-color: #f4f4f4;
}

@media ( max-width : 767.98px) {
	.sidebar-item.active, .sidebar-item:hover {
		border-right: 1px solid #e6e7e9;
		margin-left: 0.25rem;
		margin-right: 0.25rem;
	}
}
</style>



<!-- css파일 -->
<%-- <link href="<c:url value='/resources/css/blogMainLayout.css'/>"
	rel="stylesheet" type="text/css"> --%>


<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawStuff);
	function drawStuff() {
		console.log();
		var data = new google.visualization.arrayToDataTable([ [ '', '' ],
				[ '1', ${evalue1}], [ '2', ${evalue2}], [ '3', ${evalue3}], [ '4', ${evalue4}], [ '5', ${evalue5}]]);
		/*([ [ '', '' ],
				[ "0", 15 ], [ "", 1 ], [ "1", 12 ], [ "", 10 ], [ '2', 3 ],
				[ '', 20 ], [ '3', 7 ], [ '', 3 ], [ '4', 15 ], [ '', 5 ],
				[ '5', 2 ] ]);*/

		var options = {
			width : 270,
			legend : {
				position : 'none'
			},
			bar : {
				groupWidth : "90%"
			}
		};
		var chart = new google.charts.Bar(document.getElementById('chart'));
		// Convert the Classic options to Material options...
		chart.draw(data, google.charts.Bar.convertOptions(options));
	};

	/* a태그 post방식으로 값전달하기 */
	function goPage(page) {
		// name이 paging인 태그
		var f = document.paging;
		// form 태그의 하위 태그 값 매개 변수로 대입
		f.page.value = page;
		// input태그의 값들을 전송하는 주소
		f.action = "/movieing/Movieing/Blog/MyActivity.mov"
		// 전송 방식 : post
		f.method = "post"
		f.submit();
	};
	

	$(function(){
	var reviewNo ="";
	$('#deleteModal').on('show.bs.modal', function (e) { 
		reviewNo = $(e.relatedTarget).data('notifyid'); 
		console.log('잘들어오나');
		$('#deleteBtn').click(function(){
			$.ajax({
						url:"<c:url value='/Movieing/Blog/reviewRemove.mov'/>",
						type:'post',
						data:
						{reviewNo:reviewNo},
						beforeSend : function(xhr)
		            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		            },
						success:function(){//서버로 부터 정상적인 응답을 받았을 때(200번)
							location.reload();
						},	
						error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
							console.log("에러:"+data);
						}
			});
		});
		
		
		});
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



<div class="container">
	<!-- 플로팅 배너 ---------------------------------------------------------------->
	<div id="floatMenu">
		<div class="left">
			<div class="item">
				<a href="<c:url value='/Movieing/Blog/BlogMain.mov'/>"><i
					class="fas fa-home"></i></a>
				<!-- 내 블로그메인으로-->
			</div>
			<div class="item">
				<a href="#followModal" data-toggle="modal" id="followerModal"
					class="followModal"><i class="fas fa-users"></i></a>
				<!--  팔로우보기-->
			</div>
			<div class="item">
				<a href="<c:url value='/Movieing/my/Notice.mov'/>"><i
					class="fas fa-bell" style="padding-left: 2px"></i></a>
				<!-- 알림 -->
			</div>
			<div class="item">
				<a href="<c:url value='/Movieing/Blog/WritePage.mov'/>"><i
					class="fas fa-user-edit" style="padding-left: 2px"
					style="padding-left: 2px"></i></a>
				<!-- 글쓰기 -->
			</div>
			<div class="item" id="top">
				<a href="#"><i class="fas fa-arrow-circle-up"
					style="padding-left: 2px"></i></a> 상단으로
			</div>
		</div>

	</div>
	<!-- ----------------------------옆에 리모컨- 끝----------------------------------- -->


	<div class="row" style="padding-top: 20px">
		<!-- 왼쪽 마이피드 -->
		<div class="col-sm-7 blog-main">
			<!-- 프로필 -->
			<div class="jumbotron">
				<div class="dashboard-area" style="margin-bottom: -50px">
					<div class="row">
						<div class="col-12">
							<div class="mb-3">

								<div class="row">
									<div class="col-12">

										<div class="row">
											<div class="col-md-6 ml-auto mr-auto">
												<div class="span3 well">
													<center>
														<img alt="프로필사진" name="aboutme" width="140" height="140"
															class="profileImage"
															src="${userInfo.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png': userInfo.userProfile}" />

														<h3>${userInfo.userNick}</h3>

														<div class="row">
															<div class="col-md-6">
																<a href="#followModal" data-toggle="modal"
																	id="followerModal" class="followModal"> <span id="followerCount"
																	style="font-weight: bold; font-size: 2.0em; color: black;"
																	class="description">${followerCount }</span>
																</a>

															</div>
															<div class="col-md-6">
																<a href="#followModal" data-toggle="modal"
																	id="followingModal" class="followModal"> <span
																	style="font-weight: bold; font-size: 2.0em; color: black;"
																	class="description">${followingCount }</span></a>

															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<a href="#followModal" data-toggle="modal"
																	id="followerModal" class="followModal"> <span
																	class="heading" style="font-weight: bold; color: gray;">팔로워</span></a>

															</div>
															<div class="col-md-6">
																<a href="#followModal" data-toggle="modal"
																	id="followingModal" class="followModal"> <span
																	class="heading" style="font-weight: bold; color: gray;">팔로잉</span>
																</a>

															</div>
														</div>

													</center>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-12">
							<c:choose>
								<c:when test="${notMe =='y' && followOk =='n'}">
									<!-- 생판모르는 남 -->
									<ul
										class="nav nav-pills mb-3 justify-content-center align-items-center"
										id="pills-tab" role="tablist">
										<li class="nav-item" style="padding-right: 10px"><a
											class="btn btn-danger"
											href="<c:url value='/Movieing/Blog/MovieingFriends.mov'/>">무빙프렌즈</a>
										</li>

										<li class="nav-item"><button class="btn btn-info" id="follow"
											 role="button" >팔로우하기</button></li>
									</ul>
								</c:when>
								<c:when test="${notMe =='y' && followOk =='y'}">
									<!-- 팔로우한 사람-->
									<ul
										class="nav nav-pills mb-3 justify-content-center align-items-center"
										id="pills-tab" role="tablist">
										<li class="nav-item" style="padding-right: 10px"><a
											class="btn btn-danger"
											href="<c:url value='/Movieing/Blog/MovieingFriends.mov'/>">무빙프렌즈</a>
										</li>

										<li class="nav-item"><li class="nav-item"><button class="btn btn-info" id="unfollow"
											 role="button" >팔로우취소</button></li>
									</ul>

								</c:when>
								<c:otherwise>
									<!-- 나-->
									<ul
										class="nav nav-pills mb-3 justify-content-center align-items-center"
										id="pills-tab" role="tablist">
										<li class="nav-item" style="padding-right: 10px"><a
											class="btn btn-danger"
											href="<c:url value='/Movieing/Blog/MovieingFriends.mov'/>">무빙프렌즈</a>
										</li>

									</ul>

								</c:otherwise>
							</c:choose>



							<!-- 자기소개 -->
							<div class="card mb-2 mb-md-5 py-3" style="border-radius: 0.8em">
								<div class="content">
									<div class="row">
										<div
											class="col-12 d-flex justify-content-center align-items-center">
											<span style="font-weight: bold;">"${userInfo.userSelf }"</span>
										</div>


									</div>
								</div>
							</div>




							<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade active show" id="pills-home"
									role="tabpanel" aria-labelledby="pills-home-tab">
									<div class="row">
										<form name="paging">
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}"> <input type="hidden"
												name="page" /> <input type="hidden" name="id" />
										</form>


										<div class="col-lg-4 col-sm-6">
											<a class="member-item" href="javascript:goPage('a');">
												<div class="card mb-2 mb-md-5 py-3"
													style="border-radius: 1.0em">
													<div class="content">
														<div class="row">
															<div
																class="col-6 d-flex justify-content-center align-items-center">
																<div class="icon-big text-warning text-center">
																	<div class="notif">${evalueCount }</div>
																	<i class="fas fa-star" style="font-size: xx-large;"></i>

																</div>
															</div>

															<div
																class="col-6 d-flex justify-content-center align-items-center"
																style="margin-left: -30px">
																<div class="row numbers">

																	<span style="font-weight: bold;">별점 </span>
																	<!--  
																	<span style="font-weight: bold;">${evalueCount }</span>
																	-->
																</div>
															</div>
														</div>
													</div>
												</div>
											</a>
										</div>



										<div class="col-lg-4 col-sm-6">
											<a class="member-item" href="javascript:goPage('b');">
												<div class="card mb-2 mb-md-5 py-3"
													style="border-radius: 1.0em">
													<div class="content">
														<div class="row">
															<div
																class="col-6 d-flex justify-content-center align-items-center">
																<div class="icon-big text-info text-center"
																	title="1 new comment">
																	<div class="notif">${reviewCount }</div>
																	<i class="fas fa-comment" style="font-size: xx-large;"></i>
																</div>
															</div>
															<div
																class="col-6 d-flex justify-content-center align-items-center"
																style="margin-left: -30px">
																<div class="numbers">
																	<span style="font-weight: bold">리뷰 </span>

																</div>
															</div>
														</div>
													</div>
												</div>
											</a>
										</div>
										<div class="col-lg-4 col-sm-6">
											<a class="member-item" href="javascript:goPage('c');">
												<div class="card mb-2 mb-md-5 py-3"
													style="border-radius: 1.0em">
													<div class="content">
														<div class="row">
															<div
																class="col-6 d-flex justify-content-center align-items-center ">
																<div class="icon-big text-danger text-center">
																	<div class="notif">${likeCount }</div>
																	<i class="fas fa-heart" style="font-size: xx-large;"></i>
																</div>
															</div>
															<div
																class="col-6 d-flex justify-content-center align-items-center"
																style="margin-left: -30px">
																<div class="numbers">
																	<span style="font-weight: bold">좋아요 </span>
																</div>
															</div>
														</div>
													</div>
												</div>
											</a>
										</div>
										<div class="col-lg-4 col-sm-6">
											<a class="member-item" href="javascript:goPage('d');">
												<div class="card mb-2 mb-md-5 py-3"
													style="border-radius: 1.0em">
													<div class="content">
														<div class="row">
															<div
																class="col-6 d-flex justify-content-center align-items-center">
																<div class="icon-big text-twitter text-center"
																	title="1 new messages">
																	<div class="notif">${wishCount }</div>
																	<i class="far fa-eye" style="font-size: xx-large;"></i>

																</div>
															</div>
															<div
																class="col-6 d-flex justify-content-center align-items-center"
																style="margin-left: -30px">
																<div class="numbers">
																	<span style="font-weight: bold; font-size: small;">보고싶어요
																	</span>



																</div>
															</div>
														</div>
													</div>
												</div>
											</a>
										</div>
										<c:if test="${notMe =='n' && followOk =='n'}">
											<!-- 나 -->
											<div class="col-lg-4 col-sm-6">
												<a class="member-item"
													href="<c:url value='/Movieing/Blog/WritePage.mov'/>">
													<div class="card mb-2 mb-md-5 py-3"
														style="border-radius: 1.0em">
														<div class="content">
															<div class="row">
																<div
																	class="col-6 d-flex justify-content-center align-items-center">
																	<div class="icon-big text-facebook text-center">
																		<i class="fas fa-pencil-alt"
																			style="font-size: xx-large;"></i>
																	</div>
																</div>
																<div
																	class="col-6 d-flex justify-content-center align-items-center"
																	style="margin-left: -30px">
																	<div class="numbers">
																		<span style="font-weight: bold">글쓰기 </span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</a>
											</div>

											<div class="col-lg-4 col-sm-6">
												<a class="member-item"
													href="<c:url value='/Movieing/Blog/MyPage.mov'/>">
													<div class="card mb-2 mb-md-5 py-3"
														style="border-radius: 1.0em">
														<div class="content">
															<div class="row">
																<div
																	class="col-6 d-flex justify-content-center align-items-center">
																	<div class="icon-big text-success text-center">
																		<i class="far fa-user" style="font-size: xx-large;"></i>
																	</div>
																</div>
																<div
																	class="col-6 d-flex justify-content-center align-items-center"
																	style="margin-left: -30px">
																	<div class="numbers">
																		<span style="font-weight: bold; font-size: small;">마이페이지
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</a>
											</div>

										</c:if>

									</div>
								</div>


							</div>
						</div>
					</div>

				</div>


			</div>
			<!-- </div> -->
			<!-- 피드컨텐츠 시작 -->




			<c:if test="${empty selectList }" var="isEmpty">
				<h5>
					아직 등록한 리뷰가 없어요...<br>리뷰를 등록해보세요
				</h5>
			</c:if>

			<!-- 중간에 한줄 끼워팔기,,, -->
			<c:if test="${!isEmpty }">
				<c:forEach items="${selectList }" var="item" varStatus="status"
					>
					<!-- 2.여러줄컨텐츠(리뷰) -->
					<div class="card border-secondary mb-3" style="max-width: 200rem;">
						<div class="card-header">
							${item.movieTitle }에 리뷰를 남겼어요!&nbsp;&nbsp; <span
								style="color: #a8a5a5; font-size: 0.3em;">
								${reviewPostdate} </span>
							<c:if test="${notMe =='n' && followOk =='n'}">
								<!-- 나 -->
								<button type="button" class="btn btn-outline-danger"
									data-toggle="modal" data-target="#deleteModal"
									style="float: right;"
									data-notifyid="${item.reviewNo }">삭제</button>
								<button type="button" class="btn btn-outline-primary mx-2"
									style="float: right; "
									onclick="location.href='<c:url value="/Movieing/Blog/WritePage_Update.mov?reviewNo=${item.reviewNo }"/>'">수정</button>
								
							</c:if>

							<!-- 삭제모달 -->
							<div class="modal" tabindex="-1" role="dialog" id="deleteModal">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" align="center">
												<i class="far fa-bell"></i> 알림창
											</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<p>리뷰를 삭제하시겠습니까?</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">취소</button>
											<button id="deleteBtn" type="button" class="btn btn-danger"
												data-dismiss="modal">삭제</button>
										</div>
									</div>
								</div>
							</div>

						</div>


						<div class="card-body">
							<div class="row">
								<div class="col-sm-3" align="center">
									<a
										href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${item.movieNo }'/>"><img
										class="movieImage" src="${item.movieImg }" alt="포스터" /></a>
								</div>
								<div class="col-sm-9">


									<a
										href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${item.movieNo }'/>">
										<h4 class="card-title" style="color: black">${item.movieTitle }</h4>
									</a> <span class="badge badge-pill badge-danger">★${item.grade }</span>
									<p class="card-text" style="height: 110px">${item.reviewContent }</p>
									<a href="#"> <span data-toggle="modal"
										data-target="#likeModal${status.index }"
										style="font-weight: bold; color: #db147b; font-size: 0.9em">
											<i class="far fa-thumbs-up"></i>${item.likeCount }
									</span> <!-- 좋아요수- -->

									</a>&nbsp;&nbsp;&nbsp; <a
										href="<c:url value='/Movieing/Movie/MovieReviews.mov?reviewNo=${item.reviewNo }'/>">
										<span
										style="font-weight: bold; color: #db147b; font-size: 0.9em"><i
											class="far fa-comments"></i> ${item.commentCount } </span>
									</a>
									<!-- 댓글수 -->
								</div>
							</div>
						</div>
					</div>
					<!-- </div> -->

				</c:forEach>

				<!-- 1.한줄컨텐츠(보고싶어요,별점,좋아요) -->
				<!-- <div class="card border-secondary mb-3" style="max-width: 50rem;">
					<div class="card-header">
						겟아웃을 보고싶어요에 추가했어요!&nbsp;&nbsp;<span
							style="color: #a8a5a5; font-size: 0.3em">2시간 전</span>
					</div>
				</div>
 -->
				<c:forEach items="${selectList }" var="item" varStatus="status"
					begin="2" end="${selectList.size()-1 }">
					<!-- 2.여러줄컨텐츠(리뷰) -->
					<div class="card border-secondary mb-3" style="max-width: 200rem;">
						<div class="card-header">
							${item.movieTitle }에 리뷰를 남겼어요!&nbsp;&nbsp; <span
								style="color: #a8a5a5; font-size: 0.3em;">
								${reviewPostdate} </span>
								<button type="button" class="btn btn-outline-danger"
									data-toggle="modal" data-target="#deleteModal"
									style="float: right;"
									data-notifyid="${item.reviewNo }">삭제</button>
								<button type="button" class="btn btn-outline-primary mx-2"
									style="float: right; "
									onclick="location.href='<c:url value="/Movieing/Blog/WritePage_Update.mov?reviewNo=${item.reviewNo }"/>'">수정</button>



							<!-- 삭제모달 -->
							<div class="modal" tabindex="-1" role="dialog" id="deleteModal">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" align="center">
												<i class="far fa-bell"></i> 알림창
											</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<p>리뷰를 삭제하시겠습니까?</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">취소</button>
											<button id="deleteBtn" type="button" class="btn btn-danger"
												data-dismiss="modal">삭제</button>
										</div>
									</div>
								</div>
							</div>

						</div>


						<div class="card-body">
							<div class="row">
								<div class="col-sm-3" align="center">
									<a
										href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${item.movieNo }'/>"><img
										class="movieImage" src="${item.movieImg }" alt="포스터" /></a>
								</div>
								<div class="col-sm-9">


									<a
										href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${item.movieNo }'/>">
										<h4 class="card-title" style="color: black">${item.movieTitle }</h4>
									</a> <span class="badge badge-pill badge-danger">★${item.grade }</span>
									<p class="card-text" style="height: 110px">${item.reviewContent }</p>
									<a href="#"> <span data-toggle="modal"
										data-target="#likeModal${status.index }"
										style="font-weight: bold; color: #db147b; font-size: 0.9em">
											<i class="far fa-thumbs-up"></i>${item.likeCount }
									</span> <!-- 좋아요수- -->

									</a>&nbsp;&nbsp;&nbsp; <a
										href="<c:url value='/Movieing/Movie/MovieReviews.mov?reviewNo=${item.reviewNo }'/>">
										<span
										style="font-weight: bold; color: #db147b; font-size: 0.9em"><i
											class="far fa-comments"></i> ${item.commentCount } </span>
									</a>
									<!-- 댓글수 -->
								</div>
							</div>
						</div>
					</div>

				</c:forEach>
			</c:if>



		</div>
		<!-- 왼쪽 마이피드끝-->

		<!-- 가운데 분계선 -->
		<div
			style="border-left-width: 1px; border-left-style: solid; border-left-color: #a8a5a5"></div>

		<!-- 여기서부터 오른쪽 취향분석 시작 -->
		<div class="col-sm-4 col-sm-offset-1 blog-sidebar">

			<div class="sidebar-module sidebar-module-inset"
				style="padding-top: 60px">
				<h3 align="center">${userInfo.userNick}님의 취향은?</h3>
				<p align="right">
					<a
						href="<c:url value='/Movieing/Movie/screening/RatingMovie.mov'/>"
						style="color: #a8a5a5">더 평가하러 가기</a>
				</p>
				<hr class="my-3">
				<p align="center" style="font-size: 1em">무빙과 함께한지 ${signUpDays }일째!</p>
				<hr class="my-3">
				<h5>별점분포</h5>
				<p align="center" style="font-size: 0.8em">
					<!-- <em>별점이 한결같은 소나무 타입</em> -->
				</p>
				<div id="chart"
					style="width: 500px; height: 170px; padding-left: 50px"></div>

				<hr class="my-3">

				<h5>선호태그</h5>
				<div class="card border-secondary mb-3 justify-content-center"
					style="max-width: 200rem; padding-left: 10px">
					<div
						style="color: rgba(0, 0, 0, 1); width: 280px; height: 200px; padding-left: 20px; padding-top: 20px">
						<span
							style="position: absolute; font-size: 17px; line-height: 23px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(98px, 61px) rotate(0deg); font-weight: bold">#${tagList[0]
							}</span> <span
							style="position: absolute; font-size: 17px; line-height: 23px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(160px, 90px) rotate(0deg); font-weight: bold">#${tagList[1]
							}</span> <span
							style="position: absolute; font-size: 17px; line-height: 23px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(80px, 32px) rotate(0deg); font-weight: bold">#${tagList[2]
							}</span> <span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(200px, 43px) rotate(0deg); font-weight: bold">#${tagList[3]
							}</span> <span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(79px, 120px) rotate(0deg); font-weight: bold">#${tagList[4]
							}</span> <span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(180px, 19px) rotate(0deg); font-weight: bold">#${tagList[5]
							}</span> <span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(10px, 10px) rotate(0deg); font-weight: bold">#${tagList[6]
							}</span> <span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(20px, 62px) rotate(0deg); font-weight: bold">#${tagList[7]
							}</span> <span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(27px, 85px) rotate(0deg); font-weight: bold">#${tagList[8]
							}</span>
					</div>
				</div>
				<hr class="my-3">
				<h5>선호배우</h5>
				<c:if test="${notMe == 'n'}" var="me">
					<c:forEach items="${actorList }" var="actor" begin="6" end="8">
						<div class="row actorForm">
							<div class="col-sm-3">
								<img class="radiusImg" alt="배우사진" src="${actor.moviePeopleImg }" />
							</div>
							<div class="col-sm-6">
								<span class="actorSpan">${actor.moviePeopleName }</span>
							</div>
							<div class="col-sm-3">
								<span class="filmoSpan">${actor.moviePeopleCountry }</span>
							</div>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${!me}">
					<!-- 남의 피드 -->
					<c:forEach items="${actorList }" var="actor" begin="30" end="32">
						<div class="row actorForm">
							<div class="col-sm-3">
								<img class="radiusImg" alt="배우사진" src="${actor.moviePeopleImg }" />
							</div>
							<div class="col-sm-6">
								<span class="actorSpan">${actor.moviePeopleName }</span>
							</div>
							<div class="col-sm-3">
								<span class="filmoSpan">${actor.moviePeopleCountry }</span>
							</div>
						</div>
					</c:forEach>
				</c:if>

				<hr class="my-3">
				<h5>선호감독</h5>
				<c:forEach items="${directorList }" var="director" begin="0" end="2"> 
					<div class="row actorForm">
						<div class="col-sm-3">
							<img class="radiusImg" alt="감독사진"
								src="${director.moviePeopleImg }" />
						</div>
						<div class="col-sm-6">
							<span class="actorSpan">${director.moviePeopleName }</span>
						</div>
						<div class="col-sm-3">
							<span class="filmoSpan">${director.count }편</span>
						</div>
					</div>
				</c:forEach>

				<hr class="my-3">
				<h5>선호장르</h5>
				<p align="center" style="font-size: 0.8em">
					<!-- <em>영화에서 주로 반전과 공포를 찾는 사람</em> -->
				</p>
				<div class="row" align="center"
					style="padding-left: 30px; padding-right: 30px">
					<c:forEach items="${genreList }" var="genre">
						<div class="col-md-4">
							<a href="#"><span class="genreSpan">${genre }</span></a>
						</div>
					</c:forEach>
				</div>

				<hr class="my-3">
				<h5>영화감상시간</h5>
				<h6 align="center" style="color: #db147b; font-size: 1.5em">${evalueCount*2 }시간</h6>
				<p align="center" style="font-size: 0.8em">
					<!-- <em>영화를 정말 사랑하시네요!</em> -->
				</p>
			</div>
		</div>
		<!-- /.blog-sidebar -->
	</div>

	<!--div class=row끝 -->

</div>
<!--컨테이너 끝 ---->

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


<script>
	$(function() {
		$('.followModal').click(function() {//내 프로필에서 '팔로우','팔로잉' 각각 클릭시, 모달의 선택상태 세팅해주기.
			if ($(this).get(0).id == 'followerModal') {
				$('#pills-following-tab').removeClass('active');
				$('#pills-follower-tab').addClass('active');
				$('#following').removeClass('show active');
				$('#follower').addClass('show active');
			} else {
				$('#pills-follower-tab').removeClass('active');
				$('#pills-following-tab').addClass('active');
				$('#follower').removeClass('show active');
				$('#following').addClass('show active');
			}
		});
		
		
		$('#follow').click(function(){

			console.log("${userInfo.userNick}");
 			$.ajax({
				url : "<c:url  value='/Movieing/Ajax/Follow.mov?userNick=${userInfo.userNick}'/>",
				success : function() {
					console.log('팔로우 성공');
					$('#follow').text('팔로우취소');
					console.log('${followerCount}');
					${followerCount}
					$('#followerCount').text('${followerCount+1}');
				},
				error : function() {
					
				}

			});
			 
		});
		
		$('#unfollow').click(function(){

			console.log("${userInfo.userNick}");
 			$.ajax({
				url : "<c:url  value='/Movieing/Ajax/UnFollow.mov?userNick=${userInfo.userNick}'/>",
				success : function() {
					console.log('팔로우 취소');
					$('#unfollow').text('팔로우하기');
					console.log('${followerCount}');
					${followerCount}
					$('#followerCount').text('${followerCount-1}');
				},
				error : function() {
					
				}

			});
			 
		});

	});
</script>