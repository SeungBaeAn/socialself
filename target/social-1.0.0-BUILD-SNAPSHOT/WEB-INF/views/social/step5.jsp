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
</head>
    <body>
         <form role="form" action="/social/self/step6.do" method="post" commandName="social"> 
            <header class="header">
		      <div class="inner">
		  	   <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
		        <p><img src="../images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
		      </div>
			</header>   	   	
	<!-- contents -->
	<section class="contents">
    <!-- tab
      .is-current : 현재 작성중인 페이지
      .is-complete :완료된 페이지
    -->
    <ol class="tab">
       <li><a href="/social/self/stepFrom1.do?kpi_seq=${social.kpi_seq}"  style="text-decoration:none" >회사 기본정보</a></li>
      <li><a href="/social/self/stepFrom2.do?kpi_seq=${social.kpi_seq}" style="text-decoration:none" >사회적<br />미션의 관리</a></li>
      <li><a href="/social/self/stepFrom3.do?kpi_seq=${social.kpi_seq}"  style="text-decoration:none">주사업활동의<br />사회적 가치</a></li>
      <li><a href="/social/self/stepFrom4.do?kpi_seq=${social.kpi_seq}"  style="text-decoration:none">사회적경제<br />생태계 구축노력</a></li>
      <li><a  href="#" style="text-decoration:none" class="is-current">이윤의<br />사회목적 재투자</a></li>
      <li><a  href="#" style="text-decoration:none">운영의<br />민주성</a></li>
      <li><a  href="#" style="text-decoration:none">근로자<br />지향성</a></li>
      <li><a  href="#" style="text-decoration:none">고용창출 및<br />재정성과</a></li>
      <li><a  href="#" style="text-decoration:none">기업활동에서의<br />혁신성</a></li>
    </ol>
    <!-- // tab -->

	  <div class="inner motion">
      <h2 class="tit_page">이윤의 사회적 환원 노력도</h2>
      <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
      <div class="box_question">
        <p class="question">귀사의 부가적인 일자리 창출, 구성원 성과급, 지역사회로의 재투자 등이 동일서비스 평균보다 높거나 기업의 질적 노력이 우수하다고 생각하십니까?${social.kpi_form6_1}</p>
        <ul class="horizon mgt25">
         <li><span class="ui_radio"><input type="radio" id="step05_q01" name="kpi_form6_1" value="4"   <c:if test="${social.kpi_form6_1 eq 4}">checked</c:if> /><label for="step05_q01">매우 우수</label></span></li>
         <li><span class="ui_radio"><input type="radio" id="step05_q02" name="kpi_form6_1" value="3.2" <c:if test="${social.kpi_form6_1 eq 3.2}">checked</c:if> /><label for="step05_q02">우수</label></span></li>
         <li><span class="ui_radio"><input type="radio" id="step05_q03" name="kpi_form6_1" value="2.4"  <c:if test="${social.kpi_form6_1 eq 2.4}">checked</c:if>/><label for="step05_q03">보통</label></span></li>
         <li><span class="ui_radio"><input type="radio" id="step05_q04" name="kpi_form6_1" value="1.6"  <c:if test="${social.kpi_form6_1 eq 1.6}">checked</c:if>/><label for="step05_q04">미흡</label></span></li>
         <li><span class="ui_radio"><input type="radio" id="step05_q05" name="kpi_form6_1" value="0.8"  <c:if test="${social.kpi_form6_1 eq 0.8}">checked</c:if>/><label for="step05_q05">매우 미흡</label></span></li>   
        </ul>
      </div>
      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">수익의 활용</strong> 은 배분 가능한 이윤이 발생한 경우 이윤의 3분의 2 이상을 사회적 목적을 위해 사용한 경우 ‘매우 우수’ 입니다.<br />
      </div>
      <div class="box_question top_line">
        <p class="question">귀사의 주 사업 이외에 조직의 인력, 시간 등 역량을 활용한 자원봉사, 후원, 사회서비스 제공 실적과 노력이 우수하다고 생각하십니까?</p>
        <ul class="horizon mgt25">
          <li><span class="ui_radio"><input type="radio" id="step05_q06" name="kpi_form6_2" value="3"   <c:if test="${social.kpi_form6_2 eq 3}">checked</c:if>  /><label for="step05_q06">매우 우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step05_q07" name="kpi_form6_2" value="2.4" <c:if test="${social.kpi_form6_2 eq 2.4}">checked</c:if> /><label for="step05_q07">우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step05_q08" name="kpi_form6_2" value="1.8" <c:if test="${social.kpi_form6_2 eq 1.8}">checked</c:if>  /><label for="step05_q08">보통</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step05_q09" name="kpi_form6_2" value="1.2" <c:if test="${social.kpi_form6_2 eq 1.2}">checked</c:if>  /><label for="step05_q09">미흡</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step05_q10" name="kpi_form6_2" value="0.6" <c:if test="${social.kpi_form6_2 eq 0.6}">checked</c:if> /><label for="step05_q10">매우 미흡</label></span></li>  
        </ul>
      </div>
      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
       <strong class="txt_orange">주사업 이외의 조직의 역량 활용</strong>은 업무와는 상관없는 자원봉사나 후원활동 등을 의미합니다.<br />
      </div>
      <div class="box_question top_line">
        <p class="question">귀사의 주 사업 활동을 통해서 서비스 및 제품 제공의 판매가격 인하, 서비스 제공 등을 통해 이윤 또는 수익을 주사업활동의 이용자에게 환원한 실적과 노력이 우수하다고 생각하십니까?</p>
        <ul class="horizon mgt25">
          <li><span class="ui_radio"><input type="radio" id="step05_q11" name="kpi_form6_3" value="3"   <c:if test="${social.kpi_form6_3 eq 3}">checked</c:if>  /><label for="step05_q11">매우 우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step05_q12" name="kpi_form6_3" value="2.4" <c:if test="${social.kpi_form6_3 eq 2.4}">checked</c:if> /><label for="step05_q12">우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step05_q13" name="kpi_form6_3" value="1.8" <c:if test="${social.kpi_form6_3 eq 1.8}">checked</c:if> /><label for="step05_q13">보통</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step05_q14" name="kpi_form6_3" value="1.2" <c:if test="${social.kpi_form6_3 eq 1.2}">checked</c:if> /><label for="step05_q14">미흡</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step05_q15" name="kpi_form6_3" value="0.6" <c:if test="${social.kpi_form6_3 eq 0.6}">checked</c:if>  /><label for="step05_q15">매우 미흡</label></span></li>     
        </ul>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">이용자 대상 수익 환원</strong>은 고객에게 이윤을 환원한 실적과 노력을 의미합니다.
      </div>
      <!-- //box_tip -->
   <div class="btnArea mgt60">
      <a href="/social/self/stepFrom4.do?kpi_seq=${social.kpi_seq}" class="btn btn_prev">이전</a>
      <button class="btn btn_next" onclick="return fmCheck4();">다음</button>
      </div>
      <!-- //btnArea end -->
    </div>
    <!-- //inner end -->
	</section>				
</form>
 </body> 



<script>
 $(document).ready(function() { 

 }); 

 function fmCheck4(){
 	  if(fnMemberValidation4() == false) return false;
 	  
	  stepForm4();

 }
function stepForm4(){
var comSubmit = new ComSubmit("frm");
//comSubmit.setUrl("<c:url value='/self/step2.do'/>");
//comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
comSubmit.submit();
}
 function fnMemberValidation4(){ 
 	  
 	  var chk_radio1 = document.getElementsByName('kpi_form6_1');
 	  var chk_radio2 = document.getElementsByName('kpi_form6_2');
 	  var chk_radio3 = document.getElementsByName('kpi_form6_3');
 	  
 	  var sel_type = null;
 	  var sel_type1 = null;
 	  var sel_type2 = null;
 	  
 		for(var i=0;i<chk_radio1.length;i++){

 			if(chk_radio1[i].checked == true){ 

 				sel_type = chk_radio1[i].value;
 			}
 		}
 		for(var i=0;i<chk_radio2.length;i++){

 			if(chk_radio2[i].checked == true){ 

 				sel_type1 = chk_radio2[i].value;
 			}
 		}
 		for(var i=0;i<chk_radio3.length;i++){

 			if(chk_radio3[i].checked == true){ 

 				sel_type2 = chk_radio3[i].value;
 			}
 		}
 		if(sel_type == null){

           alert("이윤의 사회적 환원 노력도를 선택하세요."); 

 		return false;

 		}
 		if(sel_type1 == null){

           alert("이윤의 사회적 환원 노력도를 선택하세요."); 

 		return false;
 		}
 		if(sel_type2 == null){

           alert("이윤의 사회적 환원 노력도를 선택하세요."); 

 		return false;
 		}
 }




</script>
</html>        