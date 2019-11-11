<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="page-wrapper">
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-line-chart"></i> 유저 증감 추이 </h3>
                </div>
                <div class="panel-body">
                    <div id="chart_live" style="width:100%; height:300px;"></div>
                </div>
            </div>
            <div class="panel panel-primary">
            	<div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-table"></i> 기간 대비 통계 </h3>
                </div>
                <div class="panel-body">
                    <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                        <h4><span class="fa fa-eye"></span> 방문자 수</h4>
                        <h3>1450</h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                        <h4><span class="fa fa-file-video-o"></span> 게시글 수</h4>
                        <h3>327</h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                        <h4><span class="fa fa-users"></span> 가입자 수</h4>
                        <h3>119</h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                        <h4><span class="fa fa-money"></span> 매출</h4>
                        <h3>200,000 ￦</h3>
                    </div>
                </div>
            </div>
            
        </div>
        <div class="col-md-4">
            <div class="panel panel-primary">
               <div class="panel-heading">
                   <h3 class="panel-title"><i class="fa fa-calendar"></i> 달력</h3>
               </div>
               <div class="panel-body text-center" style="width:100%; height:470px;">
                   <div id="calendar1"></div>
               </div>
           </div>
        </div>
    </div>
    <!-- /.row -->
</div>

