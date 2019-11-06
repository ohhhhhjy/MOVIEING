<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>관리자 페이지</title>
 <link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/fonts/font-awesome/css/font-awesome.css'/>" />

<link id="themecss" rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/admin/theme.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/admin/dashboard.css'/>" />

  </head>

  
  <body>
  <div id="wrapper">
  	<!-- 탑 부분 -->
  	<tiles:insertAttribute name="Top"/>
  	
  	<!--바디 부분 -->
  	<tiles:insertAttribute name="Body"/>
  	<!-- 푸터 부분 -->
  	<tiles:insertAttribute name="Footer"/>
  	
  </div>
  	
  	  <!-- Bootstrap core JavaScript -->
	  <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
	  <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	 
	 
	
	  <!-- Plugin JavaScript -->
	  <script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
	
	  <!-- Contact form JavaScript -->
	  <script src="<c:url value='/resources/js/jqBootstrapValidation.js'/>"></script>
	  <script src="<c:url value='/resources/js/contact_me.js'/>"></script>
	
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery-1.10.2.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>"></script>
	
	<script type="text/javascript"
		src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
	
	<script type="text/javascript"
		src="<c:url value='/resources/js/admin/theme.js'/>"></script>
	
	
	<script type="text/javascript">
		jQuery(function($) {
			$("#chart_live").shieldChart(
					{
						seriesPalette : [ "#67A9CE", "#4063AD" ],
						exportOptions : {
							image : false,
							print : false
						},
						axisX : {
							categoricalValues : [ '2001', '2002', '2003', '2004',
									'2005', '2006', '2007', '2008', '2009', '2010',
									'2011', '2012' ]
						},
						axisY : {
							axisTickText : {
								format : "{text:c}"
							},
							title : {
								text : "Price (EUR per kWh)"
							}
						},
						tooltipSettings : {
							chartBound : true
						},
						primaryHeader : {
							text : "Electricity prices"
						},
						dataSeries : [
								{
									seriesType : 'splinearea',
									applyAnimation : false,
									collectionAlias : 'Households',
									data : [ 0.164, 0.173, 0.184, 0.167, 0.177,
											0.189, 0.180, 0.183, 0.188, 0.160,
											0.176, 0.178 ]
								},
								{
									seriesType : 'splinearea',
									applyAnimation : false,
									collectionAlias : 'Industry',
									data : [ 0.103, 0.105, 0.112, 0.111, 0.102,
											0.099, 0.110, 0.113, 0.117, 0.119,
											0.123, 0.117 ]
								} ]
					});
	
			$("#chart_browsers").shieldChart(
					{
						seriesPalette : [ "#4063AD", "#6AC16E", "#67A9CE",
								"#F2C73E", "#D8494C" ],
						exportOptions : {
							image : false,
							print : false
						},
						chartAreaPaddingTop : 0,
						chartAreaPaddingBottom : 0,
						chartAreaPaddingLeft : 0,
						chartAreaPaddingRight : 0,
						primaryHeader : {
							text : ""
						},
						chartLegend : {
							enabled : false
						},
						seriesSettings : {
							pie : {
								enablePointSelection : true,
								dataPointText : {
									enabled : false
								}
							}
						},
						dataSeries : [ {
							seriesType : "pie",
							applyAnimation : false,
							collectionAlias : "Usage",
							data : [ [ "IE", 9.0 ], {
								collectionAlias : "Firefox",
								y : 26.8,
								selected : true
							}, [ "Chrome", 55.8 ], [ "Safari", 3.8 ],
									[ "Opera", 1.9 ] ]
						} ]
					});
	
			$("#progress").shieldProgressBar({
				value : 75,
				layout : "circular",
				layoutOptions : {
					circular : {
						borderWidth : 0,
						color : "#4063AD",
						backgroundColor : "#A2E6D7"
					}
				},
				text : {
					enabled : true,
					template : '<b style="color:#363636;">{0:c0}%</b>'
				}
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
	
			$("#calendar1").shieldCalendar();
	
			$("#switch1").shieldSwitch({
				onText : "",
				offText : "",
				cls : "pbd-switch btn-default"
			});
			$("#switch2").shieldSwitch({
				onText : "",
				offText : "",
				cls : "pbd-switch btn-success"
			});
			$("#switch3").shieldSwitch({
				onText : "",
				offText : "",
				cls : "pbd-switch btn-primary"
			});
			$("#switch4").shieldSwitch({
				onText : "",
				offText : "",
				cls : "pbd-switch btn-info"
			});
			$("#switch5").shieldSwitch({
				onText : "",
				offText : "",
				cls : "pbd-switch btn-warning"
			});
			$("#switch6").shieldSwitch({
				onText : "",
				offText : "",
				cls : "pbd-switch btn-danger"
			});
		});
	</script>
  </body>
</html>