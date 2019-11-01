<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<style>
body {
   padding-top: 150px; 
}


/* 영화 포스터 이미지 */
.movieImage {
	width: 250px;
	height: 350px;
}

/* 별점 */

.rating {
      float:left;
    }

    /* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
      follow these rules. Every browser that supports :checked also supports :not(), so
      it doesn’t make the test unnecessarily selective */
    .rating:not(:checked) > input {
        position:absolute;
        top:-9999px;
        clip:rect(0,0,0,0);
    }

    .rating:not(:checked) > label {
        float:right;
        width:1em;
        /* padding:0 .1em; */
        overflow:hidden;
        white-space:nowrap;
        cursor:pointer;
        font-size:300%;
        /* line-height:1.2; */
        color:#ddd;
    }

    .rating:not(:checked) > label:before {
        content: '★ ';
    }

    .rating > input:checked ~ label {
        color: #f7e411;
        
    }

    .rating:not(:checked) > label:hover,
    .rating:not(:checked) > label:hover ~ label {
        color: #f7e411;
        
    }

    .rating > input:checked + label:hover,
    .rating > input:checked + label:hover ~ label,
    .rating > input:checked ~ label:hover,
    .rating > input:checked ~ label:hover ~ label,
    .rating > label:hover ~ input:checked ~ label {
        color: #f7e411;
        
    }

    .rating > label:active {
        position:relative;
        top:2px;
        left:2px;
    }
    
   /*  보고싶어요 버튼 */
    #btnWish{
    width:150px;height: 50px;align-self: center;
    }
    
    /* 가격비교 아이콘 */
    .jw-provider-icon{
	border-radius: 20%;
	
}

.price-comparison_grid_row_icon{
	border-radius: 11px;
	width: 50px;
	height: 50px;
	margin-bottom: 3px;
}

/* 영화 최저가 가격  글자   */
    .priceText{
   font-size: 0.8em;
   font-weight: bold;
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
	font-weight: bold;
	text-align: center;
}   

/* 감독배우이름  */
.moviePersonName{
	font-size: 1.2em;
	font-weight: bold;
	color:#9b9aa1;
	padding-right: 7px
}

/* 케러셀 */
/* Carousel base class */
.carousel {
	margin-bottom: 4rem;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
	z-index: 10;
	bottom: 3rem;
}

@media ( min-width : 40em) {
	/* Bump up size of carousel content */
	.carousel-caption p {
		margin-bottom: 1.25rem;
		font-size: 1.25rem;
		line-height: 1.4;
	}
	.featurette-heading {
		font-size: 50px;
	}
}

@media ( min-width : 62em) {
	.featurette-heading {
		margin-top: 7rem;
	}
}

/* 리뷰유저이름 */
.reviewUserSpan{
	font-size: 1.2em;
	color: black;
	line-height: 40px;
	font-weight: bold;
	padding-left: 10px;
}

/* 리뷰텍스트 말줄이기 */
.card-text{
overflow: hidden;
text-overflow: ellipsis;
display: -webkit-box;
-webkit-line-clamp: 3; /* 라인수 */
-webkit-box-orient: vertical;
word-wrap:break-word; 
line-height: 1.2em;
height: 3.6em;
}

/* 더보기 스팬 */
.moreContent{
color:#db147b;
}


/* 상단에 이미지 넣으려다 실패 
.headerBackImg{
-webkit-filter:blur(5px);
-moz-filter:blur(5px);
-o-filter:blur(5px);
-ms-filter:blur(5px);
filter:blur(5px);
position: absolute; top:0; left: 0;
width: 100%;
height: 100%;
} */

/*스택 - 별점 반개 실험*/
.star-icon {
    color: #ddd;
    font-size: 34px;
    position: relative;
}

.star-icon.full:before {
    color: #FDE16D;
    content: '\2605'; /* Full star in UTF8 */
    position: absolute;
    left: 0;
    text-shadow: 0 0 2px rgba(0,0,0,0.7);
 }
 
 .star-icon.half:before {
    color: #FDE16D;
    content: '\2605'; /* Full star in UTF8 */
    position: absolute;
    left: 0;
    width: 50%;
    overflow: hidden;
    text-shadow: 0 0 2px rgba(0,0,0,0.7);
}

/* ^여기까지 별점 반개 실험^ */
</style>


<script>
$(document).ready(function() {
	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	});
	
 	$('#btnWish').click(function(){
 		if($('#wishBtnIcon').prop('class')=='fas fa-plus')
 			$('#wishBtnIcon').removeClass('fa-plus').addClass('fa-bookmark');
 		else
 			$('#wishBtnIcon').removeClass('fa-bookmark').addClass('fa-plus'); 
	});
 	

});


</script>

	<!-- <div class="headerDiv"style="position: absolute">
		<div  style="position: relative;" >
			<img class="headerImg" src="../../resources/img/movie/tooly.jpg" alt="포스터" />
		</div>
	</div>	 -->		
				
	<!-- <img class="headerBackImg"  src="../../resources/img/movie/tooly.jpg" alt="포스터" /> -->


<div class="container">	
		<!-- 상단 -->
		<div class="row" >
			<!-- 포스터 -->
			<div class="col-md-3 ">
				<a href="<c:url value='/Movieing/Movie/MovieDetailsTest.mov'/>"><img
					class="movieImage" src="${movieImgMap}"
					alt="포스터" /></a>
			</div>
			<!-- 기본정보+별점 -->
			<div class="col-md-6  ">
					<h1>${movieInfoMap.movieInfoResult.movieInfo.movieNm}<span class="text-muted px-2" >${movieInfoMap.movieInfoResult.movieInfo.prdtYear}</span></h1>
					<h6 class="px-2">${movieInfoMap.movieInfoResult.movieInfo.movieNmEn}</h6>
					<hr class="my-3">
					<span class="px-2">${movieInfoMap.movieInfoResult.movieInfo.audits[0].watchGradeNm} ・ ${movieInfoMap.movieInfoResult.movieInfo.genres[0].genreNm} ・ ${movieInfoMap.movieInfoResult.movieInfo.nations[0].nationNm}</span>
					<hr class="my-3">
					<span class="px-2" style="font-weight: bold">평점★3.8</span>
					<span> ・</span>
					<span class="px-2" style="color:#db147b;font-weight: bold">예상★4.0</span>
					<hr class="my-3">
					<div class="row">
						<!-- 별점 -->
					<div class="rating px-3" >
				      <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="최고예요">5 stars</label>
				      <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="재미있어요">4 stars</label>
				      <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="보통이에요">3 stars</label>
				      <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="별로예요">2 stars</label>
				      <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="싫어요">1 star</label>
				    </div> 
								<!-- 별점 반개 실험 <span class="star-icon full">☆</span>
								<span class="star-icon full">☆</span>
								<span class="star-icon full">☆</span>
								<span class="star-icon half">☆</span>
								<span class="star-icon half">☆</span> -->
					   
					    <button  id="btnWish" class="btn btn-outline-danger waves-effect" data-toggle="button"><i class="fas fa-plus" id="wishBtnIcon"></i>&nbsp;보고싶어요</button>
					</div>
					<hr class="my-3">
					<div class="row">
						<div class="col-md-6" style="font-weight: bold">이 영화를 본 친구</div>
						<div class="col-md-6" align="right">유저이름 님 외 4명</div>
					</div>
			</div>
			<!-- 가격비교 -->
			<div class="col-md-3">
				<div class="card   bg-ligh mb-3" style="max-width: 20rem;"><!-- border-secondary -->
					<div class="card-body">
						<h5>가격비교</h5>
						<hr class="my-3">
						<!-- 구매 -->
				  	     <span class="badge badge-dark" style="font-size:0.9em">구매</span>
						 <div class="price-comparison_grid_row row py-1">
							<div class="price-comparison_grid_row_element_icon col-md-4">
								<a href="#"> <img
									class="jw-provider-icon price-comparison_grid_row_icon"
									alt="Naver Store" title="Naver Store"
									src="<c:url value='/resources/img/movie/naver.png'/>">
								</a>
								<div class="priceText" >7000원</div>
							</div>
							<div class="price-comparison_grid_row_element_icon col-md-4">
								<a href="#"> <img
									class="jw-provider-icon price-comparison_grid_row_icon"
									alt="Naver Store" title="Naver Store"
									src="<c:url value='/resources/img/movie/pooq.jpg'/>">
								</a>
								<div class="priceText">6000원</div>
							</div>
						</div>
						<!-- 대여 -->
				  	     <span class="badge badge-dark" style="font-size:0.9em">대여</span>
						 <div class="price-comparison_grid_row row py-1">
							<div class="price-comparison_grid_row_element_icon col-md-4">
								<a href="#"> <img
									class="jw-provider-icon price-comparison_grid_row_icon"
									alt="Naver Store" title="Naver Store"
									src="<c:url value='/resources/img/movie/naver.png'/>">
								</a>
								<div class="priceText" >7000원</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- ----------------------------------------여기까지 상단 ---------------------------------------------------------------- -->	
		<hr class="my-3">
		
		
	<!-- ----------------------------------------여기부터 하단 ---------------------------------------------------------------- -->		
		<!-- 리뷰남기기 (남긴 리뷰가 없을때만 나타나도록)-->
		<div class="card   bg-ligh mb-3" style="max-width: 200rem;"><!-- border-secondary -->
			<div class="card-body">
			<button type="button" id="btnWish" class="btn btn-outline-danger waves-effect" ><i class="far fa-edit"></i>&nbsp;리뷰남기기</button>
			<span style="font-weight: bold">&nbsp;유저이름님의 평가를 글로 남겨보는건 어떨까요?</span>
			</div>
		</div>
		
		<!-- 영화정보 -->
		<div class="card   bg-ligh mb-3" style="max-width: 200rem;"><!-- border-secondary -->
			<div class="card-body">
			
			<!-- 줄거리 -->
			<h4>줄거리</h4>
			<p>전 여친에 상처받은 ‘재훈’(김래원). 여느
						때처럼 숙취로 시작한 아침, 모르는 번호의 누군가와 밤새 2시간이나 통화한 기록을 발견하게 되고 그 상대가 바로!
						통성명한 지 24시간도 채 되지 않은 직장 동료 ‘선영’임을 알게 된다. 남친과 뒤끝 있는 이별 중인
						‘선영’(공효진). 새로운 회사로 출근한 첫날, 할 말 못 할 말 쏟아내며 남친과 헤어지던 현장에서 하필이면! 같은
						직장의 ‘재훈’을 마주친다. 만난 지 하루 만에 일보다 서로의 연애사를 더 잘 알게 된 두 사람. 하지만 미묘한 긴장과
						어색함도 잠시 ‘한심하다’, ‘어이없다’ 부딪히면서도 마음이 쓰이는 건 왜 그럴까?</p>
						
			<hr class="my-3">
			
			<!-- 감독 -->
			<div class="row">
				<div class="col-md-1"><h4>감독</h4></div>
				<a class="moviePersonName"  href="#">${movieInfoMap.movieInfoResult.movieInfo.directors[0].peopleNm}</a>
			</div>
			
			<hr class="my-3">
			
			<!-- 배우 -->
			<div class="row">
				<div class="col-md-1"><h4>배우</h4></div>
				<c:forEach items="${movieInfoMap.movieInfoResult.movieInfo.actors}" var="actors">
					<a class="moviePersonName" href="#">${actors.peopleNm }</a>
				</c:forEach>
			</div>
			
			<%-- <div class="row actorForm">
				<div class="col-md-3 ">
					<div class="row onePerson">
						<div class="col-md-5">
							<img class="radiusImg" alt="감독사진"
								src="<c:url value='/resources/img/actordirector/yeomjunga.jpg'/>" />
						</div>
						<div class="col-md-7">
							<span class="moviePersonSpan">감독이름</span>
						</div>
					</div>
				</div>
			</div> --%>
			
			
			<hr class="my-3">
			
			<!-- 리뷰 -->
			<div class="row">
						<div class="col-md-8">
							<h4>리뷰</h4>
						</div>
						<div class="col-md-4" align="right">
							<a href="<c:url value='/Movieing/Movie/MovieReviews.mov'/>" class="moreContent">더보기</a>
						</div>
					</div>
			
           		 <!-- 리뷰카드 -->
            	<c:forEach var="i" begin="1" end="3" >
						<div class="card border-secondary mb-3" style="max-width: 200rem;">
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
										25 </span></a>&nbsp;&nbsp;&nbsp; <a href="#"><span
									style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
										4 </span></a>
							</div>
						</div>
				</c:forEach>	
			
			
			
				<hr class="my-3">
				
				<!-- 스틸컷 -->
				<h4>스틸컷</h4>
				<div class="row d-flex justify-content-center py-5">
				
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width: 80%;height: 80%" >
						 
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						  </ol>
						  <div class="carousel-inner">
						    <div class="carousel-item active">
						      <img src="<c:url value='/resources/img/movie/toolyPhoto1.jpg'/>" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="<c:url value='/resources/img/movie/toolyPhoto2.jpg'/>" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="<c:url value='/resources/img/movie/toolyPhoto3.jpg'/>" class="d-block w-100" alt="...">
						    </div>
						  </div>
						  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
					</div>
				
				</div>
			
			
				<hr class="my-3">
				
				<!-- 영상 -->
				<h4>영상</h4>
				<div align="center">
						<c:set var="result" value="[${movieInfoMap.movieInfoResult.movieInfo.movieNm}]메인예고편" />
						<iframe id="ytplayer1" type="text/html" width="80%"
							height="500px"
							src="https://www.youtube.com/embed/?listType=search&list='${result}'&autoplay=1"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							frameborder="0" allowfullscreen></iframe>
				</div>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<hr class="my-3">
			<!-- 관련 영화 캐러셀 -->
			<h4>관련 영화</h4>
			<div id="carouselSixColumn" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselSixColumn" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselSixColumn" data-slide-to="1"></li>
						<li data-target="#carouselSixColumn" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/1.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">애드 아스드라</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/2.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">쿵푸보이</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/3.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">우리집</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/4.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title" style="font-size: small;">잃어버린
												세계를 찾아서</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/5.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">47미터2</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/6.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">마리아칼라스</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/1.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">애드 아스드라</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/2.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">쿵푸보이</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/3.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">우리집</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/4.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title" style="font-size: small;">잃어버린
												세계를 찾아서</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/5.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">47미터2</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/6.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">마리아칼라스</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/1.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">애드 아스드라</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/2.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">쿵푸보이</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/3.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">우리집</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/4.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title" style="font-size: small;">잃어버린
												세계를 찾아서</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/5.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">47미터2</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
								<div class="col-xl-2 p-1">
									<div class="card">
										<img src="<c:url value='/resources/img/main/6.jpg'/>"
											class="w-100">
										<div class="card-body">
											<h6 class="card-title">마리아칼라스</h6>
											<span id="rateMe1" style="width: 50px"></span>
											<p class="card-text" style="font-size: small;">구매 5,450원</p>

										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselSixColumn"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselSixColumn"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>

				</div>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			</div>
			
			
			
			</div>
		</div><!-- 영화정보 -->
	
