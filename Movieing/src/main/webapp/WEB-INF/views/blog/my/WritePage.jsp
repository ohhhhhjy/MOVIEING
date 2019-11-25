<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<!-- include libraries(jQuery, bootstrap) -->

<!------ Include the above in your HEAD tag ---------->
<link id="themecss" rel="stylesheet" type="text/css"
	href="//www.shieldui.com/shared/components/latest/css/light/all.min.css" />
<script type="text/javascript"
	src="//www.shieldui.com/shared/components/latest/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="//www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>


<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">


<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<!-- 스마트 에디터 -->
<!--  
<script type="text/javascript"
	src="<c:url value='/webapp/smarteditor2-master/workspace/static/js/service/HuskyEZCreator.js'/>"
	charset="utf-8"></script>
-->

<style>
.rating-header {
	margin-top: -10px;
	margin-bottom: 10px;
}

/* 별점 */
/*
.rating {
	display: flex;
	justify-content: left;
	overflow: hidden;
	flex-direction: row-reverse;
}

.rating-0 {
	filter: grayscale(100%);
}

.rating>input {
	display: none;
}

.rating>label {
	cursor: pointer;
	width: 40px;
	height: 40px;
	margin-top: auto;
	background-image:
		url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23e3e3e3' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
	background-repeat: no-repeat;
	background-position: center;
	background-size: 76%;
	transition: .3s;
}

.rating>input:checked ~ label, .rating>input:checked ~ label ~ label {
	background-image:
		url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23fcd93a' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
}

.rating>input:not (:checked ) ~ label:hover, .rating>input:not (:checked
	 ) ~ label:hover ~ label {
	background-image:
		url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23d8b11e' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
}
*/

/*모달검색*/
.active-pink-2















































 















































input






























































































[
type
=
text
]






























































































:focus






























































































:not















































 















































(
[
readonly
]















































 















































)
{
border-bottom






























































































:















































 















































1
px















































 















































solid















































 















































#f48fb1






























































































;
box-shadow






























































































:















































 















































0
1
px















































 















































0
0
#f48fb1






























































































;
}
.active-pink input[type=text] {
	border-bottom: 1px solid #f48fb1;
	box-shadow: 0 1px 0 0 #f48fb1;
}

.active-purple-2















































 















































input






























































































[
type
=
text
]






























































































:focus






























































































:not















































 















































(
[
readonly
]















































 















































)
{
border-bottom






























































































:















































 















































1
px















































 















































solid















































 















































#ce93d8






























































































;
box-shadow






























































































:















































 















































0
1
px















































 















































0
0
#ce93d8






























































































;
}
.active-purple input[type=text] {
	border-bottom: 1px solid #ce93d8;
	box-shadow: 0 1px 0 0 #ce93d8;
}

.active-cyan-2















































 















































input






























































































[
type
=
text
]






























































































:focus






























































































:not















































 















































(
[
readonly
]















































 















































)
{
border-bottom






























































































:















































 















































1
px















































 















































solid















































 















































#4dd0e1






























































































;
box-shadow






























































































:















































 















































0
1
px















































 















































0
0
#4dd0e1






























































































;
}
.active-cyan input[type=text] {
	border-bottom: 1px solid #4dd0e1;
	box-shadow: 0 1px 0 0 #4dd0e1;
}

.active-cyan .fa, .active-cyan-2 .fa {
	color: #4dd0e1;
}

.active-purple .fa, .active-purple-2 .fa {
	color: #ce93d8;
}

.active-pink .fa, .active-pink-2 .fa {
	color: #f48fb1;
}
</style>

<script>
	function validateForm() {
		var name = document.getElementById('movie').value;
		if (name == "") {
			document.getElementById('status').innerHTML = "영화를 선택해주세요";
			return false;
		}
		var email = document.getElementById('feedback').value;
		if (email == "") {
			document.getElementById('status').innerHTML = "별점을 매겨주세요";
			return false;
		} else {
			var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			if (!re.test(email)) {
				document.getElementById('status').innerHTML = "Email format invalid";
				return false;
			}
		}
		var subject = document.getElementById('browser-default').value;
		if (subject == "") {
			document.getElementById('status').innerHTML = "공개여부를 선택해주세요";
			return false;
		}
		var message = document.getElementById('message').value;
		if (message == "") {
			document.getElementById('status').innerHTML = "Message cannot be empty";
			return false;
		}
		document.getElementById('status').innerHTML = "Sending...";
		document.getElementById('contact-form').submit();

	}/////////////////////////////////////////

	/*ajax로 보내기*/

	/*별점*/
	/*
	 $(document).ready(function() {

	 //라디오버튼 값가져오기]
	 var inputValue = $('input[name="rating"]').is("checked");
	 alert(inputValue);
	 //return false;

	 });
	 */

	jQuery(document).ready(function($) {

		$(".btnrating").on('click', (function(e) {

			var previous_value = $("#selected_rating").val();

			var selected_value = $(this).attr("data-attr");
			$("#selected_rating").val(selected_value);

			$(".selected-rating").empty();
			$(".selected-rating").html(selected_value);

			for (i = 1; i <= selected_value; ++i) {
				$("#rating-star-" + i).toggleClass('btn-warning');
				$("#rating-star-" + i).toggleClass('btn-default');
			}

			for (ix = 1; ix <= previous_value; ++ix) {
				$("#rating-star-" + ix).toggleClass('btn-warning');
				$("#rating-star-" + ix).toggleClass('btn-default');
			}

			/*별점 값 보내기*/
			var star = $(".selected-rating").text();
			console.log('내가 준 별점:' + star);
			document.write.grade.value = star;

		}));

	});
	/*
	모달 스크롤
	 */
	$(document).ready(function() {
		$('#dtDynamicVerticalScrollExample').DataTable({
			"scrollY" : "50vh",
			"scrollCollapse" : true,
		});
		$('.dataTables_length').addClass('bs-select');
	});

	/*모달 영화 선택*/
	$(document).ready(function() {
		$("#trOne tr").click(function() {
			//클릭한 row
			var tr = $(this);
			var td = tr.children();

			// td.eq(index)를 통해 값을 가져올 수도 있다.
			var title = td.eq(0).text();
			console.log(title);
			$('.movie').val(title);
			$('#modalCart').modal("hide");
			
			//평가한 별점 뿌리기 ajax
			$.ajax({
				url : "<c:url value='/Movieing/Blog/reviewEvalue.mov'/>",
				type : 'post',
				dataType : 'text',
				data : {
					movieTitle : title
				},
				beforeSend : function(
						xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
					xhr
							.setRequestHeader(
									"${_csrf.headerName}",
									"${_csrf.token}");
				},
				success : function(data) {
					console.log('별점가져왔다'+data);
					$(".btnrating").get(data-1).click();//별에 별점넣기
					
				},
				error : function(data) {
					console
							.log("에러:"
									+ data.responseText);
				}

			});
			
			
			

		});
	});
	/*입력완료 경고창*/
	$(document).ready(function() {
		function success() {
			if (movieTitle.value = "") {
				return false;
			} else if (("#publicPrivate option:selected").val() == "") {
				return false;
			} else if (reviewContent.value = "") {
				return false;
			} else if ($(".selected-rating").text() == "") {
				return false;
			} else {
				alert("입력이 완료되었습니다!");
			}

		}
	});


</script>



<!-- css파일 -->
<link href="<c:url value='/resources/css/wirtepage.css'/>"
	rel="stylesheet" type="text/css">


</head>




<body>
	<div class="container">
		<!--Section: Contact v.2-->
		<section>

			<!--Section heading-->
			<h2 class="h1-responsive font-weight-bold text-center my-4">영화
				리뷰 남기기</h2>
			<!--Section description-->
			<p class="text-center w-responsive mx-auto mb-5">여기에 무빙에서 추천해 준
				영화를 보고 난 후의 후기를 자유롭게 작성해주세요 :)</p>




			<!-- Default form contact -->
			<form class="border border-light" method="post" id="form"
				action="<c:url value='/Movieing/Blog/BlogMain.mov'/>" name="write">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}">

				<h5>영화명</h5>



				<div class="md-form input-group mb-3">
					<div class="input-group-prepend">
						<button class="btn btn-md btn-primary m-0 px-3" type="button"
							id="MaterialButton-addon1" data-toggle="modal"
							data-target="#modalCart">영화선택</button>
					</div>
					<div style="padding-bottom: 10px"></div>
					<input type="text" class="form-control movie" name="movieTitle"
						placeholder="영화를 선택해주세요"
						aria-label="Example text with button addon"
						aria-describedby="MaterialButton-addon1" required="required">
				</div>

				<!--  
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#modalCart">영화선택</button>
			<div style="padding-bottom: 10px"></div>
			<input type="text" id="defaultContactFormName"
				class="form-control mb-4" placeholder="영화명">
				-->

				<!-- 영화선택 시 모달 -->


				<!-- Modal: modalCart -->
				<div class="modal fade" id="modalCart" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<!--Header-->
							<div class="modal-header">

								<h4 class="modal-title" id="myModalLabel">내가 본 영화</h4>

								<button type="button" class="close" data-dismiss="modal"
									name="MOVIE_TITLE" aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>

							</div>

							<!-- 검색바.
<div style="width: 200px; height: 30px" class="row">
										<form class="form-inline md-form form-sm mt-0">
											<i class="fas fa-search" aria-hidden="true"></i> <input
												class="form-control form-control-sm ml-3 w-75" type="text"
												placeholder="검색" aria-label="Search">
										</form>
									</div> -->



							<!--Body-->
							<c:if test="${empty write}" var="isEmpty">
								<div class="modal-body">
									<h5>
										리뷰를 쓸 영화가 없어요...<br>평가메뉴에서 본 영화의 평점을 매겨주세요! :)
									</h5>
								</div>
								<div class="modal-footer">
									<a
										href="<c:url value='/Movieing/Movie/screening/First_like.mov'/>"><button
											type="button" class="btn btn-outline-primary waves-effect">
											<i class="fas fa-star"></i> 더 평가하러가기
										</button></a>

								</div>
							</c:if>
							<c:if test="${!isEmpty }">
								<div class="modal-body"
									style="overflow: scroll; overflow-x: hidden; width: 490px; height: 430px; text-align: center;">
									<table class="table table-striped table-bordered table-sm"
										id="dtDynamicVerticalScrollExample" cellspacing="0">
										<thead>
											<tr>
												<th class="th-sm">영화명</th>
												<th class="th-sm">장르</th>
												<th class="th-sm">개봉년도</th>
												<th class="th-sm">국가</th>
											</tr>
										</thead>
										<tbody id="trOne">
											<c:forEach items="${write}" var="item">
												<tr>
													<td style="font-weight: bold;">${item.movieTitle }</td>
													<td>${item.movieGenre }</td>
													<td>${item.movieYear }</td>
													<td>${item.movieCountry }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>


								<!--Footer-->
								<div class="modal-footer">

									<h5>선택한 영화:</h5>
									<input placeholder="영화를 선택해주세요" type="text"
										id="inputPlaceholderEx" class="form-control movie"
										style="width: 240px; height: 30px">
									<div style="padding-right: 80px"></div>

								</div>
							</c:if>
						</div>
					</div>
				</div>
				<!-- Modal: modalCart모달 끝 -->



				<!-- Email -->
				<div style="padding-bottom: 10px"></div>
				<h5>평점</h5>
				<!--  
			<div class="container">
				<div class="feedback">
					<div class="rating col-md-3" align="left" name="grade"
						style="margin-left: -70px" required="required">
					
							<input type="radio" name="rating" id="rating-5"> <label
								for="rating-5"></label> <input type="radio" name="rating"
								id="rating-4"> <label for="rating-4"></label> <input
								type="radio" name="rating" id="rating-3"> <label
								for="rating-3"></label> <input type="radio" name="rating"
								id="rating-2"> <label for="rating-2"></label> <input
								type="radio" name="rating" id="rating-1"> <label
								for="rating-1"></label>
					
					</div>
				</div>

			</div>
			
			-->

				<div class="form-group" id="rating-ability-wrapper">
					<label class="control-label" for="rating"> <span
						class="field-label-info"></span> <input type="hidden"
						id="selected_rating" name="selected_rating" value=""
						required="required">
					</label>
					<h2 class="bold rating-header" style="">
						<!-- 
					<span class="selected-rating" style="color: red" name="grade">0</span><small> / 5</small>
					 -->
						<input class="selected-rating col-md-1"
							style="color: red; border: none; font-weight: bold; text-align: right;"
							name="grade" id="grade"></input><small> / 5</small>

					</h2>
					<button type="button" class="btnrating btn btn-default btn-lg"
						data-attr="1" id="rating-star-1">
						<i class="fa fa-star" aria-hidden="true"></i>
					</button>
					<button type="button" class="btnrating btn btn-default btn-lg"
						data-attr="2" id="rating-star-2">
						<i class="fa fa-star" aria-hidden="true"></i>
					</button>
					<button type="button" class="btnrating btn btn-default btn-lg"
						data-attr="3" id="rating-star-3">
						<i class="fa fa-star" aria-hidden="true"></i>
					</button>
					<button type="button" class="btnrating btn btn-default btn-lg"
						data-attr="4" id="rating-star-4">
						<i class="fa fa-star" aria-hidden="true"></i>
					</button>
					<button type="button" class="btnrating btn btn-default btn-lg"
						data-attr="5" id="rating-star-5">
						<i class="fa fa-star" aria-hidden="true"></i>
					</button>
				</div>

				<div style="padding-bottom: 10px"></div>



				<!-- Subject -->
				<h5>공개여부</h5>


				<select class="browser-default custom-select mb-4"
					required="required" name="publicPrivate" id="publicPrivate">
					<option value="" selected>선택</option>
					<option value="N">나만보기</option>
					<option value="Y">전체 공개</option>

				</select>


				<!--  

			<h5>해쉬태그</h5>
			<div class="mb-4" style="padding-bottom: 10px">
				<input type="text" class="form-control" required="required"
					aria-label="Sizing example input" name="hashtag"
					aria-describedby="inputGroupMaterial-sizing-default"
					placeholder="#해쉬태그 방식으로 작성해주세요">

			</div>
			-->


				<!-- Message -->

				<h5>내용</h5>
				<div class="form-group">

					<textarea class="form-control rounded-0" required="required"
						name="reviewContent" id="exampleFormControlTextarea2" rows="3"
						placeholder=""></textarea>
		
						<!--  
					<textarea name="weditor" id="weditor" rows="10" cols="100"></textarea>
					-->
				</div>


				<!-- 
			<div class="custom-control custom-checkbox mb-4">
				<div class="row">
					<div>
						<label style="font-weight: bold;">이 글에 스포일러가 포함되어 있나요?</label>
					</div>
					<div style="padding-right: 50px"></div>
					<div class="row">
						<div class="form-check mb-3">
							<input class="form-check-input" type="radio" id="radio1"
								name="cmethod" value="phone" checked> <label
								class="form-check-label" for="radio1">있음</label>
						</div>
						<div style="padding-right: 10px"></div>
						<div class="form-check mb-3">
							<input class="form-check-input" type="radio" id="radio2"
								name="cmethod" value="mail"> <label
								class="form-check-label" for="radio2">없음</label>
						</div>
					</div>

				</div>
			</div>
 -->

				<!-- Send button -->
				<div class="mb-4">
					<button class="btn btn-info btn-block" type="submit"
						onclick="success()">제출</button>
				</div>


			</form>
			<!-- Default form contact -->




		</section>
		<!--Section: Contact v.2-->





	</div>
</body>
</html>