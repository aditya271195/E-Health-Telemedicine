<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
body{
background: url(img/doc7.jpg);

background-size:cover;
}
</style>

<title>Insert title here</title>
<!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />


<!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>

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
             <ul class="nav navbar-nav">
              <li><a href="<%=request.getContextPath() %>/DoctorControl?action=viewque" >View Questions</a></li>
      <li><a href="<%=request.getContextPath() %>/DoctorControl?action=schedule">View Schedule</a></li>
            </ul>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span>
                        <strong>Welcome <%=session.getAttribute("email") %></strong>
                        <span class="glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul class="dropdown-menu">
                        
            <li><a href="<%=request.getContextPath() %>/DoctorControl?action=logout"">Sign Out <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
                    </ul>
                </li>
            </ul>
            
        </div>

  
 </div>
    
    </nav>

<!-- <div class="container-fluid" style="padding-top:71px;">
   
  <div class="row" >
    <div class="col-lg-3" style="height:600px; background-color:#ccccff;"  >
<div class="panel panel-default" style="background-color:#ccccff;" >


<div align="left" class="panel-heading"> 
<a href="<%=request.getContextPath() %>/DoctorControl?action=profilepic">Upload/Change Profile Photo</a></div>
<div align="left" class="panel-heading"> 
<a href="<%=request.getContextPath() %>/DoctorControl?action=viewque">View Questions</a></div>
<div align="left" class="panel-heading"> 
<a href="<%=request.getContextPath() %>/DoctorControl?action=schedule">View Schedule </a></div>

</div>
</div>
<div class="col-lg-9" style="height:600px; background-color:#ccccff;" >
<img  src="img/doc1.jpg">
</div>

</div></div> -->

</body>
</html>