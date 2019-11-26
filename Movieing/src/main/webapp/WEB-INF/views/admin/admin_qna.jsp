<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="page-wrapper">

    <div class="row">
    	<div class="col-md-12">
		    
	         <div class="page-header">
	             <h1>문의사항 관리 페이지</h1>
	         </div>
	        
	         <div id="grid-qna"></div>
         </div>
    </div>
    
</div>
<script id="replyContent" type="text">
	<form class="form-horizontal" method="post" action="<c:url value='/Movieing/admin/admin_qna.mov'/>">
   		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}">
		<input type="hidden" name="no" value="{qnaNo}">
  		<fieldset>
		 <div class="page-header" id="reply-header">
		   <b>답변 내용</b>
		 </div>
      	 <div class="form-group">
       	    <div>
       	   	  <textarea style="width:90%;height:250px" id="reply-content" name="content"></textarea>
       	  	  <br />
          	  <div id="reply-button"><button type="submit"
				onclick="success()" class="btn btn-primary">등록</button></div>
       		</div> 
      	 </div>
       
   		</fieldset>
	</form>
</script>
<script id="detailTemplate3" type="text/x-shield-template">
	<div style="margin:30px;margin-left:80px">
        <table> 
            <tr>             
               <td>
                    <b>문의사항 : {qnaContent}</b></br>
                    </br>
					</br>
                    <b>답변 : {qnaAnswer}</br>
               </td>
            </tr>
        </table>
	</div>
</script>
<script>
	   
	   
		
    </script>

<script type="text/javascript">
$(function(){
	var qnaData = ${qnaJson};
	console.log(qnaData);
	var modal = document.getElementById("reply");
	$(".close").click(function(){
		modal.style.display = "none";
	});
	$("#cancel").click(function(){
		modal.style.display = "none";
	});
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	
	$("#grid-qna").shieldGrid({
	    dataSource: {
	        data: qnaData
	    },
	    sorting: {
	        multiple: true
	    },
	    paging: {
	        pageSize: 10,
	        pageLinksCount: 10
	    },
	    detailTemplate: $("#detailTemplate3").html(),
	    
	    columns: [
	        { field: "qnaNo", width: "70px", title: "글 번호" },
	        { field: "qnaTitle", title: "글 제목" },
	        { field: "qnaUserId", title: "작성자 닉네임", width: "120px" },
	        { field: "qnaPostdate", title: "작성일자", width:"130px" },
	        {
	            title: "답변하기",
	            width: "80px",
	            buttons: [
	            {
	                cls: "qnaans",
	                caption: "<div class='qnaans'></div>답신",
	                commandName: "qnaans",
	                click: function (rowIndex) {
	                	
	                	var no,username;
	                	if(rowIndex%2==0){
	                		no = $('.sui-row:eq('+rowIndex/2+')>.sui-cell:eq(1)').text();
	                		username = $('.sui-row:eq('+rowIndex/2+')>.sui-cell:eq(3)').text();
	                		content = $('.sui-row:eq('+rowIndex/2+')>.sui-cell:eq(2)').text();
	                		
	                	}
	                	else {
	                		no = $('.sui-alt-row:eq('+(rowIndex-1)/2+')>.sui-cell:eq(1)').text();
	                		username = $('.sui-alt-row:eq('+(rowIndex-1)/2+')>.sui-cell:eq(3)').text();
	                		content = $('.sui-row:eq('+(rowIndex-1)/2+')>.sui-cell:eq(2)').text();
	                		
	                	}
	                	
	                	console.log(username);
	                	
	                	if ($("#modal").swidget()) {
	                        $("#modal").swidget().destroy();
	                    }
	                    $("#modal").remove();
	                    var text = $("#replyContent").html();
	                    	
	                    
	                    $('<div id="modal" style="margin:20px;"></div>')
	                        .appendTo(document.body)
	                        .shieldWindow({
	                            width: 500,
	                            height: 500,
	                            title: username +" 님의 문의사항",
	                            content: {
	                                template: {
	                                    body: "<b>{qnaContent}</b></br>"+text,
	                                    data:qnaData[rowIndex]
	                                }
	                            },
	                            modal: true
	                        });
	                	
	                }
	            }]
	        }
	        
	    ]
	});
	
	
	
});


</script>

