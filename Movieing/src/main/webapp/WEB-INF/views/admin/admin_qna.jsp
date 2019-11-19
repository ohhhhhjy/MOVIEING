<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="page-wrapper">
    <div class="row">
    	<div class="col-md-12">
         <div class="page-header">
             <h1>문의사항 관리 페이지</h1>
         </div>
         <p hidden="hidden" >${qnaJson}</p>
        
         <div id="grid-qna"></div>
         </div>
    </div>
</div>
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

<script type="text/javascript">
$(function(){
	var qnaData = $("p").html();
	console.log(qnaData);
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
	                cls: "annoedit",
	                caption: "<div class='annoedit'></div>답신",
	                commandName: "annoedit",
	                click: function (rowIndex) {
	                	
	                	
	                }
	            }]
	        }
	        
	    ]
	});
	
});


</script>

