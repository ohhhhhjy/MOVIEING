<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 타일즈 설정되어 있어서  바디부분만 작성하면 됨. 
근데 타일즈라 그냥 만들기만 한다고 되는게 아님.
컨트롤러가서 RequestMapping해줘야됨.
-->

<!-- jQuery  -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.5.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.5.0/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyBDGfVbqyDQKtwXF854GKGBDnPuA6v-tFE",
    authDomain: "androidmoving-c76d9.firebaseapp.com",
    databaseURL: "https://androidmoving-c76d9.firebaseio.com",
    projectId: "androidmoving-c76d9",
    storageBucket: "androidmoving-c76d9.appspot.com",
    messagingSenderId: "992036377345",
    appId: "1:992036377345:web:5185ce71f2084e917e4100",
    measurementId: "G-4K6ZEXLKXE"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
<div class="container" style="padding-top:200px">

<h2>Notification 보낼 내용 입력</h2>

<form action="<c:url value='/SendMessage'/>" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">


    <textarea name="message" rows="4" cols="50" placeholder="메세지를 입력하세요"></textarea><br>

    <input type="submit" name="submit" value="Send" id="submitButton">

</form>



</div>