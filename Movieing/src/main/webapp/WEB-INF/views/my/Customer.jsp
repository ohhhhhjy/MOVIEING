<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.project-tab {
	margin-top: -13%;
}

.project-tab #tabs {
	background: #007b5e;
	color: #eee;
}

.project-tab #tabs h6.section-title {
	color: #eee;
}

.project-tab #tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active
	{
	color: #0062cc;
	background-color: transparent;
	border-color: transparent transparent #f3f3f3;
	border-bottom: 3px solid !important;
	font-size: 16px;
	font-weight: bold;
}

.project-tab .nav-link {
	border: 1px solid transparent;
	border-top-left-radius: .25rem;
	border-top-right-radius: .25rem;
	color: #0062cc;
	font-size: 16px;
	font-weight: 600;
}

.project-tab .nav-link:hover {
	border: none;
}

.project-tab thead {
	background: #f3f3f3;
	color: #333;
}

.project-tab a {
	text-decoration: none;
	color: #333;
	font-weight: 600;
}

/*검색*/
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
</style>




<div class="container" style="padding-top: 170px;">
	<h1>고객센터</h1>
	<div style="padding-right: 10px"></div>


	<section id="tabs" class="project-tab">
		<div>

			<nav style="padding-bottom: 10px">
				<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
					<a class="nav-item nav-link active" id="nav-home-tab"
						data-toggle="tab" href="#nav-home" role="tab"
						aria-controls="nav-home" aria-selected="true">FAQ</a> <a
						class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
						href="#nav-profile" role="tab" aria-controls="nav-profile"
						aria-selected="false">공지사항</a> <a class="nav-item nav-link"
						id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
						role="tab" aria-controls="nav-contact" aria-selected="false">1:1문의</a>
				</div>
			</nav>


			<div class="tab-content" id="nav-tabContent">
				<div class="row">

					<div style="padding-bottom: 20px; padding-right: 10px">
						<select class="form-control" style="width: 120px; height: 35px">
							<option>제목</option>
							<option>내용</option>
							<option>제목+내용</option>
							<option>작성자</option>

						</select>
					</div>



					<!-- 검색 -->
					<div style="width: 500px;">
						<!-- Search form -->
						<form class="form-inline active-cyan-4">
							<input class="form-control form-control-sm mr-3 w-75" type="text"
								style="height: 35px" placeholder="검색" aria-label="Search">
							<i class="fas fa-search" aria-hidden="true"></i>
						</form>
					</div>



					<div style="padding-right: 300px"></div>

					<div class="row" style="text-align: right;">
						<p>총</p>
						<p style="font-weight: bold;">255</p>
						<p>개의 게시물이 있습니다.</p>
					</div>



				</div>
				<div style="padding-right: 10px"></div>
				<!-- -------------------------------------------밑에서 부터 내용--------------------------------------------------------- -->



				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab">
					<table class="table" id="dtBasicExample" cellspacing="0">
						<thead>
							<tr>
								<th>번호</th>
								<th>분류</th>
								<th>질문</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">1</a></td>
								<td>회원등급</td>
								<td>회원등급이 어떻게 올라가나요?</td>
							</tr>
							<tr>
								<td><a href="#">2</a></td>
								<td>결제</td>
								<td>결제가 되지 않아요</td>
							</tr>
							<tr>
								<td><a href="#">3</a></td>
								<td>블로그</td>
								<td>글 작성이 안되요</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane fade" id="nav-profile" role="tabpanel"
					aria-labelledby="nav-profile-tab">
					<table class="table" cellspacing="0">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>등록일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">5</a></td>
								<td>시스템 점검 안내</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
							<tr>
								<td><a href="#">4</a></td>
								<td>시스템 점검 안내</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
							<tr>
								<td><a href="#">3</a></td>
								<td>시스템 점검 안내</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
							<tr>
								<td><a href="#">2</a></td>
								<td>시스템 점검 안내</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
							<tr>
								<td><a href="#">1</a></td>
								<td>시스템 점검 안내</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="tab-pane fade" id="nav-contact" role="tabpanel"
					aria-labelledby="nav-contact-tab">
					<table class="table" cellspacing="0">

						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>등록일</th>
								<th>조회수</th>
							</tr>
						</thead>

						<tbody>

							<tr>
								<td>5</td>
								<td><a
									href="<c:url value='/Movieing/my/Customer_View.mov'/>">이게
										불편해요!</a></td>
								<td>유아인</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
							<tr>
								<td><a href="#">4</a></td>
								<td>이게 불편해요!</td>
								<td>유아인</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
							<tr>
								<td><a href="#">3</a></td>
								<td>이게 불편해요!</td>
								<td>유아인</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
							<tr>
								<td><a href="#">2</a></td>
								<td>이게 불편해요!</td>
								<td>유아인</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
							<tr>
								<td><a href="#">1</a></td>
								<td>이게 불편해요!</td>
								<td>유아인</td>
								<td>2019-11-06</td>
								<td>54239</td>
							</tr>
						</tbody>
					</table>

					<div align="right" style="text-align: right;">
						<button class="btn btn-secondary" type="button"  onclick = "location.href = '<c:url value='/Movieing/my/Customer_Write.mov'/>'"
											>글쓰기</button>
											</div>
				</div>
			</div>
		</div>


		<div style="padding-left: 400px;padding-top: 20px">
			<nav>
				<ul class="pagination pg-blue">
					<li class="page-item"><a class="page-link"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item active"><a class="page-link">1</a></li>
					<li class="page-item"><a class="page-link">2</a></li>
					<li class="page-item"><a class="page-link">3</a></li>
					<li class="page-item"><a class="page-link">4</a></li>
					<li class="page-item"><a class="page-link">5</a></li>
					<li class="page-item"><a class="page-link" aria-label="Next">
							<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
					</a></li>
				</ul>
			</nav>
		</div>



	</section>
</div>
