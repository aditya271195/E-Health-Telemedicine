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
<style type="text/css">



.wrap-login {
	
	padding-bottom: 10px;
	margin-left:400px;
	background-color:#f7eba8;
	border: solid 1px #d0d0d0;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
}
</style>
<title>Insert title here</title>
</head>
<body style="background-color:#3a5684;">

<c:import url="../user_header.jsp"> </c:import><br><br>

<div class="container" >
         <div class="row">
          <div class="wrap-login col-md-4 col-md-offset-4">   
<form method="post" action="<%=request.getContextPath() %>/UserControl" > 
<input type="hidden" name="action" value="post_question" />
<font color="#ed4725"> <h1 align="center">Ask to Doctor</h1>   </font>

<b>You can Post your Questions here:</b><br><br>
<div class="form-group">
<label for="usrname"><font color="#6999e5"><span class="glyphicon glyphicon-envelope"></span>   Email</font></label>
<input type="email" name= "email" class="form-control"  placeholder="Enter Email "/> <br>
</div>
<div class="form-group">
<label for="usrname"><font color="#6999e5"><span class="	glyphicon glyphicon-pencil"></span> Enter your Question:</font></label>
<textarea name="question"  class="form-control"></textarea>
</div>
<div class="form-group">
<input type="submit" value="Post Question" class="btn btn-success btn-block"/></div>
<br>


</form>
</div>
</div>
</div>

</body>
</html>