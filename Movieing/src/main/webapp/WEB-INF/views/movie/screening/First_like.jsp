<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.

-->

<script>

$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  return false;
	});
	
	
	
</script>


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




    
/*별*/
</style>

<script>
	/* Demo purposes only */
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});
</script> 


<div class="container-fluid"
	style="padding-left: 120px; padding-right: 120px; padding-top: 150px">




	<!-- 탑 -->
	<div class="col-md-12 row" align="center" style="padding-bottom: 70px">
		<div class="col-md-3" style="padding-top: 40px">
			<button type="button" class="btn btn-outline-primary waves-effect">
				< 선택완료</button>
			<div class="starRev">
  <span class="starR1 ">별1_왼쪽</span>
  <span class="starR2">별1_오른쪽</span>
  <span class="starR1">별2_왼쪽</span>
  <span class="starR2">별2_오른쪽</span>
  <span class="starR1">별3_왼쪽</span>
  <span class="starR2">별3_오른쪽</span>
  <span class="starR1">별4_왼쪽</span>
  <span class="starR2">별4_오른쪽</span>
  <span class="starR1">별5_왼쪽</span>
  <span class="starR2">별5_오른쪽</span>
</div>

		</div>
		<div class="col-md-6">
			<h4>41</h4>
			<h6>기왕 이렇게 된거 50개 가보죠!</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" style="width: 75%"
					aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
			</div>

		</div>

		<div class="col-md-3" style="padding-top: 40px">
			<button type="button" class="btn btn-outline-primary waves-effect">
				다음 ></button>
		</div>
	</div>


	<!-- 영화시작 -->

	

		<div class="col-xl-12">
			<div class="row">
				<c:forEach items="${movieList}" var="movie">

					<div class="col-md-2">
						<figure class="snip1273">
							<img src="${movie.movieImg}" alt="Pineapple" alt="Image" style="width: 228px; height: 321px">
							<!-- 안에 내용 -->
							<figcaption>
								<div align="left" style="padding-top: 100px">
									<h4>${movie.movieTitle}</h4>
									<div style="padding-left: 80px">
										<h6>${movie.movieYear }</h6>
									</div>
									<!-- 별점 -->
							
								</div>
							</figcaption>
							<a href="#"></a>
						</figure>
					</div>
					
				</c:forEach>
			</div>
		</div>
	


	<!-- 한 장르 끝 -->
	<div style="padding-bottom: 50px"></div>



</div>






