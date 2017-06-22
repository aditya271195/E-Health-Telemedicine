<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body style="background-color:#3a5684;">

<c:import url="../user_header.jsp"> </c:import><br><br>
<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />


 <%-- Write Query --%>
<sql:query dataSource="${ds }" var="result1">
select * from userque
</sql:query> 


<%-- Write Query --%>
<sql:query dataSource="${ds }" var="result">
select * from answer
</sql:query>



<c:forEach var="row1" items="${result1.rows }"> 

<font color="#f7c954"> 

Q.<c:out value="${row1.question}"></c:out><br> </font>

 <c:forEach var="row" items="${result.rows }"> 
 
 <c:if test="${row1.id==row.userque_id  }">
 <font color="white">
Ans:<c:out value="${row.answer}"></c:out></font><br></c:if>
  </c:forEach><br><br>
</c:forEach> 
  
</body>
</html>