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
	<link href="https://fonts.googleapis.com/css2? family=Dosis&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/custom.css">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        
    </head>
    <body style="background-color:pink;">
	<div class="flybuy">
		<div class="navbar">
			<img src="assets/img/1.png" width=150px height=100px style="background-color:pink;margin-left:-120px">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a class="active" href="User_login.jsp">User</a></li>
				<li><a href="Merchant_login.jsp">Merchant</a></li>
				<li><a href="Bank_login.jsp">Online Bank</a></li>
				<li><a href="Paymentapp_login.jsp">Payment Application</a></li>
			</ul>	
		</div>
	</div>
        
        
            
            <div class="row pb-3 py-3 px-5" >
                <div class="col-lg-5">
                    <img src="assets/img/userreg.png" width="500" height="500" />
                </div>
                <div class="col-lg-4 ">
                    <form class="contact-form row" method="post" action="user_reg" role="form">
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Name :</label>
                                <input type="name" class="form-control form-control-lg light-300" name="username" placeholder="Enter Your Name" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Email :</label>
                                <input type="email" class="form-control form-control-lg light-300" pattern="[^@\s]+@[^@\s]+\.[^@\s]+" title="Invalid email address" name="email" placeholder="Enter Your Email" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Phone :</label>
                                <input type="text"  class="form-control form-control-lg light-300" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number" name="phone" placeholder="Enter Your Phone No" required="required" />
                                
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Address :</label>
                                <input type="text"  class="form-control form-control-lg light-300" name="address" placeholder="Enter Your Address" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Password :</label>
                                <input type="password" class="form-control form-control-lg light-300" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$" title="Please include atleast 1 uppercase,lowercase,number,symbol,8-12 characters" name="pass" placeholder="Enter Your Password" required="required" /><br>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-success rounded-pill px-md-5 px-4 py-2 radius-0 text-light light-300">Register</button>
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









