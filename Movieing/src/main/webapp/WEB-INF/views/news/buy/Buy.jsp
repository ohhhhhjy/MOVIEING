<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:700&display=swap" rel="stylesheet">
<style>

/*********************************************
					PRODUCTS
*********************************************/

.product{
	border: 1px solid #dddddd;
	height: 321px;
}

.product>img{
	max-width: 230px;
}

.product-rating{
	font-size: 20px;
	margin-bottom: 25px;
}

.product-title{
	font-size: 20px;
}

.product-desc{
	font-size: 14px;
}

.product-price{
	font-size: 22px;
}

.product-stock{
	color: #74DF00;
	font-size: 20px;
	margin-top: 10px;
}

.product-info{
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

.container-fluid{
	max-width: 1140px;
	margin: 0 auto;
}

.view-wrapper {
	float: right;
	max-width: 70%;
	margin-top: 25px;
}
button.qty-change{
    height: 30px;
    width: 30px;
    border-radius: 50%;
    background: #fff;
    border: 1px solid #e3e3e3;
}

.qty-input{
    height: 30px;
    width: 80px;
    text-align: center;
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
							<div class="product col-md-3 service-image-left">
								<div>
									<img class="img-responsive" src="<c:url value='/resources/img/news/j1.png'/>" alt="서울독립영화제" width="250px" height="320px"> 
								</div>
							</div>
							<div class="col-md-9">
								<form method="post" action="<c:url value='/Movieing/News/News.mov'/>">
								<div class="product-title"><input class="btn" type="submit" value="서울독립영화제" style="font-size: 25px"/></div>
								<input type="hidden" name="seoulDR" value="서울독립영화제"/>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
								</form>
								<br>
								<div class="product-desc" style="color: gray"><strong>&nbsp;Seoul Independent Film Festival</strong></div>
								<br>
								<br>
								<br>
								<table class="table">
									<tr>
										<td>서울독립영화제</td>
										<td>
											<div class="product-price" id="product-price">12,000원</div>
										</td>
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
										<td>총 결제 금액</td>
										<td>
											<div class="product-price">
												<span id="last_price">12,000</span><span>원</span>
											</div>
										</td>
										<td>
											<div class="btn-group cart">
												&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;
												<button type="button" class="btn btn-outline-info"><a href="<c:url value='/Movieing/Ticket/Pay.mov'/>">티켓구매</a></button>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
						<br>
					<hr>
					<br>
					<div class="row">
						<div class="col-md-12">
							<strong>- 국내 경쟁 독립 영화제</strong>
							<br>
							<p>극, 실험, 다큐멘터리, 애니메이션 등 다양한 독립영화를 주제, 형식, 길이 구분 없이 공모하여 시상한다. 또한 별도의 초청 섹션을 통해 독립영화의 다양한 경향을 소개한다.</p>
							<br>
							<strong>- 교류와 소통, 축제의 영화제</strong>
							<br>
							<p>동시대의 독립영화인들이 한자리에서 만남으로써 독립영화의 시대정신과 비전을 찾고자 하며,
기성 영화의 대안이 될 새로운 독립영화를 발굴하고 있다.</p>
							<br>
							<strong>- 영화제 이후를 고민하는 영화제</strong>
							<br>
							<p>일회성으로 그치는 영화제의 한계를 극복하기 위해, 순회상영회 인디피크닉, 베스트 컬렉션 DVD 제작,
온라인 상영회, 독립영화 인터뷰 매거진 NOW 등 다양한 활동을 실천하며 관객을 만나고 있다.
</p>
							<br>
							<strong>- 독립영화의 실질적 제작 배급 활성화</strong>
							<br>
							<p>일상 사업을 통해 독립영화의 배급 경로를 꾸준히 확장해 왔으며 사전제작 지원과 배급,
마케팅 지원 등 독립영화의 실질적 제작 유통 활성화에 기여하고자 한다.</p>
							<br>
							<strong>- 관객과 함께하는 영화제</strong>
							<br>
							<p>자원활동가와 함께 관객심사단 제도를 도입하여 관객 비평을 활성화하였다.
공식 후원모임 인디당은 독립영화 관객의 다양한 활동을 지지하는 관객 커뮤니티이다.</p>
							<br>
													
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
	var price = parseInt(($('#product-price').text()).replace(',','').replace('원',''));
	console.log(quantity);
	function minus() {
		console.log(quantity);
		quantity = parseInt($("#quantity").val());
		if(quantity>0){
			quantity-=1;
		}
		$("#quantity").val(quantity);
	}
	
	function plus() {
		quantity = parseInt($("#quantity").val());
		console.log(quantity);
			quantity+=1;
			$("#quantity").val(quantity);
			console.log($('#product-price').text());
			
	}
	
	//$(".qty-change").click(function (){
	$("#quantity").change(function (){
		console.log("총액",price*quantity);
		quantity = parseInt($("#quantity").val());
		var last = numberWithCommas(price*quantity);
		$('#last_price').text(last);
		
		});
	$(".qty-change").click(function (){
		var last = numberWithCommas(price*quantity);
		$('#last_price').text(last);
		
		});
	

	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}


	
	


		


</script>