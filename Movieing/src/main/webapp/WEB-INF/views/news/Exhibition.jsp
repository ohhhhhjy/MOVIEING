<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<style>
/*전시회*/
img {
	display: block;
	width: 100%;
	height: auto;
	transition: .5s ease;
	backface-visibility: hidden;
}

.row {
	position: relative;
}

img:hover {
	filter: none;
	opacity: 0.5;
}

.middle {
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
}

.text:hover .middle {
	opacity: 1;
}

.text:hover {
	color: white;
	font-size: 16px;
	color: black;
	font-weight: bold;
}

/*전시회 모달*/
tbody>tr {
	cursor: pointer;
}

.result {
	margin-top: 20px;
}

.thumb-contenido {
	margin-bottom: 1%;
	margin-left: 0px;
	padding-left: 0px;
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
	left: 380px;
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
	/*전시회 모달*/
	$(function() {
		/* BOOTSNIPP FULLSCREEN FIX */
		if (window.location == window.parent.location) {
			$('#back-to-bootsnipp').removeClass('hide');
			$('.alert').addClass('hide');
		}

		$('#fullscreen').on('click', function(event) {
			event.preventDefault();
			window.parent.location = "http://bootsnipp.com/iframe/Q60Oj";
		});

		$('tbody > tr').on('click', function(event) {
			event.preventDefault();
			$('#myModal').modal('show');
		})

		$('.btn-mais-info').on('click', function(event) {
			$('.open_info').toggleClass("hide");
		})

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
	function(){
	$( '#top' ).click( function() {
		$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
		return false;
	} );
	}
</script>


<!-- 영화제 --------------------------------------------------------------------------->
<div class="container" style="padding-top: 160px">


	<h2>영화제</h2>
	<div style="padding-top: 20px"></div>
	<div class="row col-md-12">
		<div class="col-md-3 text" data-toggle="modal"
			data-target=".bd-example-modal-lg">
			<img class="img-responsive" src="<c:url value='/resources/img/news/j1.png'/>"
				alt="서울독립영화제">
			<div class="middle">
				<div class="text">제 45회 <br>서울독립영화제 (2019)</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">서울독립영화제</span>
		</div>
		
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/n1.jpg'/>">
			<div class="middle">
				<div class="text">부산국제영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">부산국제영화제</span>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/2.jpg'/>">
			<div class="middle">
				<div class="text">전주국제영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">전주국제영화제</span>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/3.jpg'/>">
			<div class="middle">
				<div class="text">부천국제판타스틱영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">부천국제판타스틱영화제</span>
		</div>
	</div>
	<!-- ---------------------------------1행--------------------------------------------- -->
	
	<div style="padding-top: 20px"></div>
	<div class="row col-md-12">
			<div class="col-md-3 text">
			<img class="img-responsive" src="<c:url value='/resources/img/news/4.jpg'/>"
				alt="서울독립영화제">
			<div class="middle">
				<div class="text">대종상 영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">대종상 영화제</span>
		</div>
		
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/5.jpg'/>">
			<div class="middle">
				<div class="text">청룡영화상</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">청룡영화상</span>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/6.jpg'/>">
			<div class="middle">
				<div class="text">백상예술대상</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">백상예술대상</span>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/7.jpg'/>">
			<div class="middle">
				<div class="text">시네마테크KOFA가 주목한 한..</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">시네마테크KOFA가 주목한 한..</span>
		</div>
	</div>
	
	<!-- ---------------------------------2행--------------------------------------------- -->
	
	
	<div style="padding-top: 20px"></div>
	<div class="row col-md-12">
			<div class="col-md-3 text">
			<img class="img-responsive" src="<c:url value='/resources/img/news/8.jpg'/>"
				alt="서울독립영화제">
			<div class="middle">
				<div class="text">서울국제여성영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">서울국제여성영화제</span>
		</div>
		
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/9.jpg'/>">
			<div class="middle">
				<div class="text">제천국제음악영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">제천국제음악영화제</span>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/7.jpg'/>">
			<div class="middle">
				<div class="text">DMZ국제다큐멘터리영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">DMZ국제다큐멘터리영화제</span>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/11.jpg'/>">
			<div class="middle">
				<div class="text">서울환경영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">서울환경영화제</span>
		</div>
	</div>
	
	
	
	<!-- ---------------------------------3행--------------------------------------------- -->
	
	<div style="padding-top: 20px"></div>
	<div class="row col-md-12">
			<div class="col-md-3 text">
			<img class="img-responsive" src="<c:url value='/resources/img/news/12.jpg'/>"
				alt="서울독립영화제">
			<div class="middle">
				<div class="text">미쟝센단편영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">미쟝센단편영화제</span>
		</div>
		
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j2.jpg'/>">
			<div class="middle">
				<div class="text">최강애니전</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">최강애니전</span>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j3.jpg'/>">
			<div class="middle">
				<div class="text">아동권리영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">아동권리영화제</span>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j4.jpg'/>">
			<div class="middle">
				<div class="text">제주영화제</div>
			</div>
			<span class="text" style="font-size:1.5em;text-align: center;">제주영화제</span>
		</div>
	</div>
	
</div>
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




		<!-- 모달 -->

		<div class="modal fade bd-example-modal-lg" tabindex="-1" id="modal1"
			role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content p-4">
					<div class="well">
						<div class="row">
							<div class="col-md-12" style="padding-top: 10px;padding-left: 10px;padding-right: 10px">
								<h1 class="hidden-xs hidden-sm">서울독립영화제</h1>
								<i style="color: gray">Busan International Film Festival</i>

								<hr>


								<p class="text-justify">
								<div class="row" style="padding-left: 10px;padding-right: 10px;padding-bottom: 10px">
									<div class="col-md-4">
										<img class="center-block img-responsive"
											src='<c:url value='/resources/img/news/j1.png'/>' />
									</div>
									<div class="col-md-8">
										<small>장소: 서울</small><br> <small><strong>일정 : 19.11.28 ~ 19.12.06</strong></small> <br></br>
										극영화, 실험영화, 다큐멘터리, 애니메이션 등을 대상으로 하는 독립 단편 경쟁영화제<br>
										<br>
										<br>
										<br>
										<br>
										<div class="row">
											<div class="col">
												<div class="clearfix">
													<div class="float-right">
														<button class="btn btn-outline-info"><a href="<c:url value ='/Movieing/Ticket/Buy.mov'/>">티켓 구매</a></button>
													</div>
												</div>
											</div>
										</div>
									</div>
									
								</div>
								
							</div>


						</div>
					</div>


				</div>
			</div>
		</div>





		<!-- 모달 끝 -->
		
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
		
