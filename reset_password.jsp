<%-- 
    Document   : reset_password
    Created on : 15 Mar, 2023, 8:27:36 PM
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
            input{
                display: block;
                width:100%;
                margin-top: 5px;
                padding: 12px;
                border-radius: 5px;
                outline:none;
                color:#101010;
            }
            button{
                border: none;
                background-color: #00A36C;
                color: black;
                font-weight: 500;
                font-size: 18px;
                letter-spacing: 1px;
                cursor: pointer;
                margin-top: 20px;
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
    </body>
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="DBconnection.SQLconnection"%>
<%@ page import="java.util.Random"%>
<%@ page import="PasswordGenerator.PasswordGenerator" %>

<%
String email = request.getParameter("email");
System.out.println("Resetting password for user with email: " + email);
// Check if email exists in database
try (Connection con = SQLconnection.getconnection();
PreparedStatement stmt = con.prepareStatement("SELECT * FROM user_reg WHERE email = ?")) {
stmt.setString(1, email);
ResultSet rs = stmt.executeQuery();
if (rs.next()) {
    // Generate new password and update in database
    String newPassword = PasswordGenerator.generateNewPassword();
    try (PreparedStatement stmt2 = con.prepareStatement("UPDATE user_reg SET password = ? WHERE email = ?")) {
        stmt2.setString(1, newPassword);
        stmt2.setString(2, email);
        stmt2.executeUpdate();
        %>
        <form action="User_login.jsp" method="post">
    <p>Your new password is:</p>
    <div class="password-container">
        <input type="text" name="newPassword" value="<%= newPassword %>" readonly>
        <button type="button" onclick="togglePasswordVisibility()">Show/Hide</button>
    </div>
    <input type="submit" value="Login">
</form>

<script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementsByName("newPassword")[0];
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
        } else {
            passwordInput.type = "password";
        }
    }
</script>

        <%
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendRedirect("reset_password.jsp?reset=failed");
    }
} else {
    // Email not found in database
    response.sendRedirect("User_login.jsp?reset=notfound");
}
} catch (SQLException e) {
e.printStackTrace();
response.sendRedirect("reset_password.jsp?reset=failed");
}

// Method to generate new random password
%>