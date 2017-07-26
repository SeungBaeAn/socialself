<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>      
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	:host {
		width: 100%;
		height: 100vh;
		display: flex;
	}

	.panel {
		margin: auto;
		width: 350px;
		align-self: center;
	}
                
	.panel-default>.panel-heading {
		background-color: #86c1e6;
		padding-bottom: 15px;
		text-align: center;
	}

</style>
</head>
<body>
	
<div class="panel panel-default">
        <form:form name="form" commandName="member">
                <div class="panel-heading"><img id="logo" src="../images/social_logo.png" /></div>
                <div class="panel-body">

                    <div class="form-group">
                        <label for="loginId">아이디 확인</label>
                         <form:input path="id"/>
                    </div>
                    <div class="form-group">
                        <label for="loginPassword">비밀번호 확인</label>
                        <form:password path="passwd" />
                    </div>
                        <button type="submit" class="btn btn-primary">로그인</button>
              
                </div>
           </form:form>
        </div>
        
  </body>
</html>      