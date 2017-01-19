<%-- 
    Document   : XoaSanPham
    Created on : Oct 15, 2016, 3:35:48 PM
    Author     : DuongNguyen
--%>

<%@page import="com.javaweb.service.SanPhamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xóa sản phẩm</title>
    </head>
    <body>
        <%
            SanPhamService sp = new SanPhamService();
            int idsp = Integer.parseInt(request.getParameter("idSanpham"));
            boolean xsp = sp.DeleteSanpham(idsp);
            if(xsp){
                String url = "/SanPham.jsp";
                getServletContext().getRequestDispatcher(url).forward(request, response);
            }
        %>
    </body>
</html>
