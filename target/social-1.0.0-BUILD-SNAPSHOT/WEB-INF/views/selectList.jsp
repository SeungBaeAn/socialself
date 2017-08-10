<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SE 자가진단 KIT</title>
<style type="text/css">
	table{
		width:600px;
		margin:0 auto;
	}
	.panel {
		margin: auto;
		width: 500px;
		align-self: center;
	}
	.panel-default>.panel-heading {
		background-color: #86c1e6;
		padding-bottom: 15px;
		text-align: center;
	}
.txt_blue{color:#0b7cc1;}
.inner{position:relative; width:1355px; margin:0 auto;}
.header{border-bottom:1px solid #a7a7a7;}
.header .inner{padding:0px 0;}/* 헤더 높이 조정 : padding값을 수정해주세요 */
.header h1{font-size:30px; color:#373737; letter-spacing: -0.03em;}
.header p{position:absolute; top:40%; right:0; margin-top:-23px;}
.bg_oranges{width:70px; background:#f5821f;  color:#fff !important;}
.innerBtn{width:90px; padding:3;background:#f5821f; color:#fff !important;}
.innerBtn1{width:120px; padding:3;background:#f5821f; color:#fff !important;}		
</style>
</head>
<body>

	  <header class="header">
            <div class="inner">
            <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
             <p><img src="./images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
            </div>
       </header>
            <div class="panel panel-default">
             <div  style="text-align:center;">
              <h4><strong class="txt_blue">SE 자가진단 KIT 사용자 리스트</strong> </h4>
            </div>
         </div>       	
	<table>
		<tr>
			<td align="right">
				<c:if test="${!empty userId}">
					${userId}&nbsp;(<a href="logout.do" style="text-decoration:none">로그아웃</a>)
				</c:if>
				<c:if test="${empty userId}">
					<a href="login.do" style="text-decoration:none">로그인하기</a>
				</c:if>
			</td>
		</tr>
	</table>
	<c:if test="${count == 0}">
		<div align="center">출력할 내용이 없습니다.</div>
	</c:if>
	<c:if test="${count > 0}">
		<table  style="border-bottom:0px solid #bebebe;border-left:0px solid #bebebe;border-top:0px solid #bebebe;border-right:0px solid #bebebe;">
			<tr style="background-color:#f7f7f7;" >
				<th width="150" style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">아이디</th>
				<th width="150" style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">비밀번호</th>
				<th width="150" style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">이름</th>
				<th width="150" style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">등록일자</th>
			</tr>
			<c:forEach var="member" items="${list}">
				<tr>
					<td width="150" style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;"><a href="detail.do?id=${member.id}" style="text-decoration:none;color:#0b7cc1;">${member.id}</a></td>
					<td width="150" style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">${member.passwd}</td>
					<td width="150" style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">${member.name}</td>
					<td width="150" style="border-bottom:1px solid #bebebe;border-left:1px solid #bebebe;border-top:1px solid #bebebe;border-right:1px solid #bebebe;">${member.reg_date}</td>
				</tr>
			</c:forEach>
		</table>
		<table>
			<tr>
			  <td align="center">${pagingHtml}</td>
			</tr>
			<tr>
		    <c:if test="${!empty userId}">
				<td align="right">
				<input type="button" onclick="location.href='insert.do'" value="사용자 등록" class="innerBtn">
				<input type="button" onclick="location.href='self/corpList.do'" value="자가진단 리스트" class="innerBtn1">
				</td>
			</c:if>
			</tr>
		</table>
	</c:if>

</body>
</html>