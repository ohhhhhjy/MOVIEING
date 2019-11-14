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
				success:function(){//서버로 부터 정상적인 응답을 받았을 때(200번)
					 //var ajdata = decodeURIComponent( data );

					commentMaking(userNick,comment);
					
				},	
				error:function(request,status,error){//서버로 부터 비정상적인 응답을 받았을 때(404번,500번...)
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}

			});
			
		});
	});
	
	
	var commentMaking = function(userNick,comment){
		var imgUrl = "${user.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png':user.userProfile }";
		var commentString = '';
		commentString+='<div class=" row comment  px-3 " style="padding-top: 20px">	<div class="col-md-1 d-flex justify-content-end">';
		commentString+= '<img class="radiusImg" alt="댓글유저사진" src="'+imgUrl+'" align="left"/></div><div class="col-md-11 px-2" >';
		commentString+='<h6>'+userNick+'</h6>';
		commentString+='<p class="commentP">'+comment+'</p></div></div><hr> ';
		
		$('#commentDiv').append(commentString);
		$('#textareaDiv').html('<textarea class="form-control" id="textarea" rows="3" placeholder="댓글을 남겨보세요."></textarea>');
	};
	

</script>

<div class="container">
	<a href="javascript:window.history.back();"><i class="fas fa-arrow-left" style="color:#db147b;font-size: 1.4em"></i></a>
	<h2 align="center" style="padding: 30px">${review.userNick }님의 ${review.movieTitle } 리뷰</h2>


	<!-- 리뷰카드 -->
	<div class="card border-secondary row " style="max-width: 200rem;">
		<div class="card-header" >
			<a href="#">
				<img class="radiusImg" alt="유저사진" src="${review.userProfile==null?'https://www.clipartwiki.com/clipimg/detail/248-2480210_user-staff-man-profile-person-icon-circle-png.png':review.userProfile }" align="left"/>
				<span class="reviewUserSpan" >${review.userNick }</span>
			</a>
		</div>
		<div class="card-body">
			<span class="badge badge-pill badge-danger">★${review.grade }</span>
			<p class="card-text">${review.reviewContent }</p>
			<a href="#"><span
				style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-thumbs-up"></i><!-- 좋아요 아이콘 -->
					${review.likeCount } </span></a>&nbsp;&nbsp;&nbsp; 
			<a href="#" ><span
				style="font-weight: bold; color: #db147b; font-size: 0.9em"><i class="far fa-comments"></i><!-- 댓글 아이콘 -->
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
							<h6>${comment.userNick }</h6>
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