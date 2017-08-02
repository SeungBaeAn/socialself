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
         <form role="form" action="/social/self/step7.do" method="post" commandName="social">
         
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
      <li><a href="/social/self/stepFrom5.do?kpi_seq=${social.kpi_seq}"  style="text-decoration:none">이윤의<br />사회목적 재투자</a></li>
      <li><a  href="#" style="text-decoration:none" class="is-current">운영의<br />민주성</a></li>
      <li><a  href="#" style="text-decoration:none">근로자<br />지향성</a></li>
      <li><a  href="#" style="text-decoration:none">고용창출 및<br />재정성과</a></li>
      <li><a  href="#" style="text-decoration:none">기업활동에서의<br />혁신성</a></li>
    </ol>
    <!-- // tab -->
    

	  <div class="inner motion">
      <h2 class="tit_page">참여적 의사결정 비율</h2>
     <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
      <div class="box_question">
        <p class="question">귀사는 지난 한해 조직운영의 민주성을 제고하기 위해 이사회 등 주요 의사결정 과정에서 근로자대표, 사외이사 등의 실제 참여한 비율은 얼마나 됩니까?</p>
        <ul class="vertical mgt25">
          <li><span class="ui_radio"><input type="radio" id="step06_q01" name="kpi_form7" value="5" <c:if test="${social.kpi_form7 eq 5}">checked</c:if> /><label for="step06_q01">61 ~ 100 %</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step06_q02" name="kpi_form7" value="4" <c:if test="${social.kpi_form7 eq 4}">checked</c:if> /><label for="step06_q02">41 ~ 60 %</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step06_q03" name="kpi_form7" value="3" <c:if test="${social.kpi_form7 eq 3}">checked</c:if> /><label for="step06_q03">21 ~ 40 %</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step06_q04" name="kpi_form7" value="2" <c:if test="${social.kpi_form7 eq 2}">checked</c:if> /><label for="step06_q04">1 ~ 20 %</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step06_q05" name="kpi_form7" value="1" <c:if test="${social.kpi_form7 eq 1}">checked</c:if> /><label for="step06_q05">0 %</label></span></li>						      
        </ul>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        의사결정기구는 이사회를 기본으로 하되, 사회적기업 인증시기에 따라 운영위원회, 주주총회도 인정합니다.<br />개별 회의 건의 각 비율 평균이 아니라 모든 회의의 참석자를 합한 후 참가비율 산출해야 합니다.
      </div>
      <!-- //box_tip -->
 <div class="btnArea mgt60">
      <a href="/social/self/stepFrom5.do?kpi_seq=${social.kpi_seq}" class="btn btn_prev">이전</a>
      <button class="btn btn_next" onclick="return fmCheck5();">다음</button>
      </div>
      <!-- //btnArea end -->
    </div>
    <!-- //inner end -->
	</section>			
</form>
 </body> 

<script>
 $(document).ready(function() { 
//	  alert("AAAAA");  
}); 

function fmCheck5(){
	  if(fnMemberValidation5() == false) return false;
	  
	  stepForm5();

}
function stepForm5(){
var comSubmit = new ComSubmit("frm");
//comSubmit.setUrl("<c:url value='/self/step2.do'/>");
//comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
comSubmit.submit();
}
function fnMemberValidation5(){ 
	  
	  var chk_radio1 = document.getElementsByName('kpi_form7');

	  
	  var sel_type = null;

	  
		for(var i=0;i<chk_radio1.length;i++){

			if(chk_radio1[i].checked == true){ 

				sel_type = chk_radio1[i].value;
			}
		}

		if(sel_type == null){

         alert("참여적 의사결정 비율을 선택하세요."); 

		return false;

		}

}


</script>
</html>