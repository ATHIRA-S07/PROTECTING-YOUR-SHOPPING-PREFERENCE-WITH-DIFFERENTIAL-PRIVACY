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
        if (request.getParameter("Success") != null) {
    %>
    <script>alert('Login Success');</script>
    <%            }
    %>
        <!-- Header -->
        <body style="background-color:pink;">
	<div class="flybuy">
		<div class="navbar">
			<img src="assets/img/1.png" width=150px height=100px style="background-color:pink;margin-left:-120px">
			<ul>
				<li><a class="active" href="Payapp_Home.jsp">Home</a></li>
				<li><a  href="Purchase_details.jsp">Purchase Details</a></li>
				<li><a  href="Differential_privacy.jsp">Differential Privacy</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>	
		</div>
	</div>
                                
        <!-- Close Header -->
        <!-- Start Banner Hero -->
        
        
                <div class="row d-flex d-flex align-items-center">
                    <div class="col-lg-12">
                        <center><h1 class="feature-work-heading h2 py-3 semi-bold-600">Payment Application</h1></center><br>
                        <center><img src="https://www.lyra.com/in/wp-content/uploads/sites/8/2018/12/All-about-benefits-of-digital-payment.png" width="550" height="350" /></center>
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
