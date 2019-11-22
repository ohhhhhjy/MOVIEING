<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">

	
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script
     src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<style>
/* 원형이미지들 */
.radiusImg {
     width: 100px;
     height: 100px;
     /* background-image:url("배경이미지경로"); */
     border-radius: 150px; /* 레이어 반크기만큼 반경을  잡기*/
     display: table-cell;
     vertical-align: middle;
     color: #ffffff;
     font-weight: bold;
     text-align: center;
}


</style>
<div class="container" style="padding-top: 150px">
     <div class="row">
          <div class="col-md-12">
              <!-- col-md-3시작 -->
              <div class="card">
                   <div class="card-body">
                        <div class="row">
                             <div class="col-md-12">
                                  <h4>프로필 사진을 등록해주세요 :)</h4>
                                  <hr>
                             </div>
                        </div>
                        <div class="row">
                             <div class="col-md-12">
                                  <form action="<c:url value='/Movieing/member/SignUpProfile.mov?${_csrf.parameterName}=${_csrf.token}'/> " method="post" id="frm" enctype="multipart/form-data">
                                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> 
                                  <input type="hidden" name="userid" value=${userid }>
                                      <div  class="form-group row">
                                           <label  for="image" class="col-4 col-form-label">프로필 사진</label>
										
										<div  class="col-4">
                                                <input  type="file" name="image" id="image" class="text-center center-block file-upload">
                                           </div>
                                      </div>
                                      
                                      <div  class="form-group row">
                                           <div  class="offset-4 col-8" style="text-align: right;">
                                                <button  name="submit" type="submit" class="btn  btn-primary">다음</button>
                                           </div>
                                      </div>
                                  </form>
                             </div>
                        </div>
                   </div>
              </div>
              </div>
          </div>
          <!-- col-md-12끝 -->
     </div>
     



</div>

<script>
$(function() {
			
		$('#pass1').css({'font-size':'.8em','color':'gray'});
		$('#pass2').css({'font-size':'.8em','color':'gray'});
		$('#idcheck').css({'font-size':'.8em','color':'gray'});
		$('#nickcheck').css({'font-size':'.8em','color':'gray'});
		
		/* var readURL = function(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('.avatar').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		$(".file-upload").on('change', function() {
			readURL(this);
		}); */

		//$('#userid').change(function() {
			
		
		//아이디 중복 체크
		$('#userid').on("propertychange change input",function() {
			
			$.ajax({
				url : "<c:url  value='/Ajax/isMember.mov'/>",
				type : 'post',
				beforeSend : function(xhr)
	              {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	                  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	              },
				data : $('#frm').serialize(), 
				dataType : 'text',
				success : function(data) {
					if(data=='Y'){
						$('#idcheck').css('color', 'red');						
						$('#idcheck').text('이미 사용 중인  아이디입니다. ');
						console.log($('#idcheck').html());
					}
					else{
						$('#idcheck').css('color', 'green');					
						$('#idcheck').text('사용 가능한 아이디입니다.');
						if($('#userid').val().length==0){
							$('#idcheck').css({'font-size':'.8em','color':'gray'});
							$('#idcheck').text('아이디를 입력하세요');
						}	
					}
					

				},
				error : function(data) {
					console.log("에러 : " + data);
				}

			});
			
		});
		
		//비밀번호 유효성
		$('#userpass').on('propertychange change input',function(){
				console.log($(this).val());
				var value = $(this).val();
				if ((value.length >= 8 && value.length <= 12) && 
						(value.indexOf('!')>-1 || value.indexOf('@')>-1 || value.indexOf('#')>-1 || value.indexOf('$')>-1)){
					console.log("dka");
					console.log($('#pass1').html());
					$('#pass1').css('color', 'green');
					$('#pass1').text('비밀번호 사용 가능');
					 
				}
				else{
					$('#pass1').css('color', 'red');
					$('#pass1').text('비밀번호는 8~12자 !@#$ 포함');
				}
									
			});
		$('#passcheck').on('propertychange change input',function(){
			
			if($(this).val()==$('#userpass').val()){
				$('#pass2').css('color', 'green');
				$('#pass2').text('비밀번호와 일치합니다.');
				}
			else{
				$('#pass2').css('color', 'red');
				$('#pass2').text('비밀번호와 일치하지 않습니다.');
				}
			});
		
		//닉네임 중복 체크
		$('#nickname').on("propertychange change input",function() {
			$.ajax({
				url : "<c:url  value='/Ajax/isMember.mov'/>",
				type : 'post',
				beforeSend : function(xhr)
	              {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	                  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	              },
				data : $('#frm').serialize(), 
				dataType : 'text',
				success : function(data) {
					if(data=='Y'){
						$('#nickcheck').css('color', 'red');						
						$('#nickcheck').text('이미 사용중인 닉네임입니다. ');
					}
					else{
						$('#nickcheck').css('color', 'green');					
						$('#nickcheck').text('사용 가능한 닉네임입니다.');
						if($('#nickname').val().length==0){
							$('#nickcheck').css({'font-size':'.8em','color':'gray'});
							$('#nickcheck').text('닉네임을 입력하세요');
						}	
					}
					

				},
				error : function(data) {
					console.log("에러 : " + data);
				}

			});

		});
		
	});
</script>



