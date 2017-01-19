<%-- 
    Document   : Login
    Created on : Oct 12, 2016, 4:18:30 PM
    Author     : DuongNguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file="includes/headtab.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <%@include file="includes/banner.jsp" %>
        <h1 class="text-center">Login Page</h1>
        <div class="container" style="padding-top: 40px; padding-bottom: 40px;">
            <div class="row col-md-9 col-md-offset-2">
                <form action="LoginServlet" method="post">
                    <div class="form-group">
                        <label for="email">Email address or Username:</label>
                        <input type="text" required="" name="youremail" class="form-control" id="email">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" required="" name="yourpwd" class="form-control" id="pwd">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" name="rememberMe" value="Y">Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-default">Login</button>
                </form>
            </div>
        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
