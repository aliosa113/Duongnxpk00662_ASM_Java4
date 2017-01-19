<%-- 
    Document   : TaiKhoan
    Created on : Oct 15, 2016, 7:46:24 PM
    Author     : DuongNguyen
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.model.Users"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tài khoản</title>
        <%@include file="includes/headtab.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <%@include file="includes/banner.jsp" %>
        <% 
            UserService us = new UserService();
            ArrayList<Users> listUsers = null;
            listUsers = us.GetAllUsers();
        %>
        <h1 class="text-center">Tài Khoản Page</h1><br>
        <section class="container-fluid">
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading">Thống kê tài khoản</div>

                <!-- Table -->
                <table class="table">
                    <thead>
                        <tr>
                            <th>TT</th>                        
                            <th>Username</th>                        
                            <th>Password</th>                       
                            <th>Email</th>                       
                            <th>Fullname</th>
                            <th>Edit</th>                       
                            <th>Delete</th>
                        </tr>

                    </thead>
                    <tbody>
                        <%
                            //Bat dau vong lap do du lieu
                            for (int i = 0; i < listUsers.size(); i++) {
                                Users user = listUsers.get(i);
                        %>        

                        <tr>
                            <td><%= i + 1%></td>                        
                            <td><%= user.getUsername()%></td>                        
                            <td><%= user.getPassword()%></td>                       
                            <td><%= user.getEmail()%></td>                       
                            <td><%= user.getFullname()%></td>
                            <td style="width: 40px;">
                                <a href="SuaTaiKhoan.jsp?idTaiKhoan=<%= user.getIdusers()%>"><input type="button" name="edit" value="Edit" /> </a>
                            </td>
                            <td style="width: 47px;">
                                <a href="XoaTaiKhoan.jsp?idTaiKhoan=<%= user.getIdusers()%>"><input type="button" name="Del" value="Del" /> </a>
                            </td>

                        </tr>
                        <%
                            }
                        %>

                    </tbody>

                </table>
                <ul class="pagination pager">
                    <li><a href="">Previous</a></li>
                    <li><a href="">1</a><li>
                    <li><a href="">2</a><li>	
                    <li><a href="">3</a><li>	
                    <li><a href="">Next</a></li>
                </ul>
            </div>
        </section>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
