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
<style type="text/css">
body{
background: url(img/dc.jpg);
background-repeat:no-repeat;
background-position:right;

 
}
</style>
</head>
<body>
<font color="#0363b7" face="ALGERIAN" border="1">
<b><h1 align="center"> E-Health & Telemedicine</h1></b></font>
<c:import url="../header.jsp"> </c:import><br><br>
<div align="center">
<font color="red"  face="Humnst777 BlkCn BT"><b>
You can Post your Questions here:</b></font>
<form method="post" action="<%=request.getContextPath() %>/Controller" > 
<input type="hidden" name="action" value="contact_us_form" />
<font color="#0363b7">
Email:</font><br>
<input type="email" name="email" /><br><br>
<font color="#0363b7">
Enter your Question:</font><br>
<textarea  name="question" ></textarea><br><br>
<input type="submit" name="submit" Value="Post Question" class="btn btn-danger"/>

</form>
</div>

<font color="#0363b7"  face="Humnst777 BlkCn BT"> 
You Can Contact us at following details:</font><br><br>
<font  color="red"  face="Humnst777 BlkCn BT"> 
Name:Aditya Shinde<br><br>
Contact:9768313665<br><br>
Email:adityashinde00@gmail.com<br><br><br><br>

Name:Sheetal Shirole<br><br>
Contact:8655345328<br><br>
Email:shirolesheetal@gmail.com
</font>



</body>
</html>