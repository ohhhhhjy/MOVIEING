<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
body{
 padding-top: 150px
}

/* 리뷰유저이름 */
.reviewUserSpan{
	font-size: 1.2em;
	color: black;
	line-height: 40px;
	font-weight: bold;
	padding-left: 10px;
}

/* 원형이미지들 */
.radiusImg {
	width: 40px;
	height: 40px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	text-align: center;
} 

/* 유저댓글내용 p태그 */
.commentP{
background-color: #f1f2e4;
margin-right: 40px;
padding: 20px;
border-radius: 6px;
}

</style>
<div class="container">
	<a href="javascript:window.history.back();"><i class="fas fa-arrow-left" style="color:#db147b;font-size: 1.4em"></i></a>
	<h2 align="center" class="">유저이름님의 영화이름 리뷰</h2>
	<!-- 드롭다운 -->
<!-- 	<div class="d-flex justify-content-end" style="padding-bottom: 20px">
		 <div id="selector"   >
			 <select class="browser-default custom-select" >
				  <option >최신 순</option>
				  <option >좋아요 순</option>
				  <option >별점 높은 순</option>
				  <option >별점 낮은 순</option>
			 </select>
		 </div>
	 </div> -->



<div ><!-- class="accordion" id="reviewAccordion" -->
	<!-- 리뷰카드 -->
	<div class="card border-secondary row " style="max-width: 200rem;">
		<div class="card-header" >
			<a href="#">
				<img class="radiusImg" alt="유저사진" src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" align="left"/>
				<span class="reviewUserSpan" >유저이름</span>
			</a>
		</div>
		<div class="card-body">
			<span class="badge badge-pill badge-danger">★4.5</span>
			<p class="card-text">토이스토리를 봤다. 너무 재밌었다. 너무 재밌었고, 너무 재밌어서 너무
				재밌을 뻔했다. 너무 재밌는 영화였다.신발 하나 제대로 못 찾는 첫째 딸, 남들과 조금 다른 둘째 아들, 갓 태어나서 밤낮없이 울어대는 막내, 그리고 자신에겐 아무 관심도 없이 매일 밤 게임에 빠져 사는 남편까지, 매일 같은 육아 전쟁에 지쳐가는 ‘마를로’(샤를리즈 테론). 몸이 스무 개라도 모자란 엄마 ‘마를로’를 위해 그녀의 오빠는 야간 보모 고용을 권유한다. 아이는 엄마가 돌봐야 한다고 철석같이 믿어 왔던 ‘마를로’는 고민 끝에 야간 보모 ‘툴리’(맥켄지 데이비스)를 부르게 된다. 홀로 삼 남매 육아를 도맡아 하면서 슈퍼 맘이 되어야만 했던 ‘마를로’ 곁에서 ‘툴리’는 마치 자신의 가족처럼 그녀와 아이들을 돌봐준다. 슈퍼 보모이자 때로는 인생 친구가 되어 주는 ‘툴리’로 인해 ‘마를로’의 삶은 조금씩 변화하게 되는데</p>
			<a href="#"><span
				style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-thumbs-up"></i><!-- 좋아요 아이콘 -->
					25 </span></a>&nbsp;&nbsp;&nbsp; 
			<a href="#" ><span
				style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
					4 </span></a><!--콜랍스 설정 data-toggle="collapse"  href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" data-target="#commentWindow${i}"  aria-expanded="true" aria-controls="commentWindow${i}" -->
		
		
		<!-- 펼쳐질 댓글창 -->
		
		<!--콜랍스 설정 collapse commentDiv -->
		    <hr class="my-1">
		    <c:forEach begin="1" end="5">
				<div class=" row comment  px-3 ">
				 	<div class="col-md-1 d-flex justify-content-end">
						<img class="radiusImg" alt="댓글유저사진" src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" align="left"/>
					</div>
					<div class="col-md-11 px-2" >
						<h6>유저이름</h6>
						<p class="commentP">댓글내용</p> 
					</div> 
				</div>
				<hr class="my-1">
			</c:forEach>
			<!-- 댓글쓰기 -->
			<div class=" row comment  px-1">
				 	<div class="col-md-1 d-flex justify-content-end">
						<img class="radiusImg" alt="댓글유저사진" src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" align="left"/>
					</div>
					<div class="col-md-11 px-2" >
						<h6>유저이름</h6>
						<div style="padding-right: 40px">
							<textarea class="form-control" id="exampleTextarea" rows="3" placeholder="댓글을 남겨보세요."></textarea>
						</div>
						<div class="d-flex justify-content-end " style="padding-right: 40px">
							<button class="btn btn-danger">등록</button>
						</div>
					</div> 
			</div>
			
		</div>
		
	</div>	
	
	
</div>


</div>