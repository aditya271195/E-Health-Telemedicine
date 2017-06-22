<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
  <%@ page import ="com.beans.User" %>
<%@ page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>                  
<c:import url="../user_header.jsp"> </c:import><br><br> 
<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />

<%-- Write Query --%>
<sql:query dataSource="${ds }" var="result">
select nam from doctor where id=<%=request.getAttribute("doctor") %> 
</sql:query>
<c:forEach var="row" items="${result.rows }">
<h1><%=request.getAttribute("name") %> ,Your Apointment is confirmed on <%=request.getAttribute("date") %> at     
 

 
 <% 
 String time  = (String)request.getAttribute("time");
 if(time.equals("slot1")){
	 time = "10.00AM to 1.00 PM";
 }
 else{
	 time = "2.00PM to 5.00 PM";
 }
 %>
 <%=time %> with <c:out value="${row.nam}"></c:out>  </h1> 
 </c:forEach>
 
</body>
</html>