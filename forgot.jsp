<%-- 
    Document   : forgot.jsp
    Created on : 12 Mar, 2023, 2:20:58 PM
    Author     : amals
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <style>
            form{
                background-color: #fff;
                width:450px;
                padding: 50px 40px;
                position: absolute;
                transform: translate(-50%,-50%);
                top:50%;
                left: 50%;
                border-radius: 8px;
                box-shadow: 20px 20px 30px rgba(0,0,0,0.5);
            }
            label{
                font-weight: 500;
                color:#101030;
            }
            input{
                display: block;
                width:100%;
                margin-top: 5px;
                padding: 12px;
                border-radius: 5px;
                outline:none;
                color:#101010;
            }
            #password{
                margin-bottom: 30px;
            }
            input[type="password"]{
                border: 2px solid #c2c2c2;
            }
            input[type="button"]{
                border: none;
                background-color: #7f3fff;
                color: #fff;
                font-weight: 500;
                font-size: 18px;
                letter-spacing: 1px;
                cursor: pointer;
                margin-top: 20px;
            }
            p{
                font-size: 14px;
                margin:15px 0;
                display: inline-block;
                color: #fff;
            }
            
        </style>
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
    <form name="forgotPasswordForm" method="post" onsubmit="return validateForm()">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email">
        <br><br>
        <input type="submit" value="Submit" style="background-color:#00A36C;">
    </form>
        <script>
        function validateForm() {
            var email = document.forms["forgotPasswordForm"]["email"].value;
            if (email == "") {
                alert("Email must be filled out");
                return false;
            }
            
            // Change the form's action attribute to the resetpassword.jsp page
            document.forms["forgotPasswordForm"].action = "reset_password.jsp";
            return true;
        }
    </script>
        
       
    </body>
</html>
