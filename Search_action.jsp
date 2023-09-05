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
        <!-- Header -->
        
        <!-- Close Header -->
        <!-- Start Banner Hero -->
        
        <section class="container py-5">
            <div class="col-lg-9">
                <form action="Search_action.jsp" method="post">
                    <h3>Search product</h3>
                    <div class="col-lg-6 mb-4">
                        <div class="form-group mb-4">
                            <select class="form-control" name="category" required="required">
                                <option value="" style="color: black;">--Category--</option>
                                <option style="color: black;">Mobile</option>
                                <option style="color: black;">Laptop</option>
                                <option style="color: black;">Accessories</option>
                                <option style="color: black;">Electronics</option>
                                <option style="color: black;">Fashion</option>
                                <option style="color: black;">Others</option>
                            </select>
                        </div>
                        <div class="col-lg-6 mb-4">
                            <div class="form-group mb-4">
                                <button type="submit" class="btn btn-info">
                                    <i class="fa fa-search"></i>
                                    Search
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <center><h1 class="col-12 col-xl-8 h2 text-left text-primary pt-3">Products</h1></center><br><br>
            <div class="row projects gx-lg-5">
                <%
                    String category = request.getParameter("category");

                    Connection con = SQLconnection.getconnection();
                    Statement st = con.createStatement();
                    try {
                        ResultSet rs = st.executeQuery("SELECT * FROM product WHERE category ='" + category + "' ORDER BY id DESC ");
                        if (rs.next()) {

                            rs.previous();

                            while (rs.next()) {
                                String id = rs.getString("id");
                %>
                <a href="Product_details.jsp?pid=<%=rs.getString("id")%>&pname=<%=rs.getString("pname")%>" class="col-sm-6 col-lg-4 text-decoration-none project marketing social business">
                    <div class="service-work overflow-hidden card mb-5 mx-5 m-sm-0">
                        <img class="card-img-top" src="Getimage?id=<%=rs.getString("id")%>" width="180" height="280" alt="Product_image">
                        <div class="card-body">
                            <h5 class="card-title light-300 text-dark"><%=rs.getString("pname")%></h5>
                            <h5 class="card-text light-300 text-dark">
                                Rs.<%=rs.getString("price")%>
                            </h5>
                            <span class="text-decoration-none text-primary light-300">
                                Buy <i class='bx bxs-cart ms-1'></i>
                            </span>
                        </div>
                    </div>
                </a>
                <!-- <div class="col-md-4 mb-3">
                    <a href="#" class="recent-work card border-0 shadow-lg overflow-hidden">
                        <img class="recent-work-img card-img" src="Getimage?id=<%=rs.getString("id")%>" width="180" height="280" alt="Card image">
                        <div class="recent-work-vertical card-img-overlay d-flex align-items-end">
                            <div class="recent-work-content text-start mb-3 ml-3 text-dark">
                                <h3 class="card-title light-300"><%=rs.getString("pname")%></h3>
                                <p class="card-text">Rs.<%=rs.getString("price")%></p>
                            </div>
                        </div>
                    </a>
                </div> -->
                <%
                    }
                } else {
                %>
                <br><br><br>
                <center><h2 style="color: whitesmoke;">Product Not Found ...</h2></center>
                    <%
                        }
                    %>
                    <%
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }

                    %>
            </div>
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
