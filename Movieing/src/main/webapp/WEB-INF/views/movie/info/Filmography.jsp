<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value='/resources/css/movieLayout.css'/>" rel="stylesheet" type="text/css">
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->
<div class="container">
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
</div>