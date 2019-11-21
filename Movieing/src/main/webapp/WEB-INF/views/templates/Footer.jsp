<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    </footer>
    
    
    <script>
    
    $(function () {
        if (window.Notification) {
            Notification.requestPermission();
        }
        
        $.ajax({
			url : "<c:url  value='/Ajax/Noti.mov'/>",
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
            var notification = new Notification('제목', {
                icon: './mov.png',
                body: '내용용',
            });

            notification.onclick = function () {
                window.open('http://google.com');
            };
        }
    }

    
    
    
    </script>