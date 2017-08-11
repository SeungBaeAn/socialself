<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
   <title>SE 자가진단 KIT</title>
   <link rel="shortcut icon" sizes="32x32" href="../images/app-icon-32.png">
  <meta name="theme-color" content="#fff">
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link href="../css/common.css" rel="stylesheet">
  <link href="../css/jquery.mCustomScrollbar.css" rel="stylesheet">
  <script src="../js/jquery-1.12.0.min.js"></script>
  <script src="../js/jquery.mCustomScrollbar.js"></script>
  <script src="../js/TweenMax.min.js"></script>
  <script src="../js/ui.js"></script>
</head>
   	<body>
	<!-- contents -->
            <header class="header">
                <div class="inner">
                    <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
                    <p><img src="../images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
                </div>
            </header>
            <section class="contents main">

	  <div class="inner">
      <h2 class="bold">사회가치 측정이란 무엇을 의미하나요?</h2>
      <p class="bold"><span class="txt_blue">“사회가치 측정</span>은 사회적 목적을 우선적으로 추구하는 조직이 창출한<br />사회적·경제적 가치와 사회적 영향을 측정하는 과정” 즉</p>
      <p class="bold">“조직이 우선적으로 사회가치를 실현하기 위한 기제를 설정하고 이를 조직 운영과 본질적인 사업 활동에 반영하며,<br />조직의 효율적인 인적·물적 자원 투입, 사회문제 해결을 위한 혁신적인 해결 방법 등“ 의 노력과 성과를 측정합니다.</p>
      <p class="bold">현재 <span class="txt_blue">‘사회적 가치 지표(SVI)’</span>는<br />사회적 가치, 경제적 가치, 혁신 성과의 3가지 관점에 따라 14개 지표로 구성되어 있습니다.</p>
      <p class="bold"><span class="txt_blue">‘SE 자가진단 KIT’</span>에서 스스로 측정하시면 대략적인 점수를 확인하실 수 있습니다.</p>
      
      <div class="start_button mgt60">
        <a href="/social/self/insertstep.do" name="social-form" class="btn_start"  style="color:#FFFFFF;">자가진단 시작</a>
      </div>
    </div>
    <!-- //inner end -->
    
        <!-- 2017.07.06 이벤트 팝업 추가 -->

    <!-- //2017.07.06 이벤트 팝업 추가 end -->
	</section>              
	</form>
	</body>
<script>
$(".js-closePop").on("click",function(e){
    e.preventDefault();

    $(".dim").hide();
    $(".popup").hide();
  });  
</script>
</html>