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
									<img id="item-display" src="http://placehold.it/230x321" alt=""></img>
								</div>
							</div>
							<div class="col-md-9">
								<div class="product-title">서울독립영화제</div>
								<div class="product-desc">Seoul Independent Film Festival</div>
								<hr>
								<br>
								<table class="table">
									<tr>
										<td>서울독립영화제에에</td>
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