<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>

</head>
<body>

<%-- Step 1 - Create DataSourse and Connect --%>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ehealth" 
user="root" password=""  />


 <%-- Write Query --%>
<sql:query dataSource="${ds }" var="result">
select * from userque
</sql:query> 


<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
    <ul class="nav navbar-nav navbar-right">
    <font color="#f76d04" face="ALGERIAN" >
<b><h1> E-Health & Telemedicine</h1></b></font>
    
    </ul>


    </div>
  

<div class="collapse navbar-collapse">
            
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span>
                        <strong>Welcome <%=session.getAttribute("email") %></strong>
                        <span class="glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul class="dropdown-menu">
                        
            <li><a href="<%=request.getContextPath() %>/UserControl?action=logout">Sign Out <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
                    </ul>
                </li>
            </ul>
        </div>

  
 </div>
    
    </nav>




<div class="container-fluid" style="padding-top:71px;">
  
  <div class="row" >
    <div class="col-lg-3" style="height:600px; background-color:#ccccff;"  >
<div class="panel panel-default" style="background-color:#ccccff;" >
    
 <div align="left" class="panel-heading"> 
<a href= "<%=request.getContextPath() %>/UserControl?action=book_apt" >Book Appointment</a>
</div>

<div align="left" class="panel-heading"> 
<a href= "<%=request.getContextPath() %>/UserControl?action=postque" >Ask Questions to Doctor</a>
</div>

<div align="left" class="panel-heading"> 
<a href= "<%=request.getContextPath() %>/UserControl?action=viewprofile" >View Doctors Information</a>
</div>


<div align="left" class="panel-heading"> 
<a href= "<%=request.getContextPath() %>/UserControl?action=checkup" >Online CheckUp</a>
</div>

<div align="left" class="panel-heading"> 
<a href= "<%=request.getContextPath() %>/UserControl?action=viewans&qid=<c:out value="${id }"></c:out>" >View Answer</a>
</div> </div>
    </div>
    <div class="col-lg-9" style="height:600px; background-color:#ccccff;" >
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/key3.jpg" >
    </div>

    <div class="item">
      <img src="img/key4.jpg" >
    </div>

   
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
  </div>
</div>


</body>
</html>