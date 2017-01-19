<%-- 
    Document   : Register
    Created on : Oct 12, 2016, 4:20:13 PM
    Author     : DuongNguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <%@include file="includes/headtab.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <%@include file="includes/banner.jsp" %>
        <h1 class="text-center">Register Page</h1>
        <div class="container" style="padding-top: 40px; padding-bottom: 40px;">
            <div class="row col-md-9 col-md-offset-2">
                <form action="RegisterServlet" method="post">
                    <div class="form-group">
                        <label for="fullname">Fullname:</label>
                        <input type="text" name="fullname" class="form-control" required id="fullname">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address:</label>
                        <input type="email" name="email" class="form-control" required id="email">
                    </div>
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" name="username" class="form-control" required id="username">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" name="pwd" class="form-control" required id="pwd">
                    </div>
                    <div class="form-group">
                        <label for="repwd">Retype Password:</label>
                        <input type="password" name="repwd" class="form-control" required id="repwd">
                    </div>
                    <div class="checkbox">
                        <label><input required="" type="checkbox" name="rememberMe" value="Y">Agree condition! </label>
                    </div>
                    <button type="submit" class="btn btn-default">Register</button>
                </form>
                <br>

                <%
                    if (session.getAttribute("errormsg") != null) {
                %>
                <div class="text-danger"><%=session.getAttribute("errormsg")%></div>
                <%
                    }
                %>
            </div>
        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
