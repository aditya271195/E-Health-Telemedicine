<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />


<%-- Write Query --%>
<sql:query dataSource="${ds }" var="result">
select * from doctor where category=<c:out value="${param.category }"></c:out>
</sql:query>
<div class="form-group">
Select Doctor:<select name="doctor" class="form-control">

<c:forEach var="row" items="${result.rows }">
<option value="<c:out value="${row.id }"></c:out>"><c:out value="${row.nam}"></c:out></option>

</c:forEach>
</select>
</div>

</body>
</html>