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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/x-icon" href="img/icon.png">
	<link rel="stylesheet" href="assets/css/style.css">
	<link href="https://fonts.googleapis.com/css2? family=Dosis&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/custom.css">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>
    <body style="background-color:pink;">
	<div class="flybuy">
		<div class="navbar">
			<img src="assets/img/1.png" width=150px height=100px style="background-color:pink;margin-left:-120px">
			<ul>
				<li><a  href="Bank_Home.jsp">Home</a></li>
				<li><a class="active" href="Add_account.jsp">Add Account</a></li>
				<li><a  href="Account_details.jsp">Account Details</a></li>
				<li><a href="Transactions.jsp">Transactions</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>	
		</div>
	</div>
        <!-- Close Header -->
        <!-- Start Banner Hero -->
       
         
            <center><h1 class="feature-work-heading h2 py-3 semi-bold-600">Add Account Details</h1></center><br><br>
            <div class="row pb-5" >
                <div class="col-lg-3">
                </div>
                <div class="col-lg-4  offset-1">
                    <form class="contact-form row" method="post" action="add_account1.jsp" role="form">
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Name :</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter Your Name" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Account Number :</label>
                                <input type="text" class="form-control" name="acc_no" placeholder="Enter Account Number" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Bank Name :</label>
                                <input class="form-control" placeholder="Enter Bank Name" type="text" name="bank_name" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Branch :</label>
                                <input class="form-control" placeholder="Enter Branch Name" type="text" name="branch" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Amount :</label>
                                <input class="form-control" placeholder="Enter Amount" type="text" name="amount" required="required" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-success rounded-pill px-md-5 px-4 py-2 radius-0 text-light light-300">Submit</button>
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
