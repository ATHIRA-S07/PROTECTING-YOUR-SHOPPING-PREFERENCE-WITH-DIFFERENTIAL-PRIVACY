<%-- 
    Document   : newjsp
    Created on : 15 Mar, 2023, 10:25:59 PM
    Author     : amals
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password Form</title>
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
</head>
<body>
    <h2>Forgot Password Form</h2>
    <form name="forgotPasswordForm" method="post" onsubmit="return validateForm()">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email">
        <br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
