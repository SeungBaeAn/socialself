<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>      
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
   <title>SE 자가진단 KIT</title>
   <link rel="shortcut icon" sizes="32x32" href="./images/app-icon-32.png">
<meta charset="UTF-8">

<style type="text/css">
	.div {
		width:400px;
		margin:0 auto;
		text-align: center;
	}
	.panel2 {
		width:500px;
		margin:0 auto;
		align-self: right;
	}
	.panel1 {
		width:300px;
		margin:0 auto;
		text-align: center;
		padding-top:2px;
	}	
	.error-color {
		color:red;
	}
	.panel {
		margin: auto;
		width: 400px;
		text-align: right;
	}
.txt_blue{color:#0b7cc1;}
.inner{position:relative; width:1355px; margin:0 auto;text-align: left;}
.header{border-bottom:1px solid #a7a7a7;}
.header .inner{padding:0px 0;}/* 헤더 높이 조정 : padding값을 수정해주세요 */
.header h1{font-size:30px; color:#373737; letter-spacing: -0.03em;}
.header p{position:absolute; top:40%; right:0; margin-top:-23px;}
.innerBtn{width:50px; padding:1;background:#f5821f; color:#fff !important;}
.tdpu1{background-color:#f7f7f7;border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;}
.tdpu2{border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;}
</style>
</head>
<body>
    <form:form commandName="member">
	  <header class="header">
            <div class="inner">
            <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
             <p><img src="./images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
            </div>
       </header>
	

	<div class="panel1">
	<h4><strong class="txt_blue">SE 자가진단 KIT 사용자등록</strong> </h4>
	<table>
	    <tr><td width='100' class="tdpu1">아이디</td> 
	    <td align="left" class="tdpu2"><input type="text"  name="id" size="26">
	    <form:errors path="id" class="error-color"/></td></tr>
		<tr><td width='100' class="tdpu1">비밀번호</td> 
		<td align="left" class="tdpu2"> <input type="text" name="passwd"  size="26">
		<form:errors path="passwd" class="error-color"/></td></tr>
		<tr><td width='100' class="tdpu1">이름 </td> 
		<td align="left" class="tdpu2"><input type="text" name="name"  size="26">
		<form:errors path="name" class="error-color"/></td></tr>
	 </table>
	<div class="panel1" style="text-align:right;">
		 <button type="submit" class="innerBtn">등록</button>
		 <input type="button" onclick="location.href='list.do'" value="취소" class="innerBtn">
		</div>
	</div>
</form:form>

</body>
</html>