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
</head>
    <body>
         <form role="form" action="/social/self/step4.do" method="post"  commandName="social"> 
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
      <li><a href="/social/self/stepFrom2.do?kpi_seq=${social.kpi_seq}" style="text-decoration:none">사회적<br />미션의 관리</a></li>
      <li><a href="#" style="text-decoration:none"  class="is-current">주사업활동의<br />사회적 가치</a></li>
      <li><a href="#" style="text-decoration:none">사회적경제<br />생태계 구축노력</a></li>
      <li><a href="#" style="text-decoration:none">이윤의<br />사회목적 재투자</a></li>
      <li><a href="#" style="text-decoration:none">운영의<br />민주성</a></li>
      <li><a href="#" style="text-decoration:none">근로자<br />지향성</a></li>
      <li><a href="#" style="text-decoration:none">고용창출 및<br />재정성과</a></li>
      <li><a href="#" style="text-decoration:none">기업활동에서의<br />혁신성</a></li>
    </ol>
    <!-- // tab -->
 <div class="inner motion">
 <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
      <h2 class="tit_page">사업활동의 사회적 가치 지향성</h2>

      <div class="box_question">
        <p class="question">귀사의 고용, 경영 등 내부운영에 있어서 사회가치 지향은 어느 정도라고 생각하고 있습니까?<br />
        </p>
        <ul class="horizon mgt25">
		<li><span class="ui_radio"><input type="radio" id="step03_q01" name="kpi_form3_1" value="4"   <c:if test="${social.kpi_form3_1 eq 4}">checked</c:if> /><label for="step03_q01">매우 우수</label></span></li>
        <li><span class="ui_radio"><input type="radio" id="step03_q02" name="kpi_form3_1" value="3.2" <c:if test="${social.kpi_form3_1 eq 3.2}">checked</c:if> /><label for="step03_q02">우수</label></span></li>
        <li><span class="ui_radio"><input type="radio" id="step03_q03" name="kpi_form3_1" value="2.4" <c:if test="${social.kpi_form3_1 eq 2.4}">checked</c:if> /><label for="step03_q03">보통</label></span></li>
		<li><span class="ui_radio"><input type="radio" id="step03_q04" name="kpi_form3_1" value="1.6" <c:if test="${social.kpi_form3_1 eq 1.6}">checked</c:if> /><label for="step03_q04">미흡</label></span></li>
        <li><span class="ui_radio"><input type="radio" id="step03_q05" name="kpi_form3_1" value="0.8" <c:if test="${social.kpi_form3_1 eq 0.8}">checked</c:if> /><label for="step03_q05">매우 미흡</label></span></li>    
        </ul>
      </div>
     <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">내부운영의 사회적 가치</strong>란 취약계층의 고용비중, 월평균임금, 취약계층 차별금지, 산업재해 발생건수, 근로자의 보건 및 안전 등 근로자 고용을 위한 질적 노력을 의미합니다.<br />
      </div>
      <div class="box_question top_line">
        <p class="question">귀사의 주 사업영역의 제품/서비스를 생산, 판매하는 과정에서 사회가치를 어느 정도 반영하고 있다고 생각하십니까?</p>
        <ul class="horizon mgt25">  
          <li><span class="ui_radio"><input type="radio" id="step03_q06" name="kpi_form3_2" value="3"   <c:if test="${social.kpi_form3_2 eq 3}">checked</c:if> /><label for="step03_q06">매우 우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step03_q07" name="kpi_form3_2" value="2.4" <c:if test="${social.kpi_form3_2 eq 2.4}">checked</c:if>/><label for="step03_q07">우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step03_q08" name="kpi_form3_2" value="1.8" <c:if test="${social.kpi_form3_2 eq 1.8}">checked</c:if> /><label for="step03_q08">보통</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step03_q09" name="kpi_form3_2" value="1.2" <c:if test="${social.kpi_form3_2 eq 1.2}">checked</c:if>/><label for="step03_q09">미흡</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step03_q10" name="kpi_form3_2" value="0.6" <c:if test="${social.kpi_form3_2 eq 0.6}">checked</c:if>/><label for="step03_q10">매우 미흡</label></span></li>
        </ul>
      </div>
	 <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">생산·판매 과정의 사회적 가치</strong>란 주된 사업 영역의 제품·서비스를 생산·판매하는 과정에서의 사회가치 실현을 위한 질적 노력을 의미합니다.<br />
      </div>
      <div class="box_question top_line">
        <p class="question">귀사의 주 사업영역의 제품/서비스가 어느 정도 사회가치를 반영하고 있으며, 이용자(수혜자)의 사회적 가치를 실현하고 있다고 생각하십니까?</p>
        <ul class="horizon mgt25">
          <li><span class="ui_radio"><input type="radio" id="step03_q11" name="kpi_form3_3" value="3"   <c:if test="${social.kpi_form3_3 eq 3}">checked</c:if>/><label for="step03_q11">매우 우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step03_q12" name="kpi_form3_3" value="2.4" <c:if test="${social.kpi_form3_3 eq 2.4}">checked</c:if> /><label for="step03_q12">우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step03_q13" name="kpi_form3_3" value="1.8" <c:if test="${social.kpi_form3_3 eq 1.8}">checked</c:if> /><label for="step03_q13">보통</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step03_q14" name="kpi_form3_3" value="1.2" <c:if test="${social.kpi_form3_3 eq 1.2}">checked</c:if> /><label for="step03_q14">미흡</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step03_q15" name="kpi_form3_3" value="0.6" <c:if test="${social.kpi_form3_3 eq 0.6}">checked</c:if> /><label for="step03_q15">매우 미흡</label></span></li>  
        </ul>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">제품·이용자의 사회적 가치</strong>란 주된 사업 영역에서 결과적인 제품·서비스의 사회가치, 이용자의 사회가치 실현을 위한 질적 노력을 의미합니다.<br />
      </div>
     <div class="btnArea mgt60">
   <a href="/social/self/stepFrom2.do?kpi_seq=${social.kpi_seq}" name="social-step" class="btn btn_prev">이전</a>
    <button class="btn btn_next" onclick="return fmCheck2();">다음</button>

      </div>
      <!-- //btnArea end -->
    </div>
    <!-- //inner end -->
	</section>			
</form>
 </body> 
<script type="text/javascript">
$(document).ready(function() { 

});




function fmCheck2(){
	  if(fnMemberValidation2() == false) return false;
	  stepForm2();

	 }
function stepForm2(){
	var comSubmit = new ComSubmit("frm");
//	comSubmit.setUrl("<c:url value='/self/step2.do'/>");
//	comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
	comSubmit.submit();
}


function fnMemberValidation2(){ 
	  
	  var chk_radio1 = document.getElementsByName('kpi_form3_1');
	  var chk_radio2 = document.getElementsByName('kpi_form3_2');
	  var chk_radio3 = document.getElementsByName('kpi_form3_3');
	  
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

          alert("사업활동의 사회적 가치 지향성을 선택하세요."); 

		return false;

		}
		if(sel_type1 == null){

          alert("사업활동의 사회적 가치 지향성을 선택하세요."); 

		return false;
		}
		if(sel_type2 == null){

          alert("사업활동의 사회적 가치 지향성을 선택하세요."); 

		return false;
		}
}




</script>
</html>    