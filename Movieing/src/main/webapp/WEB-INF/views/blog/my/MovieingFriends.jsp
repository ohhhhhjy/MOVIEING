<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


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
/*
.card-text {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 6; */
/* 라인수 */
/*
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1 .8em;
	height: 10 .7em;
}
*/

/*글안에 스크롤바*/
.scrollbar-lady-lips::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 0 rgba(0, 0, 0, 0.1);
	background-color: #F5F5F5;
	border-radius: 10px;
}

.scrollbar-lady-lips::-webkit-scrollbar {
	width: 12px;
	background-color: #F5F5F5;
}

.scrollbar-lady-lips::-webkit-scrollbar-thumb {
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 0 rgba(0, 0, 0, 0.1);
	background-image: -webkit-gradient(linear, left bottom, left top, from(#ff9a9e),
		color-stop(99%, #fecfef), to(#fecfef));
	background-image: -webkit-linear-gradient(bottom, #ff9a9e 0%, #fecfef 99%, #fecfef 100%);
	background-image: linear-gradient(to top, #ff9a9e 0%, #fecfef 99%, #fecfef 100%);
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

/*탭*/
.btn-group-block {
    display: grid !important;
    grid-template-columns: repeat(auto-fill, calc(100% / 2));
    grid-auto-rows: auto;
}
/* 플로팅바*/
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

#anotherLog{
	background-color : #D5D5D5;
	border: none;
	border-bottom: 	1.5px solid gray;
}

#allLog{
	border: 1.5px solid gray;
	border-bottom: none;
}



</style>

<script>
	//좋아요 올리기
	$(function() {

		var flag = false;
		//좋아요 클릭 이벤트처리
		if (typeof $('.likeUnlike') != 'undefined') {
			$('.likeUnlike')
					.click(
							function() {
								var index = $(this).attr('id');

								//좋아요 on  > off
								if (!flag) {

									//$('#likeUnlikeIcon').removeClass('far fa-thumbs-up').addClass('fas fa-thumbs-up');

									$
											.ajax({
												url : "<c:url value='/Movieing/Blog/LikeInsert.mov'/>",
												type : 'post',
												dataType : 'text',
												data : {
													id : '${id}',
													reviewNo : '${friendsReviewList1.get(index).reviewNo}'
												},
												beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
													xhr
															.setRequestHeader(
																	"${_csrf.headerName}",
																	"${_csrf.token}");
												},
												success : function(data) {//서버로 부터 정상적인 응답을 받았을 때(200번)
													$('#likeSpan' + index)
															.html(
																	'<a style="font-weight: bold; color: #db147b;"><i class="fas fa-thumbs-up"></i>좋아요</a>');
													$('#likeNumber' + index)
															.text(data);

												},
												error : function(data) {//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
													console
															.log("에러:"
																	+ data.responseText);
												}
											});

									flag = !flag;
								}

								//좋아요 on  < off
								else {
									//$('#likeUnlikeIcon').removeClass('fas fa-thumbs-up').addClass('far fa-thumbs-up'); 

									$
											.ajax({
												url : "<c:url value='/Movieing/Blog/LikeRemove.mov'/>",
												type : 'post',
												dataType : 'text',
												data : {
													id : '${id}',
													reviewNo : '${friendsReviewList1.get(index).reviewNo}'
												},
												beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
													xhr
															.setRequestHeader(
																	"${_csrf.headerName}",
																	"${_csrf.token}");
												},
												success : function(data) {//서버로 부터 정상적인 응답을 받았을 때(200번)
													$('#likeSpan' + index)
															.html(
																	'<a><i class="far fa-thumbs-up"></i>좋아요</a>');
													$('#likeNumber' + index)
															.text(data);
												},
												error : function(data) {//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
													console.log("에러:" + data);
												}
											});
									flag = !flag;
								}

							});
		}
	});

	//댓글 insert

	$(document)
			.ready(
					function() {
						$("#commentInsert")
								.click(
										function() {

											console.log($('#comment').val());//댓글

											$
													.ajax({
														url : "<c:url value='/Movieing/Blog/CommentInsert.mov'/>",
														type : 'post',
														dataType : 'text',
														data : {
															commentContent : $(
																	'#comment')
																	.val(),
															reviewNo : '${friendsReviewList.get(index).reviewNo}'

														},
														beforeSend : function(
																xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
															xhr
																	.setRequestHeader(
																			"${_csrf.headerName}",
																			"${_csrf.token}");
														},
														success : function(data) {
															$('#comment').val(
																	"");//공백처리
															alert('댓글이 입력되었습니다!');
															location.reload();
														},
														error : function(data) {
															console
																	.log("에러:"
																			+ data.responseText);
														}

													})

										});

					});

	///////////////////////////////////////////////////////
	/*			
	$(document).ready(function() {
		$('select[name=select]').change(function(){
			console.log('선택:');
			
			if($(this).val()=="1"){
				console.log('시간순');
				
				$.ajax({
					url : "<c:url value='/Movieing/Blog/MovieingFriends.mov'/>",
					type : 'post',
					dataType : 'text',
					data : {
						reviewNo : '${friendsReviewList.get(index).reviewNo}'
					},
					beforeSend : function(
							xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	/*
	xhr.setRequestHeader(
					"${_csrf.headerName}",
					"${_csrf.token}");
	},
	success : function(data) {
	console.log('피드 가져오기 성공');
	$('#contentpeed').children.
	
	
	},
	error : function(data) {
	console
			.log("에러:"
					+ data.responseText);
	}

	})

	
	
	
	}else if($(this).val()=="2"){
	console.log('좋아요');
	}else{
	console.log('댓글');
	}
	
	
	});
	
	});
	 */

	$(document)
			.ready(
					function() {
						var reviewNo = "";
						$('#myModal')
								.on(
										'show.bs.modal',
										function(e) {
											$('button[name=delete]')
													.click(
															function() {
																console
																		.log('삭제버튼눌림');
																reviewNo = $(
																		event.relatedTarget)
																		.data(
																				'notifyid');
																console
																		.log(reviewNo
																				+ '됫다됫어');

																$
																		.ajax({
																			url : "<c:url value='/Movieing/Blog/reviewRemove.mov'/>",
																			type : 'post',
																			dataType : 'text',
																			data : {
																				reviewNo : reviewNo

																			},
																			beforeSend : function(
																					xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
																				xhr
																						.setRequestHeader(
																								"${_csrf.headerName}",
																								"${_csrf.token}");
																			},
																			success : function(
																					data) {
																				alert('글이 삭제되었습니다!');
																				location
																						.reload();
																			},
																			error : function(
																					data) {
																				console
																						.log("에러:"
																								+ data.responseText);
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
		//팔로잉/팔로우 모달
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

		});
</script>


<!-- 위에 패딩주기 -->
<div style="padding-top: 150px; background-color: white;"></div>

<!-- 버튼 두개 만들기 -->
<div
	style="padding-left: 40px; background-color: white; padding-right: 40px">
	<div class="row" style="padding-left: 380px">

		<div class="btn-group btn-group-lg btn-group-block">
			<a href="#" class="btn" style="width: 388px;margin-right: 390px" id="allLog"><strong>모든 활동 로그</strong></a> 
			<a href="<c:url value="/Movieing/Blog/MovieingFriends2.mov"/>" style="width: 410px" id="anotherLog"
				class="btn">팔로우 활동 로그</a>
		</div>

	</div>
	
</div>




<!-- 피드보이기시작 -->

<div style="background-color: white; padding-top: 10px">

	<div class="container gedf-wrapper" style="background-color: white;">

		<div class="row">

			<div class="col-md-9" style="background-color: white"
				name="contentpeed">


				<!--- \\\\\\\Post-->


				<c:forEach items="${friendsReviewList1 }" var="item"
					varStatus="status">
					<div class="card gedf-card">
						<div class="card-header">
							<div class="d-flex justify-content-between align-items-center">
								<div class="d-flex justify-content-between align-items-center">
									<div class="mr-2">
										<a href="<c:url value='/Movieing/Blog/BlogMain.mov?userNick=${item.userNick }'/>">
										<img class="rounded-circle" width="45" height="45"
											src="${item.userProfile}" alt=""></a>
									</div>

									<div class="ml-2">
										
										<div class="h5 m-0" style="color: black;">
										<span>${item.userNick }</span></div>
									</div>


									<!-- 모달 띄우기 -->
									<div align="right" style="padding-left: 550px">
										<button class="btn btn-link dropdown-toggle" type="button"
											id="gedf-drop1" data-toggle="modal" aria-haspopup="true"
											aria-expanded="false" data-target="#myModal${status.index }"
											data-notifyid="${item.reviewNo }
											style="text-align:right;">
											<i class="fa fa-ellipsis-h"></i>
										</button>
									</div>
									<div class="modal fade" id="myModal${status.index }"
										tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog" role="document">
											<div class="modal-content">

												<c:set var="userNick" value="${ item.userNick}" />
												<c:set var="myNick" value="${ friendsSelf.userNick }" />


												<c:if test="${ userNick ne myNick}">
													<!--  남의 게시물 볼때 버튼들-->
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
														style="border-bottom: thin; width: 500px; height: 60px; color: black;">유저
														블로그로 이동</button>

												</c:if>

												<c:if test="${ userNick eq myNick}">
													<!-- 내 글 볼경우 버튼들 -->
													<button type="button" class="btn btn-outline-secondary"
														name="delete"
														style="border-bottom: thin; width: 500px; height: 60px; color: red">삭제</button>
												</c:if>
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

						<div class="card-body">
							<div class="row">

								<div class="col-sm-4" align="center"
									style="margin-bottom: -20px; margin-left: -20px">
									<img class="effect" src="${item.movieImg }" alt="Image">
								</div>
								<div class="col-sm-8" style="margin-bottom: -40px">

									<div class="row" style="height: 30px">
										<div class="col-md-10">
											<h4 class="card-title"
												style="color: black; font-weight: bold;">${item.movieTitle }</h4>
										</div>

										<div class="col-md-2">
											<h4>
												<span class="badge badge-pill badge-danger"
													style="text-align: center;">★ ${item.grade}</span>

											</h4>
										</div>

									</div>

									<!-- 중간줄 -->
									<hr class="my-3">


									<div class="scrollbar scrollbar-lady-lips"
										style="width: 520px; height: 230px; margin-left: -3px; background-color: white; overflow-y: scroll; line-height: 1 .8em; height: 10 .7em;">

										${item.reviewContent }

										<div class="force-overflow"></div>


									</div>
								</div>
								<!-- sm-9 -->

							</div>

							<div class="text-muted h7 mb-2" style="padding-top: 20px">
								<i class="fa fa-clock-o"
									style="padding-bottom: 10px; padding-left: 5px"></i>${reviewPostdate }
								<div class="row">

									<h6 style="padding-left: 20px">좋아요</h6>
									<h6 class="likeNumber${status.index }"
										id="likeNumber${status.index }" name="${status.index }">${item.likeCount }</h6>
									<h6>개</h6>

									<h6 style="padding-left: 20px">댓글 ${item.commentCount }개</h6>

								</div>

							</div>
						</div>


						<div class="card-footer">

							<!-- 
							<a href="#" class="likebutton" id="${status.index }" name="${status.index }"
								value="unclick"><i class="fa fa-gittip"></i> 좋아요</a> 
								-->
							<!-- 내가 좋아요를 눌렀으면 -->
							<c:choose>
								<c:when test="${item.likeMyCount eq 1 }">
									<button type="button" class="btn btn-link likeUnlike"
										id="${status.index }">
										<span id="likeSpan${status.index }"> <a
											style="font-weight: bold; color: #db147b;"><i
												class="fas fa-thumbs-up"></i>좋아요</a></span>
									</button>
								</c:when>
								<c:otherwise>

									<button type="button" class="btn btn-link likeUnlike"
										id="${status.index }">
										<span id="likeSpan${status.index }"> <a><i
												id="likeUnlikeIcon" class="far fa-thumbs-up"></i>좋아요</a></span>
									</button>
								</c:otherwise>
							</c:choose>


							<!-- 
								<a
								href="#collapse${status.index }" data-toggle="collapse"
								data-parent="#accordion" class="card-link">
								-->
							<a
								href="<c:url value='/Movieing/Movie/MovieReviews.mov?reviewNo=${item.reviewNo }'/>"
								style="padding-left: 5px"> <i class="fa fa-comment"></i> 댓글
							</a>
							<!--  
							<div class="input-group" style="padding-top: 10px">
								<input type="text" class="form-control col-sm-12" id="comment"
									placeholder="댓글 달기.." aria-describedby="basic-addon2">
								<button type="button" class="btn btn-secondary"
									id="commentInsert" style="padding-left: 10px">게시</button>

							</div>
-->

							<!-- 댓글 아코디언 -->
							<div id="collapse${status.index }" class="collapse">

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

					<!-- 게시물 간격 주기 -->
					<div style="padding-bottom: 50px"></div>
				</c:forEach>
				<!-- Post /////-->



			</div>


			<div class="col-md-3" style="position: sticky">
				<!-- 마이 프로필보이기 -->


				<div class="row" style="padding-bottom: 50px">
					<h5></h5>

					<div style="padding-right: 10px">
						<img class="radiusImg" alt="프사진"
							src="${image.userProfile }" />
					</div>
					<div style="padding-right: 60px">

						<span class="actorSpan"
							style="font-size: 1.4em; color: black; font-weight: bold;">${friendsSelf.userId }</span>
						<h6 class="actorSpan"
							style="font-size: 0.8em; color: gray; font-weight: bold;">${friendsSelf.userName }</h6>


					</div>

					<div style="padding-top: 10px">

						<button type="button" class="btn btn-primary"
							style="width: 80px; height: 35px"
							onclick="location.href='<c:url value="/Movieing/Blog/WritePage.mov"/>'">글쓰기</button>

					</div>

				</div>


				<!-- 버튼: 시간순/인기순 -->
				<!--  
				<div style="padding-bottom: 50px">
					<select class="form-control" style="text-align: center;" name="select">
						<option value="1">시간 순</option>
						<option value="2">좋아요 순</option>
						<option value="3">댓글 순</option>

					</select>
				</div>
-->


				<div class="card">

					<div class="card-body">
						<div class="h5">@${friendsSelf.userId }</div>
						<div class="h7 text-muted">${friendsSelf.userName }</div>
						<div class="h7">${friendsSelf.userSelf }</div>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="h6 text-muted">Followers</div>
							<div class="h5">${follower }</div>
						</li>
						<li class="list-group-item">
							<div class="h6 text-muted">Following</div>
							<div class="h5">${following }</div>
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
									<c:forEach items="${allUser }" var="item">
										<div class="row profileForm" style="padding-left: 10px">
											<div style="padding-left: 10px">
												<img class="radiusSmallImg" alt="배우사진"
													src="<c:url value='/resources/img/friends/boy.png'/>" />
											</div>
											<div style="padding-left: 10px">
												<span class="timeLineText"
													style="font-size: 1.0em; color: black;">${item.userId }</span>
												<h6 class="actorSpan"
													style="font-size: 0.5em; color: black;">1시간전</h6>

											</div>

										</div>
									</c:forEach>
									<!-- 한 사람 끝 -->

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
</div>

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



