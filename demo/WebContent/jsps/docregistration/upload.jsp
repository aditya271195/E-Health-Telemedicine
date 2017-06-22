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
<c:import url="../header.jsp"> </c:import><br><br>

<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />

<%-- Write Query --%>
<sql:query dataSource="${ds }" var="result">
select * from doctor 
</sql:query>
<h1>Upload Your Profile Picture</h1>
<c:out value="${message }"></c:out>
<form method="post" action="<%=request.getContextPath() %>/DocRegistration?action=file-upload" enctype="multipart/form-data">
<input type="hidden" name="action" value="file-upload"/>
<input type="file" name="file"/>
<br><br>
<input type="submit" value="upload"/><br><br>

<a href="<%=request.getContextPath() %>/Controller?action=upload_later">I will upload profile later</a>

</form>

</body>
</html>