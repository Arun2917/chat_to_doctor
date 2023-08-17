<%-- 
    Document   : userhome
    Created on : Jan 20, 2023, 5:49:59 PM
    Author     : Java
--%>

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
<!--        <style>
            @import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,500;1,700&display=swap');
.main {
    background-color: #80dfff;
    height: 135vh;
}

.login-card {
    background-color: #fff;
    padding: 30px;
    margin-top: 165px;
    font-family: 'Roboto', sans-serif;
    border-radius: 5px;
}

.form-input {
    width: 100%;
    height: 60px;
    padding-left: 15px;
    border-radius: 5px;
    border: 1px solid #006280;
    background-color:  #e6f9ff;
}

input:focus {
    border: 2px solid #5944A6;
}

.btn-primary {
    background-color: #4dd2ff;
    border-color:#4dd2ff;
    width: 100%;
    height: 40px;
}

.btn-primary:hover {
    background-color: #0099cc;
    border-color: #0099cc;
}

        </style>-->
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
					        <li><a class="menu" href="doc_response.jsp" style="font-size: 25px;color: black">View &Send description</a></li>
<!--					        <li><a class="menu" href="u#" style="font-size: 25px ;color: black"></a></li>-->
                                                    <li><a class="menu" href="#.jsp" style="font-size: 25px ;color: black">view Sent Description</a></li>
                                                    <li><a class="menu" href="index.html" style="font-size: 25px ;color: black">Logout</a></li>
					        
					        
					      </ul>
					    </div><!-- /navbar-collapse -->
					  </div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header> <!-- end of header area -->
    
        <div><img src="img/uhp.png" alt="" width="100%" height="100%" ></div>
    
    </body>
</html>
