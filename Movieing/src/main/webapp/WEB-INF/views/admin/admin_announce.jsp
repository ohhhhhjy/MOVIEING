<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="page-wrapper">
    <div class="row">
    	<div class="col-md-12">
         <div class="page-header">
             <h1>공지사항 관리 페이지</h1>
         </div>
         <div id="button"><button id="write" class="btn btn-default">글 작성하기</button></div>
        
         <div id="grid-announce"></div>
         </div>
    </div>
    <!-- /.row -->
    <script id="detailTemplate1" type="text/x-shield-template">
        <table> 
            <tr>             
               <td>
                    <b>Personal Contact Information</b></br>
                    </br>
                    <b>Email Address:</b>{email}</br>                    
                    <b>Phone Number :</b>{phone}</br>       
                    <b>Address      :</b>{address}</br>       
               </td>
            </tr>
        </table>
	</script>
    <script>
    $(function(){
    	$("#grid-announce").shieldGrid({
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
            detailTemplate: $("#detailTemplate1").html(),
            
            columns: [
                { field: "id", width: "70px", title: "글 번호" },
                { field: "name", title: "글 제목" },
                { field: "registered", title: "작성일자", width:"230px" },
                {
                    title: "수정",
                    width: "80px",
                    buttons: [
		            {
		                cls: "annoedit",
		                caption: "<div class='annoedit'></div>수정",
		                commandName: "annoedit",
		                click: function (rowIndex) {
		                	
		                }
		            }]
                },
                {
                    title: "삭제",
                    width: "80px",
                    buttons: [
		            {
		                cls: "annodel",
		                caption: "<div class='annodel'></div>삭제",
		                commandName: "annodel",
		                click: function (rowIndex) {
		                    
		                }
		            }]
                }
            ]
        });
    	$('#write').click(function(){
    		location.assign("<c:url value='/Movieing/admin/admin_awrite.mov'/>");
    	});
    });
    	
    </script>
</div>

