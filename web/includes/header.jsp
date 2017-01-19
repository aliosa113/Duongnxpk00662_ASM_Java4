<%-- 
    Document   : header
    Created on : Sep 19, 2016, 4:38:35 PM
    Author     : fpoly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <nav class="navbar navbar-inverse navbar-fixed-top menu" style="margin: 0; border-radius: 0;">
        <div class="container" style="padding: 0;">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">ALIOSA</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">TRANG CHỦ</a></li>
                <li><a href="TinTuc.jsp">TIN TỨC</a></li>
                <li><a href="SanPham.jsp">SẢN PHẨM</a></li> 
                <li><a href="TaiKhoan.jsp">TÀI KHOẢN</a></li> 
                <li><a href="#">PHẢN HỒI</a></li> 
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <%
                    if (session.getAttribute("youremail") != null) {
                %>
                <li><a href="#">Xin chào: <%= session.getAttribute("youremail")%></a></li>
                <li><a href="Logout.jsp">Logout</a></li>
                    <%
                    } else {
                    %>
                <li><a href="Register.jsp">Sign Up</a></li>
                <li><a href="Login.jsp">Login</a></li>
                    <%
                        }
                    %>
            </ul>
        </div>
    </nav>
</header>