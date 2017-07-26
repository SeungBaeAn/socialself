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
		   <form role="form"  action="/social/self/step2.do" method="post" commandName="social">
   			<header class="header">
		      <div class="inner">
		  	    <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
		        <p><img src="../images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
		      </div>
			</header> 	
	<section class="contents">
    <ol class="tab">
      <li><a href="#" style="text-decoration:none">회사 기본정보</a></li>
      <li><a href="#" style="text-decoration:none">사회적<br />미션의 관리</a></li>
      <li><a href="#" style="text-decoration:none">주사업활동의<br />사회적 가치</a></li>
      <li><a href="#" style="text-decoration:none">사회적경제<br />생태계 구축노력</a></li>
      <li><a href="#" style="text-decoration:none">이윤의<br />사회목적 재투자</a></li>
      <li><a href="#" style="text-decoration:none">운영의<br />민주성</a></li>
      <li><a href="#" style="text-decoration:none">근로자<br />지향성</a></li>
      <li><a href="#" style="text-decoration:none">고용창출 및<br />재정성과</a></li>
      <li><a href="#" style="text-decoration:none">기업활동에서의<br />혁신성</a></li>
    </ol>
   	  <div class="inner">
   	   <input id="kpi_seq" type="hidden" name="kpi_seq"  value="${social.kpi_seq}"></input>
   	   <input  type="hidden" name="kpiseq" value="${social.kpi_seq}"></input>
      <!-- 회사정보 입력 -->
      <div class="company_info">
        <table class="tbl_write">
          <colgroup>
            <col style="width:145px;" />
            <col />
          </colgroup>
          <tr>
            <th><span class="bullet_blue">회사명 :</span></th>
            <td><input type="text" class="inputSt"  name="company" id="company"  required="required" value="${social.company}"></td>
          </tr>

          <tr>
            <th><span class="bullet_blue">업종 </span></th>
            <td>
              <select class="ui-select" name="business_type" id="business_type" required="required">
                <option value="">선택</option>
                <option value="1" <c:if test="${social.business_type eq 1}">selected</c:if>>문화,예술,여행</option>
                <option value="2" <c:if test="${social.business_type eq 2}">selected</c:if>>청소.환경.경비</option>    
                <option value="3" <c:if test="${social.business_type eq 3}">selected</c:if>>교육.방과후 서비스</option>    
                <option value="4" <c:if test="${social.business_type eq 4}">selected</c:if>>간병,가사 보건인력</option>    
                <option value="5" <c:if test="${social.business_type eq 5}">selected</c:if>>사무 생활용품(유통,제조,판매)</option>    
                <option value="6" <c:if test="${social.business_type eq 6}">selected</c:if>>식품(유통,제조,판매)</option>    
                <option value="7" <c:if test="${social.business_type eq 7}">selected</c:if>>기타</option>   
                    
              </select>   
               <a href="#" class="btn bg_orange innerBtn js-openPop">업종 설명</a>   
            </td>
            
          </tr>
          <tr>
            <th><span class="bullet_blue">조직형태</span></th>
            <td>
              <select class="ui-select" name="bs_type" id="bs_type" required="required">
                <option value="" >선택</option>
                <option value="인증 사회적기업" <c:if test="${social.bs_type eq '인증 사회적기업'}">selected</c:if> >인증 사회적기업</option>
                <option value="예비 사회적기업" <c:if test="${social.bs_type eq '예비 사회적기업'}">selected</c:if>>예비 사회적기업</option>    
                <option value="사회적기업가 육성사업 창업팀(소셜벤처 포함)" <c:if test="${social.bs_type eq '사회적기업가 육성사업 창업팀(소셜벤처 포함)'}">selected</c:if>>사회적기업가 육성사업 창업팀(소셜벤처 포함)</option>
                <option value="기타 사회적경제조직" <c:if test="${social.bs_type eq '기타 사회적경제조직'}">selected</c:if>>기타 사회적경제조직</option>
                <option value="일반기업" <c:if test="${social.bs_type eq '일반기업'}">selected</c:if>>일반기업</option>    
             </select>                     
            </td>
          </tr>

    
        </table>
                <!-- 2017.07.06 추가 -->
        <div class="mgt30">
          <span class="ui_radio event">
            <input type="checkbox" id="event" name="event_use" onclick="chkEvent()" value="Y" value="${social.event_use}" selected>
            <label for="event" class="txt_event">이벤트 참여하기</label>
          </span>
        </div>
        <table class="tbl_write tbl_hidden mgt25">
          <colgroup>
            <col style="width:145px;" />
            <col />
          </colgroup>
          <tr>
            <th><span class="bullet_blue">성명</span></th>
            <td><input type="text" class="inputSt" name="event_name" id="event_name" value="${social.event_name}"/></td>
          </tr>
          <tr>
            <th><span class="bullet_blue">연락처</span></th>
            <td><input type="text" class="inputSt" name="event_hp" id="event_hp" value="${social.event_hp}"/></td>
          </tr>
          <tr>
            <th><span class="bullet_blue">주소</span></th>
            <td>
              <input type="text" class="inputSt w100p" name="event_addr" id="event_addr" value="${social.event_addr}"/>
             
            </td>
           <tr>
            <th></th>
            <td>
             
              <p class="txt_info mgt30"><strong>* 상기 정보는 이벤트 이외의 목적으로 사용하지 않습니다.</strong></p>
            </td>
          </tr>
        </table>
        <!-- //2017.07.06 추가 end -->
 
      <!-- //company_info end -->

      <div class="btnArea mgt60"  style="text-align:center;">
    
       
        <button class="btn btn_next" onclick="return fmCheck1();">다음</button>
        
      </div>
      <!-- //btnArea end -->
    </div>
    <!-- //inner end -->

    <!-- 업종설명 팝업 -->
    <div class="dim"></div>
    <div class="popup">
      <table class="tbl_blue">
        <colgroup>
          <col style="width:205px;" />
          <col />
        </colgroup>
        <thead>
          <tr  style="text-align:center;">
            <th  style="text-align:center;">서비스분야</th>
            <th  style="text-align:center;">세부 내용</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>문화, 예술, 여행</td>
            <td>
              - 연극, 영화, 공연, 축제, 문화콘텐츠, 문화체험<br />
              - 국내외 여행
            </td>
          </tr>
          <tr>
            <td>청소, 환경, 경비</td>
            <td>
              - 청소용역, 소독방역, 건물종합관리, 위생관리, 소독<br />
              - 생활폐기물/음식물폐기물 수집·운반, 재활용품 수집/처리
            </td>
          </tr>
          <tr>
            <td>교육, 방과 후 서비스</td>
            <td>
              - 교육, 현장체험 캠프 및 교육, 컨설팅, 인재양성<br />
              - 방과후 학교
            </td>
          </tr>
          <tr>
            <td>간병, 가사/보건/인력</td>
            <td>
              - 간병, 장기요양, 노인복지, 산후조리, 신생아, 아동, 세탁업<br />
              - 병원, 한의원, 한방의원, 의료기기<br />
              - 인력공급 및 고용알선
            </td>
          </tr>
          <tr>
            <td>사무생활용품<br />(유통, 제조, 판매)</td>
            <td>
              - 복사용지, 문구, 의류, 장갑, 가구, 비누, 바이오 제품<br />
              - 디자인, 공고기획, 인쇄출판
            </td>
          </tr>
          <tr>
            <td>식품(유통, 제조, 판매)</td>
            <td>
              - 휴게음식점, 한식, 카페, 음식업, 커피, 빵, 도시락<br />
              - 농축산물, 식품제조 및 가공채소
            </td>
          </tr>
          <tr>
            <td>기타</td>
            <td>
              - 건설, 집수리, 인테리어, 공사<br />
              - IT주변기기 조립, 소프트웨어, 자동차부품제조, 수배전반 등<br />
              - 기타(웹사이트 평가, 퀵서비스, 택배 등)<br />
              - 특정 분류로 구분하기 어려운 소규모인 업종
            </td>
          </tr>
        </tbody>
      </table>
      <a href="#" class="btn_closePop js-closePop">닫기</a>
    </div>
    <!-- //popup end -->
	</section>
	</form>
 </body>
  
<script type="text/javascript">

$(document).ready(function(){

	$("#update").on("click", function(e){ //저장하기 버튼'
		e.preventDefault();
		fmCheck();

	});

});
function fn_updateBoard(){
	var comSubmit = new ComSubmit("frm");
//	comSubmit.setUrl("<c:url value='/self/step2.do'/>");
//	comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
	comSubmit.submit();
}
function fmCheck(){
	  if(fnMemberValidation() == false) return false;

		fn_updateBoard();
//		comSubmit.setUrl("<c:url value='/social/self/step2.do' />");
//		comSubmit.addParam("kpi_seq", $("#kpi_seq").val());
//		comSubmit.submit(); 
	  //submit();
	//	location.href = "/app/social-step/form/";
		///submit();
	//	fmform();
	 }
//function fmform(){ 
//	   document.getElementById('stepforward').submit(); 
// }  
	  function fnMemberValidation(){ 
	  if($.trim($('#company').val()) == ''){
		   alert("회사명을 입력해 주세요.");
		   $('#company').focus();
		   return false;
		  }
	
	  if($.trim($('#business_type').val()) == ''){
		   alert("업종을 선택해 주세요.");
		   $('#business_type').focus();
		   return false;
		  } 
	  if($.trim($('#bs_type').val()) == ''){
		   alert("조직형태를 선택해 주세요.");
		   $('#bs_type').focus();
		   return false;
		  }
	  
	  var chk_radio1 = document.getElementsByName('EVENT_USE');
	  var sel_type = null;
	  
		for(var i=0;i<chk_radio1.length;i++){

			if(chk_radio1[i].checked == true){ 

				sel_type = chk_radio1[i].value;

			}

		}
	  if(sel_type =="Y"){			  
		   if($.trim($('#event_name').val()) == ''){
			   alert("성명을 입력해 주세요.");
			   $('#event_name').focus();
			   return false;
			  }
		
		  if($.trim($('#event_hp').val()) == ''){
			   alert("연락처를 입력해 주세요.");
			   $('#event_hp').focus();
			   return false;
			  } 
		  if($.trim($('#event_addr').val()) == ''){
			   alert("주소를 입력해 주세요.");
			   $('#event_addr').focus();
			   return false;
			  }
	     }
    }


$(".js-openPop").on("click",function(e){
    e.preventDefault();
    
    var topPosition = $(window).scrollTop()+100;

    $(".dim").fadeIn(200);
    $(".popup").css("top",topPosition).fadeIn(200);
  });

  $(".js-closePop").on("click",function(e){
    e.preventDefault();

    $(".dim").hide();
    $(".popup").hide();
  });
  var $target = $(".motion");
  var $tab = $(".is-current");
  $tab.animate({"top":100});
  TweenMax.from($target,0.5,{y:50, autoAlpha:0, ease:Power1.easeInOut});
  TweenMax.fromTo($tab,0.8,{x:-5},{x:0, ease:Power1.easeInOut, repeat:5}); 
</script>

</html>