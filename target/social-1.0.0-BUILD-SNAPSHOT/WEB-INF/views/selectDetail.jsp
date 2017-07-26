<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="member.detail.title" arguments="${member.id}"/></title>
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}
</style>
</head>
<body>
<div>
	<h2><spring:message code="member.detail.title" arguments="${member.id}"/></h2>
	<p>
		아이디 : ${member.id}<br>
		비밀번호 : ${member.passwd}<br>
		이름 : ${member.name}<br>
		가입날짜 : ${member.reg_date}<br>
		<a href="list.do">목록보기</a>
		<a href="update.do?id=${member.id}">수정</a>
		<a href="delete.do?id=${member.id}">삭제</a>
	</p>
</div>
</body>
</html>