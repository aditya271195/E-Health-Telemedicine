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
<style type="text/css">

.wrap-login {
	margin-top: 55px;
	padding-bottom: 10px;
	margin-left:10px;
	background-color:#f7eba8;
	border: solid 1px #d0d0d0;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.13);
}
</style>
</head>
<body style="background-color:#3a5684;">
<c:import url="../doc_header.jsp"> </c:import><br><br>
<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />

<%-- Write Query --%>
<div align="center">
<font color="white" >
<h1>
<b>Write Your Answer Here:</b></h1>
</font><br></div>
<div class="container" >
         <div class="row">
          <div class="wrap-login col-md-4 col-md-offset-4">   
<form method="post" action="<%=request.getContextPath() %>/DoctorControl?action=post_ans"> 
 
<input type="hidden" name="qid" value="<c:out value="${id }"/>" />
<font color="red">
<h1>Post Answer</h1></font>

<div class="form-group">
<label for="usrname"><font color="#6999e5"><span class="	glyphicon glyphicon-pencil"></span> Enter your Answer:</font></label>
<textarea name="ans"  class="form-control"></textarea>
</div>
<div class="form-group">
<input type="submit" name="submit" value="Post Answer" class="btn btn-success btn-block"/></div>

</form>
</div></div></div>
</body>
</html>