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
         <form role="form" action="/social/self/step5.do" method="post"  commandName="social"> 
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
      <li><a href="#" style="text-decoration:none" class="is-current">사회적경제<br />생태계 구축노력</a></li>
      <li><a href="#" style="text-decoration:none">이윤의<br />사회목적 재투자</a></li>
      <li><a href="#" style="text-decoration:none">운영의<br />민주성</a></li>
      <li><a href="#" style="text-decoration:none">근로자<br />지향성</a></li>
      <li><a href="#" style="text-decoration:none">고용창출 및<br />재정성과</a></li>
      <li><a href="#" style="text-decoration:none">기업활동에서의<br />혁신성</a></li>
    </ol>
    <!-- // tab -->
    
  <div class="inner_motion">
      <h2 class="tit_page">사회적 경제 조직간의 협력 수준</h2>
     <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
      <div class="box_question">
        <p class="question">귀사는 지난 한해 사회적 가치를 지향하는 사회적 경제 조직과 상호협력을 위한 네트워크 활동에 얼마나 참여하고 있습니까?</p>
        <ul class="horizon mgt25">
          <li><span class="ui_radio"><input type="radio" id="step04_q01" name="kpi_form4" value="5"   <c:if test="${social.kpi_form4 eq 5}">checked</c:if> /><label for="step04_q01">4개 이상</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step04_q02" name="kpi_form4" value="4"   <c:if test="${social.kpi_form4 eq 4}">checked</c:if>/><label for="step04_q02">3개</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step04_q03" name="kpi_form4" value="3"   <c:if test="${social.kpi_form4 eq 3}">checked</c:if>/><label for="step04_q03">2개</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step04_q04" name="kpi_form4" value="2"   <c:if test="${social.kpi_form4 eq 2}">checked</c:if>/><label for="step04_q04">1개</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step04_q05" name="kpi_form4" value="1"   <c:if test="${social.kpi_form4 eq 1}">checked</c:if>/><label for="step04_q05">없음</label></span></li>   
        </ul>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">네트워크 활동</strong>이란 사회가치 실현을 목적으로 한 중앙, 지역별, 업종별 사회적경제협의회 등 사회적 경제 조직과의 공식적인 협력활동을 일컫습니다.
      </div>
      <!-- //box_tip -->

      <h2 class="tit_page top_line">지역사회와의 협력 수준</h2>

      <div class="box_question">
        <p class="question">귀사는 지난 한해 사회적 가치를 지향하는 지역사회내의 기관, 단체 등과 상호협력을 위한 네트워크 활동에 얼마나 참여하고 있습니까?</p>
        <ul class="horizon mgt25">
          <li><span class="ui_radio"><input type="radio" id="step04_q06" name="kpi_form5" value="5"  <c:if test="${social.kpi_form5 eq 5}">checked</c:if>/><label for="step04_q06">4개 이상</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step04_q07" name="kpi_form5" value="4"  <c:if test="${social.kpi_form5 eq 4}">checked</c:if>/><label for="step04_q07">3개</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step04_q08" name="kpi_form5" value="3"  <c:if test="${social.kpi_form5 eq 3}">checked</c:if>/><label for="step04_q08">2개</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step04_q09" name="kpi_form5" value="2"  <c:if test="${social.kpi_form5 eq 2}">checked</c:if>/><label for="step04_q09">1개</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step04_q010" name="kpi_form5" value="1"  <c:if test="${social.kpi_form5 eq 1}">checked</c:if>/><label for="step04_q10">없음</label></span></li>     
        </ul>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">협력활동</strong> 이란 사회가치 실현을 목적으로 한 광역자치단체 범위 내 자치단체, 공공기관, 비영리기관, 영리기관과의 공식적인 협력활동을 일컫습니다.
      </div>
      <!-- //box_tip -->
      
  <div class="btnArea mgt60">
      <a href="/social/self/stepFrom3.do?kpi_seq=${social.kpi_seq}" name="social-step" class="btn btn_prev">이전</a>
      <button class="btn btn_next" onclick="return fmCheck3();">다음</button>
      </div>
      <!-- //btnArea end -->
    </div>
    <!-- //inner end -->
	</section>
	</form>		
 </body> 
<!-- 모달 팝업 --> 



<script type="text/javascript">

 $(document).ready(function() { 
//	  alert("AAAAA");  
 }); 

 function fmCheck3(){
 	  if(fnMemberValidation3() == false) return false;
 	  
 	 stepForm3();

 }
function stepForm3(){
var comSubmit = new ComSubmit("frm");
//comSubmit.setUrl("<c:url value='/self/step2.do'/>");
//comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
comSubmit.submit();
}
 function fnMemberValidation3(){ 
 	  
 	  var chk_radio1 = document.getElementsByName('kpi_form4');
 	  var chk_radio2 = document.getElementsByName('kpi_form5');

 	  
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

           alert("사회적 경제 조직간의 협력 수준을 선택하세요."); 

 		return false;

 		}
 		if(sel_type1 == null){

           alert("사회적 경제 조직간의 협력 수준을 선택하세요."); 

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