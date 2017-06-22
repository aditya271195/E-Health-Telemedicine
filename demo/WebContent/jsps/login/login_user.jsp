<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    
<title>Insert title here</title>
<style type="text/css">
body{
background: url(img/dc2.jpg);
 background-size:cover

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



<c:import url="../header.jsp"> </c:import><br><br>



<div class="container" >
         <div class="row">
          <div class="wrap-login col-md-4 col-md-offset-4">  
          <form method="post" action="<%=request.getContextPath()%>/Login1" >
<h2 align="center">User Login</h2>

<input type="hidden" name="action" value="login_form" />
          
          <div class="form-group">
<label for="usrname"><span class="glyphicon glyphicon-envelope"></span>  Email</label>
<input type="email" name= "email" class="form-control"  placeholder="Enter Email "/> <br>
</div>
<div class="form-group">
              <label ><span class="glyphicon glyphicon-eye-open"></span>  Password</label>
<input type="password" name="password" class="form-control" placeholder="Enter Password"/> <br>
</div>
<div class="form-group">
<input type="submit" value="Login" class="btn btn-success btn-block"/></div>
<br>
<div align="center">

Not Registered ?? Click below:<br><br>
<a href= "<%=request.getContextPath() %>/Registration" class="btn btn-danger">SignUP</a><br><br>
</div>
    </form>      

          </div>
          </div>
          </div>
     

</body>
</html>