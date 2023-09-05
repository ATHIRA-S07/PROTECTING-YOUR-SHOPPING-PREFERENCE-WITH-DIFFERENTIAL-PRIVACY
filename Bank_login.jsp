<%-- 
    Document   : index
    Created on : 9 Apr, 2021, 5:00:44 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Fly Buy</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/x-icon" href="img/icon.png">
	  <link rel="stylesheet" href="assets/css/style.css">
	  <link rel="stylesheet" href="assets/css/style1.css">
          <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- Load Require CSS -->
        <link href="https://fonts.googleapis.com/css2? family=Dosis&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/custom.css">
    </head>
    <%
        if (request.getParameter("Failed") != null) {
    %>
    <script>alert('Login Failed');</script>
    <%            }
    %>
    <body style="background-color:pink;">
	<div class="flybuy">
		<div class="navbar">
			<img src="assets/img/1.png" width=150px height=100px style="background-color:pink;margin-left:-120px">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a  href="User_login.jsp">User</a></li>
				<li><a  href="Merchant_login.jsp">Merchant</a></li>
				<li><a class="active" href="Bank_login.jsp">Online Bank</a></li>
				<li><a href="Paymentapp_login.jsp">Payment Application</a></li>
			</ul>	
		</div>
	</div>
        <!-- Header -->
        
        <!-- Close Header -->
        <!-- Start Banner Hero -->
        
        
            <center><h1 class="feature-work-heading h2 py-3 semi-bold-600">Bank Login</h1></center><br><br>
            <div class="row pb-5">
                <div class="col-lg-5 px-5">
                    <center><img src="assets/img/banklogin.jpg" width="430" height="400" /></center>
                </div>
                <div class="col-lg-4">
                    <form class="contact-form row" method="post" action="bank" role="form">
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>User Name:</label>
                                <input type="text" class="form-control form-control-lg light-300" name="name" placeholder="Enter Your Username" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Password :</label>
                                <input type="password" class="form-control form-control-lg light-300" name="pass" placeholder="Enter Your Password" required="required" /><br>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-success rounded-pill px-md-5 px-4 py-2 radius-0 text-light light-300">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        
        
        <!-- End Footer -->
        <!-- Bootstrap -->
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <!-- Load jQuery require for isotope -->
        <script src="assets/js/jquery.min.js"></script>
        <!-- Isotope -->
        <script src="assets/js/isotope.pkgd.js"></script>
        <!-- Page Script -->
        <script>
            $(window).load(function () {
                // init Isotope
                var $projects = $('.projects').isotope({
                    itemSelector: '.project',
                    layoutMode: 'fitRows'
                });
                $(".filter-btn").click(function () {
                    var data_filter = $(this).attr("data-filter");
                    $projects.isotope({
                        filter: data_filter
                    });
                    $(".filter-btn").removeClass("active");
                    $(".filter-btn").removeClass("shadow");
                    $(this).addClass("active");
                    $(this).addClass("shadow");
                    return false;
                });
            });
        </script>
        <!-- Templatemo -->
        <script src="assets/js/templatemo.js"></script>
        <!-- Custom -->
        <script src="assets/js/custom.js"></script>

    </body>

</html>
