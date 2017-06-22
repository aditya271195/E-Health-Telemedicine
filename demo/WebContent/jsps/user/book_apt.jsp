<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
    <%@ page import ="com.beans.User" %>
<%@ page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">

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
<title>Insert title here</title>
<script type="text/javascript">

function ajaxDD(category){
	if(typeof XMLHttpRequest!= "undefined"){
		xmlHttp1=new XMLHttpRequest();
	}else if(window.ActiveXObject)
		{
		xmlHttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
	if(xmlHttp1==null){
		alert("Browser does not support XMLHTTP Request");
		return
	}
	var url="jsps/user/fetch_doc.jsp";
	url +="?category=" +category;
	xmlHttp1.onreadystatechange=statechange1;
	xmlHttp1.open("POST",url,true);
	xmlHttp1.send();
}
function statechange1(){
	if(xmlHttp1.readyState==4|| xmlHttp1.readyState=="complete"){
		var strResponse=xmlHttp1.responseText;
		document.getElementById("doctor").innerHTML=strResponse;
	}
}
</script>
</head>
<body style="background-color:#3a5684;">

<c:import url="../user_header.jsp"> </c:import><br><br>
<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />

<%-- Write Query --%>
<sql:query dataSource="${ds }" var="result">
select * from category
</sql:query>


 <div class="container">
         <div class="row">
          <div class="wrap-login col-md-4 col-md-offset-4">   
          

<form method="post" action="<%=request.getContextPath() %>/UserControl">
<input type="hidden" name="action" value="book_appointment"/>
<font color="#ed4725" face="Georgia"><h1 align="center"> Book Appointment</h1> </font><br>

<div class="form-group">
 <label for="patientname"><font color="#6999e5"> <span class="glyphicon glyphicon-user"></span>  Patient Name</font></label>
 

<input type="text" name= "name"  class="form-control"  placeholder="Enter Patient`s Name" /> 
</div>
<div class="form-group">
<label for="usrname"><font color="#6999e5"><span class="glyphicon glyphicon-earphone"></span>   Contact</font></label>
<input type="text" name= "contact" class="form-control" placeholder="Enter Contact here" />
</div>


<div class="form-group">
<label for="category"><font color="#6999e5">
Select Category: </font></label>

<select name="category" onchange="ajaxDD(this.value)" class="form-control">
<option>---Select Category----</option>
<c:forEach var="row" items="${result.rows }" >

<option value="<c:out value="${row.id }"></c:out>"><c:out value="${row.name }"></c:out></option>


</c:forEach>

</select></div>
<div id="doctor" class="form-group">
<label for="category"><font color="#6999e5"><span class="glyphicon glyphicon-plus"></span>  Select Doctor: </font></label>


<select name="doctor" class="form-control">

</select>

</div>
					 <%
                        User p = new User();
                        Date d1=p.fetchDate(1);
                        DateFormat df = DateFormat.getDateInstance();
                        %>
                        
                        <div class="form-group">
                        <label for="category"><font color="#6999e5"><span class="glyphicon glyphicon-calendar"></span> Select Date:</font></label>
 						 <select name="date" class="form-control">
                         <option value="<%=df.format(new Date()) %>"><%=df.format(new Date()) %></option>
                         <option value="<%=df.format(d1) %>"><%=df.format(d1) %></option>
                         </select></div>
                         
                         
                         <div class="form-group">
                          <label for="category"><font color="#6999e5"><span class="glyphicon glyphicon-hourglass"></span> Select Time Slot:</font></label>
                        
                         <select name="time" class="form-control">
                         <option value="slot1">10AM - 1PM</option>
                         <option value="slot2">2PM - 5PM</option>
                         </select></div><br>

<div class="form-group">
<input type="submit" name="submit" value="Book Appointment" class="btn btn-success btn-block"/></div>
<br>
</form>
</div>
</div>
</div>
</body>
</html>