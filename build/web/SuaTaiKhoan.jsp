<%-- 
    Document   : SuaTaiKhoan
    Created on : Oct 16, 2016, 9:29:29 PM
    Author     : DuongNguyen
--%>

<%@page import="com.javaweb.model.Users"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa tài khoản</title>
        <%@include file="includes/headtab.jsp" %>
    </head>
    <body>
        <nav class="navbar navbar-inverse" style="margin: 0; border-radius: 0;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Duongnxpk00662_Lab6</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li><a href="TinTuc.jsp">Tin Tức</a></li>
                    <li><a href="SanPham.jsp">Sản Phẩm</a></li> 
                    <li><a href="TaiKhoan.jsp">Tài Khoản</a></li> 
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </nav>
        <br>

        <%
            UserService EditUS = new UserService();
            Users editus = null;
            String iduser = request.getParameter("idTaiKhoan");
            editus = EditUS.GetUserById(iduser);
        %>
        <div class="row col-md-8 col-md-offset-2 text-center">
            <h1>Sửa Tài Khoản</h1>
        </div>
        <div class="container">
            <div class="row col-md-8 col-md-offset-2">
                <form action="EditUserServlet" method="post">
                    <input style="display: none;" name="idTaiKhoan" value="<%= editus.getIdusers()%>" />
                    <div class="form-group">
                        <label for="username">Username: </label>
                        <input type="text" name="username" value="<%= editus.getUsername()%>" class="form-control" required id="username">
                    </div>
                    <div class="form-group">
                        <label for="email">Email: </label>
                        <input type="text" name="email" value="<%= editus.getEmail()%>" class="form-control" required id="email">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password: </label>
                        <input type="password" name="pwd" value="<%= editus.getPassword()%>" class="form-control" required id="pwd">
                    </div>
                    <div class="form-group">
                        <label for="repwd">Retype Password: </label>
                        <input type="password" name="repwd" class="form-control" required id="repwd">
                    </div>
                    <div class="form-group">
                        <label for="fullname">Fullname: </label>
                        <input type="text" name="fullname" value="<%= editus.getFullname()%>" class="form-control" required id="fullname">
                    </div>
                    <button type="submit" class="btn btn-default">Edit</button>
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
        <br><br>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
