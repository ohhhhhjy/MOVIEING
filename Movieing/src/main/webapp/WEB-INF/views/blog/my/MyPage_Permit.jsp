<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<link href="<c:url value='/resources/css/friendsLayout.css'/>"
	rel="stylesheet" type="text/css">
<!------ Include the above in your HEAD tag ---------->

<!-- 프사진가져온것 -->

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script>
	$(document).ready(function() {

		var readURL = function(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('.avatar').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$(".file-upload").on('change', function() {
			readURL(this);
		});
	});
</script>
<style>

/* 원형이미지들 */
.radiusImg {
	width: 250px;
	height: 250px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}
 th{
 background-color: gray;
 color:white;
 }
</style>




<div class="container" style="padding-top: 150px">



	<div class="row">

		<div class="col-md-3">
			<!-- col-md-3시작 -->

			<!--프사 -->
			<div style="text-align: center">
				<img src="${mypage.userProfile }"
					class="radiusImg img-thumbnail" alt="프로필 사진"
					style="display: block; margin: 0px auto;">
			</div>



			<div class="text-center" style="padding-bottom: 50px">
				<div>
					<h1
						style="padding-bottom: 10px; text-align: center; padding-top: 10px">${mypage.userName }
						님</h1>
				</div>
				<!-- 파일선택 -->
				<input type="file" class="text-center center-block file-upload">
			</div>


			<div class="row">

				<a href="<c:url value='/Movieing/Blog/MyPage.mov'/>"
					class="list-group-item list-group-item-action ">프로필 편집</a> <a
					href="<c:url value='/Movieing/Blog/MyPage_Pass.mov'/>"
					class="list-group-item list-group-item-action">비밀번호 설정</a> 
					<a href="<c:url value='/Movieing/Blog/MyPage_Coupon.mov'/>"
					class="list-group-item list-group-item-action">내 쿠폰함</a>
					<a
					href="<c:url value='/Movieing/Blog/MyPage_Permit.mov'/>"
					class="list-group-item list-group-item-action active">결제내역 </a> <a
					href="<c:url value='/Movieing/Blog/MyPage_Notice.mov"'/>"
					class="list-group-item list-group-item-action">알림 메시지</a> <a
					href="<c:url value='/Movieing/Blog/MyPage_QnA.mov'/>"
					class="list-group-item list-group-item-action">문의글</a> 

			</div>
		</div>
		<!-- col-md-3끝 -->



		<!-- 내용 상세보기 시작-->
		<div class="col-md-9">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>결제내역</h4>
							<hr>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-12">

							<div class="card">
							<c:if test="${empty buyList }" var="isEmpty">
								<h5>아직 결제하신 내역이 없어요...<i class="far fa-sad-cry"></i></h5>
							</c:if>
							<c:if test="${!isEmpty }">
								<table class="table table-hover shopping-cart-wrap" >
									<thead class="text-muted">
										<tr>
											<th scope="col" width="120">날짜</th>
											<th scope="col">주문정보</th>
											<th scope="col" width="120">상태</th>
											<th scope="col" width="200" class="text-right">확인/신청</th>
										</tr>
									</thead>
									<tbody>
									
									<c:forEach items="${buyList }" var="buy">
										<tr>		
											<td>
											<h6>${buy.buydate }</h6>
											</td>
											
											<td>
												<figure class="media">
													<div class="img-wrap" style="padding-right: 15px">
														<img
															src="<c:url value='/resources/img/news/j1.png'/>"
															class="img-thumbnail" style="width: 100px;height: 150px;">
													</div>
													
													<figcaption class="media-body">
														<h5 class="title text-truncate" style="font-weight: bold;">${buy.naming }</h5>
														<dl class="param param-inline small">
															<dt>수량: ${buy.quantity }개</dt>
															<dt>결제 방식 : 카드</dt>
															<dt>구매자: 오지윤</dt>
														</dl>
													<hr class="my-3">
														<dl class="param param-inline small">
															<h5>62,000원</h5>
														</dl>
														
													</figcaption>
												</figure>
											</td>
											<td>
												<div class="price-wrap">
													<h6 style="font-weight: bold;">결제완료</h6>
												</div> <!-- price-wrap .// -->
											</td>
											<td class="text-right"><a href=""
												class="btn btn-outline-danger"> 결제취소</a></td>
										</tr>
										</c:forEach>
						
										
									</tbody>
								</table>
							</c:if>
							</div>
							<!-- card.// -->

						</div>
						<!--container end.//-->
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- sm-9끝 -->






</div>
<!-- row -->
</div>