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
	width: 100px;
	height: 100px;
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
				[ "1", ${evalue1} ], [ '2', ${evalue2}], [ '3', ${evalue3} ], [ '4', ${evalue4} ], [ '5', ${evalue5} ] ]);
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
	
	/*삭제모달*/
	$(document).ready(function() {
		$('button[name=delete]').click(function(){
			console.log('삭제버튼눌림');	
			
			$.ajax({
				url : "<c:url value='/Movieing/Blog/reviewRemove.mov'/>",
				type : 'post',
				dataType : 'text',
				data : {
					reviewNo : '${selectList.get(index).reviewNo}'
					
				},
				beforeSend : function(
						xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
					xhr
							.setRequestHeader(
									"${_csrf.headerName}",
									"${_csrf.token}");
				},
				success : function(data) {
					alert('글이 삭제되었습니다!');
					location.reload();
				},
				error : function(data) {
					console
							.log("에러:"
									+ data.responseText);
				}

			});
			
			
		});
		
	});
	

</script>


<div class="container">

	<div class="row" style="padding-top: 20px">
		<!-- 왼쪽 마이피드 -->
		<div class="col-sm-7 blog-main">
			<!-- 프로필 -->
			<div class="jumbotron">
				<div class="row">
					<!-- 프로필 사진 -->
					<div class="col-sm-3" align="center">
						<img class="profileImage" alt="프로필사진"
							src="${userInfo.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png': userInfo.userProfile}" />
						<h5 style="padding-top: 20px">${userInfo.userNick}</h5>
						<div class="row">
							<div class="col-sm-6">
								<a href="#followModal" data-toggle="modal" id="followerModal"
									class="followModal"><span
									style="font-weight: bold; color: black; font-size: 0.9em">팔로워
										${followerCount } </span></a>
							</div>
							<div class="col-sm-6">
								<a href="#followModal" data-toggle="modal" id="followingModal"
									class="followModal"><span
									style="font-weight: bold; color: black; font-size: 0.9em">팔로잉
										${followingCount } </span></a>
							</div>
						</div>
						<br>
						<!--  
						<button type="button" class="btn btn-danger" onclick='<c:url value="/Movieing/Blog/MovindFriends.mov"/>'>무빙프렌즈</button>
						-->
						<a class="btn btn-danger"
							href="<c:url value='/Movieing/Blog/MovieingFriends.mov'/>">무빙프렌즈</a>
					</div>

					<!-- 프로필 활동내역 -->
					<div class="col-sm-9">
						<p align="right" style="padding-bottom: 20px">
							<a class="btn btn-dark btn-sm"
								href="<c:url value='/Movieing/Blog/MyPage.mov'/>" role="button">마이페이지</a>
						</p>
						<!-- a태그 post방식 페이지 전송 폼 -->
						<form name="paging">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}"> <input type="hidden" name="page" />
							<input type="hidden" name="id" />
						</form>
						<div class="row"
							style="padding-top: 20px; padding-bottom: 20px; background-color: white; border-radius: 10px 10px 10px 10px;">
							<div class="col-sm-3" align="center">
								<a href="javascript:goPage('a');"><span
									style="font-weight: bold">별점<br> ${evalueCount }
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="javascript:goPage('b');"><span
									style="font-weight: bold">리뷰<br> ${reviewCount }
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="javascript:goPage('c');"><span
									style="font-weight: bold">좋아요<br> ${likeCount }
								</span></a>
							</div>
							<div class="col-sm-3" align="center"
								style="border-left-width: 2px; border-left-style: solid; border-left-color: #a8a5a5">
								<a href="javascript:goPage('d');"><span
									style="font-weight: bold">보고싶어요<br> ${wishCount }
								</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			<!-- 피드컨텐츠 시작 -->
			<!-- 1.한줄컨텐츠(보고싶어요,별점,좋아요) -->
			<div class="card border-secondary mb-3" style="max-width: 50rem;">
				<div class="card-header">
					겟아웃을 보고싶어요에 추가했어요!&nbsp;&nbsp;<span
						style="color: #a8a5a5; font-size: 0.3em">2시간 전</span>
				</div>
			</div>

			

			<c:if test="${empty selectList }" var="isEmpty">
				<h5>
					아직 등록한 리뷰가 없어요...<br>리뷰를 등록해보세요
				</h5>
			</c:if>

			<c:if test="${!isEmpty }">
				<c:forEach items="${selectList }" var="item" varStatus="status">
					<!-- 2.여러줄컨텐츠(리뷰) -->
					<div class="card border-secondary mb-3" style="max-width: 200rem;">
						<div class="card-header">
							${item.movieTitle }에 리뷰를 남겼어요!&nbsp;&nbsp; 
							<span
								style="color: #a8a5a5; font-size: 0.3em;">
								${reviewPostdate} </span>

							<!-- 모달 띄우기 -->

							<button class="btn btn-link dropdown-toggle" type="button"
								id="gedf-drop1" data-toggle="modal" aria-haspopup="true"
								aria-expanded="false" data-target="#myModal${status.index }"
								style="float:right; text-align: right; line-height: 0px">
								<i class="fa fa-ellipsis-h"></i>
							</button>

							<div class="modal fade" id="myModal${status.index }"
								tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<!--  남의 게시물 볼때 버튼들
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
													-->
										<!-- 내 글 볼경우 버튼들 -->
										<button type="button" class="btn btn-outline-secondary"
											name="delete"
											style="border-bottom: thin; width: 500px; height: 60px; color: red">삭제</button>
										<button type="button" class="btn btn-outline-secondary"
													style="border-bottom: thin; width: 500px; height: 60px; color: black;"
													data-dismiss="modal">취소</button>
											</div>
										</div>
									<!-- 모달 끝 -->
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
									</a> 
									<span class="badge badge-pill badge-danger">★${item.grade }</span>
									<p class="card-text" style="height: 110px">${item.reviewContent }</p>
									<a href="#"> <span data-toggle="modal"
										data-target="#likeModal${status.index }"
										style="font-weight: bold; color: #db147b; font-size: 0.9em">
											<i class="far fa-thumbs-up"></i>${item.likeCount }
									</span>
									<!-- 좋아요수- -->

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
					<a href="<c:url value='/Movieing/Movie/screening/RatingMovie.mov'/>"
						style="color: #a8a5a5">더 평가하러 가기</a>
				</p>
				<hr class="my-3">
				<p align="center" style="font-size: 1em">무빙과 함께한지 ${signUpDays }일째!</p>
				<hr class="my-3">
				<h5>별점분포</h5>
				<p align="center" style="font-size: 0.8em">
					<em>별점이 한결같은 소나무 타입</em>
				</p>
				<div id="chart"
					style="width: 500px; height: 170px; padding-left: 50px"></div>

				<hr class="my-3">

				<h5>선호태그</h5>
				<div class="card border-secondary mb-3 justify-content-center"
					style="max-width: 200rem; padding-left: 10px">
					<div
						style="color: rgba(0, 0, 0, 1); width: 280px; height: 172px; padding-left: 20px; padding-top: 20px">
						<span
							style="position: absolute; font-size: 17px; line-height: 23px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(98px, 61px) rotate(0deg); font-weight: bold">웃기는</span>
						<span
							style="position: absolute; font-size: 17px; line-height: 23px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(160px, 73px) rotate(0deg); font-weight: bold">발랄한</span>
						<span
							style="position: absolute; font-size: 17px; line-height: 23px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(80px, 32px) rotate(0deg); font-weight: bold">따뜻한</span>
						<span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(179px, 43px) rotate(0deg); font-weight: bold">사랑</span>
						<span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(79px, 90px) rotate(0deg); font-weight: bold">슬픈</span>
						<span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(156px, 19px) rotate(0deg); font-weight: bold">귀여운</span>
						<span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(28px, 30px) rotate(0deg); font-weight: bold">재밌는</span>
						<span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(39px, 62px) rotate(0deg); font-weight: bold">뭉클한</span>
						<span
							style="position: absolute; font-size: 13px; line-height: 19px; color: rgb(255, 47, 110); width: 64px; text-align: center; white-space: nowrap; transform-origin: center bottom; transform: translate(27px, 85px) rotate(0deg); font-weight: bold">감동적인</span>
					</div>
				</div>
				<hr class="my-3">
				<h5>선호배우</h5>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="배우사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">염정아</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>

				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="배우사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">김선아</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>

				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="배우사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">손예진</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>
				<hr class="my-3">
				<h5>선호감독</h5>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="감독사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">염정아</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="감독사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">김선아</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>
				<div class="row actorForm">
					<div class="col-sm-3">
						<img class="radiusImg" alt="감독사진"
							src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
					</div>
					<div class="col-sm-6">
						<span class="actorSpan">손예진</span>
					</div>
					<div class="col-sm-3">
						<span class="filmoSpan">25편</span>
					</div>
				</div>
				<hr class="my-3">
				<h5>선호장르</h5>
				<p align="center" style="font-size: 0.8em">
					<em>영화에서 주로 반전과 공포를 찾는 사람</em>
				</p>
				<div class="row" align="center"
					style="padding-left: 30px; padding-right: 30px">
					<div class="col-md-4">
						<a href="#"><span class="genreSpan">스릴러</span></a>
					</div>
					<div class="col-md-4">
						<a href="#"><span class="genreSpan">공포</span></a>
					</div>
					<div class="col-md-4">
						<a href="#"><span class="genreSpan">액션</span></a>
					</div>
				</div>

				<hr class="my-3">
				<h5>영화감상시간</h5>
				<h6 align="center" style="color: #db147b">${evalueCount*2 }시간</h6>
				<p align="center" style="font-size: 0.8em">
					<em>영화를 정말 사랑하시네요!</em>
				</p>
			</div>
		</div>
		<!-- /.blog-sidebar -->
	</div>
</div>

<!--div class=row끝 -->


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
									<a href="<c:url value='/Movieing/Blog/BlogMain.mov?userNick=${user.userNick }'/>"><span
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
									<a href="<c:url value='/Movieing/Blog/BlogMain.mov?userNick=${user.userNick }'/>"><span
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

	});
</script>