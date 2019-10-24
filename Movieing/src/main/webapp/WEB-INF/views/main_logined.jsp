<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<script src="js/addons/rating.js"></script>
<script>
$('.carousel').carousel({
	interval: 2000;
});

</script>
<style>
/* Carousel base class */
.carousel {
	margin-bottom: 4rem;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
	z-index: 10;
	bottom: 3rem;
}

@media ( min-width : 40em) {
	/* Bump up size of carousel content */
	.carousel-caption p {
		margin-bottom: 1.25rem;
		font-size: 1.25rem;
		line-height: 1.4;
	}
	.featurette-heading {
		font-size: 50px;
	}
}

@media ( min-width : 62em) {
	.featurette-heading {
		margin-top: 7rem;
	}
}
/*비디오*/
.video-fluid {
	width: 100%;
	height: auto;
}

/*별점*/
</style>





<body id="page-top">


	<!-- Header -->
	<header class="masthead" style="background-color: black">
		<div class="container-fluid">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="first-slide"
							src="<c:url value='/resources/img/main/movie1_1.jpg'/>"
							alt="First slide">
						<div class="container-fluid">
							<div class="carousel-caption d-none d-md-block text-left">
								<h1>최고 인기 드라마</h1>
								<p>체르노빌, 킬링이브 등</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">상세보기</a>
								</p>
							</div>
						</div>
					</div>


					<div class="carousel-item">
						<img class="second-slide"
							src="<c:url value='/resources/img/main/movie2_2.jpg'/>"
							alt="Second slide">
						<div class="container-fluid">
							<div class="carousel-caption d-none d-md-block">
								<h1>10월 3주 신작</h1>
								<p>국가부도의 날,항거:유관순 이야기 등</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">상세보기</a>
								</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img class="third-slide"
							src="<c:url value='/resources/img/main/movie3_3.jpg'/>"
							alt="Third slide">
						<div class="container-fluid">
							<div class="carousel-caption d-none d-md-block text-right">
								<h1>최고 인기 드라마</h1>
								<p>체르노빌, 킬링이브 등</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">상세보기</a>
								</p>
							</div>
						</div>
					</div>
				</div>



			</div>




			<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#myCarousel"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>

		</div>
	</header>
	<!-- 헤더끝 -->


	<!-- ---------------------------------------------------헤더끝--------------------------------------------------------- -->





	<!-- Services -->
	<section class="page-section" id="services"
		style="border-color: #f7f2f5">
		<div class="container">


			<!-- 1행 -->

			<div class="row">
				<div class="col-md-8">
					<h6>인기 트레일러</h6>




					<DIV>
						<!--  
						<iframe width="100%" height="400px"
							src="https://www.youtube.com/embed/sXjwpMDrMnY?autoplay=1"
							frameborder="0"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
							-->
						<c:set var="title" value="말레피센트"></c:set>
						<c:set var="result" value="[${title }]메인예고편" />
						<iframe id="ytplayer1" type="text/html" width="100%"
							height="400px"
							src="https://www.youtube.com/embed/?listType=search&list='${result}'&autoplay=1"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							frameborder="0" allowfullscreen></iframe>
					</DIV>




				</div>

				<!-- 검색어 순위 div -->
				<div>

					<h6>상영영화 일간 박스오피스</h6>
					<!--Table-->
					<table id="tablePreview" class="table table-hover table-sm"
						style="width: 300px;font-size: small;">
						<!--Table head-->

						<thead>
							<tr>
								<th>순위</th>
								<th>영화명</th>
								<th>관객수</th>
							</tr>
						</thead>
						<!--Table head-->
						<!--Table body-->
						<tbody>
							<tr>
								<th scope="row" style="text-align: center;">1</th>
								<td>말레피센트2</td>
								<!-- 링크걸기 -->
								<td style="color: gray; text-align: right;">5732559653명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">2</th>
								<td>조커</td>
								<td style="color: gray; text-align: right;">43542634명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">3</th>
								<td>82년생 김지영</td>
								<td style="color: gray; text-align: right;">2131245명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">4</th>
								<td>82년생 김지영</td>
								<td style="color: gray; text-align: right;">2131245명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">5</th>
								<td>82년생 김지영</td>
								<td style="color: gray; text-align: right;">2131245명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">6</th>
								<td>82년생 김지영</td>
								<td style="color: gray; text-align: right;">2131245명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">7</th>
								<td>82년생 김지영</td>
								<td style="color: gray; text-align: right;">2131245명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">8</th>
								<td>82년생 김지영</td>
								<td style="color: gray; text-align: right;">2131245명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">9</th>
								<td>82년생 김지영</td>
								<td style="color: gray; text-align: right;">2131245명</td>

							</tr>
							<tr>
								<th scope="row" style="text-align: center;">10</th>
								<td>82년생 김지영</td>
								<td style="color: gray; text-align: right;">2131245명</td>

							</tr>
						</tbody>
						<!--Table body-->
					</table>
					<label style="color: gray;">영화진흥위원회 자료제공</label>
					<!--Table-->

				</div>
			</div>
			<!-- row -->
			<!-- 중간줄 -->
			<!-- 여기서부터 오른쪽 -->
			<!--
			<div class=" col-md-4  rightSide"
				style="border-left-width: 1px; border-left-style: solid; border-left-color: #a8a5a5">




			</div>
  -->


			<div>
				<br />
			</div>


			<!-- 2행 -->
			<div class="col-xl-12">
				<h6>할인 영화</h6>
			</div>

			<div id="carouselSixColumn" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselSixColumn" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselSixColumn" data-slide-to="1"></li>
					<li data-target="#carouselSixColumn" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/1.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">명탐정 코난</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/2.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">샤잠</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/3.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">애나벨 집으로</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/4.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">매드맥스 분노의 도로</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/5.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">더넌</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/6.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h5 class="card-title">타짜</h5>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="row">
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/1.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">명탐정 코난</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/2.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">샤잠</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/3.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">애나벨 집으로</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/4.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">매드맥스 분노의 도로</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/5.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">더넌</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/6.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h5 class="card-title">타짜</h5>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="carousel-item">
						<div class="row">
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/1.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">명탐정 코난</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/2.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">샤잠</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/3.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">애나벨 집으로</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/4.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">매드맥스 분노의 도로</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/5.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h6 class="card-title">더넌</h6>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
							<div class="col-xl-2 p-1">
								<div class="card">
									<img src="<c:url value='/resources/img/main/6.jpg'/>"
										class="w-100">
									<div class="card-body">
										<h5 class="card-title">타짜</h5>
										<span id="rateMe1" style="width: 50px"></span>
										<p class="card-text" style="font-size: small;">구매 5,450원</p>

									</div>
								</div>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselSixColumn"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselSixColumn"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>


				<!-- 2행 div끝 -->
			</div>


		</div>
		<!-- container끝 -->
	</section>








	<script type="text/javascript">
		function btnChange() {
			var btn = document.getElementsByClassName('btn btn-outline-light');

		}
		$('.btn-outline-light').click(function() {
			$(this).toggleClass('btn-light');
			$(this).toggleClass('btn-outline-light');
		});

		//$('.btn-light').click(function() {
		//	$(this).attr('class', 'btn btn-outline-light');
		//});
	</script>



</body>

</html>

