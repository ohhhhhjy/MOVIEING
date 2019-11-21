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
	font-size: 25px;
	text-align: center;
	color: #01c0c8;
	border-radius: 3px;
	text-align: center;
	align-content: center;
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

/* 지도 */
.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}

#gray {
	color: gray;
}

#lotte{
/* position: absolute; top:0; left: 0; */
width: 100%;
height: 100%;
}
</style>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67216b019c0bbf6c95c07b3ae2dad59a"></script>

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

	///////////////////////////////////  

	$(document)
			.ready(
					function() {
						$('.btn')
								.on(
										'click',
										function() {
											console.log('버튼이 누렷어요');
											if ($(this).hasClass(
													'btn-outline-secondary')) {//지역버튼 누를경우
												console.log('지역 버튼');
												//체크표시
												var selText = $(this).text();
												console.log('값은?' + selText);
												$(this).html(
														'<i class="fas fa-check"></i>'
																+ selText).css(
														'background-color',
														'black').css('color',
														'white');
											} else if ($(this).hasClass(
													'btn-secondary')) {
												console.log('영화관 버튼');
												var selText = $(this).text();
												$(this).html(
														'<i class="fas fa-check"></i>'
																+ selText).css(
														'background-color',
														'white').css('color',
														'black');
												$('#threater').attr('value',
														selText + ' 롯데시네마');

												//지도 부착
												$('#mapDiv')
														.html(
																'<div id="map" style="width:100%;height:350px;"></div>');
												makingMap();//지도 모양 채워줘

												//영화상영시간표 부착
												$
														.ajax({
															url : "<c:url value='/Movieing/Movie/Threater/ThreaterAjax.mov'/>",
															type : 'post',
															dataType : 'json',
															data : {
																movieNo : 0
															},
															beforeSend : function(
																	xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
																xhr
																		.setRequestHeader(
																				"${_csrf.headerName}",
																				"${_csrf.token}");
															},
															success : function(
																	movieMap) {//서버로 부터 정상적인 응답을 받았을 때(200번)
																function replaceAll(
																		str,
																		searchStr,
																		replaceStr) {
																	return str
																			.split(
																					searchStr)
																			.join(
																					replaceStr);
																}
																console
																		.log('아작스 성공ㅇㅣ니'
																				+ movieMap);
																var timeTableString = '<h3>상영시간표</h3>';
																console
																		.log(
																				'이거map되냐',
																				movieMap['movieList']);
																$
																		.each(
																				movieMap['movieList'],
																				function(
																						index_1,
																						m) {
																					timeTableString += '<div class="card ">'
																							+ '<div class=" card-header">'
																							+ '<span style="font-size: 2em;font-weight: bold">'
																							+ replaceAll(
																									decodeURIComponent(m['movieTitle']),
																									'+',
																									' ')
																							+ '</span>'
																							+ '<button type="button" class="btn btn-grey">'
																							+ '<i class="fas fa-angle-right"></i>'
																							+ '</button>'
																							+ '</div>'
																							+ '<div class="card-body">';
																					$
																							.each(
																									m['dimensionList'],
																									function(
																											index_2,
																											d) {
																										timeTableString += '<div class="row px-3">'
																												+ '<p style="font-weight: bold;">'
																												+ replaceAll(
																														decodeURIComponent(d['dimension']),
																														'+',
																														' ')
																												+ '</p>'
																												+ '</div>'
																												+ '<div class="row" style="text-align: center;">';

																										$
																												.each(
																														d['timeList'],
																														function(
																																index_3,
																																t) {
																															timeTableString += '<div class="card" style="width:150px">'
																																	+ '<ul class="list-group">'
																																	+ '<li class="list-group-item">'
																																	+ decodeURIComponent(t['seat'])
																																	+ '</li>'
																																	+ '<li class="list-group-item">'
																																	+ t['time']
																																	+ '</li>'
																																	+ '<li class="list-group-item">'
																																	+ replaceAll(
																																			decodeURIComponent(t['seatCount']),
																																			'+',
																																			'')
																																	+ '</li>'
																																	+ '</ul>'
																																	+ '</div>';
																														});
																										timeTableString += '</div>';
																									});

																					timeTableString += '</div>'
																							+ '</div>';
																				});
																console
																		.log(
																				'나는 타임스트링',
																				timeTableString);
																$(
																		'#movieTimeTable')
																		.html(
																				timeTableString);

															},
															error : function(
																	data) {//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
																console
																		.log("에러:"
																				+ data.responseText);
															}

														});
											}

											$(this).button('reset');//리셋
										});
					});

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
	$(document).ready(function() {
		$('.cat-preview').on('click', function() {
			console.log('날짜선택');
			var selText = $(this).text();
			console.log('값은?' + selText);
			$(this).css('background-color', '#01c0c8').css('color', 'white');

			//뿌려주기
			$('#date').attr('value', '2019년 12월 ' + selText + '일');

		});
	});

	var makingMap = function() {
		//지도 메소드
		var mapContainer = document.getElementById('map'), // 지도의 중심좌표
		mapOption = {
			center : new kakao.maps.LatLng(37.478335, 126.889029), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도에 마커를 표시합니다 
		var marker = new kakao.maps.Marker({
			map : map,
			position : new kakao.maps.LatLng(37.477880, 126.889192)
		});

		// 커스텀 오버레이에 표시할 컨텐츠 입니다
		// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
		// 별도의 이벤트 메소드를 제공하지 않습니다 
		var content = '<div class="wrap">'
				+ '    <div class="info">'
				+ '        <div class="title">'
				+ '            롯데시네마 가산디지털'
				+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
				+ '        </div>'
				+ '        <div class="body">'
				+ '            <div class="img">'
				+ '                <img src="data:image/png;base64,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" width="73" height="70">'
				+ '           </div>'
				+ '            <div class="desc">'
				+ '                <div class="ellipsis">서울 금천구 디지털로10길 9 하이힐아울렛 8층</div>'
				+ '                <div class="jibun ellipsis">(우)08514 (지번)가산동 60-8</div>'
				+ '                <div><a href="https://map.kakao.com/link/to/롯데시네마 가산디지털,37.477880, 126.889192" target="_blank" class="link">길찾기</a></div>'
				+ '            </div>' + '        </div>' + '    </div>'
				+ '</div>';

		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlay = new kakao.maps.CustomOverlay({
			content : content,
			map : map,
			position : marker.getPosition()
		});

		// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(marker, 'click', function() {
			overlay.setMap(map);
		});

		// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		function closeOverlay() {
			overlay.setMap(null);
		}
	};
	////////////////////////////////////////////////////////////////여기까지 지도메소드
</script>





<div class="container">
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-body p-0">
					<div class="row p-5" style="margin-bottom: -70px;">
						<div class="col-md-6">
							<h1>영화관 상영 시간표</h1>

						</div>
						<div class="col-md-6 text-right">
							<img src="<c:url value='/resources/img/movie/lotte.png'/>"
								style="width: 400px; height: 60px">
						</div>
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
										<label>월</label>
										<div class="cat-preview">17</div>
									</div>
									<div class="box-cat">
										<label>화</label>
										<div class="cat-preview">18</div>
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

					<!-- ----------------------------------------------------------------------- -->




					<div class="row p-5" style="margin-top: -50px;">
						<div class="md-form input-group" style="padding-left: 20px">
							<div class="input-group-prepend">
								<span class="input-group-text md-addon"
									style="font-weight: bold;">날짜</span>
							</div>
							<input type="text" aria-label="First name" class="form-control"
								id="date" placeholder="날짜를 선택하세요">
							<div class="input-group-prepend">
								<span class="input-group-text md-addon"
									style="font-weight: bold;">영화관</span>
							</div>
							<input type="text" aria-label="Last name" class="form-control"
								id="threater" placeholder="영화관을 선택하세요">
						</div>
					</div>



					<!-- ------------------------------------------------------------------ -->
					<div class="row pb-5 p-5" id="mapDiv">
						<!-- 지도가 들어가는 부분 -->
					</div>
					<!-- ----------------------------------------------------------------------- -->

					<div class="p-5" id="movieTimeTable">
						<!-- ajax로 영화시간표가 삽입되는 부분 -->
					</div>
					<!-- 영화시간표 div끝 -->


					<!-- 롯데시네마 이미지 배너 -->
					<div class="">
						<a href="http://www.lottecinema.co.kr/LCHS/Contents/Cinema/Cinema-Detail.aspx?divisionCode=1&detailDivisionCode=1&cinemaID=1013">
							<img id="lotte" alt="배너" src="<c:url value='/resources/images/lotteBanner.PNG'/>">
						</a>
						<!-- <div class="py-3 px-5 pull-left">
							<div class="h2 font-weight-light">예매정보</div>
							<div class="row">
								<div class="mb-2" id="gray">상영일</div>
								&nbsp&nbsp
								<div class="mb-2">2019-11-19</div>
							</div>
							<div class="row">
								<div class="mb-2" id="gray">상영시간</div>
								&nbsp&nbsp
								<div class="mb-2">23:00~1:00</div>
							</div>
							<div class="row">
								<div class="mb-2" id="gray">상영관</div>
								&nbsp&nbsp
								<div class="mb-2">가산디지털 롯데시네마</div>
								<div class="mb-2">3관</div>
							</div>

						</div>

						<div class="py-3 px-5 pull-left">
							<div class="h2 font-weight-light">영화</div>
							<div class="row">
								<div class="mb-2" id="gray">영화명</div>
								&nbsp&nbsp
								<div class="mb-2">블랙머니</div>
							</div>
							<div class="row">
								<div class="mb-2" id="gray">스크린</div>
								&nbsp&nbsp
								<div class="mb-2">2D</div>

							</div>


						</div> -->
					</div>

				</div>
			</div>
		</div>
	</div>
	</div>