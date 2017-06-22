<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/style1.css">
  
<style type="text/css">
body{
background: url(img/doc5.jpg);
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
          <h2 align="center">Doctor Login</h2><br>
          <form method="post" action="<%=request.getContextPath()%>/Login" >
<font color=black">
<c:out value="${msg }"></c:out></font>


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
<a href= "<%=request.getContextPath() %>/DocRegistration"  class="btn btn-danger">SignUP</a></font>
</div>
    </form>      

          </div>
          </div>
          </div>


 
 <!-- 
 <div class="container">
        <div class="row">
            <div class="wrap-login col-md-4 col-md-offset-4">
        <h2 style="margin-bottom: 30px;" >Login</h2>


        <form action="<%=request.getContextPath()%>/Login" method="POST"> 
        <input type="hidden" name="action" value="login_form" >

    <label for="Username">Username</label>
    <input type="text" class="form-control"  name ="name" placeholder="Username">
  <div class="form-group">
    <label for="Password">Password</label>
    <input type="password" class="form-control" name="password" placeholder="Password">
  </div>

  <input type="submit" name="submit" value="login" class="btn btn-default">
  
</form>
      </div>
        </div>
     </div>
 </div>   -->
 
</body>
</html>