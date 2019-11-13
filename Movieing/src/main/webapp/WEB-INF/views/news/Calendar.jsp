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
</script>


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
					<td><a class="nav-link" href="#calendar-modal"
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

<div class="calendar-modal modal fade" id="calendar-modal" tabindex="-1"
	role="dialog" aria-hidden="true">
	<div class="modal-dialog" role="document">

		<div class="modal-content">


			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<div class="modal-body">
							<!-- Project Details Go Here -->
							<h5>부산국제영화제</h5>
							<img alt="이미지"
								src="<c:url value='/resources/img/news/busan.jpg'/>">
							<p class="item-intro text-muted">
							<ul>
								<li>이름 : 부산국제영화제</li>
								<li>일시 : 2019.10.03(목) ~ 2019.10.12(토)</li>
								<li>장소 : 부산</li>
								<li><p>
										한국 영화의 발상지인 부산을, 영상문화의 중앙 집중에서 벗어나 지방 자치시대에 걸맞은 문화예술의 고장으로
										발전시키고자 기획된 영화제이다. 1996년 제1회를 시작으로 2003년 제8회를 맞이한 부산국제영화제는
										5년이라는 짧은 역사에도 불구하고 서구에 억눌려 있던 아시아 영화인의 연대를 실현했다는 평가를 받고 있다.<br>

									</p></li>
							</ul>
							</p>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 영화제 --------------------------------------------------------------------------->
<div class="container" style="padding-top: 30px">




	<h2>영화제</h2>
	<div class="row">
		<div class="col-md-3 text" data-toggle="modal"
			data-target=".bd-example-modal-lg">
			<img class="" src="<c:url value='/resources/img/news/j1.jpg'/>"
				alt="서울독립영화제">
			<div class="middle">
				<div class="text">제 45회 <br>서울독립영화제 (2019)</div>
			</div>
		</div>

		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j2.PNG'/>" alt="Pineapple">
			<div class="middle">
				<div class="text">전주 국제 영화제</div>
			</div>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j3.PNG'/>" alt="Pineapple">
			<div class="middle">
				<div class="text">부천국제판타스틱영화제</div>
			</div>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j4.PNG'/>" alt="Pineapple">
			<div class="middle">
				<div class="text">서울독립영화제(구 금관상영화제, 한국청소년영화제, 한국독립단편영화제)</div>
			</div>
		</div>
	</div>

	


</div>




		<!-- 모달 -->

		<div class="modal fade bd-example-modal-lg" tabindex="-1"
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
											src='<c:url value='/resources/img/news/j1.jpg'/>' />
									</div>
									<div class="col-md-8">
										<small>장소: 부산</small><br> <small><strong>개체월
												: 10월</strong></small> <br></br>
												
												한국 영화의 발상지인 부산을, 영상문화의 중앙 집중에서 벗어나 지방 자치시대에 걸맞은 문화예술의
										고장으로 발전시키고자 기획된 영화제이다. 1996년 제1회를 시작으로 2003년 제8회를 맞이한 부산국제영화제는
										5년이라는 짧은 역사에도 불구하고 서구에 억눌려 있던 아시아 영화인의 연대를 실현했다는 평가를 받고 있다.<br>
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






<script>

		
		
	var event;
	
	
	
   		$.ajax({
   			url: "<c:url  value='/Ajax/Calendar.mov'/>", 
   			dataType: 'text', 
   			async: false,
   			success: function(data) {
   				console.log(data);
   				event=data;
   				} 
   		});
   		console.log(event);
		 
		
		

		
	
	
	
	$('#calendar').fullCalendar({
		header : {
			left : 'prev,next today',
			center : 'title',
			//right: 'month,agendaWeek,agendaDay,listWeek'
			right : ' , , '
		},
		defaultDate : '2019-12-05',
		navLinks : true,
		eventLimit : true,
		events : event
			
	});
	
	
	
</script>