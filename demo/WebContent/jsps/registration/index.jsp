<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
body{
background: url(img/register.jpg);
 background-size:cover;
}
.wrap-login {
	margin-top: 55px;
	padding-bottom: 10px;
	margin-left:10px;
	background-color:#f7eba8;
	border: solid 1px #d0d0d0;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
}
</style>

</head>
<body>
<div align="center">

<c:import url="../header.jsp"> </c:import><br><br>
<!-- 
<div align="center">
<form method="post" action="<%=request.getContextPath()%>/Registration">
<input type="hidden" name="action" value="register_user"/>
<font color="black"><b>
Name:</b></font><br>
<input type="text" name= "name"  /><br>
 <c:out value="${msg1 }"/>
<BR><BR>
<font color="black"><b>
Email:</b></font><br>
<input type="email" name= "email" /><br>
 <c:out value="${msg2 }"/>
<BR><BR>
<font color="black"><b>
Password:</b></font><br>
<input type="password" name="password"/> <br>
<c:out value="${msg3 }"/>
<br><BR>
<font color="black"><b>
Confirm Password:</b></font><br>
<input type="password" name="repassword"  /><BR>
 <c:out value="${msg4 }"/>
<br><BR>
<font color="black"><b>
Code:</b></font><br>
<input type="text" name="code"/>&nbsp;&nbsp;&nbsp;&nbsp;<BR>
<c:out value="${msg5 }"></c:out>

<br><br><img src="<%=request.getContextPath() %>/CaptchaServlet"/>

<br><br>
<input type="submit" value="Sign Up"class="btn btn-success" />
<br><br>
<font color="red"><b>
If You are Registered User already then Login below:</b><br><br></font>
<a href="<%= request.getContextPath() %>/Login1" class="btn btn-success"> Login</a>



</form>
</div> -->


 <div class="container" >
         <div class="row">
          <div class="wrap-login col-md-4 col-md-offset-4">   
          
<form method="post" action="<%=request.getContextPath()%>/Registration">
<input type="hidden" name="action" value="register_user"/>
  
  
  <h2>User Registration</h2><br>
 <div class="form-group">
 <label for="usrname"><font color="#6999e5"> <span class="glyphicon glyphicon-user"></span>   Name</font></label>
 

<input type="text" name= "name"  class="form-control"  placeholder="Enter Name here" /> <br>
<font color="red" size="2"> 
<c:out value="${msg1 }"/></font>
<BR></div>


 <div class="form-group">
<label for="usrname"><font color="#6999e5"><span class="glyphicon glyphicon-envelope"></span>   Email</font></label>
<input type="email" name= "email" class="form-control"  placeholder="Enter Email "/> <br>
<font color="red" size="2"> 
<c:out value="${msg2 }"/></font></div>
<BR>
<div class="form-group">
              <label ><font color="#6999e5"><span class="glyphicon glyphicon-eye-open"></span>  Password</font></label>
<input type="password" name="password" class="form-control" placeholder="Enter Password"/> <br>
<font color="red" size="2"> 
<c:out value="${msg3 }"/></font></div>
<br>
<div class="form-group">
     <label ><font color="#6999e5"><span class="glyphicon glyphicon-eye-open"></span>   Confirm Password</font></label>
<input type="password" name="repassword" class="form-control"  placeholder="Confirm Password" /> <br>
<font color="red" size="2""> 
<c:out value="${msg4 }"/><br><br></font></div>
<div class="form-group">
 <label ><font color="#6999e5">Enter Captcha</font></label>
<input type="text" name="code" class="form-control"  placeholder="Enter Captcha"/>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<font color="red" size="2"> 
<c:out value="${msg5}"></c:out></font></div><br>
<div align="center"> <img src="<%=request.getContextPath() %>/CaptchaServlet"/></div><br>

<div class="form-group">
<input type="submit" value="Sign Up" class="btn btn-success btn-block"/></div>
<br>
</form>


If You are Registered Doctor already then Login below:<br><br>
<div align="center">
<a href="<%= request.getContextPath() %>/Login1" class="btn btn-success"> Login</a>
</div>


</div>
</div>
</div>
</body>
</html>