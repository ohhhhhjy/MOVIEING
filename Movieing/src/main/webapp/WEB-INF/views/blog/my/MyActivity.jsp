<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<style>
body {
	padding-top: 150px;
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
	width:135px;
	text-overflow: ellipsis ;
}

.movieStar {
	color: white;
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




.movieUl {
    list-style:none;
    margin:0;
    padding:0;
}

.movieLi {
    margin: 0 0 0 0;/* 위쪽여백 오른쪽여백 아래여백 왼쪽여백 */
    padding: 0 0 10px 10px;
    border : 0;
    float: left;
   
}

.liDiv{
	width:135px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 1; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap:break-word; 
	line-height: 1.2em;
	height: 1.2em;
}

</style>

<!--1.컨트롤러에서 넘어오는 page값 이용해서 탭 선택시켜주기 https://stackoverflow.com/questions/39461076/how-to-change-active-bootstrap-tab-with-javascript-->
<!--2.선택된 탭을 알아내서 select div에 .html로 탭에 맞는 [선택 option] 넣어주기-->
<!--3.선택된 select option에 따라 tap-content 내용 바꿔주기-->

<script>
$(function(){
	// $(window).hashchange(); 
	var page = "";
	
	//탭세팅
	tabSettingByPage();
	$('.nav-item').click(function(){
		
		switch($(this).get(0).id){
		case 'nav-star-tab':page='a';break;
		case 'nav-review-tab':page='b';break;
		case 'nav-like-tab':page='c';break;
		default:page='d';
		}
		selectorSettingByTab(page); 
		
	});
	
	
	var flag = false;
	//좋아요 클릭 이벤트처리
	if(typeof $('.likeUnlike')!= 'undefined'){
 	$('.likeUnlike').click(function(){
 		var index = $(this).attr('id');
 		
 		
		//좋아요 off  > on
 		if(flag){
 			
 			//$('#likeUnlikeIcon').removeClass('far fa-thumbs-up').addClass('fas fa-thumbs-up');
 			
 			$.ajax({
 				url:"<c:url value='/Movieing/Blog/LikeInsert.mov'/>",
 				type:'post',
 				dataType:'text',
 				data:
 					{id:'${id}',reviewNo:'${reviewLikeList.get(index).reviewNo}'},
			    beforeSend : function(xhr)
                  {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                      xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                  },	
 				success:function(data){//서버로 부터 정상적인 응답을 받았을 때(200번)
 					$('#likeSpan'+index).html('<i class="fas fa-thumbs-up"></i>'+data);
 				},	
 				error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
 					console.log("에러:"+data.responseText);
 				}
 			});
 			
 			flag = !flag;
 		}
 		
 		//좋아요 on  > off
 		else{
 			//$('#likeUnlikeIcon').removeClass('fas fa-thumbs-up').addClass('far fa-thumbs-up'); 
 			
 			$.ajax({
 				url:"<c:url value='/Movieing/Blog/LikeRemove.mov'/>",
 				type:'post',
 				dataType:'text',
 				data:
 				{id:'${id}',reviewNo:'${reviewLikeList.get(index).reviewNo}'},
 				beforeSend : function(xhr)
                {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                },
 				success:function(data){//서버로 부터 정상적인 응답을 받았을 때(200번)
 					$('#likeSpan'+index).html('<i class="far fa-thumbs-up"></i>'+data);
 				},	
 				error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
 					console.log("에러:"+data);
 				}
 			});
 			flag = !flag;
 		}
 			
	});
	}
	var reviewNo ="";
	$('#deleteModal').on('show.bs.modal', function (e) { 
		reviewNo = $(e.relatedTarget).data('notifyid'); 
		
		$('#deleteBtn').click(function(){
			$.ajax({
						url:"<c:url value='/Movieing/Blog/reviewRemove.mov'/>",
						type:'post',
						data:
						{reviewNo:reviewNo},
						beforeSend : function(xhr)
		            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		            },
						success:function(){//서버로 부터 정상적인 응답을 받았을 때(200번)
							//tabSettingByPage2(page);
							location.href='<c:url value="/Movieing/Blog/MyActivity.mov?page='+page+'"/>';
							
						},	
						error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
							console.log("에러:"+data);
						}
			});
		});
		
		
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

function tabSettingByPage2(page){//전 페이지에서 넘어온 페이지값에 따라 탭과 탭컨텐츠 세팅해주기
	console.log('들어왓니');
	$('.nav-item').removeClass('active');
	$('.tab-pane').removeClass('active');
	
	
	switch(page){
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
		selects = ['추가 순',"..."];break;
	default: 
		selects = ['추가 순','예상별점 순'];
	}
	for(var i=0;i<selects.length;i++){
		optionHTML+='<option>'+selects[i]+'</option>';
	}
	selectorHTML='<select class="browser-default custom-select" >'+optionHTML+'</select>';
		
	$('#selector').html(selectorHTML);
}

function tabContentSettingBySelector(){//셀렉트 클릭에 따라 탭컨텐츠 변화시키기(ajax)
	
}

function goToBlogFeed(otherUserId){
	var f = document.paging;
	// form 태그의 하위 태그 값 매개 변수로 대입
	f.otherUserId.value = otherUserId;
	// input태그의 값들을 전송하는 주소
	f.action = "/movieing/Movieing/Blog/BlogMain.mov"
	// 전송 방식 : post
	f.method = "post"
	f.submit();
}






</script>

<!-- 컨테이너 시작 -->
<div class="container">
	<div class="row">
		<!-- 오른쪽시작 -->
		<div class="col-sm-2">
			<a class="btn btn-secondary" href="<c:url value='/Movieing/Blog/BlogMain.mov'/>" role="button">< 블로그 메인</a>
			 <!-- 드롭다운 -->
			 <!-- <div id="selector" style="padding-top:20px">
			 </div> -->
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
                   <c:if test="${empty evaluationList }" var="isEmpty">
                 		<div class="py-3">
	                 		<h5>아직 등록하신 별점이 없어요...<i class="far fa-sad-cry"></i></h5>
	                 		<h5>별점을 등록하러 가볼까요?</h5>
	                 		<button type="button" id="btnWish" class="btn btn-outline-danger waves-effect" onclick="location.href='<c:url value="/Movieing/Movie/screening/First_like.mov"/>'"><i class="far fa-star"></i>&nbsp;평가하기</button>
                 		</div>
                 	</c:if>
                 	<c:if test="${!isEmpty }">
                 		<ul class="movieUl">
                 		<c:forEach items="${evaluationList }" var="item">
                 			<li class="movieLi">
                 				<a href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${item.movieNo }'/>"><img  class="movieImg" src=${item.movieImg } alt="영화포스터"/></a><br>
								<div class="liDiv">
									<span class="movieTitle">${item.movieTitle }</span><br>
								</div>
								<span class="movieStar badge badge-pill badge-danger">★${item.evaluationGrade }</span>
                 			</li>
                 			</c:forEach>
                 		</ul>
                 	</c:if>
                   		
                 </div>
                 
                 <!-- 컨텐츠b:리뷰 -->
                 <div class="tab-pane fade" id="nav-review" role="tabpanel" aria-labelledby="nav-review-tab">
                 	<c:if test="${empty reviewList }" var="isEmpty">
                 		<div class="py-3">
	                 		<h5>아직 작성하신 리뷰가 없어요...<i class="far fa-sad-cry"></i></h5>
	                 		<h5>리뷰를 작성하러 가볼까요?</h5>
	                 		<button type="button" id="btnWish" class="btn btn-outline-danger waves-effect" onclick="location.href='<c:url value="/Movieing/Blog/WritePage.mov"/>'"><i class="far fa-edit"></i>&nbsp;리뷰남기기</button>
                 		</div>
                 	</c:if>
                 	<c:if test="${!isEmpty }">
                 		<!-- 리뷰카드 -->
	                 	<c:forEach items="${reviewList }" var="item">
							<div class="card border-secondary mb-3" style="max-width: 200rem;">
								<div class="card-body">
									<div class="row">
										<div class="col-sm-3" align="center">
											<a href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${item.movieNo }'/>"><img class="movieImg"
												src="${item.movieImg }" alt="포스터" /></a>
										</div>
										<div class="col-sm-9">
											<div class="row">
												<div class="col-md-9">
													<h4 class="card-title">${item.movieTitle }</h4><!-- 영화제목 -->
												</div>
												<div class="col-md-3">
													<button type="button" class="btn btn-outline-primary" onclick="location.href='<c:url value="/Movieing/Blog/WritePage.mov?reviewNo=${item.reviewNo }"/>'">수정</button>
													<button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal"  data-notifyid="${item.reviewNo }">삭제</button>
												</div>
											</div>
											<span class="badge badge-pill badge-danger">★ ${item.grade}</span><!-- 별점-->
											<p class="card-text" style="height: 100px">${item.reviewContent }</p><!-- 리뷰내용 -->
											<a><span
												style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-thumbs-up"></i><!-- 좋아요 아이콘 -->
													${item.likeCount } </span></a>&nbsp;&nbsp;&nbsp; <a href="<c:url value='/Movieing/Movie/MovieReviews.mov?reviewNo=${item.reviewNo }'/>"><span
												style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
													${item.commentCount }</span></a>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
                 
                 <!-- 컨텐츠c:좋아요 -->
                 <div class="tab-pane fade" id="nav-like" role="tabpanel" aria-labelledby="nav-like-tab">
                   <c:if test="${empty reviewLikeList }" var="isEmpty">
                 		<div class="py-3">
	                 		<h5>아직 좋아요에 추가하신 리뷰가 없어요...<i class="far fa-sad-cry"></i></h5>
	                 		<h5>다른 친구들의 리뷰를 구경하러 가볼까요?</h5>
	                 		<button type="button" id="btnWish" class="btn btn-outline-danger waves-effect" onclick="location.href='<c:url value="/Movieing/Blog/MovieingFriends.mov"/>'"><i class="fas fa-user-friends"></i>&nbsp;무빙프렌즈</button>
                 		</div>
                 	</c:if>
                 	
                 		<form name="paging">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type="hidden" name="otherUserId" />
						</form>
                 	
                 	<c:if test="${!isEmpty }">
                   	<!-- 리뷰카드 -->
                   	<c:forEach items="${reviewLikeList }" var="item" varStatus="status">
                  	 	<!-- a태그 post방식 페이지 전송 폼 -->
				
						<div class="card border-secondary mb-3" style="max-width: 200rem;">
							<div class="card-header" align="right">
								<a href="javascript:goToBlogFeed('${item.userId}');">
									<img class="radiusImg" alt="유저사진" src="${item.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png': item.userProfile}" align="right"/>
									<span class="likeSpan" >${item.userNick }</span>
								</a>
								
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-sm-3" align="center">
										<a href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${item.movieNo }'/>"><img class="movieImg"
											src="${item.movieImg }" alt="포스터" /></a>
									</div>
									<div class="col-sm-9">
										<h4 class="card-title">${item.movieTitle }</h4>
										<span class="badge badge-pill badge-danger">★${item.grade }</span>
										<p class="card-text" style="height: 100px">${item.reviewContent }</p>
										
										<button type="button" class="btn btn-link likeUnlike" id="${status.index }" ><span
											style="font-weight: bold; color: #db147b; font-size: 0.9em" id="likeSpan${status.index }"><i id="likeUnlikeIcon" class="fas fa-thumbs-up"></i><!-- 좋아요 아이콘 -->
												${item.likeCount } </span></button>&nbsp;&nbsp;&nbsp; 
										<button type="button" class="btn btn-link" onclick="location.href='movieing/Movieing/Movie/MovieReviews.mov?reviewNo=${item.reviewNo }'"><span style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
												${item.commentCount } </span></button>
										<span id="reviewNo${status.index }" style="color:white;font-size: 0.1em">${item.reviewNo }</span>
									</div>
								</div>	
							</div>
						</div>
					</c:forEach>
					</c:if>
                 </div>
                 
                 <!-- 컨텐츠d:보고싶어요 -->
                  <div class="tab-pane fade" id="nav-wish" role="tabpanel" aria-labelledby="nav-wish-tab">
                   <c:if test="${empty wishList }" var="isEmpty">
                 		<div class="py-3">
	                 		<h5>아직 보고싶어요에 추가하신 영화가 없어요...<i class="far fa-sad-cry"></i></h5>
	                 		<h5 ><span id="idSpan">${id }</span>님이 좋아하실 영화를 추천해드릴게요!</h5>
	                 		<button type="button" id="btnWish" class="btn btn-outline-danger waves-effect" onclick="location.href='<c:url value="/Movieing/Movie/Recommend.mov"/>'"><i class="far fa-plus-square"></i>&nbsp;영화 추천받기</button>
                 		</div>
                 	</c:if>
                 	<c:if test="${!isEmpty }">
                 	
                	  <ul class="movieUl">
                 		<c:forEach items="${wishList }" var="item">
                 			<li class="movieLi">
                 				<a href="<c:url value='/Movieing/Movie/MovieDetails.mov?movieNo=${item.movieNo }'/>"><img  class="movieImg" src=${item.movieImg } alt="영화포스터" /></a><br>
          						<div class="liDiv">
									<span class="movieTitle">${item.movieTitle }</span><br>
								</div>
								<!-- <span class="movieStar badge badge-pill badge-danger">예상★ 별점로직이 필요해...</span> -->
                 			</li>
                 			
                 			</c:forEach>
                 		</ul>
                 	</c:if>
             

					</div> 
                 </div>
             </div>
		</div>
		
		
		<!-- 삭제모달 -->
		<div class="modal" tabindex="-1" role="dialog" id="deleteModal">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" align="center"> <i class="far fa-bell"></i> 알림창</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <p>리뷰를 삭제하시겠습니까?</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		        <button id="deleteBtn" type="button" class="btn btn-danger"  data-dismiss="modal">삭제</button>
		      </div>
		    </div>
		  </div>
		</div>
		
	</div>

