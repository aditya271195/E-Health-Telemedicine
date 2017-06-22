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

<style>

.wrap-login {
	
	margin-bottom:40px;
	margin-left:400px;
	background-color:#f7eba8;
	border: solid 1px #d0d0d0;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
}


</style>
</head>
<body style="background-color:#3a5684;">
<c:import url="../user_header.jsp"> </c:import><br><br>
<font color="white">
<h1 align="center">Welcome to Online CheckUp</h1><br>

</font>
<!-- 
<div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">HTML</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>
    </ul>
  </div> -->
  
  <div class="container">
  <div class="row">
          <div class="wrap-login col-md-4 col-md-offset-4">   
<form method="post" action="<%=request.getContextPath() %>/UserControl"> <br><br>
<input type="hidden" name="action" value="check_up"/>
<div class="form-group">

 <label for="speciality"><font color="#6999e5"> Select Body Temperature:</font></label>
<select name="bt" class="form-control"> 

<option value="bt1">Range:[36.5 to 37.5 celsius (97.7 to 99.5 Fahrenheit )]</option>
<option value="bt2">Range:[>37.5 or 38.3 celsius (99.5 or 100.9 Fahrenheit)]</option>
<option value="bt3">Range:[>40.0 or 41.0 celsius(104.0 or 105.8 Fahrenheit)]</option>
</select><br><br>
</div>

<div class="form-group">

 <label for="speciality"><font color="#6999e5">Select Pulse Rate: </font></label>
<select name="pr" class="form-control"> 

<option value="pr1">60 to 80 BPM</option>
<option value="pr2">below 60 BPM </option>
<option value="pr3">80 to 100 BPM</option>
</select><br><br>
</div>

<div class="form-group">
<input type="submit" name="submit" value="Start CheckUP" class="btn btn-success btn-block"/></div>
<br>






</form>
</div></div></div>
</body>
</html>