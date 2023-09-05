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
            <div class="row pt-5">
                <div class="worksingle-content col-lg-8 m-auto text-left justify-content-center">
                    <h2 class="worksingle-heading h3 pb-3 light-300 typo-space-line"><%=rs.getString("pname")%><br>
                        Rs.<%=rs.getString("price")%>
                    </h2>
                    <p class="worksingle-footer py-3 text-muted light-300">
                        <%=rs.getString("des")%>
                    </p>
                </div>
                <div class="row justify-content-center pb-4">
                    <div class="col-lg-8">
                        <div id="templatemo-slide-link-target" class="card mb-3">
                            <img src="Getimage?id=<%=rs.getString("id")%>" width="700" height="450" alt="Product Image">
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <br>
                        <a href="Buy_product.jsp?pid=<%=rs.getString("id")%>&pname=<%=rs.getString("pname")%>" style="float: right;" class="btn btn-success btn-lg"><i class='bx bxs-cart ms-1'></i>&nbsp;&nbsp;
                            Buy
                        </a>
                    </div>
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
