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
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="../js/Chart.js"></script>
  <script src="../js/Chart.StackedBar.js"></script>
  <script src="../js/Chart.Radar.js"></script>
   <script src="../js/utils.js"></script>
  <script src="../js/Chart.bundle.js"></script>

</head>
    <body>
    <form>
        	<header class="header">
		      <div class="inner">
		  	    <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
		        <p><img src="../images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
		      </div>
			</header>      	
	<!-- contents -->
	<section class="contents">

	  <div class="inner_motion full_width">
      <div class="result_tit">
        <h2 class="tit_page">SE 자가진단 KIT 결과</h2>
        <a href="#" class="btn bg_orange btn_print" onclick="javascript:window.print()">인쇄</a>
      </div>

      <table class="tbl_result_summary">
        <colgroup>
          <col style="width:130px;" />
          <col />
          <col style="width:130px;" />
          <col style="width:130px;" />
          <col style="width:130px;" />
          <col style="width:130px;" />
        </colgroup>
        <tr>
          <th>기업명</th>
          <td>${social.company}</td>
          <th>등급</th>
          <td>
            <!--
              별점 표시는 point 클래스를 이용하시면 됩니다.
              point0 : 별 0
              point1 : 별 1
              point2 : 별 2
              point3 : 별 3
              point4 : 별 4
               <span class='{{_data.GRADE_P}}'><img src="/src/images/bg_grade.png" alt="" /></span>
            -->
           <strong>${ment.step_imgnm}</strong>
          </td>
          <th>측정일</th>
          <td>${social.load_date}</td>
        </tr>
      </table>
    <input id="KPI_SEQ" type="hidden" name="KPI_SEQ"  value="{{_data.KPI_SEQ}}"></input>
     <table class="tbl_result_detail mgt30" style="text-align:center;">
        <colgroup>
          <col style="width:115px;" />
          <col style="width:115px;" />
          <col style="width:250px;" />
          <col />
          <col style="width:145px;" />
        </colgroup>
        <thead>
          <tr style="text-align:center;">
            <th style="text-align:center;">관점</th>
            <th style="text-align:center;">범주</th>
            <th style="text-align:center;">영역</th>
            <th style="text-align:center;">측정지표</th>
            <th style="text-align:center;">점수/배점</th>
          </tr>
        </thead>
        <tbody>
           <tr>
            <td class="first" rowspan="9">사회적가치</td>
            <td rowspan="2">조직미션</td>
            <td rowspan="2">사회적 미션의 관리</td>
            <td class="alignLeft">사회적 가치 추구 여부</td>
            <td class="score"><strong>${social.kpi_form1}</strong> / 5</td>
          </tr>
          <tr>
            <td class="alignLeft">사회적 성과 평가체계 구축</td>
            <td class="score"><strong>${social.kpi_form2}</strong> / 5</td>
          </tr>
          <tr>
            <td rowspan="4">사업활동</td>
            <td>주사업활동의 사회적 가치</td>
            <td class="alignLeft">사업활동의 사회적가치 지향성</td>
            <td class="score"><strong>${social.kpi_form3}</strong> / 10</td>
          </tr>
          <tr>
            <td rowspan="2">사회적 경제 생태계 구축 노력</td>
            <td class="alignLeft">사회적 경제 조직간의 협력 수준</td>
            <td class="score"><strong>${social.kpi_form4}</strong> / 5</td>
          </tr>
          <tr>
            <td class="alignLeft">지역사회와의 협력 수준</td>
            <td class="score"><strong>${social.kpi_form5}</strong> / 5</td>
          </tr>
          <tr>
            <td>이윤의 사회적 재투자</td>
            <td class="alignLeft">이윤의 사회적 환원 노력도</td>
            <td class="score"><strong>${social.kpi_form6}</strong> / 10</td>
          </tr>
          <tr>
            <td rowspan="3">조직운영</td>
            <td>운영의 민주성</td>
            <td class="alignLeft">참여적 의사결정 비율</td>
            <td class="score"><strong>${social.kpi_form7}</strong> / 5</td>
          </tr>
          <tr>
            <td rowspan="2">근로자 지향성</td>
            <td class="alignLeft">근로자 임금수준</td>
            <td class="score"><strong>${social.kpi_pay_n}</strong> / 10</td>
          </tr>
          <tr>
            <td class="alignLeft">근로자 역량강화 노력</td>
            <td class="score"><strong>${social.kpi_form9}</strong> / 5</td>
          </tr>
          <tr>
            <td class="first" rowspan="4">경제적가치</td>
            <td rowspan="4">재정성과</td>
            <td rowspan="3">고용창출 및 재정성과</td>
            <td class="alignLeft">고용성과</td>
            <td class="score"><strong>${social.kpi_here_n}</strong> / 10</td>
          </tr>
          <tr>
            <td class="alignLeft">매출성과</td>
            <td class="score"><strong>${social.kpi_sales_n}</strong> / 10</td>
          </tr>
          <tr>
            <td class="alignLeft">영업성과</td>
            <td class="score"><strong>${social.kpi_bs_n}</strong> / 5</td>
          </tr>
          <tr>
            <td>노동 성과</td>
            <td class="alignLeft">노동생산성</td>
            <td class="score"><strong>${social.kpi_work_n}</strong> / 5</td>
          </tr>
          <tr>
            <td class="first">혁신성과</td>
            <td>기업혁신</td>
            <td>기업활동에서의 혁신성</td>
            <td class="alignLeft">기업 운영 및 제품의 혁신성</td>
            <td class="score"><strong>${social.kpi_form13}</strong> / 10</td>
          </tr>
        </tbody>
      </table>

	  <div class="comment">
	 <p class="tit">결과</p>
		<p class="txt">
	 귀사의 사회적 가치 지표(SVI) 자가진단 결과는 <strong>‘${ment.step_imgnm}’</strong> 입니다.<br />
	 ${ment.step_mentnm}<br />
	 세부적으로 14개 측정지표 중에서 <strong>${tlist.top_list}</strong> <c:if test="${tlist.top_list eq null}"> &nbsp;	</c:if><c:if test="${tlist.top_list ne null}">지표가 상대적으로 높은 득점으로 진단되었습니다. </c:if><strong> ${llist.low_list}</strong> <c:if test="${llist.low_list eq null}"> &nbsp;	</c:if><c:if test="${llist.low_list ne null}">지표가 상대적으로 낮은 득점으로 진단되었습니다. </c:if><br />
	지표별 세부 득점 결과를 참조하여 귀사의 조직운영, 사업활동에 참고하시기 바랍니다.<br />
	본 진단은 귀사가 스스로 입력한 자료에 기초하여 측정된 자가진단 결과입니다. 따라서, 실제 사회적 가치 지표(SVI) 측정시 그 결과가 상이하게 나올 수 있습니다.
	 </p> 	
      </div>
      <!-- //comment -->

      <!-- graph    <canvas id="barChart" ></canvas> -->
    <div class="wrap_graph mgt30">
        <div class="graph">
        <h9 class="tit_graph" style="background-color:#FFFFFF;">관점별 점수비율</h9>
         <canvas id="canvas"></canvas>
        </div>
        <div class="graph">
        <h9 class="tit_graph" style="background-color:#FFFFFF;">측정지표별 평가 점수(지표별 100%기준)</h9>
        <canvas id="canvas2"></canvas>
        </div>
      </div>
      <!-- //graph end -->
    </div>
    <!-- //inner end -->
	</section>
			
</form>
 </body> 
<!-- 모달 팝업 --> 


<script>
var chartLabels = [];
var chartData1 = new Array();
var chartData2 = new Array();
var chartData3 = new Array();
var chartData4 = [];
var chartData5 = [];
var chartData6 = [];
var chartData1_1= new Array();
var chartData2_1=[];
var chartData3_1=[];
var chartData3_2;
var chartData3_3;
var jsondata = new Array();
$.getJSON("/social/self/gsonList1.do",
		  function(data) {
		    $.each(data, function(inx, obj) {
		     //   chartLabels.push(obj.result);
		        chartData1.push(obj.result);
		     //   chartData2_1.push = chartData2[0];
		     // /  chartData2.push(obj.result);
		         
	});
		     
	createChart();
	 });
   
// });
$.getJSON("/social/self/gsonList2.do",
		  function(data) {
		    $.each(data, function(inx, obj) {
		     //   chartLabels.push(obj.result);
		        chartData2.push(obj.result);
		      //  chartData2_1.push = chartData2[0];
		     // /  chartData2.push(obj.result);
		         
	});
		     
	createChart();
	 });
$.getJSON("/social/self/gsonList3.do",
		  function(data) {
		    $.each(data, function(inx, obj) {
		    	chartData3.push(obj.result);
		     //   chartData2.push(obj.result);
		    //	chartData3_1.push  = chartData3[0];
		         
	 });
		     
	 createChart();
	});

var data = {
		 labels : ['경영공시 평균점수','동종업계 평균점수','귀사 자가진단 점수'],
        datasets: [{
        	  label: '사회적가치',
              backgroundColor: 'rgba(0, 174, 230, 3)',
              boderColor : 'rgba(255, 255, 255, 3)',
              data: chartData1
                  
					
        }, {
        	label: '경제적 가치',
            backgroundColor: 'rgba(246, 130, 31, 3)',
            boderColor : 'rgba(255, 255, 255, 3)', 
            data: chartData2
					
            
        }, {
        	label: '혁신 성과',
            backgroundColor: 'rgba(57, 181, 74, 3)',
            boderColor : 'rgba(255, 255, 255, 3)',
            data: chartData3
					
            
        },
      ]

    };
function createChart() {
	//  window.onload = function() {
        var ctx = document.getElementById("canvas").getContext("2d");
        window.myBar = new Chart(ctx, {
            type: 'bar',
            data: data,
            options: {
                title:{
                    display:true,
                 
                },
                tooltips: {
                    mode: 'index',
                    intersect: false
                },
                responsive: true,
                scales: {
                    xAxes: [{
                    	barThickness: 60,
                    	stacked: true,
                    }],
                    yAxes: [{
                        stacked: true,
                        ticks: {
                            beginAtZero: true,
                            max: 100,
                            }
                    }]
                }
            }
        });
    };






$.getJSON("/social/self/gsonList4.do",
		  function(data) {
		    $.each(data, function(inx, obj) {
		      //  chartLabels.push(obj.result);
		        chartData4.push(obj.result);
		     //   chartData2.push(obj.result);
		         
		    });
		     
		    createRaderChart();
		  });

 
	
	var randomScalingFactor = function() {
        return Math.round(Math.random() * 100);
    };

    var color = Chart.helpers.color;
    var config = {
        type: 'radar',
        data: {
        	   labels: [ '사회적 가치추구여부','사회적 평가체계구축','사업활동의 사회적 가치 지향성','사회적 경제조직간의 협력수준','지역사회의 협력수준','이윤의 사회적 환원 노력도',
               	      '참여적 의사결정 비율','근로자임금수준','근로자 역량강화 노력','고용성과','매출성과','영업성과','노동생산성','기업운영및 제품의 혁신성'],
                datasets: [{
                label: "평가점수",
                backgroundColor: 'rgba(0, 174, 230, 0.5)',
                pointBackgroundColor: 'color(rgba(153, 102, 255, 0.9).alpha(0.2).rgbString()',
                data: chartData4
						
                
            }, ]
        },
        options: {
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                
            },
            scale: {
              ticks: {
                  beginAtZero: true,
                  max: 100,
                  radarThickness: 60,
              }
            },
            maintainAspectRatio: false     
        }
    };

     function createRaderChart() {
	//  window.onload = function() {
        window.myRadar = new Chart(document.getElementById("canvas2"), config);
    };

var $target = $(".motion");
var $tab = $(".is-current");
$tab.animate({"top":100});
TweenMax.from($target,0.5,{y:50, autoAlpha:0, ease:Power1.easeInOut});
TweenMax.fromTo($tab,0.8,{x:-5},{x:0, ease:Power1.easeInOut, repeat:5});
</script>
</html>