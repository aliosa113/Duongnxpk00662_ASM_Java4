<%-- 
    Document   : ThemSanPham
    Created on : Oct 15, 2016, 9:04:46 PM
    Author     : DuongNguyen
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.model.Sanpham"%>
<%@page import="com.javaweb.service.SanPhamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>
        <%@include file="includes/headtab.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <div class="row col-md-8 col-md-offset-2 text-center" style="margin-top: 90px;">
            <h1>Thêm Sản Phẩm</h1>
        </div>
        <div class="container" style="padding-bottom: 0;">
            <div class="row col-md-8 col-md-offset-2">
                <form action="ThemSPServlet" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="tensanpham">Tên Sản Phẩm: </label>
                        <input type="text" name="tensanpham" class="form-control" required id="tensanpham">
                    </div>
                    <div class="form-group">
                        <label for="maloaisanpham">Mã Loại Sản Phẩm: </label>
                        <input type="text" name="maloaisanpham" class="form-control" required id="maloaisanpham">
                    </div>
                    <div class="form-group">
                        <label for="giasanpham">Giá Sản Phẩm: </label>
                        <input type="text" name="giasanpham" class="form-control" required id="giasanpham">
                    </div>
                    <div class="form-group">
                        <label for="ngaydang">Ngày Đăng: </label>
                        <input type="text" name="ngaydang" class="form-control" id="ngaydang">
                    </div>
                    <div class="form-group">
                        <label for="mota">Mô Tả: </label>
                        <input type="text" name="mota" class="form-control" id="mota">
                    </div>
                    <div class="form-group">
                        <input type="file" name="file" size="50" />
                    </div>
                    <button type="submit" class="btn btn-default">Insert</button>
                </form>
            </div>
        </div>
        <br><br>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
