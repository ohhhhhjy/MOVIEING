<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link href="<c:url value='/resources/css/movieLayout.css'/>"
   rel="stylesheet" type="text/css">




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
   float: left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
      follow these rules. Every browser that supports :checked also supports :not(), so
      it doesn’t make the test unnecessarily selective */
.rating:not (:checked ) >input {
   position: absolute;
   top: -9999px;
   clip: rect(0, 0, 0, 0);
}

.rating:not (:checked ) >label {
   float: right;
   width: 1em;
   /* padding:0 .1em; */
   overflow: hidden;
   white-space: nowrap;
   cursor: pointer;
   font-size: 300%;
   /* line-height:1.2; */
   color: #ddd;
}

.rating:not (:checked ) >label:before {
   content: '★ ';
}

.rating>input:checked ~ label {
   color: #f7e411;
}

.rating:not (:checked ) >label:hover, .rating:not (:checked ) >label:hover 
    ~ label {
   color: #f7e411;
}

.rating>input:checked+label:hover, .rating>input:checked+label:hover ~
   label, .rating>input:checked ~ label:hover, .rating>input:checked ~
   label:hover ~ label, .rating>label:hover ~ input:checked ~ label {
   color: #f7e411;
}

.rating>label:active {
   position: relative;
   top: 2px;
   left: 2px;
}

/*  보고싶어요 버튼 */
#btnWish {
   width: 150px;
   height: 50px;
   align-self: center;
}

/* 가격비교 아이콘 */
.jw-provider-icon {
   border-radius: 20%;
}

.price-comparison_grid_row_icon {
   border-radius: 11px;
   width: 50px;
   height: 50px;
   margin-bottom: 3px;
}

/* 영화 최저가 가격  글자   */
.priceText {
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
.moviePersonName {
   font-size: 1.2em;
   font-weight: bold;
   color: #9b9aa1;
   padding-right: 7px
}
</style>



<div style="padding-left: 400px">
<a href="javascript:window.history.back();"><i class="fas fa-arrow-left" style="color:#db147b;font-size: 1.4em"></i></a>
</div>


   <div class="container">
   
      <h1>필모그래피</h1>
      <div style="margin-bottom: 10px"></div>
      <!--  
      <c:forEach items="${selectFilmoList}" var="filmo">
      </c:forEach>
      -->
      <div class="card   bg-ligh mb-3">
         <!-- 상단 -->
         <div class="row card-body">
            <!-- 포스터 -->
            <div class="col-md-3 ">
               <a href="<c:url value='/Movieing/Movie/MovieDetailsTest.mov'/>"><img
                  class="movieImage"
                  src="${moviePeopleInfo.moviePeopleImg }" alt="포스터" /></a>
            </div>
            
            <!-- 기본정보+별점 -->
            <div class="col-md-9  ">
               <h1>${moviePeopleInfo.moviePeopleName}<span class="text-muted px-2">${moviePeopleInfo.moviePeopleJob}</span>
               </h1>
               <hr class="my-3">
               <span class="px-2" style="font-weight: bold">국적: ${moviePeopleInfo.moviePeopleCountry}</span>
               <!--<span class="px-2" style="font-weight: bold">출현작 :</span><!-- ${selectListDirector.movieTitle } -->
               <!-- <span> ・</span>
               <span class="px-2" style="color:#db147b;font-weight: bold">예상★4.0</span> -->
               <div id="starSpan"></div>

            </div>

         </div>
      </div>
      
      <!-- ------------------------------------------------------------------------------------------------ -->
      <div style="padding-bottom: 30px"></div>

      <!-- 사이 간격주기 -->
      <!-- --------------------------------------------------------------------------------------------- -->
      <div class="card  bg-ligh mb-3" style="max-width: 200rem;">
         <!-- border-secondary -->
         <div class="card-body">
            <h4>출현영화</h4>
            <div class="filmo-movie-row">

               <ul class="filmo-movie-list-Frame">
                  <c:forEach items="${movieInfoList}"  var="movie">
                     <li class="filmo-movie-list-li">

                        <div class="filmo-movie-image-Frame">
                           <div class="filmo-moive-image-second">
                              <img class="filmo-movie-image" src="${movie.movieImg}">
                           </div>
                        </div>
                        <div class=filmo-movie-Title-Frame>
                           <div class="filmo-movie-Title">${movie.movieTitle}</div>
                        </div>

                     </li>

                  </c:forEach>

               </ul>

            </div>

         </div>
      </div>



      <!--  
   <div>
      <div class="filmo-all-Frame" >
         <div class="filmo-header-Frame">
            <div class="filmo-back-button-Frame">
               <div class="filmo-back-button-Frame2">
                  <button class="filmo-back-button">
                     <img src="<c:url value='/resources/img/etc/backbutton.png'/>">
                  </button>
               </div>
            </div>
            <div class="filmo-name-Frame" >
               <div class="filmo-name-second-frame">
                  검색에 해당하는 이름1
               </div>
            </div>
         </div>
         
         <div >
            <div class="filmo-movie-row">
               
               <ul class="filmo-movie-list-Frame">
               <c:forEach begin="1" end="12" var="i">
                  <li class="filmo-movie-list-li">
                  
                     <div class="filmo-movie-image-Frame">
                        <div class="filmo-moive-image-second">
                           <img class="filmo-movie-image" src="http://placehold.it/230x300">
                        </div>
                     </div>
                     <div class=filmo-movie-Title-Frame>
                        <div class="filmo-movie-Title">영화제목 ${i}</div>
                        <div class="filmo-movie-Rating">평점</div>
                     </div>
                  
                  </li>
                  
               </c:forEach>
                  
               </ul>
               
            </div>
         </div>
      </div>
   </div>
   -->

   </div>