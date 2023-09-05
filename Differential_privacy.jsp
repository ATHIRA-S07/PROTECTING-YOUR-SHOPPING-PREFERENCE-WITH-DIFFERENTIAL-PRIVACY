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
    </head>
    <style>
        .navbar
            {
                background-color:white ;
            }
            .flybuy
            {
                width:90%;
            }
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            font-size: 18px;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td{
            border: 2px solid black;
            align:"left";  cellpadding:"0"; cellspacing:"2";
            padding: 15px;
        }

        #customers th {
            border: 2px solid black;
            padding: 15px; 
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #1DA1F2;
            text-transform: uppercase;
        }
    </style>
    <body>
        <!-- Header -->
        <div class="flybuy">
		<div class="navbar">
			<img src="assets/img/1.png" width=150px height=100px>
			<ul>
				<li><a  href="Payapp_Home.jsp">Home</a></li>
				<li><a  href="Purchase_details.jsp">Purchase Details</a></li>
				<li><a class="active" href="Differential_privacy.jsp">Differential Privacy</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>	
		</div>
	</div>
        <!-- Close Header -->
        <!-- Start Banner Hero -->
        
        <section class="container py-5">
            <div class="row pb-4">
                <div class="col-lg-12">
                    <center><h1 class="feature-work-heading h2 py-3 semi-bold-600">Differential Privacy</h1></center><br>
                    <br><br>
                    <table id="customers" style="margin-right: 300px">
                        <thead>
                            <tr>
                                <th>User Name</th>
                                <th>Product Name</th>
                                <th>Differential Account Number</th>
                                <th>Differential price</th>
                                <th>Purchased Time</th>
                            </tr>
                        </thead>
                        <%
                            Connection con = SQLconnection.getconnection();
                            Statement st = con.createStatement();
                            try {
                                ResultSet rs = st.executeQuery("SELECT * FROM purchased");

                                while (rs.next()) {
                        %>
                        <tr>
                            <td><%=rs.getString("uname")%></td>
                            <td><%=rs.getString("pname")%></td>
                            <td><%=rs.getString("acc")%></td>
                            <td><%=rs.getString("dprice")%></td>
                            <td><%=rs.getString("time")%></td>
                        </tr>
                        <%                                        }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table>
                    <br><br><br>
                </div>
            </div>
        </section>

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
