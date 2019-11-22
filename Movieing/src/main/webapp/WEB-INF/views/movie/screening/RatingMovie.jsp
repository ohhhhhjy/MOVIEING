<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.

-->




<style>
img {
	display: block;
	width: 100%;
	height: auto;
	transition: .5s ease;
	backface-visibility: hidden;
}

.row {
	position: relative;
}

img:hover {
	filter: none;
	opacity: 0.5;
}

.middle {
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
}

.text:hover .middle {
	opacity: 1;
}

.text:hover {
	color: white;
	font-size: 16px;
	color: black;
	
}
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}


/*마우스오버*/
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,700)
	;

.snip1273 {
	font-family: 'Raleway', Arial, sans-serif;
	width: 228px;
	height: 321px;
	color: #ffffff;
	text-align: left;
	background-color: #000000;
	font-size: 16px;
	background-color: #000000;
}

.snip1273 * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.4s ease-in;
	transition: all 0.4s ease-in;
}

.snip1273 img {
	position: relative;
	max-width: 100%;
	vertical-align: top;
}

.snip1273 figcaption {
	position: absolute;
	top: 0;
	right: 0;
	width: 100%;
	height: 100%;
	z-index: 1;
	opacity: 0;
	padding: 20px 30px;
}

.snip1273 figcaption:before, .snip1273 figcaption:after {
	width: 1px;
	height: 0;
}

.snip1273 figcaption:before {
	right: 0;
	top: 0;
}

.snip1273 figcaption:after {
	left: 0;
	bottom: 0;
}

.snip1273 h3, .snip1273 p {
	line-height: 1.5em;
}

.snip1273 h3 {
	margin: 0 0 5px;
	font-weight: 700;
	text-transform: uppercase;
}

.snip1273 p {
	font-size: 0.8em;
	font-weight: 500;
	margin: 0 0 15px;
}

.snip1273 a {
	position: absolute;
	top: 0;
	bottom: 0;
	right: 0;
	left: 0;
	z-index: 1;
}

.snip1273:before, .snip1273:after, .snip1273 figcaption:before,
	.snip1273 figcaption:after {
	position: absolute;
	content: '';
	background-color: #ffffff;
	z-index: 1;
	-webkit-transition: all 0.4s ease-in;
	transition: all 0.4s ease-in;
	opacity: 0.8;
}

.snip1273:before, .snip1273:after {
	height: 1px;
	width: 0%;
}

.snip1273:before {
	top: 0;
	left: 0;
}

.snip1273:after {
	bottom: 0;
	right: 0;
}

.snip1273:hover img, .snip1273.hover img {
	opacity: 0.4;
}

.snip1273:hover figcaption, .snip1273.hover figcaption {
	opacity: 1;
}

.snip1273:hover figcaption:before, .snip1273.hover figcaption:before,
	.snip1273:hover figcaption:after, .snip1273.hover figcaption:after {
	height: 100%;
}

.snip1273:hover:before, .snip1273.hover:before, .snip1273:hover:after,
	.snip1273.hover:after {
	width: 100%;
}

.snip1273:hover:before, .snip1273.hover:before, .snip1273:hover:after,
	.snip1273.hover:after, .snip1273:hover figcaption:before, .snip1273.hover figcaption:before,
	.snip1273:hover figcaption:after, .snip1273.hover figcaption:after {
	opacity: 0.1;
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
        font-size:200%;/*300*/
        /* line-height:1.2; */
        color:#ddd;
    }

    .rating:not(:checked) > label:before {
        content: '★ ';
    }

    .rating > input:checked ~ label {
        color: #f7e411;
                top: -9999px;
        left: -9999px;
        
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
</style>


<script>
$(document).ready(function() {
	/* $(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	}); */
	
 	//별점 클릭시 insert와 update를 실행시키기위한 ajax메소드..
 	$('.starRadio').click(function(){
	    var movieNo = $(this).attr('name');//영화번호
        var starNo = $(this).val();//방금클릭한 grade.
        $('.starRadio').prop('checked', '');
        $(this).prop('checked', 'checked');
        //상단 카운트 숫자 증가시키기
        var evalueCount = parseInt($('#evalueCount').html())+1;
        $('#evalueCount').html(evalueCount);
        //프로그레스바 증가시키기
        $('.progress-bar').css('width',evalueCount/30*100+'%');
        
        var parentDiv = $(this).closest('.parentDiv');
        
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
                	 parentDiv.remove();
                	    if(0 <= evalueCount && evalueCount < 10){
                	        $('.message').text('아직 고객님의 취향을 잘 모르겠어요..');
                	        }else if(10 <= evalueCount && evalueCount < 20){
                	        	  $('.message').text('조금은 취향을 알것같아요!');
                	        }else if(20 <= evalueCount && evalueCount < 30){
                	        	  $('.message').text('이제 취향을 잘 알겠어요!');
                	        }else if(30 <= evalueCount && evalueCount < 40){
                	        	  $('.message').text('기왕 이렇게 된거 40개 가보죠!');
                	        }else{
                	        	  $('.message').text('휼륭해요!이 기세로 쭉쭉 밀고 나가봐요!');
                	        }
                 },   
                 error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
                      console.log("에러:"+data.responseText);
                 }             
        });
        
    

        
   });
   
	
	
	
});


 	
	
	
</script>

<div class="container-fluid"
	style="padding-left: 120px; padding-right: 120px; padding-top: 150px">




	<!-- 탑 -->
	<div class="col-md-12 row" align="center" style="padding-bottom: 70px">
		<div class="col-md-3" style="padding-top: 40px">

		</div>
		<div class="col-md-6">
			<h4 id="evalueCount">${evalueCount }</h4>
			
			<h6 class="message">영화 취향 별점을 매겨주세요</h6>
			
			<div class="progress">
				<div class="progress-bar" role="progressbar" style="width: ${evalueCount/30*100}%"
					aria-valuenow="${evalueCount}" aria-valuemin="0" aria-valuemax="30"></div>
			</div>

		</div>

		<div class="col-md-3" style="padding-top: 40px">
			<button type="button" class="btn btn-outline-primary waves-effect" style="border-radius: 8em;font-size:medium;"
			onclick="location.href='<c:url value='/Movieing/Blog/BlogMain.mov'/>'">
				내 취향분석 결과보기</button>
		</div>
	</div>



	<!-- 영화시작 -->

	

		<div class="col-xl-12">
			<div class="row">
				<c:forEach items="${movieList}" var="movie" varStatus="status">

					<div class="col-md-2 parentDiv">
						<div class="row">
							<figure class="snip1273" style="padding-bottom: 30px">
								<img src="${movie.movieImg}" alt="Pineapple" alt="Image" style="width: 228px; height: 321px;">
								<!-- 안에 내용 -->
								<figcaption>
									<div align="center" style="padding-top: 100px">
										<div style="padding-right: 80px">
										<h4>${movie.movieTitle}</h4>
										<h6>${movie.movieYear }</h6>
										</div>
									</div>
									<div class="row">
										<!-- 별점이다 -->
									   <div class="rating px-3" id="${status.index}">
										      <input class="starRadio" type="radio" id="${status.index }_star5" name="${movie.movieNo }" value="5" /><label for="${status.index }_star5" title="최고예요">5 stars</label>
										      <input class="starRadio" type="radio" id="${status.index }_star4" name="${movie.movieNo }" value="4" /><label for="${status.index }_star4" title="재미있어요">4 stars</label>
										      <input class="starRadio" type="radio" id="${status.index }_star3" name="${movie.movieNo }" value="3" /><label for="${status.index }_star3" title="보통이에요">3 stars</label>
										      <input class="starRadio" type="radio" id="${status.index }_star2" name="${movie.movieNo }" value="2" /><label for="${status.index }_star2" title="별로예요">2 stars</label>
										      <input class="starRadio" type="radio" id="${status.index }_star1" name="${movie.movieNo }" value="1" /><label for="${status.index }_star1" title="싫어요">1 star</label>
									    </div> 
									 </div>
								</figcaption>
							
								
							</figure>
						</div>
						
					</div>
					
				</c:forEach>
			</div>
		</div>
	


	<!-- 한 장르 끝 -->
	<div style="padding-bottom: 50px"></div>



</div>






