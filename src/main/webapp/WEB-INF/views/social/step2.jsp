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
              <form role="form"    action="/social/self/step3.do" method="post" commandName="social">        
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
      <li><a href="/social/self/stepFrom2.do?kpi_seq=${social.kpi_seq}" style="text-decoration:none" class="is-current">사회적<br />미션의 관리</a></li>
      <li><a href="#" style="text-decoration:none">주사업활동의<br />사회적 가치</a></li>
      <li><a href="#" style="text-decoration:none">사회적경제<br />생태계 구축노력</a></li>
      <li><a href="#" style="text-decoration:none">이윤의<br />사회목적 재투자</a></li>
      <li><a href="#" style="text-decoration:none">운영의<br />민주성</a></li>
      <li><a href="#" style="text-decoration:none">근로자<br />지향성</a></li>
      <li><a href="#" style="text-decoration:none">고용창출 및<br />재정성과</a></li>
      <li><a href="#" style="text-decoration:none">기업활동에서의<br />혁신성</a></li>
    </ol>
    <!-- // tab -->

   <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
	  <div class="inner_motion">
      <h2 class="tit_page">사회적 가치 추구 여부</h2>

      <div class="box_question">
        <p class="question">귀사는 현재 기업의 사회적 목적을 반영하는 미션 선언문 또는 경영원칙 등을 명시적으로 표현한 문서를 가지고 계십니까?</p>
        <ul class="horizon mgt25">
		<li><span class="ui_radio"><input type="radio" id="step02_q01" name="kpi_form1" value="5" value="${social.kpi_form1}" <c:if test="${social.kpi_form1 eq 5}">checked</c:if>/><label for="step02_q01">있음</label></span></li>
		<li><span class="ui_radio"><input type="radio" id="step02_q02" name="kpi_form1" value="1" value="${social.kpi_form1}" <c:if test="${social.kpi_form1 eq 1}">checked</c:if>/><label for="step02_q02">없음</label></span></li>
        </ul>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">명시적 문서</strong>란 사회적 가치가 내포된 미션 및 비전이 명시적으로 표현된 문서를 뜻하며, 정관·규약, 비전선언문, 미션선언문 등이 해당합니다.
      </div>
      <!-- //box_tip -->

      <h2 class="tit_page top_line">사회적 성과 평가체제 구축</h2>

      <div class="box_question">
        <p class="question">귀사는 현재 기업에서 창출하는 사회적 성과를 체계적으로 관리하기 위해 다음 중 몇 가지 사항을 갖추고 있습니까?</p>
        <p class="txt_choice">①측정기준,  ②담당인력,  ③평가보고서,  ④평가위원회,  ⑤평가결과의 사내공유</p>
        <ul class="horizon mgt25">
            <li><span class="ui_radio"><input type="radio" id="step02_q03"  name="kpi_form2" value="5" <c:if test="${social.kpi_form2 eq 5}">checked</c:if>/><label for="step02_q03">4개 이상</label></span></li>
		    <li><span class="ui_radio"><input type="radio" id="step02_q04"  name="kpi_form2" value="4" <c:if test="${social.kpi_form2 eq 4}">checked</c:if>/><label for="step02_q04">3개</label></span></li>
			<li><span class="ui_radio"><input type="radio" id="step02_q05"  name="kpi_form2" value="3" <c:if test="${social.kpi_form2 eq 3}">checked</c:if>/><label for="step02_q05">2개</label></span></li>
			<li><span class="ui_radio"><input type="radio" id="step02_q06"  name="kpi_form2" value="2" <c:if test="${social.kpi_form2 eq 2}">checked</c:if>/><label for="step02_q06">1개</label></span></li>
			<li><span class="ui_radio"><input type="radio" id="step02_q07"  name="kpi_form2" value="1" <c:if test="${social.kpi_form2 eq 1}">checked</c:if>/><label for="step02_q07">없음</label></span></li>
        </ul>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">사회적 성과 평가체계란</strong> 사회적기업 운영 성과(사회적 가치구현, 매출, 일자리 창출 등)를 평가할 수 있는 체계적인 관리 체계를 의미합니다.
      </div>
      
 <div class="btnArea mgt60">
   <a href="/social/self/stepFrom1.do?kpi_seq=${social.kpi_seq}" name="social-step" class="btn btn_prev">이전</a>
   <button class="btn btn_next" onclick="return fmCheck1();">다음</button>
     </div>	
    </div>
    <!-- //inner end -->
	</section>     	
 </form>

 </body>
  
<script type="text/javascript">
$(document).ready(function() { 
	 
}) ;

function stepForm1(){
	var comSubmit = new ComSubmit("frm");
//	comSubmit.setUrl("<c:url value='/self/step2.do'/>");
//	comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
	comSubmit.submit();
}


function fmCheck1(){
	  if(fnMemberValidation1() == false) return false;
	  
	  stepForm1();
	 	
	//	fmform();
	 }
//	function fmform(){ 
//	   document.getElementById('stepforward').submit(); 
//}  

function fnMemberValidation1(){ 
	  
	  var chk_radio1 = document.getElementsByName('kpi_form1');
	  var chk_radio2 = document.getElementsByName('kpi_form2');
	  
	  var sel_type = null;
	  var sel_type1 = null;
	  
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
		if(sel_type == null){

          alert("사회적 가치 추구 여부를 선택하세요."); 

		return false;

		}
		if(sel_type1 == null){

          alert("사회적 성과 평가체제 구축을 선택하세요."); 

		return false;

		}

}
  var $target = $(".motion");
  var $tab = $(".is-current");
  $tab.animate({"top":100});
  TweenMax.from($target,0.5,{y:50, autoAlpha:0, ease:Power1.easeInOut});
  TweenMax.fromTo($tab,0.8,{x:-5},{x:0, ease:Power1.easeInOut, repeat:5});
  
 </script>
</html>