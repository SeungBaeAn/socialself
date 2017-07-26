<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="member.update.title"/></title>
<style type="text/css">
	div {
		width:600px;
		margin:0 auto;
	}
	.error-color {
		color:red;
	}
</style>
</head>
<body>
<div>
	<h2><spring:message code="member.update.title"/></h2>
	<form:form action="update.do" commandName="memberCommand"><!-- memberCommand 자바빈 초기화 필요 -->
		아이디 : ${memberCommand.id}<br>
		비밀번호 : <input type="text" name="passwd">
		<form:errors path="passwd" class="error-color"/><br>
		이름 : <input type="text" name="name">
		<form:errors path="name" class="error-color"/><br>
		<input type="submit" value="보내기">
	</form:form>
</div>
</body>
</html>