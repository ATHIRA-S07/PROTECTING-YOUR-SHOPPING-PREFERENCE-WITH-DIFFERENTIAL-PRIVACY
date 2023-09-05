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
	<link href="https://fonts.googleapis.com/css2? family=Dosis&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/custom.css">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
    <%
        if (request.getParameter("Success") != null) {
    %>
    <script>alert('Prodect Added Successfully');</script>
    <%            }
    %>
    <script>
        var loadFile = function (event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('output');
                output.src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        };
    </script>
    <body>
        <!-- Header -->
       
	<div class="flybuy">
		<div class="navbar">
			<img src="assets/img/1.png" width=150px height=100px>
			<ul>
				<li><a  href="Merchant_Home.jsp">Home</a></li>
				<li><a class="active" href="Add_product.jsp">Add Product</a></li>
				<li><a  href="View_products.jsp">View Products</a></li>
				<li><a href="User_details.jsp">User Details</a></li>
				<li><a href="graph.jsp">Graph</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>	
		</div>
	</div>
        <!-- Close Header -->
        <!-- Start Banner Hero -->
        
        <section class="container py-5"> 
            <center><h1 class="feature-work-heading h2 py-3 semi-bold-600">Add Products</h1></center><br><br>
            <div class="row pb-4">
                <div class="col-lg-5">
                    <form class="contact-form row" method="post" action="add_product" role="form" enctype="multipart/form-data">
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Product Name :</label>
                                <input type="text" class="form-control" name="pname" placeholder="Enter Product Name" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Brand Name :</label>
                                <input class="form-control" placeholder="Enter Brand Name" type="text" name="brand_name" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Product Description :</label><br>
                                <textarea class="form-control" placeholder="Enter Description" name="description" style="background-color: transparent;border-color: #cccccc;border-width: 0.01px;height: 100px;resize: none;"
                                          required="required"></textarea>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Price :</label>
                                <input class="form-control" placeholder="Enter Product Price" type="text" name="price" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Tag :</label>
                                <input class="form-control" placeholder="Enter Product Tag" type="text" name="tag" required="required" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Select Category :</label><select class="form-control" name="category" required="required">
                                    <option value="" style="color: black;">--Category--</option>
                                    <option style="color: black;">Mobile</option>
                                    <option style="color: black;">Laptop</option>
                                    <option style="color: black;">Accessories</option>
                                    <option style="color: black;">Electronics</option>
                                    <option style="color: black;">Fashion</option>
                                    <option style="color: black;">Others</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Product Image :</label>
                                <input  type="file" class="form-control" name="photo" accept="image/x-png,image/gif,image/jpeg" onchange="loadFile(event)" required="required" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-success rounded-pill px-md-5 px-4 py-2 radius-0 text-light light-300">Submit</button>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6">
                    <br><br><br><br><br><br>
                    <center><img id="output" src="#" alt="Product Image" width="450" height="400"></center>
                </div>
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
