<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="member.delete.title"/></title>
<style type="text/css">
	div{
		width:600px;
		margin:0 auto;
	}
	.error-color{
		color:red;
	}
</style>
</head>
<body>
<div>
	<h2><spring:message code="member.delete.title"/></h2>
	<form action="deletePro.do">
		<input type="hidden" name="id" value="${param.id}">
		<input type="submit" value="삭제할까요?">
		<input type="button" value="취소" onclick="location.href='list.do'">
	</form>
</div>
</body>
</html>