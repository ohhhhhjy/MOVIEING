<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<style>
body {
	padding-top: 130px;
}

.project-tab {
	padding: 10%;
	margin-top: -8%;
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

.movieTitle {
	font-weight: bold;
}

.movieStar {
	color: #ffa136;
	font-size: 0.8em
}

.movieExpect {
	color: #db147b;
	font-size: 0.8em
}

.movieImg {
	width: 135px;
	height: 200px;
}

.radiusImg {
	width: 40px;
	height: 40px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
	display: table-cell;
	vertical-align: middle;
	color: #ffffff;
	font-weight: bold;
	text-align: center;
}

.likeSpan {
	font-size: 1.2em;
	padding-right: 10px;
	color: black;
	line-height: 40px;
	font-weight: bold
}

.movieImg{
width:135px;
height: 200px;
}
</style>

<!--1.컨트롤러에서 넘어오는 page값 이용해서 탭 선택시켜주기 https://stackoverflow.com/questions/39461076/how-to-change-active-bootstrap-tab-with-javascript-->
<!--2.선택된 탭을 알아내서 select div에 .html로 탭에 맞는 [선택 option] 넣어주기-->
<!--3.선택된 select option에 따라 tap-content 내용 바꿔주기-->

<script>
$(function(){
	tabSettingByPage();
	$('.nav-item').click(function(){
		var page;
		switch($(this).get(0).id){
		case 'nav-star-tab':page='a';break;
		case 'nav-review-tab':page='b';break;
		case 'nav-like-tab':page='c';break;
		default:page='d';
		}
		selectorSettingByTab(page); 
		
	});
});

function tabSettingByPage(){//전 페이지에서 넘어온 페이지값에 따라 탭과 탭컨텐츠 세팅해주기
	switch('${page}'){
	case 'a': 
		$('#nav-star-tab').addClass('active');
		$('#nav-star').addClass('show active');
		selectorSettingByTab('a');
		break; 
	case 'b': 
		$('#nav-review-tab').addClass('active');
		$('#nav-review').addClass('show active');
		selectorSettingByTab('b');
		break;
	case 'c':
		$('#nav-like-tab').addClass('active');
		$('#nav-like').addClass('show active');
		selectorSettingByTab('c');
		break;
	default://'d'
		$('#nav-wish-tab').addClass('active');
		$('#nav-wish').addClass('show active');
		selectorSettingByTab('d');
	}
}

function selectorSettingByTab(page){//탭메뉴 클릭에 따라 셀렉트 세팅해주기
	var selects = new Array();
	var selectorHTML;
	var optionHTML='';
	
	switch(page){
	case 'a': 
		selects = ['평가 순','별점 순','가나다 순'];break;
	case 'b': 
		selects = ['작성 순','별점 순','가나다 순'];break;
	case 'c': 
		selects = ['추가 순','음..'];break;
	default: 
		selects = ['추가 순','예상별점 순'];
	}
	for(var i=0;i<selects.length;i++){
		optionHTML+='<option>'+selects[i]+'</option>';
	}
	selectorHTML='<select class="browser-default custom-select" >'+optionHTML+'</select>';
		
	$('#selector').html(selectorHTML);
}

function tabContentSettingBySelector(){//셀렉트 클릭에 따라 탭컨텐츠 변화시키기
	
}

</script>

<!-- 컨테이너 시작 -->
<div class="container">
	<div class="row">
		<!-- 오른쪽시작 -->
		<div class="col-sm-2">
			<a class="btn btn-secondary" href="<c:url value='/Movieing/Blog/BlogMain.mov'/>" role="button">< 블로그 메인</a>
			 <!-- 드롭다운 -->
			 <div id="selector" style="padding-top:20px">
				 <!-- <select class="browser-default custom-select" >
					  <option >평가 순</option>
					  <option >가나다 순</option>
					  <option >별점 높은 순</option>
					  <option >별점 낮은 순</option>
				 </select> -->
			 </div>
		</div>
		<!--오른쪽 끝  -->
		
		<!-- 왼쪽 시작 -->
		<div class="col-sm-10">
			<!-- 탭바 : 각 탭에 해당하는 새로운 페이지만들기 / 탭컨텐츠는 각 페이지에서 ajax로 불러오거나 새로 페이지 만들기.  -->
			<nav> 
	          <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist"><!-- 탭메뉴는 class에 active가 있어야 선택된 상태가 된다 -->
	              <a class="nav-item nav-link " id="nav-star-tab" data-toggle="tab" href="#nav-star" role="tab" aria-controls="nav-home" aria-selected="true">별점</a>
	              <a class="nav-item nav-link " id="nav-review-tab" data-toggle="tab" href="#nav-review" role="tab" aria-controls="nav-profile" aria-selected="false" >리뷰</a>
	              <a class="nav-item nav-link" id="nav-like-tab" data-toggle="tab" href="#nav-like" role="tab" aria-controls="nav-contact" aria-selected="false">좋아요</a>
	              <a class="nav-item nav-link" id="nav-wish-tab" data-toggle="tab" href="#nav-wish" role="tab" aria-controls="nav-wish" aria-selected="false">보고싶어요</a>
	          </div>
	         </nav>
	         
	         <!-- 탭컨텐츠 -->
	         <div class="tab-content" id="nav-tabContent" style="padding-left: 10px;padding-right: 20px;margin-top: 20px;"><!--탭컨텐츠는 class에 show랑 active가 다 있어야 처음에 보여진다 -->
                 <!--컨텐츠a:별점 -->
                 <div class="tab-pane fade " id="nav-star" role="tabpanel" aria-labelledby="nav-star-tab">
                   		<div class="row" style="">
							<div class="col-md-2 col-sm-6 movie-poster" style="">
								<img  class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt=""/>
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieStar">★4.5</Span>
							</div>
							<div class="col-md-2 col-xs-6 movie-poster" style="">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieStar">★4.5</Span>
							</div>
							<div class="col-md-2 col-sm-6 movie-poster">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieStar">★4.5</Span>
							</div>
							<div class="col-md-2 col-sm-6 movie-poster">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieStar">★4.5</Span>
							</div>
							<div class="col-md-2 col-sm-6 movie-poster">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieStar">★4.5</Span>
							</div>
							<div class="col-md-2 col-sm-6 movie-poster">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieStar">★4.5</Span>
							</div>
						</div> 
                 </div>
                 
                 <!-- 컨텐츠b:리뷰 -->
                 <div class="tab-pane fade" id="nav-review" role="tabpanel" aria-labelledby="nav-review-tab">
                 	<!-- 리뷰카드 -->
					<div class="card border-secondary mb-3" style="max-width: 200rem;">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3" align="center">
									<img class="movieImg"
										src="../../resources/img/movie/toystoryMain.jpg" alt="포스터" />
								</div>
								<div class="col-sm-9">
									<h4 class="card-title">토이스토리4</h4>
									<span class="badge badge-pill badge-danger">★4.5</span>
									<p class="card-text">토이스토리를 봤다. 너무 재밌었다. 너무 재밌었고, 너무 재밌어서
										너무 재밌을 뻔했다. 너무 재밌는 영화였다.</p>
									<a href="#"><span
										style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-thumbs-up"></i><!-- 좋아요 아이콘 -->
											25 </span></a>&nbsp;&nbsp;&nbsp; <a href="#"><span
										style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
											4 </span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
                 
                 <!-- 컨텐츠c:좋아요 -->
                 <div class="tab-pane fade" id="nav-like" role="tabpanel" aria-labelledby="nav-like-tab">
                   	<!-- 리뷰카드 -->
					<div class="card border-secondary mb-3" style="max-width: 200rem;">
						<div class="card-header" align="right">
							<a href="#">
								<img class="radiusImg" alt="배우사진" src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" align="right"/>
								<span class="likeSpan" >평론가_정명지</span>
							</a>
							
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3" align="center">
									<img class="movieImg"
										src="../../resources/img/movie/toystoryMain.jpg" alt="포스터" />
								</div>
								<div class="col-sm-9">
									<h4 class="card-title">토이스토리4</h4>
									<span class="badge badge-pill badge-danger">★4.5</span>
									<p class="card-text">토이스토리를 봤다. 너무 재밌었다. 너무 재밌었고, 너무 재밌어서 너무
										재밌을 뻔했다. 너무 재밌는 영화였다.</p>
									<a href="#"><span
										style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-thumbs-up"></i><!-- 좋아요 아이콘 -->
											25 </span></a>&nbsp;&nbsp;&nbsp; <a href="#"><span
										style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
											4 </span></a>
								</div>
							</div>
						</div>
					</div>
                 </div>
                 
                 <!-- 컨텐츠d:보고싶어요 -->
                  <div class="tab-pane fade" id="nav-wish" role="tabpanel" aria-labelledby="nav-wish-tab">
                  	  <div class="row" style="">
							<div class="col-md-2 col-sm-6 movie-poster" style="">
								<img  class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt=""/>
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieExpect">예상★4.5</Span>
							</div>
							<div class="col-md-2 col-xs-6 movie-poster" style="">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieExpect">예상★4.5</Span>
							</div>
							<div class="col-md-2 col-sm-6 movie-poster">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieExpect">예상★4.5</Span>
							</div>
							<div class="col-md-2 col-sm-6 movie-poster">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieExpect">예상★4.5</Span>
							</div>
							<div class="col-md-2 col-sm-6 movie-poster">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieExpect">예상★4.5</Span>
							</div>
							<div class="col-md-2 col-sm-6 movie-poster">
								<img class="movieImg" src="../../resources/img/movie/toystoryMain.jpg" alt="" />
								<span class="movieTitle">말레피센트</span><br>
								<Span class="movieExpect">예상★4.5</Span>
							</div>
						</div> 
                 </div>
             </div>
		</div>
	</div>

</div>