<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
    
<!DOCTYPE html>
<html lang="en">


<body id="page-top">
	<%-- <jsp:include page="/WEB-INF/views/templates/Top.jsp"/> --%>
 
 
  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Welcome To MOVIEING</div>
        <div class="intro-heading text-uppercase">It's Nice To Meet You</div>
        
      </div>
    </div>
  </header>



  <!-- Services -->
  <section class="page-section" id="services" style="border-color: #f7f2f5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">Services</h2>
          <h3 class="section-subheading text-muted">무빙의 서비스를 이용해보세요!</h3>
        </div>
      </div>
      <div class="row text-center">
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-video fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">영화 정보 보기</h4>
          <p class="text-muted">
          	최신 영화부터 고전 영화까지! <br/>
          	카테고리별로 영화를 검색할 수 있어요. <br/>
          	VOD 가격까지 알려드릴게요.
          </p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-search fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">취향저격 영화 찾기</h4>
          <p class="text-muted">어떤 영화가 있는지 궁금하신가요? <br/>
          	무빙은 당신의 취향을 분석해 새로운 영화를 추천해드립니다. 
          </p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-home fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">블로그</h4>
          <p class="text-muted">
          	이제 취향을 아셨으니 <br/>
          	같은 취향의 친구들과 만나볼까요?<br/> 
          	무빙에서는 다른 사용자들과 소통할 수 있어요.
          </p>
        </div>
      </div>
    </div>
  </section>

 
  <!-- About -->
  <section class="page-section" id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">About</h2>
          <h3 class="section-subheading text-muted">무빙의 기능을 소개해드릴게요!</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <ul class="timeline">
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="<c:url value='/resources/img/about/1.jpg'/>" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">전체 영화</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">
                  	이 곳에서는 전체 영화에 대한 정보를<br/>
                  	한 눈에 볼 수 있어요.<br/>
                  	평점, 장르 등으로 검색한 결과를 볼 수 있고<br/>
                  	영화의 상세 정보까지 확인할 수 있어요.<br/>
                  	해당 영화의 VOD가격비교까지 해준답니다!
                  	</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="<c:url value='/resources/img/about/2.jpg'/>" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">평가 및 추천</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">
					이 곳에서는 여러 영화를 평가하고<br/>
					취향에 맞는 영화를 추천받는 곳이예요.<br/>
					유저는 평가만 해!<small>요..</small><br/>
					추천은 무빙이가 할게!<small>요....</small>
				  </p>
                </div>
              </div>
            </li>
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="<c:url value='/resources/img/about/3.jpg'/>" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">블로그</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">
                  	
                  </p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="<c:url value='/resources/img/about/4.jpg'/>" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4 class="subheading">소식</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
              <br/>
                <h4>MOVI<span style="color: #E4288c">E</span>ING</h4>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>


 

  <!--Modals -->

  <!-- Modal 1 -->
  <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">Project Name</h2>
                <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                <img class="img-fluid d-block mx-auto" src="img/portfolio/01-full.jpg" alt="">
                <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                <ul class="list-inline">
                  <li>Date: January 2017</li>
                  <li>Client: Threads</li>
                  <li>Category: Illustration</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal LOGIN -->
  <div class="login-modal modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
    
      <div class="modal-content">
      
     <!--  <div class="modal header">
      <div class=""></div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> -->
      <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
      
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h5>로그인</h5>
                <input type="text" placeholder="아이디" class="form group form-control"/>
                <input type="password" placeholder="비밀번호" class="form group form-control"/>
                <p class="item-intro text-muted">
                	아직 무빙의 회원이 아니신가요?<br/>
                	무빙의 모든 서비스는 회원만 이용 가능합니다.<br/>
                	회원가입을 원하신다면 <a href="#" style="color: #e4288c">함께하기</a>를 눌러주세요:) 
                </p>
                <button class="btn btn-primary" data-dismiss="modal" type="button">로그인</button>
              </div>
            </div>
          </div>
        </div>
        </div>
    </div>
  </div>
  



</body>

</html>
