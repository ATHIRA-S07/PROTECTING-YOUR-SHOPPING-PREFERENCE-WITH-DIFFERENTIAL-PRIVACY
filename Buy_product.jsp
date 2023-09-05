<%-- 
    Document   : index
    Created on : 9 Apr, 2021, 5:00:44 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Fly Buy</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/x-icon" href="img/icon.png">
	  <link rel="stylesheet" href="assets/css/style.css">
	<link href="https://fonts.googleapis.com/css2? family=Dosis&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/custom.css">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .navbar
            {
                background-color:white ;
            }
            .flybuy
            {
                width:90%;
            }
        </style>
    </head>
    <body>
        <!-- Header -->
       <div class="flybuy">
		<div class="navbar" >
			<img src="assets/img/1.png" width=150px height=100px>
			<ul>
				<li><a  href="User_Home.jsp">Home</a></li>
				<li><a class="active" href="Products.jsp">Products</a></li>
				<li><a href="Purchase_details1.jsp">Purchase Details</a></li>
				<li><a href="index.jsp">Logout</a></li>
				
			</ul>	
		</div>
	</div>
        <!-- Close Header -->
        <!-- Start Banner Hero -->
        
        <section class="container py-5"> 
            <%
                String pid = request.getParameter("pid");
                String pname = request.getParameter("pname");

                Connection con = SQLconnection.getconnection();
                Statement st = con.createStatement();
                try {
                    ResultSet rs = st.executeQuery("SELECT * FROM product WHERE id = '" + pid + "'");

                    while (rs.next()) {
            %>
            <center><h1 class="col-12 col-xl-8 h2 text-left text-primary pt-3">Buy Product</h1></center><br><br>
            <div class="row pb-4">
                <div class="col-lg-6">
                    <img src="Getimage?id=<%=rs.getString("id")%>" width="400" height="350" />
                    <br><p><%=rs.getString("pname")%></p>
                    <h5 class="card-text light-300 text-dark">
                        Rs.<%=rs.getString("price")%>
                    </h5>
                </div>
                <div class="col-lg-5">
                    <form class="contact-form row" method="post" action="buy.jsp" role="form">
                        <div class="col-12">
                            <br>
                            <div class="form-group mb-4">
                                <input type="hidden" value="<%=pid%>" name="pid">
                                <input type="hidden" value="<%=pname%>" name="pname">
                                <input type="hidden" value="<%=rs.getString("price")%>" name="price">
                                <label>Account No :</label>
                                <input type="text" class="form-control form-control-lg light-300" name="acc_no" placeholder="Enter Account Number" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <br>
                            <div class="form-group mb-4">
                                <label>Password :</label>
                                <input type="password" class="form-control form-control-lg light-300" name="pass" placeholder="Enter Your Password" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <label>Mode Of Payment :</label><br><br>
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" id="exampleRadios1" checked>
                                <span class="form-check-sign"></span>
                                Payment Application
                            </label>
                        </div>
                        <div class="col-md-12">
                            <br>
                            <button type="submit" class="btn btn-success rounded-pill px-md-5 px-4 py-2 radius-0 text-light light-300">
                                <i class='bx bxs-cart ms-1'></i>&nbsp;&nbsp;BUY</button>
                        </div>
                    </form>
                </div>
            </div>
            <%                                        }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

            %>
        </section>
        
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
