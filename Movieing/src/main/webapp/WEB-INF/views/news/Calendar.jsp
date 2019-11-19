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



<!-- 영화제 --------------------------------------------------------------------------->
<div class="container" style="padding-top: 30px">




	<h2>영화제</h2>
	<div class="row">
		<div class="col-md-3 text" data-toggle="modal"
			data-target=".bd-example-modal-lg">
			<img class="img-responsive" src="<c:url value='/resources/img/news/j1.png'/>"
				alt="서울독립영화제">
			<div class="middle">
				<div class="text">제 45회 <br>서울독립영화제 (2019)</div>
			</div>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j2.png'/>">
			<div class="middle">
				<div class="text">최강애니전</div>
			</div>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j3.jpg'/>">
			<div class="middle">
				<div class="text">아동권리영화제</div>
			</div>
		</div>
		<div class="col-md-3 text">
			<img class="img-responsive"
				src="<c:url value='/resources/img/news/j4.jpg'/>">
			<div class="middle">
				<div class="text">제주영화제</div>
			</div>
		</div>
	</div>

	


</div>




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
			//right: 'month,agendaWeek,agendaDay,listWeek'
			right : ' , , '
		},
		defaultDate : '2019-12-05',
		navLinks : true,
		eventLimit : true,
		events : [{title:'서울독립영화제',start:'2019-11-28',end:'2019-12-07'},{title:'아동권리영화제',start:'2019-11-22',end:'2019-12-02'},{title:'최강애니전',start:'2019-11-29',end:'2019-12-01'},{title:'제주영화제',start:'2019-11-02',end:'2019-12-01'},]
			
	});
	
</script>