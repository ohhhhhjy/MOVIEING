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

.card-body{


}
</style>

<script>
$(document).ready(function() {
	//댓글등록
	$('#registerBtn').click(function(){
		var userNick = '${user.userNick}';
		var comment = $('#textarea').val();
	
		$.ajax({
				url:'<c:url value="/Movieing/Movie/CommentAjax.mov"/>',
				type:'post',
				data:
					{id:'${user.userId}',commentContent:comment,reviewNo:'${review.reviewNo}' },
				beforeSend : function(xhr)
	              {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	                  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	              },
				success:function(data){//서버로 부터 정상적인 응답을 받았을 때(200번)
					commentMaking(userNick,comment,data);
				},	
				error:function(request,status,error){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
					console.log("에러:"+data.responseText);
				}

			});
			
		});
	});
	
	
	var commentMaking = function(userNick,comment,data,commentCount){
		var imgUrl = "${user.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png':user.userProfile }";
		var commentString = '';
		commentString+='<div class=" row comment  px-3 " style="padding-top: 20px">	<div class="col-md-1 d-flex justify-content-end">';
		commentString+= '<img class="radiusImg" alt="댓글유저사진" src="'+imgUrl+'" align="left"/></div><div class="col-md-11 px-2" >'+
					'<div class="row">'+
						'<div class="col-md-10">';
		commentString+='<h6>'+userNick+'</h6></div>'+
						'<div class="col-md-2" >'+
						'<span >'+data+'</span>'+
						'</div>'+
						'</div>';
		commentString+='<p class="commentP">'+comment+'</p></div></div><hr> ';
		
		
		$('#commentDiv').append(commentString);
		$('#textareaDiv').html('<textarea class="form-control" id="textarea" rows="3" placeholder="댓글을 남겨보세요."></textarea>');
		
		//댓글개수실시간으로 가져오기
		$.ajax({
			url:'<c:url value="/Movieing/Movie/CommentAjax2.mov"/>',
			type:'post',
			data:
				{id:'${user.userId}',commentContent:comment,reviewNo:'${review.reviewNo}' },
			beforeSend : function(xhr)
              {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
              },
			success:function(data){//서버로 부터 정상적인 응답을 받았을 때(200번)
			console.log('댓글수:잘가져왓니?'+ data)
				//댓글 개수 바로 바꾸기
				$('#commentCount').html('<i class="far fa-comments"></i>'+data);
			},	
			error:function(request,status,error){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
				console.log("에러:"+data.responseText);
			}

		});
		
	
		
	};
	
	
	//좋아요
	$(function(){
	
	var flag = false;
	//좋아요 클릭 이벤트처리
	if(typeof $('.likeUnlike')!= 'undefined'){
 	$('.likeUnlike').click(function(){
 		console.log('좋아요버튼 누름');
 
		//좋아요 off  > on
 		if(flag){
 			
 			//$('#likeUnlikeIcon').removeClass('far fa-thumbs-up').addClass('fas fa-thumbs-up');
 			
 			$.ajax({
 				url:"<c:url value='/Movieing/Blog/LikeInsert.mov'/>",
 				type:'post',
 				dataType:'text',
 				data:
 					{id:'${id}',reviewNo:'${review.reviewNo}'},
			    beforeSend : function(xhr)
                  {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                      xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                  },	
 				success:function(data){//서버로 부터 정상적인 응답을 받았을 때(200번)
 					console.log('좋아요 삽입');
 					$('.likeUnlike').html('<i class="fas fa-thumbs-up"></i>'+data);
 					
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
 				{id:'${id}',reviewNo:'${review.reviewNo}'},
 				beforeSend : function(xhr)
                {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                },
 				success:function(data){//서버로 부터 정상적인 응답을 받았을 때(200번)
 					console.log('좋아요삭제');
 					$('.likeUnlike').html('<i class="far fa-thumbs-up"></i>'+data);
 				},	
 				error:function(data){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
 					console.log("에러:"+data);
 				}
 			});
 			flag = !flag;
 		}
 			
	});
	}
});


</script>

<div class="container">
	<a href="<c:url value='/Movieing/Movie/prevMovieReviews.mov?prevPage=${prevPage }'/>" ><i class="fas fa-arrow-left" style="color:#db147b;font-size: 1.4em"></i></a>
	<h2 align="center" style="padding: 30px">${review.userNick }님의 ${review.movieTitle } 리뷰</h2>


	<!-- 리뷰카드 -->
	<div class="card border-secondary row " style="max-width: 200rem;">
		<div class="card-header" >
			<a href="#">
				<img class="radiusImg" alt="유저사진" src="${review.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png':review.userProfile }" align="left"/>
				<span class="reviewUserSpan" ><a style="font-size:1.2em; font-weight: bold;color:black " href="http://localhost:8080/movieing/Movieing/Blog/BlogMain.mov?userNick=${review.userNick }">${review.userNick }</a></span>
			</a>
		</div>
		<div class="card-body">
			<div class="row">
				<div class="col-md-10">
					<span class="badge badge-pill badge-danger">★${review.grade }</span>
				</div>
				<div class="col-md-2" style="text-align: right;">	
					<span>${date }</span>
				</div>	
			</div>	
			<p class="card-text">${review.reviewContent }</p>
			<a href="#"><span
				style="font-weight: bold; color: #db147b; font-size: 0.9em" class="likeUnlike"><i class="${review.likeReviewEqual?'fas fa-thumbs-up': 'far fa-thumbs-up'}"></i><!-- 좋아요 아이콘 -->
					${review.likeCount } </span></a>&nbsp;&nbsp;&nbsp; 
			<a href="#" ><span
				style="font-weight: bold; color: #db147b; font-size: 0.9em" id="commentCount"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
					${review.commentCount } </span></a><!--콜랍스 설정 data-toggle="collapse"  href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" data-target="#commentWindow${i}"  aria-expanded="true" aria-controls="commentWindow${i}" -->
			
			<hr>
		
			<!-- 댓글 리스트 -->
			<div id="commentDiv">
			    <c:forEach items="${commentList }" var="comment">
					<div class=" row comment  px-3 " style="padding-top: 20px">
					 	<div class="col-md-1 d-flex justify-content-end">
							<img class="radiusImg" alt="댓글유저사진" src="${comment.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png':comment.userProfile }" align="left"/>
						</div>
						<div class="col-md-11 px-2" >
							<div class="row">
								<div class="col-md-10">
									<h6><a href="http://localhost:8080/movieing/Movieing/Blog/BlogMain.mov?userNick=${comment.userNick }" style="color:black;">${comment.userNick }</a></h6>
								</div>	
								<div class="col-md-2" >
									<span >${comment.stringDate }</span>
								</div>
							</div>	
							<p class="commentP">${comment.commentContent }</p> 
						</div> 
					</div>
					<hr>
				</c:forEach>
			</div>
			
			
			<!-- 댓글쓰기 -->
			<div class=" row comment px-3 " style="padding-top: 20px">
					 	<div class="col-md-1 d-flex justify-content-end">
							<img class="radiusImg" alt="댓글유저사진" src="${user.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png':user.userProfile }" align="left"/>
						</div>
						<div class="col-md-11 " >
							<h6>${user.userNick }</h6>
							<div style="padding-right: 40px" id="textareaDiv">
								<textarea class="form-control" id="textarea" rows="3" placeholder="댓글을 남겨보세요."></textarea>
							</div>
							<div class="d-flex justify-content-end " style="padding-right: 40px;padding-top: 10px">
								<button id="registerBtn" class="btn btn-danger" >등록</button>
							</div>
						</div> 
			</div>
		</div>
	</div>
		

</div>