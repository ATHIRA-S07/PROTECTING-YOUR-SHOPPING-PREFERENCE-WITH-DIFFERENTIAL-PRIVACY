
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Flybuy</title>
        <link rel="icon" type="image/x-icon" href="img/icon.png">
	<link rel="stylesheet" href="assets/css/style.css">
	<link href="https://fonts.googleapis.com/css2? family=Dosis&display=swap" rel="stylesheet">
</head>
    <body style="background-color:pink;">
        <!-- Header -->
        <div class="flybuy">
		<div class="navbar">
                    
                    <img src="assets/img/1.png" alt="" width=150px height=100px style="background-color:pink;margin-left:-120px"/>
			<ul>
				<li><a class="active" href="index.jsp">Home</a></li>
				<li><a href="User_login.jsp">User</a></li>
				<li><a href="Merchant_login.jsp">Merchant</a></li>
				<li><a href="Bank_login.jsp">Online Bank</a></li>
				<li><a href="Paymentapp_login.jsp">Payment Application</a></li>
			</ul>
			
		</div>
		<div class="banner">
			<div class="left-column"></div>
			<div class="right-column">
				<img src="assets/img/index.jpg">
			</div>
		</div>
		<div class="content">
			<h4>Trade-in-offer</h4>
			<h1>Super value deals <br> On all products</h1>
			<p>Save more with coupons & up to 70% off!</p>
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