<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<!-- include libraries(jQuery, bootstrap) -->

<!------ Include the above in your HEAD tag ---------->

<style>
/*별점*/
	$(document).ready(function() {
		$('.starRev span').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			return false;
		});

	});

</style>

<script>
	function validateForm() {
		var name = document.getElementById('name').value;
		if (name == "") {
			document.getElementById('status').innerHTML = "Name cannot be empty";
			return false;
		}
		var email = document.getElementById('email').value;
		if (email == "") {
			document.getElementById('status').innerHTML = "Email cannot be empty";
			return false;
		} else {
			var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			if (!re.test(email)) {
				document.getElementById('status').innerHTML = "Email format invalid";
				return false;
			}
		}
		var subject = document.getElementById('subject').value;
		if (subject == "") {
			document.getElementById('status').innerHTML = "Subject cannot be empty";
			return false;
		}
		var message = document.getElementById('message').value;
		if (message == "") {
			document.getElementById('status').innerHTML = "Message cannot be empty";
			return false;
		}
		document.getElementById('status').innerHTML = "Sending...";
		document.getElementById('contact-form').submit();

	}

	/*ajax로 보내기*/

	/*별점*/
	$(document).ready(function() {
		$('.starRev span').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			return false;
		});

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
</script>


<style>
/* 별점 */


.rating {
  display: flex;
  justify-content: left;
  overflow: hidden;
  flex-direction: row-reverse;

}

.rating-0 {
  filter: grayscale(100%);
}

.rating > input {
  display: none;
}

.rating > label {
  cursor: pointer;
  width: 40px;
  height: 40px;
  margin-top: auto;
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23e3e3e3' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: center;
  background-size: 76%;
  transition: .3s;
}

.rating > input:checked ~ label,
.rating > input:checked ~ label ~ label {
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23fcd93a' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
}


.rating > input:not(:checked) ~ label:hover,
.rating > input:not(:checked) ~ label:hover ~ label {
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23d8b11e' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
}

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

<!-- css파일 -->
<link href="<c:url value='/resources/css/wirtepage.css'/>"
	rel="stylesheet" type="text/css">






<div class="container">
	<!--Section: Contact v.2-->
	<section>

		<!--Section heading-->
		<h2 class="h1-responsive font-weight-bold text-center my-4">영화 리뷰
			남기기</h2>
		<!--Section description-->
		<p class="text-center w-responsive mx-auto mb-5">여기에 무빙에서 추천해 준
			영화를 보고 난 후의 후기를 자유롭게 작성해주세요 :)</p>




		<!-- Default form contact -->
		<form class="border border-light" action="#!">

			<h5>영화명</h5>



			<div class="md-form input-group mb-3">
				<div class="input-group-prepend">
					<button class="btn btn-md btn-primary m-0 px-3" type="button"
						id="MaterialButton-addon1" data-toggle="modal"
						data-target="#modalCart">영화선택</button>
				</div>
				<div style="padding-bottom: 10px"></div>
				<input type="text" class="form-control"
					placeholder="여기에 선택한 영화이름이 뿌려짐"
					aria-label="Example text with button addon"
					aria-describedby="MaterialButton-addon1">
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
								aria-label="Close">
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
						<div class="modal-body"
							style="overflow: scroll; overflow-x: hidden; width: 490px; height: 430px;">
							<table class="table table-striped table-bordered table-sm"
								id="dtDynamicVerticalScrollExample" cellspacing="0">
								<thead>
									<tr>
										<th class="th-sm">일자</th>
										<th class="th-sm">영화명</th>
										<th class="th-sm">장르</th>
										<th class="th-sm">선택</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">19.10.28</th>
										<td>조커</td>
										<td>스릴러</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample1" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample1"></label>
											</div>
										</td>
									</tr>



									<tr>
										<th scope="row">19.10.27</th>
										<td>알라딘</td>
										<td>판타지</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample2" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample2"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.26</th>
										<td>겨울왕국</td>
										<td>판타지</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample3" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample2"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.25</th>
										<td>82년생 김지영</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample4" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample5" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample3" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample6" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample7" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample8" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample9" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample10" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample11" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample12" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">19.10.24</th>
										<td>예스터데이</td>
										<td>드라마</td>
										<td align="center">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample13" name="groupOfDefaultRadios">
												<label class="custom-control-label"
													for="defaultGroupExample3"></label>
											</div>
										</td>
									</tr>




								</tbody>
							</table>

						</div>
						<!--Footer-->
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-primary"
								data-dismiss="modal">취소</button>
							<button class="btn btn-primary">선택완료</button>
						</div>
					</div>
				</div>
			</div>
			<!-- Modal: modalCart모달 끝 -->



			<!-- Email -->
			
			<h5>평점</h5>
			<div class="container">
				<div class="feedback" >
					<div class="rating col-md-3" align="left" style="margin-left: -70px">
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

		<div style="padding-bottom: 10px"></div>

			<!-- Subject -->
			<h5>공개여부</h5>


			<select class="browser-default custom-select mb-4">
				<option value="" disabled>선택</option>
				<option value="1" selected="selected">나만보기</option>
				<option value="2">팔로우만 공개</option>
				<option value="3">전체공개</option>

			</select>



			<h5>해쉬태그</h5>
			<div class="mb-4" style="padding-bottom: 10px">
				<input type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroupMaterial-sizing-default"
					placeholder="#재밌음 #유익한 #추천영화">

			</div>

			<!-- Message -->
			<h5>내용</h5>
			<div class="form-group">
				<textarea class="form-control rounded-0"
					id="exampleFormControlTextarea2" rows="3" placeholder=""></textarea>
			</div>





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



			<!-- Send button -->
			<div class="mb-4">
				<button class="btn btn-info btn-block" type="submit"
					onclick="document.getElementById('contact-form').submit();">제출</button>
			</div>
		</form>
		<!-- Default form contact -->






	</section>
	<!--Section: Contact v.2-->





</div>
