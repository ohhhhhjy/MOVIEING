<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<script type="text/javascript"src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<script type="text/javascript">
 var IMP = window.IMP; // 생략가능
 //이부분은 아임포트회사에서 테스트로 제공해주는 것이므로 변경 X
 IMP.init('iamport'); // 가맹점 식별 코드

 IMP.request_pay({
  pg : 'kakao', // 결제방식
  pay_method : 'card', // 결제 수단
  merchant_uid : 'merchant_' + new Date().getTime(),
  name : '주문명: 서울독립영화제', // order 테이블에 들어갈 주문명 혹은 주문 번호
  amount : '72000', // 결제 금액
  buyer_email : 'ohhhhhjy@naver.com', // 구매자 email
  buyer_name : '오지윤', // 구매자 이름
  buyer_tel : '010-7777-7777', // 구매자 전화번호
  buyer_addr : '서울특별시 구로구 가산디지털단지', // 구매자 주소
  buyer_postcode : '12345', // 구매자 우편번호
  
 },
 function(rsp) {
  if (rsp.success) { // 성공시
   var msg = '결제가 완료되었습니다.';
   msg += '고유ID : ' + rsp.imp_uid;
   msg += '상점 거래ID : ' + rsp.merchant_uid;
   msg += '결제 금액 : ' + rsp.paid_amount;
   msg += '카드 승인번호 : ' + rsp.apply_num;
   location.href = '<c:url value="/Movieing/Ticket/PaySuccess.mov"/>';
  } else { // 실패시
   var msg = '결제에 실패하였습니다.';
   msg += '에러내용 : ' + rsp.error_msg;
   console.log(msg);
   location.href = '<c:url value="/Movieing/Ticket/PayFail.mov"/>';
  }
 });
</script>

<title>결제 테스트 할 수 있는 곳</title>
</head>
<body>
</body>
</html>