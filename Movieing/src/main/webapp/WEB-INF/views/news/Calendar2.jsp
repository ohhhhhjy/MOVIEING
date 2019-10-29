<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Calendar"%>
<link href="<c:url value='/resources/css/calendar.css'/>"
	rel="stylesheet" type="text/css">
<%
	Calendar cal = Calendar.getInstance();

	String strYear = request.getParameter("year");

	String strMonth = request.getParameter("month");

	int year = cal.get(Calendar.YEAR);

	int month = cal.get(Calendar.MONTH);

	int date = cal.get(Calendar.DATE);

	if (strYear != null)

	{

		year = Integer.parseInt(strYear);

		month = Integer.parseInt(strMonth);

	} else {

	}

	//년도/월 셋팅

	cal.set(year, month, 1);

	int startDay = cal.getMinimum(java.util.Calendar.DATE);

	int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);

	int start = cal.get(java.util.Calendar.DAY_OF_WEEK);

	int newLine = 0;

	//오늘 날짜 저장.

	Calendar todayCal = Calendar.getInstance();

	SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");

	int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));
%>

<script type="text/javaScript" language="javascript"> 

      

       </script>

<style TYPE="text/css">
body {
	padding-top: 150px;
	scrollbar-face-color: #F6F6F6;
	scrollbar-highlight-color: #bbbbbb;
	scrollbar-3dlight-color: #FFFFFF;
	scrollbar-shadow-color: #bbbbbb;
	scrollbar-darkshadow-color: #FFFFFF;
	scrollbar-track-color: #FFFFFF;
	scrollbar-arrow-color: #bbbbbb;
	margin-left: "0px";
	margin-right: "0px";
	margin-top: "0px";
	margin-bottom: "0px";
}

td {
	font-family: "돋움";
	font-size: 12pt;
	color: #595959;
}

th {
	font-family: "돋움";
	font-size: 12pt;
	color: #000000;
}

select {
	font-family: "돋움";
	font-size: 12pt;
	color: #595959;
}

.divDotText {
	overflow: hidden;
	text-overflow: ellipsis;
}

A:link {
	font-size: 12pt;
	font-family: "돋움";
	color: #000000;
	text-decoration: none;
}

A:visited {
	font-size: 12pt;
	font-family: "돋움";
	color: #000000;
	text-decoration: none;
}

A:active {
	font-size: 12pt;
	font-family: "돋움";
	color: red;
	text-decoration: none;
}

A:hover {
	font-size: 12pt;
	font-family: "돋움";
	color: #e4288c;
	text-decoration: none;
}
</style>

<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-9">


			<form name="calendarFrm" id="calendarFrm" action="" method="post">

				<DIV id="content" style="width: 712px;">





					<table width="100%" border="0" cellspacing="1" cellpadding="1">

						<tr>

							<td align="right">
								<button class="btn btn-primary"
									onclick="javascript:location.href='<c:url value='/CalendarExam2.jsp' />'">오늘</button>
							</td>



						</tr>

					</table>

					<!--날짜 네비게이션  -->

					<table width="100%" border="0" cellspacing="1" cellpadding="1"
						id="calendar">



						<tr>

							<td height="60">



								<table width="100%" border="0" cellspacing="0" cellpadding="0">

									<tr>

										<td height="10"></td>

									</tr>



									<tr>

										<td align="center"><a
											href="<c:url value='/CalendarExam2.jsp' />?year=<%=year - 1%>&amp;month=<%=month%>"
											target="_self"><b>&lt;&lt;</b> <!-- 이전해 --> </a> <%
 	if (month > 0) {
 %> <a
											href="<c:url value='/CalendarExam2.jsp' />?year=<%=year%>&amp;month=<%=month - 1%>"
											target="_self"><b>&lt;</b> <!-- 이전달 --> </a> <%
 	} else {
 %> <b>&lt;</b> <%
 	}
 %> <span style="font-size: 20pt; font-weight: bold">&nbsp;&nbsp;<%=year%>년
												<%=month + 1%>월 &nbsp;&nbsp;
										</span> <%
 	if (month < 11) {
 %> <a
											href="<c:url value='/CalendarExam2.jsp' />?year=<%=year%>&amp;month=<%=month + 1%>"
											target="_self"> <!-- 다음달 --> <b>&gt;</b>

										</a> <%
 	} else {
 %> <b>&gt;</b> <%
 	}
 %> <a
											href="<c:url value='/CalendarExam2.jsp' />?year=<%=year + 1%>&amp;month=<%=month%>"
											target="_self"> <!-- 다음해 --> <b>&gt;&gt;</b>

										</a></td>
										</h2>
									</tr>

								</table>



							</td>

						</tr>

					</table>

					<br>

					<table border="0" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF"
						class="table">

						<THEAD>

							<TR bgcolor="#CECECE">

								<TD width='100px'>

									<DIV align="center">
										<font color="red">일</font>
									</DIV>

								</TD>

								<TD width='100px'>

									<DIV align="center">월</DIV>

								</TD>

								<TD width='100px'>

									<DIV align="center">화</DIV>

								</TD>

								<TD width='100px'>

									<DIV align="center">수</DIV>

								</TD>

								<TD width='100px'>

									<DIV align="center">목</DIV>

								</TD>

								<TD width='100px'>

									<DIV align="center">금</DIV>

								</TD>

								<TD width='100px'>

									<DIV align="center">
										<font color="#529dbc">토</font>
									</DIV>

								</TD>

							</TR>

						</THEAD>

						<TBODY>

							<TR>

								<%
									//처음 빈공란 표시

									for (int index = 1; index < start; index++)

									{

										out.println("<TD >&nbsp;</TD>");

										newLine++;

									}

									for (int index = 1; index <= endDay; index++)

									{

										String color = "";

										if (newLine == 0) {
											color = "RED";

										} else if (newLine == 6) {
											color = "#529dbc";

										} else {
											color = "BLACK";
										}
										;

										String sUseDate = Integer.toString(year);

										sUseDate += Integer.toString(month + 1).length() == 1 ? "0" + Integer.toString(month + 1)
												: Integer.toString(month + 1);

										sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index)
												: Integer.toString(index);

										int iUseDate = Integer.parseInt(sUseDate);

										String backColor = "#EFEFEF";

										if (iUseDate == intToday) {

											backColor = "#37c2ad";

										}

										out.println("<td valign='top' align='left' height='92px' bgcolor='" + backColor + "' nowrap>");
								%>

								<font color='<%=color%>'> &nbsp;<%=index%>

								</font>


								<%
									out.println("<BR>");

										//out.println(iUseDate);

										out.println("<BR>");

										//기능 제거 

										out.println("</td>");

										newLine++;

										if (newLine == 7)

										{

											out.println("</TR>");

											if (index <= endDay)

											{

												out.println("<TR>");

											}

											newLine = 0;

										}

									}

									//마지막 공란 LOOP

									while (newLine > 0 && newLine < 7)

									{

										out.println("<TD>&nbsp;</TD>");

										newLine++;

									}
								%>

							</TR>



						</TBODY>

					</TABLE>

				</DIV>

			</form>
		</div>
	</div>
	<div>
		<br /> <br />
		<table class="table table-striped">
			<thead>
				<tr>
					<th>행사명</th>
					<th>기간</th>
					<th>장소</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a class="nav-link" href="#calendar-modal"
						data-toggle="modal">부산 국제 영화제</a></td>
					<td>2019.10.03(목) ~ 2019.10.12(토)</td>
					<td>부산</td>
				</tr>
				<tr>
					<td>부천 국제 판타스틱 영화제</td>
					<td>2019.06.27(목) ~ 2019.07.07(일)</td>
					<td>부천</td>
				</tr>
				<tr>
					<td>부천 국제 애니메이션 페스티벌</td>
					<td>2019.10.18(금) ~ 2019.10.22(화)</td>
					<td>부천</td>
				</tr>
			</tbody>
		</table>

	</div>



</div>


<!-- Calendar LOGIN -->
<div class="calendar-modal modal fade" id="calendar-modal" tabindex="-1"
	role="dialog" aria-hidden="true">
	<div class="modal-dialog" role="document">

		<div class="modal-content">


			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<div class="modal-body">
							<!-- Project Details Go Here -->
							<h5>부산국제영화제</h5>
							<img alt="이미지"
								src="<c:url value='/resources/img/news/busan.jpg'/>">
							<p class="item-intro text-muted">
							<ul>
								<li>이름 : 부산국제영화제</li>
								<li>일시 : 2019.10.03(목) ~ 2019.10.12(토)</li>
								<li>장소 : 부산</li>
								<li><p>
										한국 영화의 발상지인 부산을, 영상문화의 중앙 집중에서 벗어나 지방 자치시대에 걸맞은 문화예술의 고장으로
										발전시키고자 기획된 영화제이다. 1996년 제1회를 시작으로 2003년 제8회를 맞이한 부산국제영화제는
										5년이라는 짧은 역사에도 불구하고 서구에 억눌려 있던 아시아 영화인의 연대를 실현했다는 평가를 받고 있다.<br>

									</p></li>
							</ul>
							</p>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

