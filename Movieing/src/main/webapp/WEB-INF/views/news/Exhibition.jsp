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
