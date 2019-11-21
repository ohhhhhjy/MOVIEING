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