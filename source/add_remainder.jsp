<%-- 
    Document   : add_remainder
    Created on : Jan 28, 2023, 3:08:43 PM
    Author     : Java
--%>

<%@page import="java.awt.TrayIcon.MessageType"%>
<%@page import="com.smoketurner.notification.api.Notification"%>
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
            body {
background: #4B79A1;
background: -webkit-linear-gradient(to left, #4B79A1 , #283E51);
background: linear-gradient(to left, #4B79A1 , #283E51);        
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
					        <li><a class="menu" href="user_send.jsp" style="font-size: 25px;color: black">Send Message</a></li>
					        <li><a class="menu" href="u#" style="font-size: 25px ;color: black">View Response</a></li>
                                                    <li><a class="menu" href="#.jsp" style="font-size: 25px ;color: black">Add Remainder</a></li>
                                                    <li><a class="menu" href="index.html" style="font-size: 25px ;color: black">Logout</a></li>
					       
					        
					      </ul>
					    </div><!-- /navbar-collapse -->
					  </div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header> <!-- end of header area -->
        
        <div class="container" style="color: #e189debf;width: 500px;">
        <div class="page-wrapper  " style="color: #e189debf;">
        <div class="wrapper wrapper--w200"     style="padding-top: 200px;">
            <div class="card card-5" style="width: 550px;margin-top: 20px;margin-bottom: 10px;background: #ffffff96;margin-left: -170px">
                    <div class="card-body" style=" width: 100% ;height: auto;margin-top: -50px;">
                        <form action="alertalarm.jsp" method="post">
    
      <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
          <label for="name" style="color:black;font-size:20px ;margin-top: 50px">Tablet Name</label>
      </div>
          <div class="col-75" style="color:black;font-size: 15px">
              <input type="text" id="fname" name="tname"  size="40px">
      </div>
    </div>
                              
      <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
       <label for="name" style="color:black;font-size:20px ;margin-top: 50px">Choose Tablet Type</label>


      </div>
          <div class="col-75" style="color:black;font-size: 15px">
              <select name="chtablet" >
  
  <option value="capsule" name="chtablet">capsule</option>
  <option value="Tablet"name="chtablet">Tablet</option>
  <option value="Tonic"name="chtablet">Tonic</option>
</select>
      </div>
    </div>
                            <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
          <label for="name" style="color:black;font-size:20px ;margin-top: 50px">Time Set</label>
      </div>
          <div class="col-75" style="color:black;font-size: 15px">
              <input type="time" id="fname" name="time"  size="40px">
      </div>
    </div>
                                <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
          <label for="name" style="color:black;font-size:20px ;margin-top: 50px">Date</label>
      </div>
          <div class="col-75" style="color:black;font-size: 15px">
              <input type="date" id="fname" name="date"  size="40px">
      </div>
    </div>
       
  <div style="margin-left: -100px; margin-top: 20px; padding: 20px">
                                <button class="btn btn--radius-2 btn--red" type="submit" style="background: #121020;font-size: 15px;color: white;    margin-left: 200px; ">Submit</button>
              </div>              
  </form>
         
<!--                             <div style="margin-left: 100px; margin-top: -80px; padding: 20px"  >
                              <a href="add_tablet">   <button class="btn btn--radius-2 btn--red" type="submit" style="background: #121020;font-size: 15px;color: white;    margin-left: 200px; ">Add</button></a>
                        </div>           -->
            </div>
        </div>
        </div>
</div>
</div>
        
       
    </body>
</html>
