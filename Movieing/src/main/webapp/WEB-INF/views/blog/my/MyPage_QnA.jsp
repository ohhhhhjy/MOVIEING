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

/*모달 위치*/
.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}
</style>



<div class="container" style="padding-top: 150px">



	<div class="row">

		<div class="col-md-3">
			<!-- col-md-3시작 -->

			<!--프사 -->
			<div style="text-align: center">
				<img src="<c:url value='/resources/img/friends/dahee.jpg'/>"
					class="radiusImg img-thumbnail" alt="프로필 사진"
					style="display: block; margin: 0px auto;">
			</div>


			<div class="text-center" style="padding-bottom: 50px">
				<div>
					<h1 style="padding-bottom: 10px;text-align: center;padding-top: 10px">${mypage.userName } 님</h1>
				</div>
				<!-- 파일선택 -->
				<input type="file" class="text-center center-block file-upload">
			</div>


			<div class="row">

				<a href="<c:url value='/Movieing/Blog/MyPage.mov'/>"
					class="list-group-item list-group-item-action ">프로필
					편집</a> <a href="<c:url value='/Movieing/Blog/MyPage_Pass.mov'/>"
					class="list-group-item list-group-item-action">비밀번호
					설정</a> <a href="<c:url value='/Movieing/Blog/MyPage_Permit.mov'/>"
					class="list-group-item list-group-item-action">결제내역
					</a> <a href="<c:url value='/Movieing/Blog/MyPage_Notice.mov"'/>"
					class="list-group-item list-group-item-action">알림
					메시지</a> <a href="<c:url value='/Movieing/Blog/MyPage_QnA.mov'/>"
					class="list-group-item list-group-item-action active">문의글</a>
				<a href="<c:url value='/Movieing/Blog/MyPage_Help.mov'/>" class="list-group-item list-group-item-action">도움말</a>

			</div>
		</div>
		<!-- col-md-3끝 -->




		<!-- 내용 상세보기 시작-->
		<div class="col-md-9">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>고객센터에 문의하시겠어요?</h4>
							<hr>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<form>
								<div class="row">
									<div class="col-md-1" style="text-align: right;">
										<img alt="전화기"
											src="<c:url value='/resources/img/myPage/call-answer.png'/>"
											style="width: 25px; height: 25px;">
									</div>
									<div class="col-md-11" style="text-align: left;">
										<h5 style="font-weight: bold;">문의 전화</h5>
										<h5 style="font-weight: bold; color: red;">02-1234-5678</h5>
										<h6 style="color: gray;">문의 전화 이용 시간은 오전 9:30 - 오후 6:30,
											월~금입니다. 이용의 불편을 드려 죄송합니다.</h6>
									</div>
								</div>

								<!--  공간 띄우기-->
								<div style="padding-bottom: 20px"></div>

								<div class="row">
									<div class="col-md-1" style="text-align: right;">
										<img alt="문의"
											src="<c:url value='/resources/img/myPage/comments.png'/>"
											style="width: 25px; height: 25px;">
									</div>
									<div class="col-md-11" style="text-align: left;">
										<h5 style="font-weight: bold;">문의글 작성하기</h5>

										<button class="btn btn-secondary btn-sm" type="button"
											data-toggle="modal" data-target="#myModal">작성하기</button>

										<button class="btn btn-secondary btn-sm" type="button"
											onclick="location.href = '<c:url value='/Movieing/my/Customer.mov'/>'">내가
											작성한 글보기</button>

										<!-- 작성 모달 -->

										<div class="modal fade" id="myModal" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<!-- 모달헤더 -->

														<h4 class="modal-title" id="myModalLabel">문의글 작성하기</h4>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>

													<div class="modal-body">
														<!-- 모달 바디 -->

														<div class="col-12" style="padding-bottom: 20px">
															<input id="name" name="name" class="form-control here"
																type="text" placeholder="제목">
														</div>


														<div class="col-12">
															<textarea id="publicinfo" name="publicinfo" cols="60"
																rows="10" class="form-control" placeholder="내용"></textarea>
														</div>






														<div style="padding-left: 30px;padding-top: 10px" >

															<div class="row">
																<div class="form-check mb-3">
																	<input class="form-check-input" type="radio"
																		id="radio1" name="cmethod" value="phone" checked>
																	<label class="form-check-label" for="radio1">전체공개</label>
																</div>
																<div style="padding-right: 10px"></div>
																<div class="form-check mb-3">
																	<input class="form-check-input" type="radio"
																		id="radio2" name="cmethod" value="mail"> <label
																		class="form-check-label" for="radio2">나만보기</label>
																</div>
															</div>
														</div>



														<div class="modal-footer">

															<button type="button" class="btn btn-default"
																data-dismiss="modal">취소</button>
															<button type="button" class="btn btn-primary">제출</button>

														</div>
													</div>
												</div>
											</div>
											<!-- 모달 끝 -->

										</div>

									</div>
								</div>
								<!--  공간 띄우기-->
								<div style="padding-bottom: 20px"></div>

								<div class="row">
									<div class="col-md-1" style="text-align: right;">
										<img alt="채팅"
											src="<c:url value='/resources/img/myPage/contract.png'/>"
											style="width: 25px; height: 25px;">
									</div>
									<div class="col-md-11" style="text-align: left;">

										<h5 style="font-weight: bold;">1:1 채팅 문의</h5>
										<button type="button" class="btn btn-info btn-sm">채팅하기</button>

										<h6 style="color: gray;">1:1 채팅 이용 시간은 오전 9:30 - 오후 6:30,
											월~금입니다. 이용의 불편을 드려 죄송합니다.</h6>

									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- sm-9끝 -->


	</div>
	<!-- row -->
</div>