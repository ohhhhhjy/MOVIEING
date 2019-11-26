<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
		jQuery(function($) {
			var dt = new Date();
			var recentYear = dt.getYear();
			var recentMonth = dt.getMonth() + 1;
		    var recentDay = dt.getDate();
		    var date = new Array;
		    var fdate = new Array;
		   	var userJson = ${userJson};
		   
		    
		    for(var i=11;i>=0;i--){
		    	date[11-i] = recentDay-1>0?(recentMonth + "/" + (recentDay-i)):((recentMonth-1) + "/" + (recentDay-i));
		    	
		    }
		    
		    
			$("#chart_live").shieldChart(
					{
						seriesPalette : [ "#67A9CE", "#4063AD" ],
						exportOptions : {
							image : false,
							print : false
						},
						axisX : {
							categoricalValues : date
						},
						axisY : {
							
							title : {
								text : "사용자 수 (명)"
							}
						},
						tooltipSettings : {
							chartBound : true
						},
						primaryHeader : {
							text : "사용자 수 증감 추이"
						},
						dataSeries : [
							{
								seriesType : 'splinearea',
								applyAnimation : false,
								collectionAlias : '가입자 수(명)',
								data : userJson
							} ]
					});
	
			$("#tagcloud")
					.shieldTagCloud(
							{
								dataSource : {
									data : [
											{
												"name" : "Barcode",
												"groups" : 1,
												"demos" : 4,
												"url" : "http://demos.shieldui.com/web/barcode/basic-usage"
											},
											{
												"name" : "Calendar",
												"groups" : 1,
												"demos" : 5,
												"url" : "http://demos.shieldui.com/web/calendar/basic-usage"
											},
											{
												"name" : "Chart",
												"groups" : 25,
												"demos" : 131,
												"url" : "http://demos.shieldui.com/web/area-chart/axis-marker"
											},
											{
												"name" : "ColorPicker",
												"groups" : 1,
												"demos" : 8,
												"url" : "http://demos.shieldui.com/web/colorpicker/basic-usage"
											},
											{
												"name" : "ComboBox",
												"groups" : 1,
												"demos" : 7,
												"url" : "http://demos.shieldui.com/web/combobox/basic-usage"
											},
											{
												"name" : "ContextMenu",
												"groups" : 1,
												"demos" : 1,
												"url" : "http://demos.shieldui.com/web/contextmenu/basic-usage"
											},
											{
												"name" : "DataSource",
												"groups" : 1,
												"deos" : 5,
												"url" : "http://demos.shieldui.com/web/datasource/basic-usage"
											},
											{
												"name" : "DatePicker",
												"groups" : 1,
												"demos" : 4,
												"url" : "http://demos.shieldui.com/web/datepicker/basic-usage"
											},
											{
												"name" : "Editor",
												"groups" : 1,
												"demos" : 5,
												"url" : "ttp://demos.shieldui.com/web/editor/basic-usage"
											},
											{
												"name" : "Grid",
												"groups" : 8,
												"demos" : 56,
												"url" : "http://demos.shieldui.com/web/grid-general/basic-usage"
											},
											{
												"name" : "MaskedTextBox",
												"groups" : 1,
												"demos" : 4,
												"url" : "http://demosshieldui.com/web/maskedtextbox/basic-usage"
											},
											{
												"name" : "Menu",
												"groups" : 1,
												"demos" : 5,
												"url" : "http://demos.shieldui.com/web/menu/basic-usage"
											},
											{
												"name" : "MonthYearPicker",
												"groups" : 1,
												"demos" : 3,
												"url" : "http://demos.shieldi.com/web/monthyearpicker/basic-usage"
											},
											{
												"name" : "NumericTextBox",
												"groups" : 1,
												"demos" : 3,
												"url" : "http://demos.shieldui.com/web/numerictextbox/basic-usage"
											} ]
								},
								textTemplate : "{name}",
								frequencyTemplate : "{demos}",
								hrefTemplate : "{url}"
							});
	
			$("#calendar1").shieldCalendar(
				
			);
	
		});
	</script>

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
                    <div class="col-md-4 col-sm-4 col-xs-4 text-center">
                        <h4><span class="fa fa-file-video-o"></span> 리뷰 수</h4>
                        <h3>${totalReview}</h3>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4 text-center">
                        <h4><span class="fa fa-users"></span> 가입자 수</h4>
                        <h3>${totalUser}</h3>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4 text-center">
                        <h4><span class="fa fa-money"></span> 매출</h4>
                        <h3>${totalBuy} ￦</h3>
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

