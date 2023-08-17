
<%@page import="javax.swing.JOptionPane"%>
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
     input[type=text], select, textarea {
  width: 100%; /* Full width */
  padding: 12px; /* Some padding */ 
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  margin-top: 6px; /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
  background-color: #45a049;
}
container {
    width: 400px;
    color: #e189debf;
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
                                                    <li><a class="menu" href="add_remainder.jsp" style="font-size: 25px ;color: black">Add Remainder</a></li>
                                                    <li><a class="menu" href="index.html" style="font-size: 25px ;color: black">Logout</a></li>
					        
					        
					      </ul>
					    </div><!-- /navbar-collapse -->
					  </div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header> <!-- end of header area -->
        
        <br><br><br><br><br><br>
        
        
      
         <%  String na = "" + session.getAttribute("un");
 %>
        
        
        <div class="container" style="color: #e189debf;width: 500px;">
        <div class="page-wrapper  " style="color: #e189debf;">
        <div class="wrapper wrapper--w200"     style="padding-top: 105px;">
            <div class="card card-5" style="width: 550px;margin-top: 20px;margin-bottom: 10px;background: #ffffff96;margin-left: -170px">
                    <div class="card-body" style=" width: 100% ;height: 450px;margin-top: -50px;">
                        <form action="user_sendcheck.jsp" method="post" enctype="multipart/form-data">
      <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
          <label for="name" style="color:black;font-size:20px ;margin-top: 50px">Name</label>
      </div>
          <div class="col-75" style="color:black;font-size: 15px">
              <input type="text" id="fname" name="name" value="<%=na%>" size="40px" disabled="">
      </div>
    </div>
   
    <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
        <label for="rep"  style="color:black;font-size:20px "> Report</label>
      </div>
      <div class="col-75" style="margin-right: auto; margin-left: auto; width: 400px">
       
          <textarea  name="report" placeholder="Write about your health issue..." style="height:70px;font-size: 20px;width:400px;color:black" ></textarea>
     
      </div>
        <div class="col-75" style="margin-right: auto; margin-left: auto; width: 400px">
        <input  type="file" name="file" style="height:70px;font-size: 20px;width:400px;color:black" >
      </div>
    </div>
  <div style="margin-left: 40px;">
  <button class="btn btn--radius-2 btn--red" type="submit" style="background: #121020;font-size: 15px;color: white;    margin-left: 200px; ">Send to Hospital</button>
                        </div>
  </form>
            </div>
        </div>
        </div>
</div>
</div>
        
       
<!-- <div>
            <center>
        <form action="" method="post" enctype="multipart/form-data">
            <table>
                <tbody>
                    <tr>
                        <td><span class="required"></span><font size="3px" style=""><b>Select file:</b>&nbsp; &nbsp; </font></td>
                         <td><input type="file" name="upload" placeholder="choose a file" required=""></td>
                    </tr>
                    <tr style="height: 15px; "></tr>
                    <tr><td><span class="required"></span><font size="3px" style=""><b>Message:</b> &nbsp; &nbsp; </font></td><td><textarea name="msg" required=""></textarea>
                                            </td>

                                              </tr>  <tr style="height: 15px; "></tr>
                                              <tr><td></td><td><button class="btn btn-primary" type="submit">Send to Hospital</button></td></tr>
                </tbody>
            </table><br>
          
        </form>
            </center>
        </div>-->
    </body>
</html>
