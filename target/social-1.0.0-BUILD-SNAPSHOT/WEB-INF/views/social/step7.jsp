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
         <form role="form" action="/social/self/step8.do" method="post" commandName="social">

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
      <li><a  href="#" style="text-decoration:none" class="is-current">근로자<br />지향성</a></li>
      <li><a  href="#" style="text-decoration:none">고용창출 및<br />재정성과</a></li>
      <li><a  href="#" style="text-decoration:none">기업활동에서의<br />혁신성</a></li>
    </ol>
    <!-- // tab -->
	  <div class="inner motion">
      <h2 class="tit_page">근로자 임금수준</h2>
    <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
      <div class="box_question">
        <p class="question">귀사의 지난 한해 전체 직원의 1인당 월평균 임금은 얼마입니까?</p>
        <div class="inputArea mgt25">
          유급근로자 월평균 임금(원) : <input type="text" class="inputSt" name="kpi_form8_pay" id="kpi_form8_pay" value="${social.kpi_form8_pay}" onkeyup="inputNumberFormat(this)"/>
        </div>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
         지난해 급여대장을 참고하여 세전 일인당 월평균 급여를 기입해 주십시오.
      </div>
      <!-- //box_tip -->

      <h2 class="tit_page top_line">근로자 역량강화 노력</h2>

      <div class="box_question">
        <p class="question">귀사의 지난 한해 근로자의 역량향상을 위한 직무교육, 소양교육 등 1인당 연평균 교육시간은 얼마입니까?<br /></p>
        <ul class="vertical mgt25">
          <li><span class="ui_radio"><input type="radio" id="step07_q01" name="kpi_form9" value="5"  <c:if test="${social.kpi_form9 eq 5}">checked</c:if>  /><label for="step07_q01">1인당 연평균 교육훈련 시간이 20시간 이상</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step07_q02" name="kpi_form9" value="4"  <c:if test="${social.kpi_form9 eq 4}">checked</c:if>  /><label for="step07_q02">1인당 연평균 교육훈련 시간이 15~ 20시간 미만</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step07_q03" name="kpi_form9" value="3"  <c:if test="${social.kpi_form9 eq 3}">checked</c:if> /><label for="step07_q03">1인당 연평균 교육훈련 시간이 10시간 ~ 15시간 미만</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step07_q04" name="kpi_form9" value="2"  <c:if test="${social.kpi_form9 eq 2}">checked</c:if> /><label for="step07_q04">1인당 연평균 교육훈련 시간이 5시간 ~ 10시간 미만</label></span></li>
          <li><span class="ui_radio"><input type="radio" id="step07_q05" name="kpi_form9" value="1"  <c:if test="${social.kpi_form9 eq 1}">checked</c:if> /><label for="step07_q05">1인당 연평균 교육훈련 시간이 5시간 미만</label></span></li>      
        </ul>
      </div>
      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        성희롱예방교육, 산업안전교육, 개인정보보호교육, 위생관련교육 등 법정의무교육을 제외한 소양교육, 직무교육 등을 인정하며, 근로자별 연간 교육시간 합계를 총근로자수로 나누어 1인당 교육시간 산출합니다.
      </div>
      <!-- //box_tip -->          
   <div class="btnArea mgt60">
      <a href="/social/self/stepFrom6.do?kpi_seq=${social.kpi_seq}" class="btn btn_prev">이전</a>
      <button class="btn btn_next" onclick="return fmCheck6();">다음</button>
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

 function fmCheck6(){
 	  if(fnMemberValidation6() == false) return false;

	  stepForm6();

 }
 
 function stepForm6(){
	 
	 document.getElementById('kpi_form8_pay').value = $('#kpi_form8_pay').val().replace(/,/g, '');  

     var comSubmit = new ComSubmit("frm");

 comSubmit.submit();
 }
 function fnMemberValidation6(){ 
 	  
 	  var chk_radio1 = document.getElementsByName('kpi_form9');
 	  var sel_type = null;
 	  
 	  if($.trim($('#kpi_form8_pay').val()) == ''){
 		   alert("월평균(임금)을 입력해 주세요.");
 		   $('#kpi_form8_pay').focus();
 		   return false;
 		  } 
 	  
 		for(var i=0;i<chk_radio1.length;i++){

 			if(chk_radio1[i].checked == true){ 

 				sel_type = chk_radio1[i].value;
 			}
 		}
      
 		if(sel_type == null){

           alert("근로자 역량강화 노력을 선택하세요."); 

 		return false;

 		}

 }

 function onlyNumber(obj) {
 	    $(obj).keyup(function(){
 	         $(this).val($(this).val().replace(/[^0-9]/g,""));
 	    }); 
 	}
 function number_chk(obj){
 		var val = obj.value.replace(/,/g, "");
 		var val2 = val.substr(0, 1);
 		var val3 = val.length;
 		if(val2 == 0){
 		val = val.substr(1, val3);
 	}
 		obj.value = num_format(val);
 }
 function inputNumberFormat(obj) { 
 	    obj.value = comma(uncomma(obj.value)); 
 	} 

 	function comma(str) { 
 	    str = String(str); 
 	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,'); 
 	} 

 	function uncomma(str) { 
 	    str = String(str); 
 	    return str.replace(/[^\d]+/g, ''); 
 	}

</script>
</html>        