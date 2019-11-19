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
<script id="detailTemplate3" type="text/x-shield-template">
        <table> 
            <tr>             
               <td>
                    <b>Personal Contact Information</b></br>
                    </br>
                    <b>Email Address:</b>{email}</br>                    
                    <b>Phone Number :</b>{phone}</br>       
                    <b>Address      :</b>{address}</br>    
					<b>Guid      :</b>{guid}</br>   
               </td>
            </tr>
        </table>
	</script>

<script type="text/javascript">
$(function(){
	$("#grid-qna").shieldGrid({
	    dataSource: {
	        data: gridData
	    },
	    sorting: {
	        multiple: true
	    },
	    paging: {
	        pageSize: 12,
	        pageLinksCount: 10
	    },
	    detailTemplate: $("#detailTemplate3").html(),
	    
	    columns: [
	        { field: "id", width: "70px", title: "글 번호" },
	        { field: "name", title: "글 제목" },
	        { field: "company", title: "작성자 닉네임", width: "120px" },
	        { field: "registered", title: "작성일자", width:"230px" },
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

