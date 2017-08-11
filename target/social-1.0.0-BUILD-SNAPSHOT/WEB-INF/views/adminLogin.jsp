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
<style>

	.error-color{
		color:red;
	}
	.panel {
		margin: auto;
		width: 400px;
		align-self: center;
	}
 	.panel1 {
		margin: auto;
		width: 400px;
		padding-bottom:1px;
		align-self: center;
	}
 	.panel2 {
		margin: auto;
		width: 400px;
		padding-top:1px;
		align-self: center;
	} 
 	.panel3 {
		margin: auto;
		width: 120px;
		padding-top:2px;
		text-align: center;
		
	}  	 	               

.txt_blue{color:#0b7cc1;}
.inner{position:relative; width:1355px; margin:0 auto;}
.header{border-bottom:1px solid #a7a7a7;}
.header .inner{padding:0px 0;}/* 헤더 높이 조정 : padding값을 수정해주세요 */
.header h1{font-size:30px; color:#373737; letter-spacing: -0.03em;}
.header p{position:absolute; top:40%; right:0; margin-top:-23px;}
.innerBtn{width:80px; padding:2;background:#f5821f; color:#fff !important;}
</style>

</head>
<body>
	

    <form:form name="form" commandName="member">
	  <header class="header">
            <div class="inner">
            <h1><strong class="txt_blue">SE 자가진단 KIT</strong> </h1>
             <p><img src="./images/ico_social.gif" alt="한국사회적기업지흥원" /></p>
            </div>
       </header>
         <div class="panel"> 
         <h4><strong class="txt_blue">SE 자가진단 KIT 로그인</strong> </h4> 
         </div>
            <div class="panel1">
               <table> 
                     
                  <tr>
                  <form:errors element="div" class="error-color"/>
                    <td width="80">
                      <label for="loginId" >아이디 </label> 
                    </td>  
                      <td width="320"><form:input path="id" required="required" />
                      <form:errors path="id" class="error-color"/>
                     </td>
                    
                    </tr>

                    <tr>
                       <td width="80"><label for="loginPassword" >비밀번호  </label>
                      </td> 
                       <td width="320"><form:password path="passwd" required="required" />
                       <form:errors path="passwd" class="error-color"/>
                      </td>
                   
                    </tr>
                    
                     </table> 
                      </div>
                    <div class="panel3" style="text-align:right;">
                     <button type="submit" class="innerBtn">로그인</button>
                 </div>
              
              
       </form:form>
        
        
  </body>
</html>      