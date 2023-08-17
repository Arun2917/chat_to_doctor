<%-- 
    Document   : admin_userdetails
    Created on : Jan 27, 2023, 1:33:54 PM
    Author     : Java
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel = "icon" href = "https://simg.nicepng.com/png/small/951-9519227_doctor-symbol-clipart-homeopathy-doctor.png" type = "image/x-icon">
	<link rel="stylesheet" href="css/font-awesome.min.css"> 
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700' rel='stylesheet' type='text/css'>
	<script src="js/modernizr.js"></script>
        <style>
            @import 'https://fonts.googleapis.com/css?family=Open+Sans:600,700';

* {font-family: 'Open Sans', sans-serif;}

.rwd-table {
  margin: auto;
  min-width: 300px;
  max-width: 100%;
  border-collapse: collapse;
}

.rwd-table tr:first-child {
  border-top: none;
  background: #428bca;
  color: #fff;
}

.rwd-table tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  background-color: #f5f9fc;
}

.rwd-table tr:nth-child(odd):not(:first-child) {
  background-color: #ebf3f9;
}

.rwd-table th {
  display: none;
}

.rwd-table td {
  display: block;
}

.rwd-table td:first-child {
  margin-top: .5em;
}

.rwd-table td:last-child {
  margin-bottom: .5em;
}

.rwd-table td:before {
  content: attr(data-th) ": ";
  font-weight: bold;
  width: 120px;
  display: inline-block;
  color: #000;
}

.rwd-table th,
.rwd-table td {
  text-align: center;
}

.rwd-table {
  color: #333;
  border-radius: .4em;
  overflow: hidden;
}

.rwd-table tr {
  border-color: #bfbfbf;
}

.rwd-table th,
.rwd-table td {
  padding: .5em 1em;
}
@media screen and (max-width: 601px) {
  .rwd-table tr:nth-child(2) {
    border-top: none;
  }
}
@media screen and (min-width: 600px) {
  .rwd-table tr:hover:not(:first-child) {
    background-color: #d8e7f3;
  }
  .rwd-table td:before {
    display: none;
  }
  .rwd-table th,
  .rwd-table td {
    display: table-cell;
    padding: .25em .5em;
  }
  .rwd-table th:first-child,
  .rwd-table td:first-child {
    padding-left: 0;
  }
  .rwd-table th:last-child,
  .rwd-table td:last-child {
    padding-right: 0;
  }
  .rwd-table th,
  .rwd-table td {
    padding: 1em !important;
  }
}


/* THE END OF THE IMPORTANT STUFF */

/* Basic Styling */
body {
background: #4B79A1;
background: -webkit-linear-gradient(to left, #4B79A1 , #283E51);
background: linear-gradient(to left, #4B79A1 , #283E51);        
}
/*h1 {
  text-align: center;
  font-size: 2.4em;
  color: #f2f2f2;
}*/
.container {
  display: block;
  text-align: center;
}
h2 {
  display: inline-block;
  position: relative;
  text-align: center;
  font-size: 1.5em;
  color: #cecece;
}
h2:before {
  content: "\25C0";
  position: absolute;
  left: -50px;
  -webkit-animation: leftRight 2s linear infinite;
  animation: leftRight 2s linear infinite;
}
h2:after {
  content: "\25b6";
  position: absolute;
  right: -50px;
  -webkit-animation: leftRight 2s linear infinite reverse;
  animation: leftRight 2s linear infinite reverse;
}
@-webkit-keyframes leftRight {
  0%    { -webkit-transform: translateX(0)}
  25%   { -webkit-transform: translateX(-10px)}
  75%   { -webkit-transform: translateX(10px)}
  100%  { -webkit-transform: translateX(0)}
}
@keyframes leftRight {
  0%    { transform: translateX(0)}
  25%   { transform: translateX(-10px)}
  75%   { transform: translateX(10px)}
  100%  { transform: translateX(0)}
}


        </style>
    </head>
    <body>
        <header class="top-header" style="background: #fff !important;margin-top: -10px">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 header-logo">
					<br>
					<a href="index.html"><img src="img/logo.png" alt="" class="img-responsive logo"></a>
				</div>

				<div class="col-md-7">
					<nav class="navbar navbar-default">
					  <div class="container-fluid nav-bar">
					    <!-- Brand and toggle get grouped for better mobile display -->
					    <div class="navbar-header">
					      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
					    </div>

					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					      
					      <ul class="nav navbar-nav navbar-right">
<!--					        <li><a class="menu active" href="userhome.jsp"  style="font-size: 25px;color: black">Home</a></li>-->
					        <li><a class="menu" href="admin_userdetails.jsp" style="font-size: 25px;color: black;    font-family: 'BenchNine', sans-serif;">User details</a></li>
<!--					        <li><a class="menu" href="u#" style="font-size: 25px ;color: black"></a></li>-->
                                                    <li><a class="menu" href="#.jsp" style="font-size: 25px ;color: black;    font-family: 'BenchNine', sans-serif;">view Sent Description</a></li>
                                                    <li><a class="menu" href="index.html" style="font-size: 25px ;color: black;     font-family: 'BenchNine', sans-serif;   line-height: 20px;">Logout</a></li>
					        
					        
					      </ul>
					    </div><!-- /navbar-collapse -->
					  </div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header> <!-- end of header area -->
        
        
        <br><br> <br><br>
 <br><br>  <br><br>  
        <div class="container">
<!--<h1>Responsive Table</h1>-->
<h2 style="font-weight: bold; font-family: 'BenchNine', sans-serif;font-size: 25px ;  ">USER DETAILS</h2><br>  <br>  
<table class="rwd-table" style="height: auto; ">
    <tbody>
      <tr>
        <th>User Name</th>
        <th>Address</th>
        <th>Email</th>
        <th>Phone Number</th>
<!--        <th>Due Date</th>
        <th>Net Amount</th>-->
      </tr>
      <%
      PreparedStatement ps = Database.con().prepareStatement("Select * from user ");
      ResultSet rs = ps.executeQuery();
      while(rs.next()){
      %>
      <tr>
        <td>
         <%=rs.getString("name")%>
        </td>
        <td>
         <%=rs.getString("address")%>
        </td>
        <td>
            <%=rs.getString("email")%>
        </td>
        <td>
          <%=rs.getString("number")%>
        </td>
      
      </tr>
 <%
 }
 %>
   
    
    </tbody>
  </table>
 
</div>
    </body>
</html>
