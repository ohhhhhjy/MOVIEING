<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	<c:choose>
		<c:when test="${result==1 }">
			alert('삭제 성공했습니다.');
			location.replace('<c:url value="/Movieing/admin/admin_announce.mov"/>');
		</c:when>
		<c:when test="${result==0 }">
			alert('삭제 실패했습니다.');
			history.back();
		</c:when>
		
	
	</c:choose>
</script>