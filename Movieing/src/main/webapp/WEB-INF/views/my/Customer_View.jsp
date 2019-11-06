<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
table {
	width: 100%;
	border: 2px solid #000000;
	border-collapse: collapse;
}

th {
	border-bottom: 1px solid #444444;
	padding: 10px;
	text-align: center;
	background-color: #edebd8;
}

/*댓긓*/
html, body {


	font-family: "PT Sans", "Helvetica Neue", "Helvetica", "Roboto", "Arial",
		sans-serif;
	color: #555f77;
	-webkit-font-smoothing: antialiased;
}

input, textarea {
	outline: none;
	border: none;
	display: block;
	margin: 0;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	font-family: "PT Sans", "Helvetica Neue", "Helvetica", "Roboto", "Arial",
		sans-serif;
	font-size: 1rem;
	color: #555f77;
}

input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
	color: #ced2db;
}

input::-moz-placeholder, textarea::-moz-placeholder {
	color: #ced2db;
}

input:-moz-placeholder, textarea:-moz-placeholder {
	color: #ced2db;
}

input:-ms-input-placeholder, textarea:-ms-input-placeholder {
	color: #ced2db;
}

p {
	line-height: 1.3125rem;
}

.comments {
	margin: 2.5rem auto 0;

	padding: 0 1.25rem;
}

.comment-wrap {
	margin-bottom: 1.25rem;
	display: table;
	width: 100%;
	min-height: 5.3125rem;
}

.photo {
	padding-top: 0.625rem;
	display: table-cell;
	width: 3.5rem;
}

.photo .avatar {
	height: 2.25rem;
	width: 2.25rem;
	border-radius: 50%;
	background-size: contain;
}

.comment-block {
	padding: 1rem;
	background-color: #fff;
	display: table-cell;
	vertical-align: top;
	border-radius: 0.1875rem;
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.08);
}

.comment-block textarea {
	width: 100%;
	resize: none;
}

.comment-text {
	margin-bottom: 1.25rem;
}

.bottom-comment {
	color: #acb4c2;
	font-size: 0.875rem;
}

.comment-date {
	float: left;
}

.comment-actions {
	float: right;
}

.comment-actions li {
	display: inline;
	margin: -2px;
	cursor: pointer;
}

.comment-actions li.complain {
	padding-right: 0.75rem;
	border-right: 1px solid #e1e5eb;
}

.comment-actions li.reply {
	padding-left: 0.75rem;
	padding-right: 0.125rem;
}

.comment-actions li:hover {
	color: #0095ff;
}
</style>

<div class="container" style="padding-top: 150px">
	<h2 style="text-align: center;">문의글</h2>
	<div class="row">
		<div class="col-md-1">
			<a href="<c:url value='/Movieing/my/Customer.mov'/>"><button type="button" class="btn btn-info">목록</button></a>
		</div>
		<div class="col-md-10"></div>
		<div class="col-md-1">
			<button type="button" class="btn btn-danger">삭제</button>
		</div>
	</div>
	<div style="padding-bottom: 10px"></div>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col" colspan="1">제목</th>
				<td scope="col" colspan="5">뭐 이런 하다하다..별..!</td>


			</tr>
		</thead>
		<tbody>
			<tr>
				<th>작성자</th>
				<td>김팔복</td>
				<th>작성일</th>
				<td>2019-11-06</td>
				<th>조회수</th>
				<td>3412</td>

			</tr>


			<tr>
				<td colspan="6">이 무빙 도대체 뭐죠? 뭐 이런 완벽한 홈페이지가 있단 말이죠? <br>정말
					이제 안걸 너무 화가 납니다... <br>이런 서비스 무료로 제공해주셔서 더 화가납니다!<br> 이제
					제 돈으로 많이 혼나세요!!!!!!!
				</td>
			</tr>


		</tbody>
	</table>


	<!-- 이전글/다음글 -->
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col">이전글</th>
				<td scope="col">블로그가 갑자기 안 들어가집니다..이것은 한두번이..</td>

			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="col">다음글</th>
				<td scope="col">누군가 비속어 사용을 남발하네요..규제부탁드려요</td>
			</tr>

		</tbody>
	</table>

	<!-- 댓글 -->
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col" colspan="6">댓글</th>

			</tr>
		</thead>
	</table>
	
	


	<div class="comments" style="border-color: black;border: medium;">
		
		<div class="comment-wrap">
			<div class="photo">
				<div class="avatar"
					style="background-image: url('https://s3.amazonaws.com/uifaces/faces/twitter/jsa/128.jpg')"></div>
			</div>
			<div class="comment-block">
				<p class="comment-text">호갱님 ㅠㅠ 정말 죄송하네요^^ㅜㅗ</p>
				<div class="bottom-comment">
					<div class="comment-date">Aug 24, 2014 @ 2:35 PM</div>
					<ul class="comment-actions">
						<li class="complain">Complain</li>
						<li class="reply">Reply</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="comment-wrap">
			<div class="photo">
				<div class="avatar"
					style="background-image: url('https://s3.amazonaws.com/uifaces/faces/twitter/felipenogs/128.jpg')"></div>
			</div>
			<div class="comment-block">
				<p class="comment-text">ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</p>
				<div class="bottom-comment">
					<div class="comment-date">Aug 23, 2014 @ 10:32 AM</div>
					<ul class="comment-actions">
						<li class="complain">Complain</li>
						<li class="reply">Reply</li>
					</ul>
				</div>
			</div>
		</div>
	</div>





</div>