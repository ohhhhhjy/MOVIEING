<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value='/resources/css/movieLayout.css'/>" rel="stylesheet" type="text/css">



<script type="text/javascript">
$(document).ready(function(){
	$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
});

</script>


<div class="container" style="margin-top: 40x;" id="rating_container">
	<div  style="margin-left: -15px; margin-right: -15px;">
	
		<div  ><!--  -->
		
			<div>
				<select>
					<option>랜덤영화</option>
					<option>역대 100만 관객 돌파 영화</option>
					<option>국내 누적관객 수 TOP 영화 </option>
					<option>전세계 흥행 TOP 영화</option>
					<option>전문가 고평가 영화</option>
				</select>
			</div>
			
			<div class="firstFrame">
				<div class="secondFrame">
					<div>
						<div class="thirdFrame">
							<ul class="ulFrame">
							<c:forEach var="i" begin="1" end="20">
								<li class="liFrame">
								
									<div class="rating-PosterContainer">
										<div class="rating-Poster-Imagediv">
											<img class="rating-Img" src="http://placehold.it/120x108">
										</div>
									</div>
									
									<div class="rating-Detail">
										<h3>
											영화제목 ${i}
										</h3>
										<div class="rating-Detail-Infomation">
											제작년도   º 국가
										</div>
										<div class="rating-Star-Container">
											<div class="rating-Star-row" >
												<div class="starRev" >
													<span class="starR">★</span>
													<span class="starR">★</span>
													<span class="starR">★</span>
													<span class="starR">★</span>
													<span class="starR">★</span>
												</div>
											</div>
										</div>
									</div>
									
								</li>
							</c:forEach>
								
							</ul>
						</div>					
					</div>
				</div>
			</div>	
			
		</div>


	</div>
</div>