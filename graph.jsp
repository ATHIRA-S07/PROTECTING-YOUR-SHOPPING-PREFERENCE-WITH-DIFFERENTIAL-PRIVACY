<%-- 
    Document   : index
    Created on : 9 Apr, 2021, 5:00:44 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.google.gson.Gson"%>
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
		<div class="navbar">
			<img src="assets/img/1.png" width=150px height=100px>
			<ul>
				<li><a  href="Merchant_Home.jsp">Home</a></li>
				<li><a  href="Add_product.jsp">Add Product</a></li>
				<li><a  href="View_products.jsp">View Products</a></li>
				<li><a  href="User_details.jsp">User Details</a></li>
				<li><a class="active" href="graph.jsp">Graph</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>	
		</div>
	</div>
        <!-- Close Header -->
        <!-- Start Banner Hero -->
        
        <section class="container py-5">
            <div class="feature-work container my-4">
                <div class="row d-flex d-flex align-items-center">
                    <div class="col-lg-12">
                        <center><h1 class="feature-work-heading h2 py-3 semi-bold-600">Analysis</h1></center><br>
                            <%
                                String val1 = "", val2 = "", val3 = "";
                                String val11 = "", val22 = "", val33 = "";
                                int i = 0;

                                try {
                                    Connection con = SQLconnection.getconnection();

                                    Statement st = con.createStatement();
                                    ResultSet rs0 = st.executeQuery("SELECT  COUNT(id) AS value_occurrence FROM  product");
                                    rs0.next();
                                    {

                                        val1 = rs0.getString("value_occurrence");
                                    }
                                    rs0.close();
                                    Statement st1 = con.createStatement();
                                    ResultSet rs2 = st1.executeQuery("SELECT  COUNT(id) AS value_occurrence FROM  purchased");
                                    rs2.next();
                                    {
                                        val2 = rs2.getString("value_occurrence");
                                    }
                                    System.out.println("count------------------> " + val1);
                                    System.out.println("count------------------> " + val2);

                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        <script type="text/javascript">
                            window.onload = function () {

                                var chart = new CanvasJS.Chart("chartContainer", {
                                    animationEnabled: true,
                                    exportEnabled: true,
                                    title: {
                                        text: ""
                                    },
                                    axisY: {
                                        includeZero: true
                                    },
                                    data: [{
                                            type: "column", //change type to bar, line, area, pie, etc
                                            //indexLabel: "{y}", //Shows y value on all Data Points
                                            indexLabelFontColor: "#5A5757",
                                            indexLabelPlacement: "outside",
                                            dataPoints: [{y: <%=val1%>, label: "Total Products"},
                                                {y: <%=val2%>, label: "Purchased Products"}]
                                        }]
                                });
                                chart.render();

                            }
                        </script>
                        <div id="chartContainer" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
                    </div>
                </div>
            </div>
        </section>
       
        <!-- End Footer -->

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <!-- About us Skills Circle progress  -->
        <script>
                            // First circle
                            new Circlebar({
                                element: "#circle-1",
                                type: "progress",
                                maxValue: "90"
                            });

                            // Second circle
                            new Circlebar({
                                element: "#circle-2",
                                type: "progress",
                                maxValue: "84"
                            });

                            // Third circle
                            new Circlebar({
                                element: "#circle-3",
                                type: "progress",
                                maxValue: "60"
                            });

                            // Fourth circle
                            new Circlebar({
                                element: "#circle-4",
                                type: "progress",
                                maxValue: "74"
                            });

        </script>
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
