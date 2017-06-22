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
body{
background: url(img/key2.jpeg);
 background-size:cover;


}
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
<body>

<c:import url="../header.jsp"> </c:import><br><br>
<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />

<%-- Write Query --%>
<sql:query dataSource="${ds }" var="result">
select * from category
</sql:query>
 <div class="container" >
         <div class="row">
          <div class="wrap-login col-md-4 col-md-offset-4">   
          <h1 align="center"><b> Doctor</b><br><b> Registration</b></h1>
<form method="post" action="<%=request.getContextPath()%>/DocRegistration">
<input type="hidden" name="action" value="register_doc"/>
 
 <div class="form-group">
 <label for="usrname"><font color="#6999e5"> <span class="glyphicon glyphicon-user"></span>   Name</font></label>
 

<input type="text" name= "nam"  class="form-control"  placeholder="Enter Name here" /> <br>
<font color="red" size="2"> 
<c:out value="${msg1 }"/></font>
<BR></div>
<div class="form-group">

 <label for="speciality"><font color="#6999e5">   Speciality</font></label>

<select name="category" class="form-control">
<option value="select speciality">--Select speciality--</option>
<c:forEach var="row" items="${result.rows }">

<option value="<c:out value="${row.id}"></c:out>"><c:out value="${row.name}"></c:out> </option>
</c:forEach>

</select>
<font color="red" size="2"> 
<c:out value="${msg8 }"/>
</font>
</div><br>

<div class="form-group">
 <label for="usrname"><font color="#6999e5"><span class="glyphicon glyphicon-education"></span>    Degree</font></label>

<input type="text" name= "degree" class="form-control"   placeholder="Enter Degree here" /> <br>
<font color="red" size="2"> 
<c:out value="${msg5 }"/>
</font></div>
<br>
<div class="form-group">
<label for="usrname"><font color="#6999e5"><span class="glyphicon glyphicon-earphone"></span>   Contact</font></label>
<input type="text" name= "contact" class="form-control" placeholder="Enter Contact here" /> <br>
<font color="red" size="2"> 
<c:out value="${msg6 }"/></font></div>
<br>
 <div class="form-group">
<label for="usrname"><font color="#6999e5"><span class="glyphicon glyphicon-envelope"></span>   Email</font></label>
<input type="email" name= "email" class="form-control"  placeholder="Enter Email "/> <br>
<font color="red" size="2"> 
<c:out value="${msg2 }"/></font></div>
<BR>
<div class="form-group">
              <label ><font color="#6999e5"><span class="glyphicon glyphicon-eye-open"></span>  Password</font></label>
<input type="password" name="password" class="form-control" placeholder="Enter Password"/> <br>
<font color="red" size="2"> 
<c:out value="${msg3 }"/></font></div>
<br>
<div class="form-group">
     <label ><font color="#6999e5"><span class="glyphicon glyphicon-eye-open"></span>   Confirm Password</font></label>
<input type="password" name="repassword" class="form-control"  placeholder="Confirm Password" /> <br>
<font color="red" size="2""> 
<c:out value="${msg4 }"/><br><br></font></div>
<div class="form-group">
 <label ><font color="#6999e5">Enter Captcha</font></label>
<input type="text" name="code" class="form-control"  placeholder="Enter Captcha"/>&nbsp;&nbsp;&nbsp;&nbsp;<br>
<font color="red" size="2"> 
<c:out value="${msg7}"></c:out></font></div><br>
<div align="center"> <img src="<%=request.getContextPath() %>/CaptchaServlet"/></div><br>

<div class="form-group">
<input type="submit" value="Sign Up" class="btn btn-success btn-block"/></div>
<br>
<font color="white"> 
If You are Registered Doctor already then Login below:<br><br>
<div align="center">
<a href="<%= request.getContextPath() %>/Login" class="btn btn-success"> Login</a>
</div>
</font>


</form>
</div> 
</div>
</div>


         <!-- 
       
       <div class="container" >
         <div class="row">
          <div class="wrap-login col-md-4 col-md-offset-4">
          
          <form method="post" action="<%=request.getContextPath()%>/DocRegistration">
          
          <input type="hidden" name="action" value="register_doc"/>
           <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Name</label>
              <input type="text" class="form-control" name="name" placeholder="Enter Name here"><br>
              <font color="red" size="2"> 
               <c:out value="${msg1 }"/></font>
            </div>
            <div class="form-group">
            
            <span class="glyphicon glyphicon-user"></span>
            Speciality:<select name="category" class="form-control">
<option>--Select speciality--</option>
<c:forEach var="row" items="${result.rows }">

<option value="<c:out value="${row.id}"></c:out>"><c:out value="${row.name}"></c:out> </option>
</c:forEach>
</select>

</div>
             <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Degree</label>
              <input type="text" class="form-control" name="degree" placeholder="Enter Degree"><br>
              <font color="red" size="2"> 
               <c:out value="${msg5 }"/></font>
            </div>
             <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Contact</label>
              <input type="text" class="form-control" name="contact" placeholder="Enter Contact"><br>
              <font color="red" size="2"> 
               <c:out value="${msg6 }"/></font>
            </div>
            
            <div class="form-group">
              <label ><span class="glyphicon glyphicon-user"></span> Email</label>
              <input type="text" class="form-control" name="email" placeholder="Enter email"><br>
              <font color="red" size="2"> 
               <c:out value="${msg2 }"/></font>
            </div>
            <div class="form-group">
              <label ><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" name="password" placeholder="Enter password"><br>
              <font color="red" size="2"> 
               <c:out value="${msg3 }"/></font>
            </div>
              <div class="form-group">
              <label ><span class="glyphicon glyphicon-eye-open"></span>Confirm Password</label>
              <input type="text" class="form-control" name="repassword" placeholder="Confirm password"><br>
              <font color="red" size="2"> 
               <c:out value="${msg4 }"/></font>
            </div>
            
            <div class="form-group">
             <label ><span class="glyphicon glyphicon-eye-open"></span>I am not Robot!!</label>
              <input type="text" class="form-control"  name="code"/><br>
            <font color="red" size="2"> 
               <c:out value="${msg7 }"/></font>
            </div>
            <div class="form-group" align="center">
            <img src="<%=request.getContextPath() %>/CaptchaServlet"/>
            </div>
            <div>
            <input type="submit" name="submit" value="Sign Up"  class="btn btn-success btn-block"/>
              </div>
          </form>
       </div>
 </div>
 </div> -->
</body>
</html>