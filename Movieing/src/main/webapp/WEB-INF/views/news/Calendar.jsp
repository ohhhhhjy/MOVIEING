<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.js'></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>


<script
	src='http://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.1.0/fullcalendar.js'></script>

<link rel="stylesheet"
	href="<c:url value='/resources/css/fullcalendar.min.css'/>" />
<link href="<c:url value='/resources/css/calendar.css'/>"
	rel="stylesheet" type="text/css">

<style>
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


<div class="container" style="padding-top: 150px;">

	<div id="calendar" style="width: auto; height: 800px;"></div>



	<div style="padding-bottom: 80px"></div>
	<div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>행사명</th>
					<th>기간</th>
					<th>장소</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a class="nav-link" href="#modal1"
						data-toggle="modal">부산 국제 영화제</a></td>
					<td>2019.10.03(목) ~ 2019.10.12(토)</td>
					<td>부산</td>
				</tr>
				<tr>
					<td>부천 국제 판타스틱 영화제</td>
					<td>2019.06.27(목) ~ 2019.07.07(일)</td>
					<td>부천</td>
				</tr>
				<tr>
					<td>부천 국제 애니메이션 페스티벌</td>
					<td>2019.10.18(금) ~ 2019.10.22(화)</td>
					<td>부천</td>
				</tr>
			</tbody>
		</table>
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

	
	$(function(){	
		var modal = '${seoulDR}';
		
		if(modal=="서울독립영화제"){
			
			$('#modal1').modal('show');
		}
		
		
		var event;
   		$.ajax({
   			url: "<c:url  value='/Ajax/Calendar.mov'/>", 
   			dataType: 'text', 
   			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
   			async: false,
   			success: function(data) {
   				var decode = decodeURIComponent(data);
   				console.log(decode);
   				event=decode;
   				} 
   		});
   		console.log(event);
   		
   		
		 
	});
		
	$('#calendar').fullCalendar({
		header : {
			left : 'prev,next today',
			center : 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
			//right : ' , , '
		},
		defaultDate : '2019-12-05',
		navLinks : true,
		eventLimit : true,
		events : [{title:'서울독립영화제',start:'2019-11-28',end:'2019-12-07'},{title:'아동권리영화제',start:'2019-11-22',end:'2019-12-02'},{title:'최강애니전',start:'2019-11-29',end:'2019-12-01'},{title:'제주영화제',start:'2019-11-02',end:'2019-12-01'},]
			
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