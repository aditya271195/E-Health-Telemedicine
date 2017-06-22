<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Insert title here</title>

<style type="text/css">
body{
background: url(img/cover.jpg);
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>


<body >
<!--


<font color="#f76d04" face="ALGERIAN" border="1">
<b><h1 align="center"> E-Health & Telemedicine</h1></b></font>






<div align="left"> 
<font color="#f76d04" face="ARIAL BLACK"><b>Normal Users:</b></font><a href="<%=request.getContextPath() %>/Registration" class="btn btn-danger" >Register here</a>
<br><br>
<font color="#f76d04" face="ARIAL BLACK"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Doctors:</b></font><a href="<%=request.getContextPath() %>/DocRegistration" class="btn btn-danger" >Register here</a>
</div>

<div align="right">
<a href="<%=request.getContextPath() %>/Login" class= "btn btn-danger" >Doctor Login</a><br><br>
<a href="<%=request.getContextPath() %>/Login1" class= "btn btn-danger" >User Login</a><br><br>
<a href= "<%=request.getContextPath() %>/Controller?action=about_us" class="btn btn-danger" >About Us</a>
<br><br>
<a href= "<%=request.getContextPath() %>/Controller?action=contact_us" class="btn btn-danger" >Contact Us</a>
</div><br>
  -->
  
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
      <font color="#f76d04" face="ALGERIAN" >
<b><h1 align="center"> E-Health & Telemedicine</h1></b></font>

    </div>
  
    <ul class="nav navbar-nav">
    <li class="dropdown" >
      
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" ><span class="glyphicon glyphicon-log-in"></span> Login
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="<%=request.getContextPath() %>/Login">Doctor Login</a></li>
      <li><a href="<%=request.getContextPath() %>/Login1">User Login</a></li>
        </ul>
      </li>
      
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>Registration
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
       <li><a href="<%=request.getContextPath() %>/Registration">User Registration</a></li>
            <li><a href="<%=request.getContextPath() %>/DocRegistration">Doctor Registration</a></li>
        </ul>
      </li>
      
      <li><a href="<%=request.getContextPath() %>/Controller?action=contact_us">Contact us</a></li>
      <li><a href="<%=request.getContextPath() %>/Controller?action=about_us">About Us</a></li>
    </ul>
    </div>
  
</nav>


</body>
</html>