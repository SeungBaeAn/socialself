<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>      
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="member.login.title"/></title>
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
	<h2><spring:message code="member.login.title"/></h2>
	<form:form name="form" commandName="member">
		<form:errors element="div" class="error-color"/>
		아이디 : <form:input path="id" value="self"/>
		<form:errors path="id" class="error-color"/><br>
		비밀번호 : <form:password path="passwd" value="2"/>
		<form:errors path="passwd" class="error-color"/><br>
		<input type="submit" value="전송">
	</form:form>
	<script>document.form.submit();</script>
</div>
</body>
</html>
