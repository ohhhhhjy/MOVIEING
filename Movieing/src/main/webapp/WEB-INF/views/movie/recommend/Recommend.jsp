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
	interval: 2000;
});

</script>
<style>
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

/*별점*/
</style>



<div style="margin-top: 130px">
	<div class="col-xl-12">
		<div class="card text-white bg-dark mb-3"
			style="max-width: 10rem; margin-top: 120px;">
			<div class="card-header">추천인기영화</div>
			<a href="<c:url value='/Movieing/Movie/AllMovie.mov'/>"
				class="card-link" style="float: none; margin: 0 auto">더보기></a>

		</div>
	</div>
	
	<!-- 캐러셀 시작  -->

	<div id="carouselSixColumn" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselSixColumn" data-slide-to="0" class="active"></li>
			<li data-target="#carouselSixColumn" data-slide-to="1"></li>
			<li data-target="#carouselSixColumn" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/mo.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">가장보통의연애</p>
								<span style="font-size: small; font-weight: nomal">상영
									188분</span> <br> <span style="font-size: small;">누적관객
									149,112명</span>
							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/aladdin.jpg'/>" alt="" />
							</a>

							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">알라딘</p>
								<span style="font-size: small; font-weight: nomal">상영
									200분</span> <br> <span style="font-size: small;">누적관객
									279,112명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/blood.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">블러드심플</p>
								<span style="font-size: small; font-weight: nomal">상영
									100분</span> <br> <span style="font-size: small;">누적관객
									879,852명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/end.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">어벤져스엔드게임</p>
								<span style="font-size: small; font-weight: nomal">상영
									250분</span> <br> <span style="font-size: small;">누적관객
									1,009,112명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/exit.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">엑시트</p>
								<span style="font-size: small; font-weight: nomal">상영
									120분</span> <br> <span style="font-size: small;">누적관객
									389,881명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/gemini.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">제미니맨</p>
								<span style="font-size: small; font-weight: nomal">상영 90분</span>
								<br> <span style="font-size: small;">누적관객 123,221명</span>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<div class="carousel-item">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/gostop.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">타짜</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객
									589,871명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/joker.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">조커</p>
								<span style="font-size: small; font-weight: nomal">상영
									130분</span> <br> <span style="font-size: small;">누적관객
									662,421명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/jang.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">장사리</p>
								<span style="font-size: small; font-weight: nomal">상영 70분</span>
								<br> <span style="font-size: small;">누적관객 112,100명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/it.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">그것2</p>
								<span style="font-size: small; font-weight: nomal">상영65분</span>
								<br> <span style="font-size: small;">누적관객 396,123명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/ki.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">기생충</p>
								<span style="font-size: small; font-weight: nomal">상영
									130분</span> <br> <span style="font-size: small;">누적관객
									892,100명</span>



							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/kim.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">82년생김지영</p>
								<span style="font-size: small; font-weight: nomal">상영
									119분</span> <br> <span style="font-size: small;">누적관객
									472,550명</span>

							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="carousel-item">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/you.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">유열의음악앨범</p>
								<span style="font-size: small; font-weight: nomal">상영
									110분</span> <br> <span style="font-size: small;">누적관객
									522,550명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/mul.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">양자물리학</p>
								<span style="font-size: small; font-weight: nomal">상영 80분</span>
								<br> <span style="font-size: small;">누적관객 123,480명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/perfect.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">퍼펙트게임</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객
									123,480명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/toystory.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">토이스토리4</p>
								<span style="font-size: small; font-weight: nomal">상영 95분</span>
								<br> <span style="font-size: small;">누적관객 568,258명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/shin.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">변신</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객774,680명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/jang.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">장사리</p>
								<span style="font-size: small; font-weight: nomal">상영 60분</span>
								<br> <span style="font-size: small;">누적관객 123,480명</span>

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
<div>
	<div class="col-xl-12">
		<div class="card text-white bg-dark mb-3" style="max-width: 10rem;">
			<div class="card-header">취향분석영화</div>
			<a href="<c:url value='/Movieing/Movie/AllMovie.mov'/>"
				class="card-link" style="float: none; margin: 0 auto">더보기></a>

		</div>
	</div>

	<div id="carouselSixColumn" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselSixColumn" data-slide-to="0" class="active"></li>
			<li data-target="#carouselSixColumn" data-slide-to="1"></li>
			<li data-target="#carouselSixColumn" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/mo.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">가장보통의연애</p>
								<span style="font-size: small; font-weight: nomal">상영
									188분</span> <br> <span style="font-size: small;">누적관객
									149,112명</span>
							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/aladdin.jpg'/>" alt="" />
							</a>

							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">알라딘</p>
								<span style="font-size: small; font-weight: nomal">상영
									200분</span> <br> <span style="font-size: small;">누적관객
									279,112명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/blood.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">블러드심플</p>
								<span style="font-size: small; font-weight: nomal">상영
									100분</span> <br> <span style="font-size: small;">누적관객
									435,892명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/end.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">어벤져스엔드게임</p>
								<span style="font-size: small; font-weight: nomal">상영
									250분</span> <br> <span style="font-size: small;">누적관객
									1,009,112명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/exit.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">엑시트</p>
								<span style="font-size: small; font-weight: nomal">상영
									120분</span> <br> <span style="font-size: small;">누적관객
									389,881명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/gemini.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">제미니맨</p>
								<span style="font-size: small; font-weight: nomal">상영 90분</span>
								<br> <span style="font-size: small;">누적관객 123,221명</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/gostop.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">타짜</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객
									589,871명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/joker.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">조커</p>
								<span style="font-size: small; font-weight: nomal">상영
									130분</span> <br> <span style="font-size: small;">누적관객
									662,421명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/jang.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">장사리</p>
								<span style="font-size: small; font-weight: nomal">상영 70분</span>
								<br> <span style="font-size: small;">누적관객 112,100명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/it.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">그것2</p>
								<span style="font-size: small; font-weight: nomal">상영65분</span>
								<br> <span style="font-size: small;">누적관객 396,123명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/ki.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">기생충</p>
								<span style="font-size: small; font-weight: nomal">상영
									130분</span> <br> <span style="font-size: small;">누적관객
									892,100명</span>



							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/kim.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">82년생김지영</p>
								<span style="font-size: small; font-weight: nomal">상영
									119분</span> <br> <span style="font-size: small;">누적관객
									472,550명</span>

							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="carousel-item">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/you.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">유열의음악앨범</p>
								<span style="font-size: small; font-weight: nomal">상영
									110분</span> <br> <span style="font-size: small;">누적관객
									522,550명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/mul.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">양자물리학</p>
								<span style="font-size: small; font-weight: nomal">상영 80분</span>
								<br> <span style="font-size: small;">누적관객 123,480명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/perfect.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">퍼펙트게임</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객
									893,420명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/toystory.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">토이스토리4</p>
								<span style="font-size: small; font-weight: nomal">상영 95분</span>
								<br> <span style="font-size: small;">누적관객 568,258명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/shin.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">변신</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객774,680명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/jang.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">장사리</p>
								<span style="font-size: small; font-weight: nomal">상영 60분</span>
								<br> <span style="font-size: small;">누적관객 123,480명</span>

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

<div>
	<div class="col-xl-12">
		<div class="card text-white bg-dark mb-3" style="max-width: 10rem;">
			<div class="card-header">색다른영화</div>
			<a href="<c:url value='/Movieing/Movie/AllMovie.mov'/>"
				class="card-link" style="float: none; margin: 0 auto">더보기></a>

		</div>
	</div>

	<div id="carouselSixColumn" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselSixColumn" data-slide-to="0" class="active"></li>
			<li data-target="#carouselSixColumn" data-slide-to="1"></li>
			<li data-target="#carouselSixColumn" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/mo.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">가장보통의연애</p>
								<span style="font-size: small; font-weight: nomal">상영
									188분</span> <br> <span style="font-size: small;">누적관객
									149,112명</span>
							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/aladdin.jpg'/>" alt="" />
							</a>

							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">알라딘</p>
								<span style="font-size: small; font-weight: nomal">상영
									200분</span> <br> <span style="font-size: small;">누적관객
									279,112명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/blood.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">블러드심플</p>
								<span style="font-size: small; font-weight: nomal">상영
									100분</span> <br> <span style="font-size: small;">누적관객
									279,112명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/end.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">어벤져스엔드게임</p>
								<span style="font-size: small; font-weight: nomal">상영
									250분</span> <br> <span style="font-size: small;">누적관객
									1,009,112명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/exit.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">엑시트</p>
								<span style="font-size: small; font-weight: nomal">상영
									120분</span> <br> <span style="font-size: small;">누적관객
									389,881명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/gemini.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">제미니맨</p>
								<span style="font-size: small; font-weight: nomal">상영 90분</span>
								<br> <span style="font-size: small;">누적관객 123,221명</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/gostop.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">타짜</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객
									589,871명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/joker.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">조커</p>
								<span style="font-size: small; font-weight: nomal">상영
									130분</span> <br> <span style="font-size: small;">누적관객
									662,421명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/jang.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">장사리</p>
								<span style="font-size: small; font-weight: nomal">상영 70분</span>
								<br> <span style="font-size: small;">누적관객 112,100명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/it.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">그것2</p>
								<span style="font-size: small; font-weight: nomal">상영65분</span>
								<br> <span style="font-size: small;">누적관객 396,123명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/ki.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">기생충</p>
								<span style="font-size: small; font-weight: nomal">상영
									130분</span> <br> <span style="font-size: small;">누적관객
									892,100명</span>



							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/kim.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">82년생김지영</p>
								<span style="font-size: small; font-weight: nomal">상영
									119분</span> <br> <span style="font-size: small;">누적관객
									472,550명</span>

							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="carousel-item">
				<div class="row">
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/you.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">유열의음악앨범</p>
								<span style="font-size: small; font-weight: nomal">상영
									110분</span> <br> <span style="font-size: small;">누적관객
									522,550명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/mul.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">양자물리학</p>
								<span style="font-size: small; font-weight: nomal">상영 80분</span>
								<br> <span style="font-size: small;">누적관객 123,480명</span>


							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/perfect.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">퍼펙트게임</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객
									123,480명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/toystory.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">토이스토리4</p>
								<span style="font-size: small; font-weight: nomal">상영 95분</span>
								<br> <span style="font-size: small;">누적관객 568,258명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/shin.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">변신</p>
								<span style="font-size: small; font-weight: nomal">상영
									115분</span> <br> <span style="font-size: small;">누적관객774,680명</span>

							</div>
						</div>
					</div>
					<div class="col-xl-2 p-1">
						<div class="card">
							<a href="<c:url value='/Movieing/Movie/MovieDetails.mov'/>">
								<img class="w-100"
								src="<c:url value='/resources/img/movie/jang.jpg'/>" alt="" />
							</a>
							<div class="card-body">
								<p style="font-size: 11pt; font-weight: bold">장사리</p>
								<span style="font-size: small; font-weight: nomal">상영 60분</span>
								<br> <span style="font-size: small;">누적관객 123,480명</span>

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





