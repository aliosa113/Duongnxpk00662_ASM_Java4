<%-- 
    Document   : XoaTaiKhoan
    Created on : Oct 16, 2016, 9:28:46 PM
    Author     : DuongNguyen
--%>

<%@page import="com.javaweb.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xóa tài khoản</title>
    </head>
    <body>
        <%
            UserService sp = new UserService();
            int idUser = Integer.parseInt(request.getParameter("idTaiKhoan"));
            boolean xoaUser = sp.DeleteUser(idUser);
            if (xoaUser) {
                String url = "/TaiKhoan.jsp";
                getServletContext().getRequestDispatcher(url).forward(request, response);
            }
        %>
    </body>
</html>
