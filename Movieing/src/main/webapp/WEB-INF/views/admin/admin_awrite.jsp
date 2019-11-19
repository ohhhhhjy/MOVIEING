<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="page-wrapper">
    <div class="row">
    	<div class="col-md-12">
         <div class="well">
            <form class="form-horizontal">
                <fieldset>
                    <div class="page-header">
			             <h1>공지사항 등록 페이지</h1>
			         </div>
                    <div class="form-group">
                        <div class="col-lg-12" id="gwtitle">
	                        <label for="inputTitle" class="col-lg-1 control-label">제목</label>
	                        <div class="col-lg-10">
	                            <input type="text" class="form-control" id="inputTitle" placeholder="제목을 입력하세요.">
	                            
	                        </div>
							
                        </div>
                        <div class="col-lg-12" id="gwtitle">
	                        <label class="col-lg-1 control-label">내용</label>
	                        
	                        <div class="col-lg-10">
	                            <textarea id="editor">
			                        
			                    </textarea>
			                    <br />
			                    <div id="button"><button class="btn btn-lg btn-primary">등록</button></div>
	                        </div>
                       </div> 
                    </div>
                    
                </fieldset>
            </form>
        </div>
         
       </div>
    </div>
    <!-- /.row -->
</div>

