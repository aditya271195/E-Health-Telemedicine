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
<body style="background-color:#3a5684;">
<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />
<c:import url="../doc_header.jsp"> </c:import><br><br>
<%-- Write Query --%>
<sql:query dataSource="${ds }" var="result">
select * from book_appt
</sql:query>
<div align="center">
<font color="#f7c954"> <h1> E-Health & Telemedicine</h1></font><br><br>
                    </div>      
                      



<div align="center">
 
                             <font color="white" size="4"> 
<c:forEach var="row" items="${result.rows }"> 
                    <%-- Write Query --%>
<sql:query dataSource="${ds }" var="result1">
select nam from doctor where doctor.id=<c:out value="${row.doctor }"></c:out>
</sql:query>     

<c:if test="${row.date==a || row.date==b}">

<c:out value="${row.name}"></c:out>  has an appointment at <c:choose>
<c:when test='${row.time=="slot1" }'>
<c:out value="10am to 1pm"></c:out> 
 with <c:forEach var="row1" items="${result1.rows }"> 
 
Dr. <c:out value="${row1.nam }"></c:out>
 
 
  </c:forEach> on <c:out value="${row.date }"></c:out><br><br>

</c:when>

<c:otherwise>

<c:out value="2pm to 5pm"></c:out>  with <c:forEach var="row1" items="${result1.rows }"> 
 
 Dr.<c:out value="${row1.nam }"></c:out></c:forEach> on <c:out value="${row.date }"></c:out><br><br>
</c:otherwise>
 

</c:choose>
 <br>

</c:if>
</c:forEach><br><br></font></div>
</body>
</html>