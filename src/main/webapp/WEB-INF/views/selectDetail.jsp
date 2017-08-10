<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SE 자가진단 KIT</title>
<style type="text/css">
	div{
		width:400px;
		margin:0 auto;
		text-align: center;
		
	}
	.panel {
		margin: auto;
		width: 400px;
		text-align: right;
		padding-top:2px;
	}
	.txt_blue{color:#0b7cc1;}
.inner{position:relative; width:1355px; margin:0 auto;text-align: left;}
.header{border-bottom:1px solid #a7a7a7;}
.header .inner{padding:0px 0;}/* 헤더 높이 조정 : padding값을 수정해주세요 */
.header h1{font-size:30px; color:#373737; letter-spacing: -0.03em;}
.header p{position:absolute; top:40%; right:0; margin-top:-23px;}
.innerBtn{width:50px; padding:1;background:#f5821f; color:#fff !important;}
.innerBtn1{width:70px; padding:1;background:#f5821f; color:#fff !important;}					
</style>
</head>
<body>

	  <header class="header">
            <div class="inner">
            <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
             <p><img src="./images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
            </div>
       </header>
  <div>
	<h4><strong class="txt_blue">SE 자가진단 KIT 사용자정보</strong></h4>
     <table width='400' style="border-bottom:0px solid #bebebe;border-left:0px solid #bebebe;border-top:0px solid #bebebe;border-right:0px solid #bebebe;">
		<tr>
			<td  width='100' style="background-color:#f7f7f7;border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">아이디 </td>
			<td style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;" align=center> ${member.id}</td>
		</tr>
		<tr>
			<td  width='100' style="background-color:#f7f7f7;border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">비밀번호 </td>
			<td style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;" align=center> ${member.passwd}</td>
		</tr>
		<tr>	
			<td  width='100' style="background-color:#f7f7f7;border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">이름 </td>
			<td style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;" align=center> ${member.name}</td>
		</tr>
		<tr>	
			<td  width='100' style="background-color:#f7f7f7;border-bottom:2px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">등록일자 </td>
			<td style="border-bottom:1px solid #bebebe;border-left:2px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;" align=center> ${member.reg_date}</td>
		</tr>
		</table>
		<div class="panel">
		<input type="button" onclick="location.href='update.do?id=${member.id}'" value="수정" class="innerBtn">
		<input type="button" onclick="location.href='deletePro.do?id=${member.id}'" value="삭제" class="innerBtn">
		<input type="button" onclick="location.href='list.do'" value="리스트" class="innerBtn1">
	   </div>
</div>
</body>
</html>