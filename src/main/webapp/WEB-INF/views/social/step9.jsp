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
         <form role="form" action="/social/self/stepResult.do" method="post" commandName="social">
 
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
      <li><a href="/social/self/stepFrom6.do?kpi_seq=${social.kpi_seq}"  style="text-decoration:none">운영의<br />민주성</a></li>
      <li><a href="/social/self/stepFrom7.do?kpi_seq=${social.kpi_seq}"  style="text-decoration:none">근로자<br />지향성</a></li>
      <li><a href="/social/self/stepFrom8.do?kpi_seq=${social.kpi_seq}"  style="text-decoration:none">고용창출 및<br />재정성과</a></li>
      <li><a href="#" style="text-decoration:none" class="is-current">기업활동에서의<br />혁신성</a></li>
    </ol>
    <!-- // tab -->

  <div class="inner_motion">
      <h2 class="tit_page">기업 운영 및 제품의 혁신성</h2>
    		 <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
     		 <input id="kpi_pay_n" type="hidden" name="kpi_pay_n"  value="${social.kpi_pay_n}"></input>
     		 <input id="kpi_here_n" type="hidden" name="kpi_here_n"  value="${social.kpi_here_n}"></input>
     		 <input id="kpi_sales_n" type="hidden" name="kpi_sales_n"  value="${social.kpi_sales_n}"></input>
     		 <input id="kpi_bs_n" type="hidden" name="kpi_bs_n"  value="${social.kpi_bs_n}"></input>
     		 <input id="kpi_work_n" type="hidden" name="kpi_work_n"  value="${social.kpi_work_n}"></input>
     		  <input id="total_point" type="hidden" name="total_point"  value="${social.total_point}"></input>
      <div class="box_question">
        <p class="question">귀사의 전반적인 조직운영 과정에서 혁신적인 방식 변경을 통한 혁신을 실행하고 있다고 생각하십니까?</p>
        <ul class="horizon mgt25">
          <li><span class="ui_radio"><input type="radio" id="step09_q01" name="kpi_form13_1" value="2.5" <c:if test="${social.kpi_form13_1 eq 2.5}">checked</c:if>  /><label for="step09_q01">매우 우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q02" name="kpi_form13_1" value="2.0" <c:if test="${social.kpi_form13_1 eq 2.0}">checked</c:if>/><label for="step09_q02">우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q03" name="kpi_form13_1" value="1.5" <c:if test="${social.kpi_form13_1 eq 1.5}">checked</c:if>/><label for="step09_q03">보통</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q04" name="kpi_form13_1" value="1.0" <c:if test="${social.kpi_form13_1 eq 2.0}">checked</c:if>/><label for="step09_q04">미흡</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q05" name="kpi_form13_1" value="0.5" <c:if test="${social.kpi_form13_1 eq 0.5}">checked</c:if>/><label for="step09_q05">매우 미흡</label></span></li>    
        </ul>
      </div>
      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">기업운영과정의 혁신</strong>은 행정 효율화, 기업문화 개선 등 전반적인 조직운영 과정에서 혁신노력 및 성과를 의미합니다.<br />
       </div>
      <div class="box_question top_line">
        <p class="question">귀사의 기존 시장에 제공되지 않는 혁신적인 제품이나 서비스를 공급하고 있습니까?</p>
        <ul class="horizon mgt25">
          <li><span class="ui_radio"><input type="radio" id="step09_q06" name="kpi_form13_2" value="2.5" <c:if test="${social.kpi_form13_2 eq 2.5}">checked</c:if> /><label for="step09_q06">매우 우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q07" name="kpi_form13_2" value="2.0" <c:if test="${social.kpi_form13_2 eq 2.0}">checked</c:if>/><label for="step09_q07">우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q08" name="kpi_form13_2"  value="1.5" <c:if test="${social.kpi_form13_2 eq 1.5}">checked</c:if>/><label for="step09_q08">보통</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q09" name="kpi_form13_2" value="1.0" <c:if test="${social.kpi_form13_2 eq 1.0}">checked</c:if>/><label for="step09_q09">미흡</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q10" name="kpi_form13_2" value="0.5" <c:if test="${social.kpi_form13_2 eq 0.5}">checked</c:if>/><label for="step09_q10">매우 미흡</label></span></li>
        </ul>
      </div>
      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        <strong class="txt_orange">제품·서비스의 혁신</strong>은 단순 상품/서비스 확대가 아니라 기존 시장에 제공되지 않는 혁신적인 제품이나 서비스 출시 또는 특허권, 상표권, 실용실안 등 혁신실적 보유했는지를 의미합니다.<br />
      </div>
      <div class="box_question top_line">
        <p class="question">귀사의 제품 판매 및 서비스 제공 방식이 기존의 방식과 차별화가 있습니까?</p>
        <ul class="horizon mgt25">
          <li><span class="ui_radio"><input type="radio" id="step09_q11" name="kpi_form13_3" value="2.5" <c:if test="${social.kpi_form13_3 eq 2.5}">checked</c:if> /><label for="step09_q11">매우 우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q12" name="kpi_form13_3" value="2.0" <c:if test="${social.kpi_form13_3 eq 2.0}">checked</c:if>/><label for="step09_q12">우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q13" name="kpi_form13_3"  value="1.5" <c:if test="${social.kpi_form13_3 eq 1.5}">checked</c:if>/><label for="step09_q13">보통</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q14" name="kpi_form13_3" value="1.0" <c:if test="${social.kpi_form13_3 eq 1.0}">checked</c:if>/><label for="step09_q14">미흡</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q15" name="kpi_form13_3" value="0.5" <c:if test="${social.kpi_form13_3 eq 0.5}">checked</c:if>/><label for="step09_q15">매우 미흡</label></span></li>
        </ul>
      </div>
      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
       <strong class="txt_orange">생산·판매과정의 혁신</strong>은 제품 판매 및 서비스의 내용이 아닌 제공 과정 또는 방식의 차별화를 의미합니다. 예를 들면, 단순 오프라인 판매 방식을 보다 혁신적인 방식으로 바꿔서 판매하는 경우를 일컫습니다.<br />
      </div>
      <div class="box_question top_line">
        <p class="question">귀사의 기존 사업영역이 아닌 혁신을 통해 새로운 시장에 진출한 실적과 노력을 하고 있습니까?</p>
        <ul class="horizon mgt25">
           <li><span class="ui_radio"><input type="radio" id="step09_q16" name="kpi_form13_4" value="2.5" <c:if test="${social.kpi_form13_4 eq 2.5}">checked</c:if> /><label for="step09_q16">매우 우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q17" name="kpi_form13_4" value="2.0" <c:if test="${social.kpi_form13_4 eq 2.0}">checked</c:if>/><label for="step09_q17">우수</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q18" name="kpi_form13_4"  value="1.5" <c:if test="${social.kpi_form13_4 eq 1.5}">checked</c:if>/><label for="step09_q18">보통</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q19" name="kpi_form13_4" value="1.0" <c:if test="${social.kpi_form13_4 eq 1.0}">checked</c:if>/><label for="step09_q19">미흡</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step09_q20" name="kpi_form13_4" value="0.5" <c:if test="${social.kpi_form13_4 eq 0.5}">checked</c:if>/><label for="step09_q20">매우 미흡</label></span></li>
        </ul>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
         <strong class="txt_orange">신제품 출시 실적·노력</strong>은 기존의 사업영역이 아닌 새로운 시장에 진출한 실적과 노력(투자, 제도혁신, 전문 인력 확보 등)을 의미합니다.
      </div>
      <!-- //box_tip -->

  <div class="btnArea mgt60">
      <a href="/social/self/stepFrom8.do?kpi_seq=${social.kpi_seq}" class="btn btn_prev">이전</a>
      <button class="btn btn_next" onclick="return fmCheck8();">결과보기</button>
      </div>
      <!-- //btnArea end -->
    </div>
    <!-- //inner end -->
	</section>			
</form>
 </body> 


<script>
 $(document).ready(function() { 
// 	  alert("AAAAA");  
 }); 

 function fmCheck8(){
 	  if(fnMemberValidation8() == false) return false;
 	  
	  stepForm8();

 }
 function stepForm8(){
 var comSubmit = new ComSubmit("frm");
 //comSubmit.setUrl("<c:url value='/self/step2.do'/>");
 //comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
 comSubmit.submit();
 }
 function fnMemberValidation8(){ 
 	  
 	  var chk_radio1 = document.getElementsByName('kpi_form13_1');
 	  var chk_radio2 = document.getElementsByName('kpi_form13_2');
 	  var chk_radio3 = document.getElementsByName('kpi_form13_3');
 	  var chk_radio4 = document.getElementsByName('kpi_form13_4');
 	  
 	  var sel_type = null;
 	  var sel_type1 = null;
 	  var sel_type2 = null;
 	  var sel_type3 = null;
 	  
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
 		for(var i=0;i<chk_radio4.length;i++){

 			if(chk_radio4[i].checked == true){ 

 				sel_type3 = chk_radio4[i].value;
 			}
 		}		
 		if(sel_type == null){

           alert("기업 운영 및 제품의 혁신성을 선택하세요."); 

 		return false;

 		}
 		if(sel_type1 == null){

           alert("기업 운영 및 제품의 혁신성을 선택하세요."); 

 		return false;
 		}
 		if(sel_type2 == null){

           alert("기업 운영 및 제품의 혁신성을 선택하세요."); 

 		return false;
 		}
 		if(sel_type3 == null){

           alert("기업 운영 및 제품의 혁신성을 선택하세요."); 

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