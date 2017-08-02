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
         <form role="form" action="/social/self/step9.do" method="post" commandName="social">
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
      <li><a  href="#" style="text-decoration:none" class="is-current">고용창출 및<br />재정성과</a></li>
      <li><a  href="#" style="text-decoration:none">기업활동에서의<br />혁신성</a></li>
    </ol>
    <!-- // tab -->
    
  <div class="inner motion">
      <h2 class="tit_page">고용성과</h2>
   <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
      <div class="box_question">
        <p class="question">귀사의 지난 한해 총 근로자수는 몇 명입니까?</p>
        <div class="inputArea mgt25">
          유급근로자 수(명) : <input type="text" class="inputSt"  name="kpi_form10_pay" id="kpi_form10_pay" value="${social.kpi_form10_pay}" onkeyup="inputNumberFormat(this)" />
        </div>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
       지난해 고용보험 가입대상자를 기준으로 회사 대표자를 제외한 유급근로자수를 기재하시면 됩니다.
      </div>
      <!-- //box_tip -->

      <h2 class="tit_page top_line">매출성과</h2>

      <div class="box_question">
        <p class="question">귀사의 지난 한해 총 매출액은 얼마입니까?</p>
        <div class="inputArea mgt25">
          매출액(원) : <input type="text" class="inputSt" name="kpi_form11_pay" id="kpi_form11_pay" value="${social.kpi_form11_pay}" onkeyup="inputNumberFormat(this)" />
        </div>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        매출액은 지난해 손익계산서를 기준으로 작성하시고, 정부지원금을 제외한 순수 영업활동을 통한 수입만을 의미합니다.
      </div>
      <!-- //box_tip -->

      <h2 class="tit_page top_line">영업성과</h2>

      <div class="box_question">
        <p class="question">귀사의 지난 한해 영업이익(손실)은 얼마입니까?</p>
        <div class="inputArea mgt25">
          영업이익(원) : <input type="text" class="inputSt" name="kpi_form12_pay" id="kpi_form12_pay" value="${social.kpi_form12_pay}"  onkeyup="vComma(this)" />
        </div>
      </div>

      <div class="box_tip">
        <strong class="tit">작성 TIP</strong>
        영업이익은 지난해 손익계산서를 기준으로 작성하시기 바랍니다.
      </div>
      <!-- //box_tip -->   
 
   <div class="btnArea mgt60">
      <a href="/social/self/stepFrom7.do?kpi_seq=${social.kpi_seq}" class="btn btn_prev">이전</a>
      <button class="btn btn_next" onclick="return fmCheck7();">다음</button>
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

 function fmCheck7(){
 	  if(fnMemberValidation7() == false) return false;
 	  
	  stepForm7();

 }
 function stepForm7(){
	 document.getElementById('kpi_form10_pay').value = $('#kpi_form10_pay').val().replace(/,/g, ''); 
	 document.getElementById('kpi_form11_pay').value = $('#kpi_form11_pay').val().replace(/,/g, ''); 
	 document.getElementById('kpi_form12_pay').value = $('#kpi_form12_pay').val().replace(/,/g, ''); 
 var comSubmit = new ComSubmit("frm");
 //comSubmit.setUrl("<c:url value='/self/step2.do'/>");
 //comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
 comSubmit.submit();
 }
 function fnMemberValidation7(){ 
 	  
 	  if($.trim($('#kpi_form10_pay').val()) == ''){
 		   alert("근로자수를 입력해 주세요.");
 		   $('#KPI_FORM10_PAY').focus();
 		   return false;
 		  } 
 	  if($.trim($('#kpi_form11_pay').val()) == ''){
 		   alert("매출액을 입력해 주세요.");
 		   $('#KPI_FORM11_PAY').focus();
 		   return false;
 		  } 
 	  if($.trim($('#kpi_form12_pay').val()) == ''){
 		   alert("영업성과 입력해 주세요.");
 		   $('#KPI_FORM12_PAY').focus();
 		   return false;
 		  } 


 }
	

		function vComma(obj) { 
		var str    = "" + obj.value.replace(/,/gi,''); // 콤마 제거 
		var regx    = new RegExp(/(-?\d+)(\d{3})/); 
		var bExists = str.indexOf(".",0); 
		var strArr  = str.split('.'); 
		while(regx.test(strArr[0])){ 
		strArr[0] = strArr[0].replace(regx,"$1,$2"); 
		} 
		if (bExists > -1) 
		obj.value = strArr[0] + "." + strArr[1]; 
		else 
		obj.value = strArr[0]; 
		} 

		function trim(str) { 
		return str.replace(/(^\s*)|(\s*$)/g, ""); 
		} 

		function getNumber(str) { 
		str = "" + str.replace(/,/gi,''); // 콤마 제거 
		str = str.replace(/(^\s*)|(\s*$)/g, ""); // trim 
		return (new Number(str)); 
		} 

		function Send() { 
		var objBox = document.getElementById("text1"); 
		var num = getNumber(objBox.value); 
		if (!trim(objBox.value)) { 
		alert("입력해 주세요."); 
		objBox.value=""; 
		objBox.focus(); 
		} else if (isNaN(num)) { 
		alert("숫자만 입력해 주세요."); 
		objBox.value=""; 
		objBox.focus(); 
		} else { 
		alert(num + "\n\n이용해 주셔서 감사합니다."); 
		} 
		} 
 function onlyNumber(obj) {
 	    $(obj).keyup(function(){
 	         $(this).val($(this).val().replace(/[^0-9]/g,""));
 	    }); 
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