<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<nav class="navbar navbar-default navbar-fixed-top" role="navigation">            
     <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
             <span class="sr-only">Toggle navigation</span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="<c:url value='/Movieing/admin/admin_main.mov'/>" title="PB Dashboard">MOVIEING 관리자 페이지</a>
     </div>
     <div class="collapse navbar-collapse navbar-ex1-collapse">
         <ul class="nav navbar-nav side-nav">
             <li><a href="<c:url value='/Movieing/admin/admin_main.mov'/>"><i class="glyphicon glyphicon-th"></i> 통계 일람</a></li>
             <li><a href="<c:url value='/Movieing/admin/admin_usermanagement.mov'/>"><i class="fa fa-user"></i> 유저 관리</a></li>
             <li><a href="<c:url value='/Movieing/admin/admin_qna.mov'/>"><i class="glyphicon glyphicon-comment"></i> 문의사항 관리</a></li>
             <li class="nav nav-list nav-list-expandable">
                 <a><i class="fa fa-edit"></i> 게시글 관리 <span class="caret"></span></a>
                 <ul class="nav navbar-nav">
                     <li><a href="<c:url value='/Movieing/admin/admin_announce.mov'/>"><i class="fa fa-list-alt"></i> 공지사항 관리</a></li>
                     <li><a href="<c:url value='/Movieing/admin/admin_goods.mov'/>"><i class="fa fa-krw"></i> 판매 상품 관리</a></li>
                 </ul>
             </li>
             <!-- 
             <li><a href="bootstrap.html"><i class="fa fa-magic"></i> Bootstrap Elements</a></li>
             <li class="nav nav-list nav-list-expandable">
                 <a><i class="fa fa-key"></i> Collapsed Menu Item <span class="caret"></span></a>
                 <ul class="nav navbar-nav">
                     <li><a href="#">Sub Item 1</a></li>
                     <li><a href="#">Sub Item 2</a></li>
                 </ul>
             <li>
              -->
         </ul>
         <ul class="nav navbar-nav navbar-right navbar-user">
             <li class="dropdown user-dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> 관리자A<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-power-off"></i> 로그아웃</a></li>
                </ul>
            </li>
         </ul>
     </div>
 </nav>