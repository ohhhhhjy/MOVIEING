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
				<th scope="col"  style="width: 25%" colspan="1">제목</th>
				<td scope="col"  style="width: 75%" colspan="5">${bbs.qnaTitle }</td>

			</tr>
		</thead>
		<tbody>
			<tr>
				<th  style="width: 25%">작성자</th>
				<td  style="width: 25%">${bbs.userId }</td>
				<th style="width: 25%">작성일</th>
				<td style="width: 25%">${bbs.postdate }</td>
				
			</tr>


			<tr>
				<td colspan="6">
					<br>
					${id==bbs.userId?bbs.qnaContent:'회원님이 작성한 게시글이 아닙니다' }
					<br>
					<br>
				</td>
			</tr>
		</tbody>
	</table>


	<!-- 이전글/다음글 -->
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col" style="width: 25%">이전글</th>
				<td scope="col" style="width: 75%"><a href="<c:url value='/Movieing/my/Customer_View.mov?qnaNo=${bbs.qnaNo+1 }'/>">${before}</a></td>

			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="col" style="width: 25%">다음글</th>
				<td scope="col" style="width: 75%"><a href="<c:url value='/Movieing/my/Customer_View.mov?qnaNo=${bbs.qnaNo-1 }'/>">${after }</a></td>
			</tr>

		</tbody>
	</table>

	<!-- 댓글 -->
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col" colspan="6">답변</th>

			</tr>
		</thead>
	</table>
	

	<div class="comments" style="border-color: black;border: medium;">
		
		<div class="comment-wrap">
			<div class="photo">
				<div class="avatar">
					<img style="width: 30px;height: 30px;" alt="admin" src="https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png">
				</div>
				<div>
					<span style="text-align: center;">관리자</span>
				</div>
			</div>
			<div class="comment-block">
				<p class="comment-text">${bbs.qnaAnswer!=null?bbs.qnaAnswer:'아직 답변이 작성되지 않았습니다'}</p>
				
			</div>
		</div>

		
	</div>





</div>