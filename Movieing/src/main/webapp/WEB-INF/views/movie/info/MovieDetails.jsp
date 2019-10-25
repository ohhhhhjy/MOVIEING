<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link href="<c:url value='/resources/css/movieLayout.css'/>"
	rel="stylesheet" type="text/css">


<!-- 영화리뷰 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="assets/js/vendor/jquery.min.js"><\/script>')
</script>
<script src="js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>

<style>
/*영화리뷰*/
body {
	padding-top: 70px;
}

.btn-grey {
	background-color: #D8D8D8;
	color: #FFF;
}

.rating-block {
	background-color: #FAFAFA;
	border: 1px solid #EFEFEF;
	padding: 15px 15px 20px 15px;
	border-radius: 3px;
}

.bold {
	font-weight: 700;
}

.padding-bottom-7 {
	padding-bottom: 7px;
}

.review-block {
	background-color: #FAFAFA;
	border: 1px solid #EFEFEF;
	padding: 15px;
	border-radius: 3px;
	margin-bottom: 15px;
}

.review-block-name {
	font-size: 12px;
	margin: 10px 0;
}

.review-block-date {
	font-size: 12px;
}

.review-block-rate {
	font-size: 13px;
	margin-bottom: 15px;
}

.review-block-title {
	font-size: 15px;
	font-weight: 700;
	margin-bottom: 10px;
}

.review-block-description {
	font-size: 13px;
}
</style>




<div class="container">
	<div style="margin-left: -15px; margin-right: -15px; margin-top: 15px;">
		<div id="leftFrame">
			<div id="titlePoster">
				<img src="<c:url value='/resources/img/movie/111.jpg'/>"
					style="width: 359px; height: 511px" />
			</div>

			<div id="watchListFrame">
				<div id="watchListButton">
					<a href="www.naver.com"> <span id="watchListSpan">
							&nbsp;&nbsp;시청 목록 </span>
					</a>
				</div>
				<div id="watchListButton">

					<a href="www.naver.com" id="likeButtonSpa"> <span
						id="likeButtonSpan">좋아요</span>
					</a>

				</div>
			</div>
			<!-- wathchListFrame -->

			<div id="ratingTypeAgeFrame">
				<hr>
				<div>
					<div style="margin-bottom: 6px;">
						<div id="ratingFrame">평점</div>
						<div id="ratingTypeAgeBetween">
							<div>
								<div style="margin-right: 10px; display: inline-block;">
									평점</div>
								<div style="display: inline-block">8.69</div>
							</div>
						</div>
						<!-- 평점 , 별표 들어갈 div -->
						<div id="ratingTypeAgeBetween">
							<div id="typeFrame">장르</div>
							<div>
								<span>멜로/로맨스 </span>
							</div>
						</div>
						<!-- 장르 -->
						<div id="ratingTypeAgeBetween">
							<div id="ageFrame">연령등급</div>
							<div>15세 관람가</div>
						</div>
						<!-- 연령등급 -->
						<div></div>
					</div>
				</div>
				<!-- 평점,장르,연령등급 삽입 끝 -->
			</div>
			<!-- 왼쪽 틀 -->
		</div>


		<!-- ------------------------------------------------------------------------------- -->
		<div id="rigthFrame">
			<div>
				<!-- 오른쪽 틀 시작 -->
				<div>
					<!-- 제목틀 시작 -->
					<div class="title-block">

						<h1>
							"가장 보통의 연애" <span class="text-muted">2019</span>
						</h1>

						<h3>Crazy Romance</h3>
					</div>
				</div>
				<!-- 제목 틀 끝 -->



				<div>
					<!-- 검색필터 구매 ,대여 틀 시작 -->

					<p class="detail-infos_subheading">가격 알아보기</p>


					<div>
						<!-- 검색필터  목록 시작 -->

						<div class="monetizations">
							<div class="monetizations_additional-filter-wrapper">
								<!-- 최저가 버튼 시작-->
								<div class="price-comparison_additional-filter">
									<span class="price-comparison_additional-filter-heading"
										style="position: relative; top: -11px"> 검색필터 </span>
									<div class="filter-buttons" style="display: inline-block;">
										<div class="btn-group filter-buttons-section">
											<a
												class="additional-filter_button btn additional-filter_button-active">최저가</a>
											<a class="additional-filter_button btn">SD</a> <a
												class="additional-filter_button btn">HD</a> <a
												class="additional-filter_button btn">4K</a>
										</div>
									</div>
								</div>
							</div>
							<!-- 최저가 버튼 끝 -->

							<div class="price-comparison_grid_row">
								<div class="price-comparison_grid_row_title">
									구&nbsp;&nbsp;매</div>
								<div class="price-comparison_grid_row_holder">
									<div class="price-comparison_grid_row_elemnet">
										<div class="price-comparison_grid_row_element_icon">
											<a href="www.naver.com"> <img
												class="jw-provider-icon price-comparison_grid_row_icon"
												alt="Naver Store" title="Naver Store"
												src="<c:url value='/resources/img/movie/naver.png'/>">
											</a>
											<div class="price-comparison_grid_row_price">7000원</div>
										</div>
									</div>

									<div class="price-comparison_grid_row_elemnet">
										<div class="price-comparison_grid_row_element_icon">
											<a href="www.naver.com"> <img
												class="jw-provider-icon price-comparison_grid_row_icon"
												alt="Naver Store" title="Naver Store"
												src="<c:url value='/resources/img/movie/pooq.jpg'/>">
											</a>
											<div class="price-comparison_grid_row_price">6000원</div>
										</div>
									</div>
								</div>
							</div>

							<div class="price-comparison_grid_row">
								<div class="price-comparison_grid_row_title">
									대&nbsp;&nbsp;여</div>
								<div class="price-comparison_grid_row_holder">
									<div class="price-comparison_grid_row_elemnet">
										<div class="price-comparison_grid_row_element_icon">
											<a href="www.naver.com"> <img
												class="jw-provider-icon price-comparison_grid_row_icon"
												alt="Naver Store" title="Naver Store"
												src="<c:url value='/resources/img/movie/naver.png'/>">
											</a>
											<div class="price-comparison_grid_row_price">3000원</div>
										</div>
									</div>

									<div class="price-comparison_grid_row_elemnet">
										<div class="price-comparison_grid_row_element_icon">
											<a href="www.naver.com"> <img
												class="jw-provider-icon price-comparison_grid_row_icon"
												alt="Naver Store" title="Naver Store"
												src="<c:url value='/resources/img/movie/pooq.jpg'/>">
											</a>
											<div class="price-comparison_grid_row_price">4000원</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- 검색필터 구매 ,대여 틀 끝 -->


				<div>
					<!-- 출연진 줄거리 관련영화 시작 -->
					<div>
						<!-- 출연진 틀 시작 -->
						<p class="detail-infos_subheading">출연진</p>
					</div>
					<!-- 출연진 틀 시작 -->
					<div>
						<!-- 출연진 이름 , 역할 틀 -->
						<div class="hidden-horizontal-scrollbar title-credits">
							<!-- 가장 바깥쪽 div 시작 -->
							<div class="hidden-horizontal-scrollbar_items"
								style="margin-top: -2px; bottom: -2px;">
								<!-- 안쪽 div 시작 -->

								<div class="title-credits_actor">
									<!--배우이름 -->
									<a class="title-credits-name">재훈 역</a>
									<div class="title-credits_actor-role">
										<div class="title-redits_actor-role-name">
											<a href="<c:url value='/Movieing/Movie/Filmography.mov'/>">
												<strong>김래원</strong>
											</a>
										</div>
									</div>
								</div>

								<div class="title-credits_actor">
									<!--배우이름 -->
									<a class="title-credits-name">선영 역</a>
									<div class="title-credits_actor-role">
										<div class="title-redits_actor-role-name">
											<strong>공효진</strong>
										</div>
									</div>
								</div>

								<div class="title-credits_actor">
									<!--배우이름 -->
									<a class="title-credits-name">병철 역</a>
									<div class="title-credits_actor-role">
										<div class="title-redits_actor-role-name">
											<strong>강기영</strong>
										</div>
									</div>
								</div>

							</div>

							<!-- 안쪽 div 끝-->
						</div>
						<!-- 가장 바깥쪽 div 끝 -->
					</div>
					<!-- 출연진 이름 , 역할 틀 끝-->
				</div>
			</div>
			<div>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br> <br> <br>
			</div>
		</div>
		<!-- 오른쪽 틀 끝 -->
		<div>
			<div>
				<!-- 줄거리 들어갈 공간 시작 -->
				<p class="detail-infos_subheading">줄거리</p>
				<p>
					<span style="white-space: normal;"> 전 여친에 상처받은 ‘재훈’(김래원). 여느
						때처럼 숙취로 시작한 아침, 모르는 번호의 누군가와 밤새 2시간이나 통화한 기록을 발견하게 되고 그 상대가 바로!
						통성명한 지 24시간도 채 되지 않은 직장 동료 ‘선영’임을 알게 된다. 남친과 뒤끝 있는 이별 중인
						‘선영’(공효진). 새로운 회사로 출근한 첫날, 할 말 못 할 말 쏟아내며 남친과 헤어지던 현장에서 하필이면! 같은
						직장의 ‘재훈’을 마주친다. 만난 지 하루 만에 일보다 서로의 연애사를 더 잘 알게 된 두 사람. 하지만 미묘한 긴장과
						어색함도 잠시 ‘한심하다’, ‘어이없다’ 부딪히면서도 마음이 쓰이는 건 왜 그럴까? </span>
				</p>
			</div>
			<!-- 줄거리 들어갈 공간 끝 -->

			<div style="margin-bottom: 20px;">
				<!-- 관련영화 시작 -->
				<p class="detail-infos_subheading">관련영화</p>

				<div>
					<!-- 영화 이미지 들어갈 틀 시작 -->

					<div class="horizontal-title-list">
						<div class="hidden-horizontal-scrollbar"
							style="min-height: 236px;">
							<div class="hidden-horizontal-scrollbar_items"
								style="margin-top: -2px; bottom: -2px;">
								<div class="horizontal-title-list_item">
									<div class="title-poster">
										<img  src="<c:url value='/resources/img/movie/222.jpg'/>" style="width: 166px;height: 236px">
									</div>
									<div class="title-poster">
										<img src="<c:url value='/resources/img/movie/333.jpg'/>"  style="width: 166px;height: 236px">
									</div>
									<div class="title-poster">
										<img src="<c:url value='/resources/img/movie/444.jpg'/>"  style="width: 166px;height: 236px">
									</div>
									<div class="title-poster">
										<img src="<c:url value='/resources/img/movie/555.jpg'/>"  style="width: 166px;height: 236px">

									</div>
								</div>


							</div>
						</div>

					</div>
				</div>
				<!-- 영화 이미지 들어갈 틀 끝 -->
			</div>
			<!-- 관련영화 끝 -->

		</div>
		<!-- 출연진 줄거리 관련영화 끝 -->


	</div>

	<!-- --------------------------------------------------------------------- -->




	<!-- 영화 리뷰 -->
	<div>
		<p class="detail-infos_subheading">영화 리뷰</p>
		<div class="row">
			<div class="col-sm-3">
				<div class="rating-block">
					<h4>관람객 평점</h4>
					<h2 class="bold padding-bottom-7">
						4.3 <small>/ 5</small>
					</h2>
					<button type="button" class="btn btn-warning btn-sm"
						aria-label="Left Align">
						<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
					</button>
					<button type="button" class="btn btn-warning btn-sm"
						aria-label="Left Align">
						<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
					</button>
					<button type="button" class="btn btn-warning btn-sm"
						aria-label="Left Align">
						<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
					</button>
					<button type="button" class="btn btn-default btn-grey btn-sm"
						aria-label="Left Align">
						<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
					</button>
					<button type="button" class="btn btn-default btn-grey btn-sm"
						aria-label="Left Align">
						<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
					</button>
				</div>
			</div>
			<div class="col-sm-3">
				<h4>평점 분포</h4>
				<div class="pull-left">
					<div class="pull-left" style="width: 35px; line-height: 1;">
						<div style="height: 9px; margin: 5px 0;">
							5 <span class="glyphicon glyphicon-star"></span>
						</div>
					</div>
					<div class="pull-left" style="width: 180px;">
						<div class="progress" style="height: 9px; margin: 8px 0;">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="5" aria-valuemin="0" aria-valuemax="5"
								style="width: 1000%">
								<span class="sr-only">80% Complete (danger)</span>
							</div>
						</div>
					</div>

				</div>
				<div class="pull-left">
					<div class="pull-left" style="width: 35px; line-height: 1;">
						<div style="height: 9px; margin: 5px 0;">
							4 <span class="glyphicon glyphicon-star"></span>
						</div>
					</div>
					<div class="pull-left" style="width: 180px;">
						<div class="progress" style="height: 9px; margin: 8px 0;">
							<div class="progress-bar progress-bar-primary" role="progressbar"
								aria-valuenow="4" aria-valuemin="0" aria-valuemax="5"
								style="width: 80%">
								<span class="sr-only">80% Complete (danger)</span>
							</div>
						</div>
					</div>

				</div>
				<div class="pull-left">
					<div class="pull-left" style="width: 35px; line-height: 1;">
						<div style="height: 9px; margin: 5px 0;">
							3 <span class="glyphicon glyphicon-star"></span>
						</div>
					</div>
					<div class="pull-left" style="width: 180px;">
						<div class="progress" style="height: 9px; margin: 8px 0;">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="3" aria-valuemin="0" aria-valuemax="5"
								style="width: 60%">
								<span class="sr-only">80% Complete (danger)</span>
							</div>
						</div>
					</div>

				</div>
				<div class="pull-left">
					<div class="pull-left" style="width: 35px; line-height: 1;">
						<div style="height: 9px; margin: 5px 0;">
							2 <span class="glyphicon glyphicon-star"></span>
						</div>
					</div>
					<div class="pull-left" style="width: 180px;">
						<div class="progress" style="height: 9px; margin: 8px 0;">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="2" aria-valuemin="0" aria-valuemax="5"
								style="width: 40%">
								<span class="sr-only">80% Complete (danger)</span>
							</div>
						</div>
					</div>

				</div>
				<div class="pull-left">
					<div class="pull-left" style="width: 35px; line-height: 1;">
						<div style="height: 9px; margin: 5px 0;">
							1 <span class="glyphicon glyphicon-star"></span>
						</div>
					</div>
					<div class="pull-left" style="width: 180px;">
						<div class="progress" style="height: 9px; margin: 8px 0;">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="1" aria-valuemin="0" aria-valuemax="5"
								style="width: 20%">
								<span class="sr-only">80% Complete (danger)</span>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>




		<div class="row">
			<div class="col-sm-7">
				<hr />
				<div class="review-block">
					<div class="row">
						<div class="col-sm-3">
							<img src="<c:url value='/resources/img/friends/girl.png'/>"
								class="img-rounded" style="width: 50px; height: 50px">
							<div class="review-block-name">
								<a href="#">ohhhhhjy</a>
							</div>
							<div class="review-block-date">
								10월 24일<br />1시간 전
							</div>
						</div>
						<div class="col-sm-9">
							<div class="review-block-rate">
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-default btn-grey btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-default btn-grey btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
							</div>
							<div class="review-block-title">모두에게 추천해주고 싶은 영화</div>
							<div class="review-block-description">너무 재밌었고, 감명깊은 영화이다.너무
								재밌었고, 감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.너무 재밌었고,
								감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.</div>
						</div>
					</div>
					<hr />
					<div class="row">
						<div class="col-sm-3">
							<img src="<c:url value='/resources/img/friends/girl.png'/>"
								class="img-rounded" style="width: 50px; height: 50px">
							<div class="review-block-name">
								<a href="#">ohhhhhjy</a>
							</div>
							<div class="review-block-date">
								10월 24일<br />1시간 전
							</div>
						</div>
						<div class="col-sm-9">
							<div class="review-block-rate">
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-default btn-grey btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-default btn-grey btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
							</div>
							<div class="review-block-title">모두에게 추천해주고 싶은 영화</div>
							<div class="review-block-description">너무 재밌었고, 감명깊은 영화이다.너무
								재밌었고, 감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.너무 재밌었고,
								감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.</div>
						</div>
					</div>

					<hr />

					<div class="row">
						<div class="col-sm-3">
							<img src="<c:url value='/resources/img/friends/girl.png'/>"
								class="img-rounded" style="width: 50px; height: 50px">
							<div class="review-block-name">
								<a href="#">ohhhhhjy</a>
							</div>
							<div class="review-block-date">
								10월 24일<br />1시간 전
							</div>
						</div>
						<div class="col-sm-9">
							<div class="review-block-rate">
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-warning btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-default btn-grey btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
								<button type="button" class="btn btn-default btn-grey btn-xs"
									aria-label="Left Align">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</button>
							</div>
							<div class="review-block-title">모두에게 추천해주고 싶은 영화</div>
							<div class="review-block-description">너무 재밌었고, 감명깊은 영화이다.너무
								재밌었고, 감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.너무 재밌었고,
								감명깊은 영화이다.너무 재밌었고, 감명깊은 영화이다.</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div style="padding-left: 300px">
			<a href="#">+더보기</a>
		</div>

	</div>





</div>
<!-- /container -->

