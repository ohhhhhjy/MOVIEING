<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<link href="<c:url value='/resources/css/friendsLayout.css'/>"
	rel="stylesheet" type="text/css">
<!------ Include the above in your HEAD tag ---------->

<!-- 프사진가져온것 -->

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script>
	$(document).ready(function() {

		var readURL = function(input) {
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
		});
	});
</script>
<style>

/* 원형이미지들 */
.radiusImg {
	width: 100px;
	height: 100px;
	/* background-image:url("배경이미지경로"); */
	border-radius: 150px; /* 레이어 반크기만큼 반경을 잡기*/
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
							<h4>회원가입</h4>
							<hr>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<form id="frm">
							<div class="form-group row">
									<label for="id" class="col-4 col-form-label">아이디 *</label>
									<div class="col-8">
										<div class="row">
											<div class="col-md-6">
												<input id="userid" name="userid" placeholder="아이디"
													class="form-control here" required="required" type="text">
											</div>
											<div class="col-md-2">
												
												<!-- <input class="btn btn-primary text-white" type="submit" value="중복확인"/> -->
											</div>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="image" class="col-4 col-form-label">사진</label>
									
									<div class="col-4">
										<input type="file" class="text-center center-block file-upload">
									</div>
								</div>
								<div class="form-group row">
									<label for="username" class="col-4 col-form-label">비밀번호*<small id="pass1" class="text-muted">&nbsp;(비밀번호는 8~12자, !@#$ 포함)</small></label>
									<div class="col-8">
										<input id="userpass" name="userpass" placeholder="비밀번호"
											class="form-control here" required="required" type="password">
									</div>
								</div>
								<div class="form-group row">
									<label for="username" class="col-4 col-form-label">비밀번호 확인*<small id="pass2" class="text-muted">&nbsp;(비밀번호와 일치하지 않습니다.)</small></label>
									<div class="col-8">
										<input id="passcheck" name="passcheck" placeholder="비밀번호 확인"
											class="form-control here" required="required" type="password">
									</div>
								</div>
								<div class="form-group row">
									<label for="userpass" class="col-4 col-form-label">이름*</label>
									<div class="col-8">
										<input id="username" name="username" placeholder="이름"
											class="form-control here" required="required" type="text">
									</div>
								</div>
								<div class="form-group row">
									<label for="nickname" class="col-4 col-form-label">닉네임*</label>
									<div class="col-6">
										<input id="nickname" name="nickname" placeholder="닉네임"
											class="form-control here" type="text">
									</div>
									<div class="col-md-2">
												
												<input class="btn btn-primary text-white" onclick="btnClick()" type="submit" value="중복확인"/>
											</div>
								</div>

								<div class="form-group row">
									<label for="select" class="col-4 col-form-label">성별</label>
									<div class="col-8">
										<div class="row">
											<div class="custom-control custom-radio col-md-2">
												<input type="radio" name="jb-radio" id="jb-radio-1" class="custom-control-input">
												<label class="custom-control-label" for="jb-radio-1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;여자</label>
											</div>
											<div class="custom-control custom-radio col-md-6">
												<input type="radio" name="jb-radio" id="jb-radio-2" class="custom-control-input">
												<label class="custom-control-label" for="jb-radio-2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;남자</label>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="email" class="col-4 col-form-label">이메일*</label>
									<div class="col-8">
										<input id="email" name="email" placeholder="Email"
											class="form-control here" required="required" type="text">
									</div>
								</div>
								<div class="form-group row">
									<label for="publicinfo" class="col-4 col-form-label">자기
										소개</label>
									<div class="col-8">
										<textarea id="publicinfo" name="publicinfo" cols="40" rows="4"
											class="form-control"></textarea>
									</div>
								</div>



								<div class="form-group row">
									<div class="offset-4 col-8" style="text-align: right;">
										<button name="submit" type="submit" class="btn btn-primary">회원가입</button>
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
	<!-- row -->



<script>
	
	/* function btnClick() {
		var userpass = document.getElementById('userpass').value;
		var passcheck = document.getElementById('passcheck').value;
		var pass1 = document.getElementById('pass1');
		var pass2 = document.getElementById('pass2');
		if(userpass==passcheck){
			pass2.innerHTML='(비밀번호가 일치합니다)';
			}
		else{
			pass2.innerHTML='(비밀번호가 일치하지않습니다)';
			
			}
		//!@#$
		if((userpass.indexOf('!')>=0 || userpass.indexOf('@')>=0 || userpass.indexOf('#')>=0 || userpass.indexOf('$')>=0) && 
				(userpass.length>=8 && userpass.length<=12)){
			pass1.innerHTML='(비밀번호가 사용 가능)';
		}
		else{
			pass1.innerHTML='(비밀번호는 8~12자, !@#$ 포함 )';
		}
	} */
	
	$(function() {
		$('#userid').on("propertychange change keyup paste input",function() {
			console.log('change');
			 $.ajax({
				url:"<c:url value='/Ajax/isMember.mov'/>",	
				type:'post',
			    data:$('#frm').serialize(),
				dataType:'json',
				success:function(data){
					console.log(data['isMember']=='Y'?'이미 사용중인 아이디 입니다. ':'사용 가능한 아이디 입니다.');	
					
				},
				error:function(data){
					console.log("에러 : "+data);
				}
				
				
				
			}); 
		});
	});
		
	



</script>

