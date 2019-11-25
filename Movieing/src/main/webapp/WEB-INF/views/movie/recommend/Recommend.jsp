<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->

<script src="js/addons/rating.js"></script>
<script>

$('.carousel').carousel({
	interval: 3000;
});

</script>
<style>
.mvimg {
	width: 230px;
	height: 300px
}

@import
	url('https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800')
	;
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

#wrap #container .tslide .tslidebg .tslidein .tslist li .tposbx .tpos .audbx em.audtx
	{
	margin-top: -4px;
	color: #fff;
	font-size: 10px;
	font-family: 'Nanum Gothic';
}

#wrap #container .tslide .tslidebg .tslidein .tslist li .tposbx .tpos .audbx em
	{
	display: inline-block;
	padding: 0 4px;
	font-size: 10px;
	height: 17px;
	line-height: 17px;
	color: #aaa;
	background: url(/images/web/2016_new/images/main/main_aud_bg.png)
		no-repeat -3px -3px;
	font-family: 'Nanum Gothic';
}

.text_box {
	font-family: 'Nanum Gothic';
	padding: 10px 0;
}

/*새로 쉐도우*/
img.border-shadow {
	border: 1px solid #888888;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

/*밑줄*/
h3{
text-decoration: underline solid aqua;
}
</style>




<div class="container-fluid"
	style="padding-left: 20px; padding-right: 20px">
	<!-- 한 장르 시작 -->
	<div style="margin-top: 150px">
		<div class="col-xl-12">
			<div class="row">
				<div class="col-xl-10">
					<h3>#당신의 취향을 저격할 영화</h3>
				</div>
				<div class="col-xl-2" align="right">
					<a href="<c:url value='/Movieing/Movie/Popular.mov'/>"
						style="z-index: 1">
						<button type="button" class="btn btn-light btn-lg">모두 보기
							></button>
					</a>
				</div>
			</div>
		</div>


		<!-- 캐러셀 시작  -->
		<div class="row blog">
			<div class="col-md-12">
				<div id="blogCarousel1" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#blogCarousel1" data-slide-to="0" class="active"></li>
						<li data-target="#blogCarousel1" data-slide-to="1"></li>
						<li data-target="#blogCarousel1" data-slide-to="2"></li>

					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">


						<div class="row container-fluid" style="margin-top: 20px">

							<c:forEach items="${movieList}" var="movie" begin="0" end="6">


								<div class="col-md-2 col-sm-6 movie-poster"
									style="margin-bottom: 5px; margin-right: -50px;">
									<a
										href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${movie.movieNo }'/>">
										<img class="mvimg" src="${movie.movieImg}" alt="" />
									</a>
								</div>


							</c:forEach>

						</div>

					</div>
				</div>
			</div>
			<!--.carousel-inner-->

			<a class="carousel-control-prev" href="#blogCarousel1" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#blogCarousel1" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
		<!--.Carousel-->

	</div>
	<!--.Carousel-->



	<!-- --------------------------------------------------------------------------------- -->




	<!-- 한 장르 시작 -->
	<div style="margin-top: 60px">
		<div class="col-xl-12">
			<div class="row">
				<div class="col-xl-10">
					<h3>#무빙 최고 인기작</h3>
				</div>
				<div class="col-xl-2" align="right">
					<a href="<c:url value='/Movieing/Movie/Genre.mov'/>"
						style="z-index: 1">
						<button type="button" class="btn btn-light btn-lg">
							<h5 style="color: gray;">모두 보기 ></h5>
						</button>
					</a>
				</div>
			</div>
		</div>


		<!-- 캐러셀 시작  -->
		<div class="row blog">
			<div class="col-md-12">
				<div id="blogCarousel2" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#blogCarousel2" data-slide-to="0" class="active"></li>
						<li data-target="#blogCarousel2" data-slide-to="1"></li>
						<li data-target="#blogCarousel2" data-slide-to="2"></li>

					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">

						<div class="row container-fluid" style="margin-top: 20px">

							<c:forEach items="${movieRandomList}" var="movie" begin="0"
								end="6">

								<div class="col-md-2 col-sm-6 movie-poster"
									style="margin-bottom: 5px; margin-right: -50px;">
									<a
										href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${movie.movieNo }'/>">
										<img class="mvimg" src="${movie.movieImg}" alt="" />
									</a>
								</div>


							</c:forEach>
						</div>

					</div>
				</div>
			</div>
			<!--.carousel-inner-->

			<a class="carousel-control-prev" href="#blogCarousel2" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#blogCarousel2" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
		<!--.Carousel-->


	</div>

	<!-- 한 장르 끝 -->
	<!-- ----------------------------------------------------------------------------------------- -->

	<!-- 한 장르 시작 -->
	<div style="margin-top: 60px">
		<div class="col-xl-12">
			<div class="row">
				<div class="col-xl-10">
					<h3>#온몸이 쭈뼛쭈뼛 서게만드는 공포영화</h3>
				</div>
				<div class="col-xl-2" align="right">
					<button type="button" class="btn btn-light btn-lg">
						<h5 style="color: gray;">모두 보기 ></h5>
					</button>
				</div>
			</div>
		</div>
		<!-- 캐러셀 시작  -->
		<div class="row blog">
			<div class="col-md-12">
				<div id="blogCarousel3" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#blogCarousel3" data-slide-to="0" class="active"></li>
						<li data-target="#blogCarousel3" data-slide-to="1"></li>
						<li data-target="#blogCarousel3" data-slide-to="2"></li>

					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">

						<div class="row container-fluid" style="margin-top: 20px">

							<c:forEach items="${movieHorrorList}" var="movie" begin="0"
								end="6">

								<div class="col-md-2 col-sm-6 movie-poster"
									style="margin-bottom: 5px; margin-right: -50px;">
									<a
										href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${movie.movieNo }'/>">
										<img class="mvimg" src="${movie.movieImg}" alt="" />
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!--.carousel-inner-->

			<a class="carousel-control-prev" href="#blogCarousel3" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#blogCarousel3" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
		<!--.Carousel-->
	</div>
	<!-- 캐러셀 다이브  -->

	<!-- 한 장르 끝 -->

	<!-- -------------------------------------------------------------------------------------------------------------------- -->


	<!-- 한 장르 시작 -->
	<div style="margin-top: 60px">
		<div class="col-xl-12">
			<div class="row">
				<div class="col-xl-10">
					<h3>#마음이 따뜻해지는 영화</h3>
				</div>
				<div class="col-xl-2" align="right">
					<button type="button" class="btn btn-light btn-lg">
						<h5 style="color: gray;">모두 보기 ></h5>
					</button>
				</div>
			</div>
		</div>
		<!-- 캐러셀 시작  -->
		<div class="row blog">
			<div class="col-md-12">
				<div id="blogCarousel4" class="carousel slide" data-ride="carousel">

					<ol class="carousel-indicators">
						<li data-target="#blogCarousel4" data-slide-to="0" class="active"></li>
						<li data-target="#blogCarousel4" data-slide-to="1"></li>
						<li data-target="#blogCarousel4" data-slide-to="2"></li>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">
								<div class="row container-fluid" style="margin-top: 20px">

									<c:forEach items="${movieRomanceList}" var="movie" begin="0"
										end="6">

										<div class="col-md-2 col-sm-6 movie-poster"
											style="margin-bottom: 5px; margin-right: -50px;">
											<a
												href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${movie.movieNo }'/>">
												<img class="mvimg" src="${movie.movieImg}" alt="" />
											</a>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<!--.carousel-inner-->


					<a class="carousel-control-prev" href="#blogCarousel4"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#blogCarousel4"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>

				</div>
				<!--.Carousel-->
			</div>
		</div>
	</div>
	<!-- 캐러셀 다이브  -->
	<!-- --------------------------------------------------------------------------------------------------------------- -->

	<!-- 한 장르 끝 -->
	<div style="margin-top: 60px">
		<div class="col-xl-12">
			<div class="row">
				<div class="col-xl-10">
					<h3>#푸하하하!웃음폭탄</h3>
				</div>
				<div class="col-xl-2" align="right">
					<button type="button" class="btn btn-light btn-lg">
						<h5 style="color: gray;">모두 보기 ></h5>
					</button>
				</div>
			</div>
		</div>


		<!-- 캐러셀 시작  -->
		<div class="row blog">
			<div class="col-md-12">
				<div id="blogCarousel5" class="carousel slide" data-ride="carousel">

					<ol class="carousel-indicators">
						<li data-target="#blogCarousel5" data-slide-to="0" class="active"></li>
						<li data-target="#blogCarousel5" data-slide-to="1"></li>
						<li data-target="#blogCarousel5" data-slide-to="2"></li>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">
								<div class="row container-fluid" style="margin-top: 20px">

									<c:forEach items="${movieComedyList}" var="movie" begin="0"
										end="6">

										<div class="col-md-2 col-sm-6 movie-poster"
											style="margin-bottom: 5px; margin-right: -50px;">
											<a
												href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${movie.movieNo }'/>">
												<img class="mvimg" src="${movie.movieImg}" alt="" />
											</a>
										</div>


									</c:forEach>
								</div>

							</div>
						</div>
					</div>
					<!--.carousel-inner-->


					<a class="carousel-control-prev" href="#blogCarousel5"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#blogCarousel5"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>

				</div>
				<!--.Carousel-->


			</div>


		</div>
	</div>




	<!-- 한 장르 끝 -->

</div>
<!-- container끝 -->