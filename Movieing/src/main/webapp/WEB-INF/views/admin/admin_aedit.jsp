<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="page-wrapper">
    <div class="row">
    	<div class="col-md-12">
         <div class="well-lg">
            <form class="form-horizontal" method="post" action="<c:url value='/Movieing/admin/admin_announce.mov'/>">
                <fieldset>
                <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}">
					<input type="hidden" name="mtd"
					value="EDT">
					<input type="hidden" name="no"
					value="${dto.notiNo}">
                    <div class="page-header">
			             <h1>공지사항 수정 페이지</h1>
			         </div>
                    <div class="form-group">
                        <div class="col-lg-12" id="gwtitle">
	                        <label for="inputTitle" class="col-lg-1 control-label">제목</label>
	                        
	                        <div class="col-lg-10">
	                            <input type="text" name="title" value="${dto.notiTitle}"
	                             class="form-control" id="inputTitle" placeholder="제목을 입력하세요."
	                            required="required">
	                            
	                        </div>
							
                        </div>
                        <div class="col-lg-12">
	                        <label class="col-lg-1 control-label" id="gwtitle">내용</label>
	                        
	                        <div class="col-lg-10">
	                            <textarea id="editor" name="content" required="required">
			                        ${dto.notiContent}
			                    </textarea>
			                    <br />
			                    <div id="button"><button type="submit"
								onclick="success()" class="btn btn-lg btn-primary">수정</button></div>
	                        </div>
                       </div> 
                    </div>
                    
                </fieldset>
            </form>
        </div>
         
       </div>
    </div>
    <!-- /.row -->
    <script>
	    function validateForm() {
			var title = document.getElementById('title').value;
			if (title == "") {
				document.getElementById('status').innerHTML = "제목을 입력해주세요.";
				return false;
			}
			var content = document.getElementById('editor').value;
			if (content == "") {
				document.getElementById('status').innerHTML = "내용을 입력해주세요.";
				return false;
			}
			document.getElementById('status').innerHTML = "Sending...";
			document.getElementById('contact-form').submit();
	
		}
	   
		
		$(document).ready(function() {
			function success() {
				if (title.value = "") {
					return false;
				} else if (content.value = "") {
					return false;
				} else {
					alert("입력이 완료되었습니다.");
				}
	
			}
		});
    
    </script>
</div>

