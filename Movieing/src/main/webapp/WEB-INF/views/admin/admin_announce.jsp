<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="page-wrapper">
    <div class="row">
       <div class="col-md-12">
         <div class="page-header">
             <h1>공지사항 관리 페이지</h1>
         </div>
         <p hidden="hidden" >${notiJson}</p>
         
         <div id="button"><button id="write" class="btn btn-default">글 작성하기</button></div>
        
         <div id="grid-announce"></div>
         </div>
    </div>
    <!-- /.row -->
    <script id="detailTemplate1" type="text/x-shield-template">
   <div style="margin:30px;margin-left:80px">
        <table> 
            <tr>             
               <td>
                    <b>{notiContent}</b></br>
                      
               </td>
            </tr>
        </table>
   </div>
   </script>
   
    <script>
    var notiData = $("p").html();
    
    $(function(){
       $("#grid-announce").shieldGrid({
            dataSource: {
                data: notiData
            },
            sorting: {
                multiple: true
            },
            paging: {
                pageSize: 10,
                pageLinksCount: 10
            },
            detailTemplate: $("#detailTemplate1").html(),
            
            columns: [
                { field: "notiNo", width: "70px", title: "글 번호" },
                { field: "notiTitle", title: "글 제목" },
                { field: "notiDate", title: "작성일자", width:"130px" },
                {
                    title: "수정",
                    width: "80px",
                    buttons: [
                  {
                      cls: "annoedit",
                      caption: "<div class='annoedit'></div>수정",
                      commandName: "annoedit",
                      click: function (rowIndex) {
                         
                         var no;
                         if(rowIndex%2==0)
                            no = $('.sui-row:eq('+rowIndex/2+')>.sui-cell:eq(1)').text();
                         else
                            no = $('.sui-alt-row:eq('+(rowIndex-1)/2+')>.sui-cell:eq(1)').text();
                         location.assign("<c:url value='/Movieing/admin/admin_aedit.mov?no="+no+"'/>");
                         
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
                         
                         if(confirm('해당 게시글을 삭제하시겠습니까?')){
                            var no;
                            if(rowIndex%2==0)
                               no = $('.sui-row:eq('+rowIndex/2+')>.sui-cell:eq(1)').text();
                            else
                               no = $('.sui-alt-row:eq('+(rowIndex-1)/2+')>.sui-cell:eq(1)').text();
                            location.assign("<c:url value='/Movieing/admin/admin_adel.mov?no="+no+"'/>");
                         }
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
