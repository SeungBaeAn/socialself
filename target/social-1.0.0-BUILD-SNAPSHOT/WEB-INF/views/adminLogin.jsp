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
		width: 500px;
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
                            <header class="header">
                <div class="inner">
                    <p><img src="./images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
                </div>
                  <h4><strong class="txt_blue">SE 자가진단 KIT 로그인</strong> </h4>
            </header>
                <div class="panel-body">

                    <div class="form-group">
                        <label for="loginId">아이디 확인</label>
                         &nbsp;&nbsp;&nbsp;<form:input path="id" required="required"/>
                    </div>
                    <div class="form-group">
                        <label for="loginPassword">비밀번호 확인</label>
                        <form:password path="passwd" required="required"/>
                    </div><br />
                    <div class="form-group" style="text-align:center;">
                        <button type="submit" class="btn btn-primary">로그인</button>
              </div>
                </div>
           </form:form>
        </div>
        
  </body>
</html>      