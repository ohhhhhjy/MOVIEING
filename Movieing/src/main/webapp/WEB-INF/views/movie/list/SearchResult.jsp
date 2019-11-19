<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<style>
body {
	padding-top: 130px;
}

/* 검색바 시작*/
.input-group.md-form.form-sm.form-1 input {
	border: 1px solid #bdbdbd;
	border-top-right-radius: 0.25rem;
	border-bottom-right-radius: 0.25rem;
}

.input-group.md-form.form-sm.form-2 input {
	border: 1px solid #bdbdbd;
	border-top-left-radius: 0.25rem;
	border-bottom-left-radius: 0.25rem;
}

.input-group.md-form.form-sm.form-2 input.red-border {
	border: 1px solid #ef9a9a;
}

.input-group.md-form.form-sm.form-2 input.lime-border {
	border: 1px solid #cddc39;
}

.input-group.md-form.form-sm.form-2 input.amber-border {
	border: 1px solid #ffca28;
}
/* 검색바 끝*/
.movieImage {
	width: 120px;
	height: 180px;
}
/* 원형이미지들 */
.radiusImg {
	width: 65px;
	height: 65px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}
/* 배우감독이름 스팬 */
.actorSpan {
	font-size: 1.2em;
	font-weight: bold;
	line-height: 65px;
}

/* 필모그램 스팬 */
.filmoSpan {
	line-height: 65px;
}

/* 배우 스팬 */
.actorForm {
	padding-bottom: 20px;;
}

.moreContent{
color:#db147b;
}

.movieImg{
width:130px;
height: 200px;
}


</style>

<script>
	//검색바
	/* $(document).ready(function(e){
	 $('.search-panel .dropdown-menu').find('a').click(function(e) {
	 e.preventDefault();
	 var param = $(this).attr("href").replace("#","");
	 var concept = $(this).text();
	 $('.search-panel span#search_concept').text(concept);
	 $('.input-group #search_param').val(param);
	 });
	 }); */
</script>



<div class="container ">
	<!-- 검색바 -->
	<div class="row">
		<div class="col-md-2">
			<select class="browser-default custom-select">
				<option selected>전체검색</option>
				<option value="1">영화</option>
				<option value="2">영화인</option>
				<option value="3">무빙프렌즈</option>
				<option value="4">리뷰</option>
			</select>
		</div>
		<div class="col-md-10">
			<div class="input-group md-form form-sm form-1 pl-0">
				<!-- https://mdbootstrap.com/docs/jquery/forms/search/ -->
				<div class="input-group-prepend">
					<span class="input-group-text pink lighten-3" id="basic-text1"><i
						class="fas fa-search text-white" aria-hidden="true"></i></span>
				</div>
				<input class="form-control my-0 py-1" type="text"
					placeholder="Search" aria-label="Search">
			</div>
		</div>
	</div>
	<!-- 검색바2. -->
	<!-- <div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="input-group">
				<div class="input-group-btn search-panel">
					<button type="button" class="btn btn-default dropdown-toggle"
						data-toggle="dropdown">
						<span id="search_concept">Filter by</span> <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#contains">Contains</a></li>
						<li><a href="#its_equal">It's equal</a></li>
						<li><a href="#greather_than">Greather than ></a></li>
						<li><a href="#less_than">Less than < </a></li>
						<li class="divider"></li>
						<li><a href="#all">Anything</a></li>
					</ul>
				</div>
				<input type="hidden" name="search_param" value="all"
					id="search_param"> <input type="text" class="form-control"
					name="x" placeholder="Search term..."> <span
					class="input-group-btn">
					<button class="btn btn-default" type="button">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</span>
			</div>
		</div>
	</div> -->




	<hr class="my-3">
	<div class="row">


		<!-- 여기가 왼쪽시작 -->
		<div class="col-md-9 leftSide">

			<!-- 검색결과1.영화 -->
			<div>
				<div class="row" style="padding-top: 10px">
					<div class="col-md-10 ">
						<h3>영화</h3>
					</div>
					<div class="col-md-2" align="right">
						<a href="#" class="moreContent">더보기</a>
					</div>

				</div>
				<div class="row d-flex justify-content-center" style="padding-bottom: 20px">
				
					<c:forEach begin="0" end="4" items="${searchMovieList}" var="movie">
						<div class="col-md-2 col-sm-6 movie-poster" style="">
							<img class="movieImg" src="${movie.movieImg }" alt="" /><br>
							<span class="movieTitle">${movie.movieTitle }</span>
						</div>
					</c:forEach>
				</div>
			</div>

			<hr class="my-3">


			<div class="row" style="padding-bottom: 20px;padding-top: 10px">
				<!-- 검색결과2.영화인 -->
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-8">
							<h3>영화인</h3>
						</div>
						<div class="col-md-4" align="right">
							<a href="#" class="moreContent">더보기</a>
						</div>
					</div>
					<div style="padding-left: 20px;padding-top:10px">
						<c:forEach begin="0" end="2" items="${searchPeopleList}" var="people">
							<div class="row actorForm">
								<div class="col-sm-3">
									<img class="radiusImg" alt="배우사진" src="${people.moviePeopleImg}"/>
								</div>
								<div class="col-sm-4">
									<span class="actorSpan">${people.moviePeopleName}</span>
								</div>
								<div class="col-sm-3">
									<span class="filmoSpan">${people.moviePeopleCountry}${people.moviePeopleJob }</span>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>



				<!-- 검색결과3.무빙프렌즈 -->
				<div class="col-md-6"
					style="border-left-width: 1px; border-left-style: solid; border-left-color: #e0dcdc">
					<div class="row">
						<div class="col-md-8">
							<h3>무빙프렌즈</h3>
						</div>
						<div class="col-md-4" align="right">
							<a href="#" class="moreContent">더보기</a>
						</div>
					</div>
					<div style="padding-left: 20px;padding-top:10px">
						<c:forEach  items="${searchUserList }" var="user">
						<div class="row actorForm">
							<div class="col-sm-3">
								<img class="radiusImg" alt="배우사진" src="${user.userProfile}" />
							</div>
							<div class="col-sm-4">
								<span class="actorSpan">${user.userNick }</span>
							</div>
							<div class="col-sm-3">
								<span class="filmoSpan"></span>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<hr class="my-3">
			<!-- "검색어"가 포함된 리뷰 -->
			<div class="row" style="padding-bottom: 20px;padding-top: 10px">
				<div class="col-md-8">
					<h5>"${searchWord}"가 포함된 리뷰</h5>
				</div>
				<div class="col-md-4" align="right">
					<a href="#" class="moreContent">더보기</a>
				</div>
			</div>
			<!-- 리뷰카드 -->
			<c:forEach begin="0" end="2" items="${searchReviewList}" var="review">
				<div class="card border-secondary mb-3" style="max-width: 200rem;">
				
					<div class="card-header">
						${review.userId}님의 리뷰
					</div>
					<div class="card-body">
						<div class="row">
							<p class="card-text" style="font-size: 0.8em;padding-left: 10px">
								${review.reviewContent}
							</p>
						</div>
					</div>
				</div>
			</c:forEach>

			<hr class="my-3">
			
			<!-- "검색어"가 포함된 댓글 -->
			<div class="row" style="padding-bottom: 20px;padding-top: 10px">
				<div class="col-md-8">
					<h5>"${searchWord}"가 포함된 댓글</h5>
				</div>
				<div class="col-md-4" align="right">
					<a href="#" class="moreContent">더보기</a>
				</div>
			</div>
			<!-- 리뷰카드 -->
			<c:forEach begin="0" end="2" items="${searchCommentList}" var="comment">
			<div class="card border-secondary mb-3" style="max-width: 200rem;">
				<div class="card-header">
					${comment.userId }님의 댓글
				</div>
				<div class="card-body">
					<div class="row">
						<p class="card-text" style="font-size: 0.8em;padding-left: 10px">
							${comment.commentContent}
						</p>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>



		<!-- 여기서부터 오른쪽 -->
		<div class=" col-md-3  rightSide"
			style="border-left-width: 1px; border-left-style: solid; border-left-color: #a8a5a5">

			<!-- 인기검색어 -->
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">인기검색어</h4>
					<hr class="my-3">
					<!-- <p class="card-text"></p> -->
					<!--Table-->
					<div class='table-responsive'>
						<table id="tablePreview"
							class="table table-hover table-sm table-borderless">
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td><a href="#" style="color: black">검색어</a></td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td><a>검색어</a></td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td><a>검색어</a></td>
								</tr>
								<tr>
									<th scope="row">4</th>
									<td><a>검색어</a></td>
								</tr>
								<tr>
									<th scope="row">5</th>
									<td><a>검색어</a></td>
								</tr>
								<tr>
									<th scope="row">6</th>
									<td><a>검색어</a></td>
								</tr>
								<tr>
									<th scope="row">7</th>
									<td><a>검색어</a></td>
								</tr>
								<tr>
									<th scope="row">8</th>
									<td><a>검색어</a></td>
								</tr>
								<tr>
									<th scope="row">9</th>
									<td><a>검색어</a></td>
								</tr>
								<tr>
									<th scope="row">10</th>
									<td><a>검색어</a></td>
								</tr>

							</tbody>
							<!--Table body-->
						</table>
						<!--Table-->
					</div>
				</div>
			</div>







		</div>


	</div>
	<!-- row -->
</div>
<!-- container -->

<script></script>