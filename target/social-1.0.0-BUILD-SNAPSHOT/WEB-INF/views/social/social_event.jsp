<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
   <title>SE 자가진단 KIT</title>
   <link rel="shortcut icon" sizes="32x32" href="../images/app-icon-32.png">
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
    <script type="text/javascript" src="../js/board.js"></script>

</head>
    <body>
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
        <h2 class="tit_page">자가진단 이벤트 참여기업 리스트<small> Event Corporation List</small></h2>
      </div>
   	<c:if test="${count == 0}">
	<div align="center">출력할 내용이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}"> 
     <table class="tbl_result_detail mgt30" style="text-align:center;">
        <colgroup>
          <col style="width:125px;" />
          <col style="width:145px;" />
          <col style="width:145px;" />
           <col style="width:115px;" />
            <col style="width:145px;" />
          <col style="width:145px;" />
           <col style="width:115px;" />
            <col style="width:125px;" />
        </colgroup>
        <thead>
          <tr style="text-align:center;">
            <th style="text-align:center;">기업명</th>
            <th style="text-align:center;">업종</th>
            <th style="text-align:center;">조직형태</th>
            <th style="text-align:center;">성명</th>
            <th style="text-align:center;">주소</th>
            <th style="text-align:center;">전화번호</th>
            <th style="text-align:center;">진행단계</th>
            <th style="text-align:center;">참여일자</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="social" items="${list}">
           <tr>
            <td  style="text-align:center;"><c:if test="${social.kpi_step eq 9}"><a href="/social/self/stepResultList.do?kpi_seq=${social.kpi_seq}" >${social.company}</a></c:if><c:if test="${social.kpi_step ne 9}">${social.company}</c:if></td>
            <td class="alignLeft">${social.business_type}</td>
            <td class="alignLeft">${social.bs_type}</td>
             <td style="text-align:center;">${social.event_name}</td>
            <td style="text-align:center;">${social.event_addr}</td>
            <td style="text-align:center;">${social.event_hp}</td>
            <td style="text-align:center;">${social.kpi_step_nm}</td>
            <td class="alignLeft">${social.load_date}</td>
          </tr>
      </c:forEach> 
        </tbody>
      </table><br/>
      		<table>
			<tr>
				<td align="center">${pagingHtml}</td>
			</tr>
						<tr>
				<td align="alignLeft"><a href="/social/self/corpList.do" >자가진단 참여목록</a></td>
			</tr>
		</table>
	</c:if>
      </div>
      </section>
      </body>
  <script>
 $(document).ready(function() { 
// 	  alert("AAAAA");  
 });
 
  function stepForm8(){
 var comSubmit = new ComSubmit("frm");
 //comSubmit.setUrl("<c:url value='/self/step2.do'/>");
 //comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
 comSubmit.submit();
 }
  </script>
 </html>