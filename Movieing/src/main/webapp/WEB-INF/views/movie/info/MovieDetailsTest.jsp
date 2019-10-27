<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<style>
body {
	padding-top: 130px;
}

.movieImage {
	width: 150px;
	height: 200px;
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
        color: dodgerblue;
        
    }

    .rating:not(:checked) > label:hover,
    .rating:not(:checked) > label:hover ~ label {
        color: dodgerblue;
        
    }

    .rating > input:checked + label:hover,
    .rating > input:checked + label:hover ~ label,
    .rating > input:checked ~ label:hover,
    .rating > input:checked ~ label:hover ~ label,
    .rating > label:hover ~ input:checked ~ label {
        color: dodgerblue;
        
    }

    .rating > label:active {
        position:relative;
        top:2px;
        left:2px;
    }
</style>

<script>
$(document).ready(function() {
	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	});
});


</script>

<div class="container">
	<!-- 상단 -->
	<div class="row">
		<!-- 포스터 -->
		<div class="col-md-2 ">
			<a href="<c:url value='/Movieing/Movie/MovieDetailsTest.mov'/>"><img
				class="movieImage" src="../../resources/img/movie/tooly.jpg"
				alt="포스터" /></a>
		</div>
		<div class="col-md-8 col-md-offset-2">
			<h3>툴리</h3>
			<span>2018 가족 </span>
			<hr class="my-3">
			<span>평점★3.8&nbsp;&nbsp;</span><span style="color:#db147b">예상★4.0</span>
			<hr class="my-3">
			<div class="row">
			<div class="rating">
		      <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Meh">5 stars</label>
		      <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Kinda bad">4 stars</label>
		      <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Kinda bad">3 stars</label>
		      <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Sucks big tim">2 stars</label>
		      <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Sucks big time">1 star</label>
		    </div>
			</div>
		</div>
	</div>
	
<!-- ----------------------------------------여기까지 상단  -->	
	<hr class="my-3">
	
	
	
	<div class="row">
		<div class="col-md"></div>
	
	
	</div>



</div>