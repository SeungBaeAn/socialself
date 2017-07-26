<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
  <title>사회적 가치 지표(SVI) 자가진단</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link href="../css/common.css" rel="stylesheet">
  <link href="../css/jquery.mCustomScrollbar.css" rel="stylesheet">
  <script src="../js/jquery-1.12.0.min.js"></script>
  <script src="../js/jquery.mCustomScrollbar.js"></script>
  <script src="../js/TweenMax.min.js"></script>
  <script src="../js/ui.js"></script>
  <script src="../js/common.js"></script>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="../js/Chart.js"></script>
  <script src="../js/Chart.StackedBar.js"></script>
  <script src="../js/Chart.Radar.js"></script>
   <script src="../js/utils.js"></script>
  <script src="../js/Chart.bundle.js"></script>

</head>
    <body>
    <form>
        	<header class="header">
		      <div class="inner">
		  	    <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
		        <p><img src="../images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
		      </div>
			</header>      	
	<!-- contents -->
	<section class="contents">

	  <div class="inner_motion full_width">
      <div class="result_tit">
        <h2 class="tit_page">자가진단 참여기업 리스트</h2>
        <a href="#" class="btn bg_orange btn_print" onclick="javascript:window.print()">인쇄</a>
      </div>
    <input id="KPI_SEQ" type="hidden" name="KPI_SEQ"  value="{{_data.KPI_SEQ}}"></input>
   	<c:if test="${count == 0}">
	<div align="center">출력할 내용이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}"> 
     <table class="tbl_result_detail mgt30" style="text-align:center;">
        <colgroup>
          <col style="width:115px;" />
          <col style="width:115px;" />
          <col style="width:250px;" />
          <col />
          <col style="width:145px;" />
        </colgroup>
        <thead>
          <tr style="text-align:center;">
            <th style="text-align:center;">기업명</th>
            <th style="text-align:center;">업종</th>
            <th style="text-align:center;">조직형태</th>
            <th style="text-align:center;">진행단계</th>
            <th style="text-align:center;">이벤트참가여부</th>
            <th style="text-align:center;">평가점수</th>
            <th style="text-align:center;">참여일자</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="social" items="${list}">
           <tr>
            <td class="alignLeft">${social.company}</td>
            <td class="alignLeft">${social.business_type}</td>
           <td class="alignLeft">${social.bs_type}</td>
            <td class="alignLeft">${social.kpi_step_nm}</td>
            <td class="alignLeft">${social.event_use_yn}</td>
            <td class="alignLeft">${social.kpi_total_num}</td>
            <td class="alignLeft">${social.load_date}</td>
          </tr>
      </c:forEach> 
        </tbody>
      </table>
      		<table>
			<tr>
				<td align="center">${pagingHtml}</td>
			</tr>
		</table>
	</c:if>
      </div>
      </section>
      </form>
      </body>
 </html>