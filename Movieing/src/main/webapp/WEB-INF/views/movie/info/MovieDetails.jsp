<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

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
	width: 30px;
	height: 30px;
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
	font-size: 1em;
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
-webkit-line-clamp: 2; /* 라인수 */
-webkit-box-orient: vertical;
word-wrap:break-word; 
line-height: 1.2em;
height: 2.4em;
}

/* 더보기 스팬 */
.moreContent{
color:#db147b;
}


</style>


<script>
$(document).ready(function() {
	
	
/*  	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	}); */
	
	//보고싶어요 클릭시 ajax 메소드..
 	$('#btnWish').click(function(){
 		var movieNo = ${movieNo};
 		var isInsert = true;
 		//보고싶어요 x > 보고싶어요 o(insert)
 		if($('#wishBtnIcon').prop('class')=='fas fa-plus'){
 			$('#wishBtnIcon').removeClass('fa-plus').addClass('fa-bookmark');
 			
 		}
 		//보고싶어요 o > 보고싶어요 x(delete)
 		else{
 			$('#wishBtnIcon').removeClass('fa-bookmark').addClass('fa-plus'); 
 			isInsert = false;
 		}
 		
 		$.ajax({
			url:"<c:url value='/Movieing/Movie/wishAjax.mov'/>",
				type:'post',
				data:
					{movieNo:movieNo,isInsert:isInsert},
		    beforeSend : function(xhr)
              {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
              },	
				success:function(){//서버로 부터 정상적인 응답을 받았을 때(200번)
				},	
				error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
					console.log("에러:"+data.responseText);
				} 			
		});
	});
 	
 	
 	//별점 클릭시 insert와 update를 실행시키기위한 ajax메소드..
 	$('.starRadio').click(function(){
 		var movieNo = ${movieNo};//이전페이지에서 넘어오는 영화번호
 		var starNo = $(this).val();//방금클릭한 grade.
		$('.starRadio').prop('checked', false);
		$(this).prop('checked', true);
 		var starString = $(this).attr('name');
 		
 		
 		$.ajax({
				url:"<c:url value='/Movieing/Movie/starAjax.mov'/>",
 				type:'post',
 				data:
 					{movieNo:movieNo,grade:starNo},
			    beforeSend : function(xhr)
                  {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                      xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                  },	
 				success:function(){//서버로 부터 정상적인 응답을 받았을 때(200번)
 					//아래의 메소드는 별점클릭시 span을 추가해주기 위함이므로, 평가메뉴에서 사용할거라면 빼는걸 추천..
 					$('#starSpan').html('<span  class="px-2" style="color:#db147b;font-weight: bold">'+starString+'</span>');
 				},	
 				error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
 					console.log("에러:"+data.responseText);
 				} 			
 		});
 	});
 	


});

	//페이징 클릭시 ajax처리
	var paging = function(intTemp){
		$.ajax({
			url:'<c:url value="/Movieing/Movie/ReviewAjax.mov"/>',
			type:'post',
			//contentType : 'application/json',
	        dataType : 'json',
			data:
				({nowPage:intTemp }),
			beforeSend : function(xhr)
              {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
              },
			success:function(data){//서버로 부터 정상적인 응답을 받았을 때(200번)
				 //var ajdata = decodeURIComponent( data );
			
				 $.each(data,function(index,element){
					 element['userNick'] = decodeURIComponent(element['userNick']);
					 element['reviewContent'] = decodeURIComponent(element['reviewContent']);
				 });
				
				 
				console.log(data);
				reviewListMaking(data);
			},	
			error:function(request,status,error){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}

			});
		};
	
	
	
	
	function reviewListMaking(data){
		var imgUrl = '';
		var reviewString = "";
		 $.each(data,function(index,element){
			 imgUrl = element['userProfile']==null?"https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png":element['userProfile'];
			reviewString+="<div class='card border-secondary mb-3' style='max-width: 200rem;'><div class='card-body'><div class='row'><div class='col-md-6'><a href='#'>";
			reviewString+="<img class='radiusImg' alt='유저사진' src='"+imgUrl+"' align='left'/>";			
			reviewString+="<span class='reviewUserSpan' >"+element['userNick']+"</span>";
			reviewString+="<span class='badge badge-pill badge-danger'>★"+element['grade']+"</span>";
			reviewString+="</a></div ><div class='col-md-6' align='right'>";
			reviewString+="<a class='btn btn-outline-danger waves-effect' href='/movieing/Movieing/Movie/MovieReviews.mov?reviewNo="+element['reviewNo']+"'>더보기</a></div></div>";
			reviewString+="<p class='card-text'>"+element['reviewContent']+"</p>";
			reviewString+="<a href='#'><span style='font-weight: bold; color: #db147b; font-size: 0.9em'><i class='far fa-thumbs-up'></i>";
			reviewString+=element['likeCount']+"</span></a>&nbsp;&nbsp;&nbsp;";
			reviewString+="<a href='#'><span style='font-weight: bold; color: #db147b; font-size: 0.9em'><i class='far fa-comments'></i>";
			reviewString+=element['commentCount']+"</span></a></div></div>";
			
		}); 
		
		$('#AllReview').html(reviewString);
		
		 var pagingString = data[0]['pagingString'];
		 $('#pagingString').html(pagingString);
	}///reviewListMaking


</script>


<div class="container">	
		<!-- 상단 -->
		<div class="row" >
			<!-- 포스터 -->
			<div class="col-md-3 ">
				<a href="<c:url value='/Movieing/Movie/MovieDetailsTest.mov'/>"><img
					class="movieImage" src="${movieInfo.movieImg}"
					alt="포스터" /></a>
			</div>
			<!-- 기본정보+별점 -->
			<div class="col-md-6  ">
					<h1>${movieInfo.movieTitle}<span class="text-muted px-2" >${movieInfo.movieYear}</span></h1>
					<h6 class="px-2">${movieInfo.movieOrgTitle}</h6>
					<hr class="my-3">
					<span class="px-2">${movieInfo.movieGrade} ・ ${movieInfo.movieGenre} ・ ${movieInfo.movieCountry}</span>
					<hr class="my-3">
					<span class="px-2" style="font-weight: bold">평점★3.8</span>
					<!-- <span> ・</span>
					<span class="px-2" style="color:#db147b;font-weight: bold">예상★4.0</span> -->
					<hr class="my-3">
					<div id="starSpan"></div>
					<div class="row">
						<!-- 별점 -->
					<div class="rating px-3" >
				      <input class="starRadio" type="radio" id="star5" name="최고예요" value="5" /><label for="star5" title="최고예요">5 stars</label>
				      <input class="starRadio" type="radio" id="star4" name="재미있어요" value="4" /><label for="star4" title="재미있어요">4 stars</label>
				      <input class="starRadio" type="radio" id="star3" name="보통이에요" value="3" /><label for="star3" title="보통이에요">3 stars</label>
				      <input class="starRadio" type="radio" id="star2" name="별로예요" value="2" /><label for="star2" title="별로예요">2 stars</label>
				      <input class="starRadio" type="radio" id="star1" name="싫어요" value="1" /><label for="star1" title="싫어요">1 star</label>
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
						<c:forEach items="${reviewList}" var="review">
						<div class="col-md-6" align="right"> ${review.userId}님 외 4명</div>
						</c:forEach>
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
								<div class="priceText" >${movieInfo.naverPrice}</div>
							</div>
							<div class="price-comparison_grid_row_element_icon col-md-4">
								<a href="#"> <img
									class="jw-provider-icon price-comparison_grid_row_icon"
									alt="Naver Store" title="Naver Store"
									src="<c:url value='/resources/img/movie/pooq.jpg'/>">
								</a>
								<div class="priceText">${movieInfo.wavvePrice }</div>
							</div>
							<div class="price-comparison_grid_row_element_icon col-md-4">
								<a href="#"> <img
									class="jw-provider-icon price-comparison_grid_row_icon"
									alt="Naver Store" title="Naver Store"
									src="<c:url value='/resources/img/movie/google.jpg'/>">
								</a>
								<div class="priceText">${movieInfo.googlePrice }</div>
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
			<button type="button" id="btnWish" class="btn btn-outline-danger waves-effect" onclick="location.href='<c:url value="/Movieing/Movie/MovieWrite.mov?movieTitle=${movieInfo.movieTitle}"/>'"><i class="far fa-edit"></i>&nbsp;리뷰남기기</button>
			<c:forEach items="${reviewList}" var="review">
			<span style="font-weight: bold">&nbsp;${review.userId }님의 평가를 글로 남겨보는건 어떨까요?</span>
			</c:forEach>
			</div>
		</div>
		
		<!-- 영화정보 -->
		<div class="card   bg-ligh mb-3" style="max-width: 200rem;"><!-- border-secondary -->
			<div class="card-body">
			
			<!-- 줄거리 -->
			<h4>줄거리</h4>
			<p>${movieInfo.movieContent }</p>
						
			<hr class="my-3">
			
			<!-- 감독 -->
			<div class="row">
				<div class="col-md-1"><h4>감독</h4></div>
				<a class="moviePersonName"  href="<c:url value='/Movieing/Movie/Filmography.mov?movieDirector=${movieInfo.movieDirector }'/>">${movieInfo.movieDirector }</a>
			</div>
			
			<hr class="my-3">
			
			<!-- 배우 -->
			<div class="row">
				<div class="col-md-1"><h4>배우</h4></div>
				<c:forEach items="${movieInfoMap.movieInfoResult.movieInfo.actors}" var="actors">
					<a class="moviePersonName" href="#">${actors.peopleNm}</a>
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
			<h4>리뷰</h4>
						<%-- <div class="col-md-4" align="right">
							<a href="<c:url value='/Movieing/Movie/MovieReviews.mov'/>" class="moreContent">더보기</a>
						</div> --%>
			<c:if test="${empty reviewList }" var="isEmpty">
				<h5>등록된 게시물이 없습니다</h5>
			</c:if>
			<c:if test="${not isEmpty }">
           		 <!-- 리뷰카드 -->
           	<div id="AllReview">
            	<c:forEach items="${reviewList }" var="review" >
						<div class="card border-secondary mb-3" style="max-width: 200rem;">
							
							<div class="card-body">
							
							<div class="row">
									<div class="col-md-6">
										<a href="#">
											<img class="radiusImg" alt="유저사진" src="${review.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png': review.userProfile }" align="left"/>
											<span class="reviewUserSpan" >${review.userNick }</span>
											<span class="badge badge-pill badge-danger">★${review.grade }</span>
										</a>
									</div >
									<div class="col-md-6" align="right">
										<a class="btn btn-outline-danger waves-effect" href="<c:url value='/Movieing/Movie/MovieReviews.mov?reviewNo=${review.reviewNo }'/>">더보기</a>
									</div>
								</div>
							
							
							
								
								<p class="card-text">${review.reviewContent }</p>
								<span
									style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-thumbs-up"></i><!-- 좋아요 아이콘 -->
										${review.likeCount } </span>&nbsp;&nbsp;&nbsp; 
								<span
									style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
										${review.commentCount } </span>
							</div>
						</div>
				</c:forEach>
			</div>	 
				<!-- 페이지네이션 -->
				<div id="pagingString" class="row d-flex justify-content-center ">
				<!-- 원래 페이지네이션

					 -->
					${pagingString }
				</div>
				</c:if>	
			
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
						  <c:forEach items="${stillCutList}" var="stillCut">
						  	<div class="carousel-item active">
						      <img src="${stillCut.stillCutImage}" class="d-block w-100" alt="...">
						    </div>
						  </c:forEach>
						  <!-- 
						    <div class="carousel-item active">
						      <img src="<c:url value='/resources/img/movie/toolyPhoto1.jpg'/>" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="<c:url value='/resources/img/movie/toolyPhoto2.jpg'/>" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="<c:url value='/resources/img/movie/toolyPhoto3.jpg'/>" class="d-block w-100" alt="...">
						    </div>
						   -->
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
						<iframe id="ytplayer1" type="text/html" width="100%"
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
	
