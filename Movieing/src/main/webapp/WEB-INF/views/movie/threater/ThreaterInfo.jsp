<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<style>
body {
	margin-top: 150px;
	margin-bottom: 120px;
}
/*캐러셀*/
.slide-nav {
	height: 80px;
	background-color: #fff;
	position: relative;
}

.slide-right-outsize {
	color: #01c0c8;
	width: 40px;
	height: 100%;
	cursor: pointer;
	text-align: center;
	line-height: 75px;
	position: absolute;
	z-index: 101;
	top: 0;
	right: 0;
	background-color: #fff;
}

.slide-right {
	color: #01c0c8;
	width: 40px;
	height: 100%;
	cursor: pointer;
	/*border: 1px solid #fff;*/
	text-align: center;
	line-height: 75px;
	position: absolute;
	z-index: 101;
	top: 0;
	right: 40px;
	background-color: #fff;
}

.slide-center {
	display: block;
	width: 100%;
	/*border: 1px solid #fff;*/
	height: 100%;
	overflow: hidden;
	position: relative;
}

.slide-center.open {
	left: -50px;
}

.list-cat {
	margin-right: 80px;
	white-space: nowrap;
	margin-left: 80px;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	transition: all .7s ease;
	-webkit-transition: all .5s ease;
	-moz-transition: all .5s ease;
	-o-transition: all .5s ease;
	user-select: none;
}

.box-cat {
	margin-right: 10px;
	/*border: 1px solid #ddd;*/
	width: 60px;
	height: 100%;
	display: inline-block;
	cursor: pointer;
	vertical-align: top;
}

.cat-preview {
	border: 1px solid #01c0c8;
	width: 40px;
	height: 40px;
	margin: 0 auto;
	font-size: 30px;
	text-align: center;
	color: #01c0c8;
	border-radius: 3px;
}

.box-cat>label {
	text-align: center;
	width: 100%;
	font-size: 20px;
	font-weight: 400;
	color: #01c0c8;
	word-break: break-all;
	white-space: normal;
}

.slide-left-outsize {
	color: #01c0c8;
	width: 40px;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 101;
	text-align: center;
	line-height: 75px;
	cursor: pointer;
	background-color: #fff
}

.slide-left {
	color: #01c0c8;
	width: 40px;
	height: 100%;
	cursor: pointer;
	/*border: 1px solid #fff;*/
	text-align: center;
	line-height: 75px;
	position: absolute;
	z-index: 101;
	top: 0;
	left: 40px;
	background-color: #fff;
}

.btn {
	width: 120px;
	height: 40px;
	border-radius: 0px;
	font-size: 0.75em;
	text-align: center;
	margin-left: 5px;
	margin-bottom: 5px;
}
</style>
<script>
	$(document).ready(function() {
		var slide = 0;
		$(".slide-left").click(function() {
			slide = slide + 200;
			if (slide > 0) {
				slide = 0;
			}
			$(".list-cat").css({
				'left' : slide + 'px'
			});
		});

		$(".slide-right").click(function() {
			slide = slide - 200;
			let listWidth = $(".list-cat").width();
			let centerWidth = $(".slide-center").width() - 160;
			if (slide < -(listWidth - centerWidth)) {
				slide = -(listWidth - centerWidth);
			}
			$(".list-cat").css({
				'left' : slide + 'px'
			});
		});

		$(".slide-left-outsize").click(function() {
			slide = 0;
			$(".list-cat").css({
				'left' : slide
			});
		});

		$(".slide-right-outsize").click(function() {
			let listWidth = $(".list-cat").width();
			let centerWidth = $(".slide-center").width() - 160;
			slide = -(listWidth - centerWidth);
			$(".list-cat").css({
				'left' : slide + 'px'
			});
		});
	});
	
	
	$(function(){
		$('.btn').click(function(){
			console.log('버튼이 누렷어요');
			if($(this).hasClass('btn-outline-secondary'){//지역버튼 누를경우
				
			}else {
				
			}
		});
	});
</script>





<div class="container">
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-body p-0">
					<div class="p-5" style="margin-bottom: -70px;">
						<h1>영화관 상영 시간표</h1>

					</div>

					<!-- ----------------------------------------------------------------------------------------- -->
					<hr class="my-5">


					<div class="p-1" style="margin-top: -40px">
						<span style="padding-left: 95px"> <em
							style="font-weight: bold; font-size: xx-large; text-decoration: underline;">12</em>
							<span style="color: gray;">2019 December</span>
						</span>

						<div class="slide-nav">
							<div class="slide-left-outsize">
								<span class="glyphicon glyphicon-backward"></span>
							</div>
							<div class="slide-left">
								<i class="fas fa-angle-left"></i>
							</div>
							<div class="slide-center">
								<div class="list-cat">
									<div class="box-cat">
										<label>수</label>
										<div class="cat-preview">4</div>
									</div>
									<div class="box-cat">
										<label>목</label>
										<div class="cat-preview">5</div>
									</div>
									<div class="box-cat">
										<label>금</label>
										<div class="cat-preview">6</div>
									</div>
									<div class="box-cat">
										<label>토</label>
										<div class="cat-preview">7</div>
									</div>
									<div class="box-cat">
										<label>일</label>
										<div class="cat-preview">8</div>
									</div>
									<div class="box-cat">
										<label>월</label>
										<div class="cat-preview">9</div>
									</div>
									<div class="box-cat">
										<label>화</label>
										<div class="cat-preview">10</div>
									</div>
									<div class="box-cat">
										<label>수</label>
										<div class="cat-preview">11</div>
									</div>
									<div class="box-cat">
										<label>목</label>
										<div class="cat-preview">13</div>
									</div>
									<div class="box-cat">
										<label>금</label>
										<div class="cat-preview">14</div>
									</div>
									<div class="box-cat">
										<label>토</label>
										<div class="cat-preview">15</div>
									</div>
									<div class="box-cat">
										<label>일</label>
										<div class="cat-preview">16</div>
									</div>
									<div class="box-cat">
										<label>일</label>
										<div class="cat-preview">16</div>
									</div>
									<div class="box-cat">
										<label>일</label>
										<div class="cat-preview">16</div>
									</div>
								</div>
							</div>
							<div class="slide-right">
								<i class="fas fa-angle-right"></i>
							</div>
							<div class="slide-right-outsize">
								<span class="glyphicon glyphicon-forward"></span>
							</div>
						</div>
					</div>

					<!-- ------------------------------------------------------------- -->


					<div class="p-5">

						<div style="padding-left: 20px">
							<div class="row">
								<button type="button"
									class="btn btn-outline-secondary waves-effect">서울(23)</button>
								<button type="button"
									class="btn btn-outline-secondary waves-effect">경기/인천(44)</button>
								<button type="button"
									class="btn btn-outline-secondary waves-effect">충청/대전(9)</button>
								<button type="button"
									class="btn btn-outline-secondary waves-effect">전라/광주(9)</button>
								<button type="button"
									class="btn btn-outline-secondary waves-effect">경북/대구(16)</button>
								<button type="button"
									class="btn btn-outline-secondary waves-effect">경남/부산/울산(22)</button>
								<button type="button"
									class="btn btn-outline-secondary waves-effect">강원(3)</button>
								<button type="button"
									class="btn btn-outline-secondary waves-effect">제주(3)</button>
							</div>

							<div class="row">
								<button type="button" class="btn btn-secondary">가산디지털</button>
								<button type="button" class="btn btn-secondary">가양</button>
								<button type="button" class="btn btn-secondary">강동</button>
								<button type="button" class="btn btn-secondary">건대입구</button>
								<button type="button" class="btn btn-secondary">김포공항</button>
								<button type="button" class="btn btn-secondary">노원</button>
								<button type="button" class="btn btn-secondary">독산</button>
								<button type="button" class="btn btn-secondary">브로드웨이(신사)</button>
								<button type="button" class="btn btn-secondary">서울대입구</button>
								<button type="button" class="btn btn-secondary">수락산</button>
								<button type="button" class="btn btn-secondary">수유</button>
								<button type="button" class="btn btn-secondary">신도림</button>
								<button type="button" class="btn btn-secondary">신림</button>
								<button type="button" class="btn btn-secondary">에비뉴엘(명동)</button>
								<button type="button" class="btn btn-secondary">영등포</button>
								<button type="button" class="btn btn-secondary">용산</button>
								<button type="button" class="btn btn-secondary">월드타워</button>
								<button type="button" class="btn btn-secondary">은평(롯데몰)</button>
								<button type="button" class="btn btn-secondary">장안</button>
								<button type="button" class="btn btn-secondary">청량리</button>
								<button type="button" class="btn btn-secondary">합정</button>
								<button type="button" class="btn btn-secondary">홍대입구</button>
								<button type="button" class="btn btn-secondary">황학</button>
							</div>

						</div>
					</div>

					<!-- ------------------------------------------------------------------ -->
					<div class="row pb-5 p-5">
						<div class="col-md-12">지도</div>
						<h6>영화관:</h6>
						<input></input>
					</div>
					<!-- ----------------------------------------------------------------------- -->

					<div class="row p-5">
						<h3>상영시간표</h3>

						<div class="col-md-12">

							<div class="card gedf-card">
								<div class="row card-header">
									<h4>블랙머니</h4>
									<button type="button" class="btn btn-grey">
										<i class="fas fa-angle-right"></i>
									</button>
								</div>
							</div>


							<div class="card-body">
								<div class="row">
									<p>2D</p>
									&nbsp&nbsp
									<p>|</p>
									&nbsp&nbsp
									<p style="font-weight: bold;">샤롯데/샤롯데프라이빗</p>
								</div>
								<div class="row" style="text-align: center;">

									<div class="card">
										<ul class="list-group">
											<li class="list-group-item">1관</li>
											<li class="list-group-item">16:00</li>
											<li class="list-group-item">30석/32석</li>
										</ul>
									</div>


									<div class="card">
										<ul class="list-group ">
											<li class="list-group-item">1관</li>
											<li class="list-group-item">16:00</li>
											<li class="list-group-item">30석/32석</li>
										</ul>
									</div>


									<div class="card">
										<ul class="list-group ">
											<li class="list-group-item">1관</li>
											<li class="list-group-item">16:00</li>
											<li class="list-group-item">30석/32석</li>
										</ul>
									</div>


									<div class="card">
										<ul class="list-group ">
											<li class="list-group-item">1관</li>
											<li class="list-group-item">16:00</li>
											<li class="list-group-item">30석/32석</li>
										</ul>
									</div>

									<div class="card">
										<ul class="list-group ">
											<li class="list-group-item">1관</li>
											<li class="list-group-item">16:00</li>
											<li class="list-group-item">30석/32석</li>
										</ul>
									</div>

									<div class="card">
										<ul class="list-group ">
											<li class="list-group-item">1관</li>
											<li class="list-group-item">16:00</li>
											<li class="list-group-item">30석/32석</li>
										</ul>
									</div>
									<div class="card">
										<ul class="list-group ">
											<li class="list-group-item">1관</li>
											<li class="list-group-item">16:00</li>
											<li class="list-group-item">30석/32석</li>
										</ul>
									</div>
									<div class="card">
										<ul class="list-group ">
											<li class="list-group-item">1관</li>
											<li class="list-group-item">16:00</li>
											<li class="list-group-item">30석/32석</li>
										</ul>
									</div>

								</div>


							</div>
							<!-- ---바디끝 -->

						</div>
					</div>



					<div class="d-flex flex-row-reverse bg-dark text-white p-4">
						<div class="py-3 px-5 text-right">
							<div class="mb-2">Grand Total</div>
							<div class="h2 font-weight-light">$234,234</div>
						</div>

						<div class="py-3 px-5 text-right">
							<div class="mb-2">Discount</div>
							<div class="h2 font-weight-light">10%</div>
						</div>

						<div class="py-3 px-5 text-right">
							<div class="mb-2">Sub - Total amount</div>
							<div class="h2 font-weight-light">$32,432</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



</div>
