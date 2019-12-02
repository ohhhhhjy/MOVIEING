<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:700&display=swap"
	rel="stylesheet">
<style>

/*********************************************
					PRODUCTS
*********************************************/
.product {
	border: 1px solid #dddddd;
	height: 321px;
}

.product>img {
	max-width: 230px;
}

.product-rating {
	font-size: 20px;
	margin-bottom: 25px;
}

.product-title {
	font-size: 20px;
}

.product-desc {
	font-size: 14px;
}

.product-price {
	font-size: 22px;
}

.product-stock {
	color: #74DF00;
	font-size: 20px;
	margin-top: 10px;
}

.product-info {
	margin-top: 50px;
}

/*********************************************
					VIEW
************************

/*********************************************
					VIEW
*********************************************/
/
.content-wrapper {
	max-width: 1140px;
	background: #fff;
	margin: 0 auto;
	margin-top: 25px;
	margin-bottom: 10px;
	border: 0px;
	border-radius: 0px;
}

.container-fluid {
	max-width: 1140px;
	margin: 0 auto;
}

.view-wrapper {
	float: right;
	max-width: 70%;
	margin-top: 25px;
}

button.qty-change {
	height: 30px;
	width: 30px;
	border-radius: 50%;
	background: #fff;
	border: 1px solid #e3e3e3;
}

.qty-input {
	height: 30px;
	width: 80px;
	text-align: center;
}

/*설명*/
.media {
	padding-top: 40px;
}

.media a:hover, .media a:focus {
	text-decoration: none;
	outline: none;
}

.media .media-left .icon {
	display: block;
	width: 80px;
	height: 80px;
	padding: 16px 6px;
	color: #f0f0f0;
	text-align: center;
	border-radius: 50%;
}

.media .media-left .icon::before {
	font-size: 44px;
}
/*테이블*/
/*
 * See it in action here: http://jsfiddle.net/seydoggy/6s92p51a/
 */
.panel-table {
	display: table;
}

.panel-table>.panel-heading {
	display: table-header-group;
	background: transparent;
}

.panel-table>.panel-body {
	display: table-row-group;
}

.panel-table>.panel-body:before, .panel-table>.panel-body:after {
	content: none;
}

.panel-table>.panel-footer {
	display: table-footer-group;
	background: transparent;
}

.panel-table>div>.tr {
	display: table-row;
}

.panel-table>div:last-child>.tr:last-child>.td {
	border-bottom: none;
}

.panel-table .td {
	display: table-cell;
	padding: 15px;
	border: 1px solid #ddd;
	border-top: none;
	border-left: none;
}

.panel-table .td:last-child {
	border-right: none;
}

.panel-table>.panel-heading>.tr>.td, .panel-table>.panel-footer>.tr>.td
	{
	background-color: #f5f5f5;
}

.panel-table>.panel-heading>.tr>.td:first-child {
	border-radius: 4px 0 0 0;
}

.panel-table>.panel-heading>.tr>.td:last-child {
	border-radius: 0 4px 0 0;
}

.panel-table>.panel-footer>.tr>.td:first-child {
	border-radius: 0 0 0 4px;
}

.panel-table>.panel-footer>.tr>.td:last-child {
	border-radius: 0 0 4px 0;
}

/*이미지*/
.img {
	width: 50px;
	height: 50px;
	align-content: center;
}

.td {
	width: 20%;
}
/*할인*/
.notice {
	padding: 15px;
	background-color: #fafafa;
	border-left: 6px solid #7f7f84;
	margin-bottom: 10px;
	-webkit-box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
	box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
}

.notice-sm {
	padding: 10px;
	font-size: 80%;
}

.notice-lg {
	padding: 35px;
	font-size: large;
}

.notice-success {
	border-color: #80D651;
}

.notice-success>strong {
	color: #80D651;
}

.notice-info {
	border-color: #45ABCD;
}

.notice-info>strong {
	color: #45ABCD;
}

.notice-warning {
	border-color: #FEAF20;
}

.notice-warning>strong {
	color: #FEAF20;
}

.notice-danger {
	border-color: #d73814;
}

.notice-danger>strong {
	color: #d73814;
}
</style>
<div class="container" style="margin-top: 150px">
	<div class="content-wrapper">
		<div class="item-container">
			<div class="container">
				<h2>티켓 구매</h2>
				<br>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="product col-md-3 service-image-center">
								<div>
									<img class="img-responsive"
										src="<c:url value='/resources/img/news/j1.png'/>"
										alt="서울독립영화제" width="250px" height="320px">
								</div>
							</div>
							<div class="col-md-9">
								<form method="post"
									action="<c:url value='/Movieing/News/News.mov'/>">
									<div class="product-title">
										<input class="btn" type="submit" value="서울독립영화제"
											style="font-size: 25px" />
									</div>
									<input type="hidden" name="seoulDR" value="서울독립영화제" /> <input
										type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}">
								</form>


								<div class="product-desc"
									style="color: gray; margin-top: 10px; margin-left: 10px; margin-top: -10px">
									<strong>&nbsp;Seoul Independent Film Festival</strong>
								</div>



								<div class="text-left" style="padding: 10px">
									<h2>12,000원</h2>
									<div class="row notice notice-warning">
										<strong>할인쿠폰</strong> 
										<select class="custom-select"
											required="required" name="publicPrivate" id="publicPrivate">
											<option value="" selected>선택</option>
											<option value="10000">신규회원 10,000원 할인 쿠폰</option>

										</select>

									</div>

								</div>


								<table class="table text-right" style="padding-top: 100px">
									<tr>
										<td></td>
										<td></td>
										<td style="font-weight: bold; font-size: large;">수량</td>
										<td>
											<div class="qty-changer">
												<button class="qty-change" onclick="minus();">-</button>
												<input class="qty-input form-group" type="number"
													id="quantity" value="1" />
												<button class="qty-change" onclick="plus();">+</button>
											</div>
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td style="font-weight: bold; font-size: large;margin-right: -50px">총 결제 금액</td>
										<td>
											<div class="product-price" style="padding-right: 30px">
												<span id="last_price">12,000</span><span>원</span>
											</div>
										</td>
										<td></td>
									</tr>
								</table>
					
					
					
								<div style="padding-left: 600px"></div>
	
								<div class="row btn-group cart text-right" align="right" style="float: right;">
									<button type="button" class="btn btn-outline-info btn-lg">
										<a href="<c:url value='/Movieing/Ticket/Pay.mov'/>">티켓구매</a>
									</button>
								</div>
							</div>
						</div>
						<br>
						<hr>
						<br>
						<div class="panel panel-default panel-table">
							<div class="panel-body text-center">
								<div class="tr">
									<div class="td">
										<img class="img" alt=""
											src="<c:url value='/resources/img/news/date.png'/>"
											style="padding: 10px">
										<h5 style="padding: 10px">개최일정</h5>
										<a style="padding: 10px; font-size: large;">2019년 11월
											28일(목) ~ 12월 06일(금)</a>
									</div>

									<div class="td">
										<img class="img" alt=""
											src="<c:url value='/resources/img/news/location.png'/>"
											style="padding: 10px">
										<h5 style="padding: 10px">개최장소</h5>
										<a style="padding: 10px; font-size: large;">CGV 아트하우스 압구정,
											독립영화전용관 인디스페이스, 시네마테크전용관 서울아트시네마</a>
									</div>
									<div class="td">
										<img class="img" alt=""
											src="<c:url value='/resources/img/news/heart.png'/>"
											style="padding: 10px">
										<h5 style="padding: 10px">주최</h5>
										<a style="padding: 10px; font-size: large;">(사)한국독립영화협회,
											영화진흥위원회</a>
									</div>
									<div class="td">
										<img class="img" alt=""
											src="<c:url value='/resources/img/news/loud.png'/>"
											style="padding: 10px">
										<h5 style="padding: 10px">주관</h5>
										<a style="padding: 10px; font-size: large;">서울독립영화제2019
											집행위원회</a>
									</div>
									<div class="td">
										<img class="img" alt=""
											src="<c:url value='/resources/img/news/speaker.png'/>"
											style="padding: 10px">
										<h5 style="padding: 10px">부대행사</h5>
										<a style="padding: 10px; font-size: large;">개막식, 폐막식,
											토크포럼, 심야상영, 배우프로젝트</a>
									</div>
								</div>




							</div>

						</div>
						<br>
						<hr>

						<div class="row">
							<div class="col-sm-6 col-xs-6">
								<div class="media">

									<div class="media-body">
										<h4 class="media-heading">경쟁 독립영화제</h4>
										<p>한 해 동안 만들어진 다양한 독립영화들을 아우르고 재조명하는 국내 경쟁 독립영화제이다. 극, 실험,
											다큐멘터리, 애니메이션 등 다양한 독립영화를 주제, 형식, 길이 구분 없이 공모하여 시상한다. 또한 별도의
											초청 섹션을 통해 독립영화의 여러 경향을 소개한다.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-xs-6">
								<div class="media">

									<div class="media-body">
										<h4 class="media-heading">교류와 소통, 축제의 영화제</h4>
										<p>동시대의 독립영화인들이 한자리에서 만남으로써 독립영화의 시대정신과 비전을 찾고자 한다. 감독,
											배우, 스태프 등 다양한 영역에서 활동하는 영화인의 참여를 이끌어 내고 있고, 관객심사단 제도 운영 등 관객과
											적극 호흡하는 진정한 의미의 축제를 지향한다.</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-xs-6">
								<div class="media">

									<div class="media-body">
										<h4 class="media-heading">미래지향적 영화제</h4>
										<p>기성 영화의 대안이 될 새로운 독립영화를 적극적으로 발굴하는 영화제이다. 장편 독립영화의 성장과
											발전에 크게 기여하며 한국영화 안에서 독립영화의 위상을 확고히 하였다. 주류 영화와 차별화된 비전을 통해
											영화의 새로운 가능성에 부단히 도전하고 있다.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-xs-6">
								<div class="media">

									<div class="media-body">
										<h4 class="media-heading">영화제 이후를 고민하는 영화제</h4>
										<p>다양한 일상 사업을 펼치며 독립영화의 저변을 확대하고 있는 영화제이다. 전국 순회상영회,
											블루레이/DVD 제작, 온라인 상영회, 독립영화 매거진 및 도서 발간 등을 실시하고 있다. 제작과 배급/마케팅
											사업 등 실질적 제작 유통 사업에 참여하며 관객을 개발하고 있다.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-xs-6">
								<div class="media">

									<div class="media-body">
										<h4 class="media-heading">해외 독립영화 초청 및 국제 교류</h4>
										<p>세계적으로 주목받고 있는 해외 독립영화를 소개하는 영화제이다. 이를 통해 창작자에게 새로운 영감을
											불어 넣고 있다. 아시아의 중심에 있는 한국 독립영화의 위상에 걸맞게 국내 최대 독립영화제로서 향후 국제 교류
											네트워크 구축을 통해 해외 진출의 교부보가 되고자 한다.</p>
									</div>
								</div>
							</div>



						</div>


					</div>

				</div>
			</div>

		</div>

		<div class="container-fluid">
			<div class="col-md-12 product-info">

				<hr>
			</div>
		</div>
	</div>
</div>


<script>
	var quantity = parseInt($("#quantity").val());
	var price = parseInt(($('#last_price').text()).replace(',', '').replace(
			'원', ''));
	console.log(quantity);
	function minus() {
		console.log(quantity);
		quantity = parseInt($("#quantity").val());
		if (quantity > 0) {
			quantity -= 1;
		}
		$("#quantity").val(quantity);
	}

	function plus() {
		quantity = parseInt($("#quantity").val());
		quantity += 1;
		console.log('수량:'+quantity);
		$("#quantity").val(quantity);
		console.log('가격:'+$('#last_price').text());
	}

	
	//$(".qty-change").click(function (){
	$("#quantity").change(function() {
		console.log("총액", price * quantity);
		quantity = parseInt($("#quantity").val());
		var last = numberWithCommas(price * quantity);
		$('#last_price').text(last);

	});
	$(".qty-change").click(function() {
		var last = numberWithCommas(price * quantity);
		$('#last_price').text(last);

	});

	function numberWithCommas(x) {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	
	$(".custom-select").change(function(){
	    var discount =  $(this).val();
	    console.log('할인:'+discount);
	   	price = parseInt(($('#last_price').text()).replace(',', '').replace(
				'원', ''));
	    console.log('원래값'+price);
	    $('#last_price').text(numberWithCommas(price-10000));
	    
	});
	
	
	
	
</script>