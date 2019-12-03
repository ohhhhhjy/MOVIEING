<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>


<meta charset="UTF-8">
<footer class="footer">
     <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; MOVIEING 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    
    <sec:authorize access="isAuthenticated()">
                    <sec:authentication property="principal.username" var="user_id" />
                    <div id="user_id">${user_id }</div>
                </sec:authorize>


    
    </footer>
    
    
    <script>
    
    $(function () {
    	var id = $('#user_id').html();
    	//var reviewId = '${reviewId}';
    	console.log(id);
        if (window.Notification) {
            Notification.requestPermission();
        }
  
        console.log('누구 게시물?'+'${whom}');	
        if('${whom}'==id){
        	console.log('내 게시물에 댓글 달렸냐');
        		
        }
        	
        
	/* 	//if('${whom}'!='') console.log('댓글 달렸냐');
    	if('${whom}'==id){
    		console.log('내가 쓴 리뷰에 댓글이 달렸어요');
    	} */
    	
        var id=1;
        $.ajax({
			url : "<c:url  value='/Ajax/Noti.mov'/>",
		    type : 'post',
		   /*  data:{id:'1'},*/
		    dataType:'text', 
			beforeSend : function(xhr)
              {  
                  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
              }, 
			success : function(data) {
				console.log(data);
				if(data=="1"){
					noti();
				}
				else{
					console.log()
				}
				

			},
			error : function(data) {
				
				console.log("에러 : " + data);
			}

		});
        
    });
   

    function noti() {
        setTimeout(function () {
            notify();
        }, 5000);
    }

    function notify() {
        if (Notification.permission !== 'granted') {
            alert('notification is disabled');
        }
        else {
            var notification = new Notification('무빙 MOVIEING', {
                icon: "<c:url value='/resources/img/mup.png'/>",
                body: '회원님의 게시물에 댓글이 달렸어요!',
            });

            notification.onclick = function () {
                window.open('http://google.com');
            };
        }
    }

    
    
    
    </script>