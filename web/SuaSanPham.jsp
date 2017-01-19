<%-- 
    Document   : SuaSanPham
    Created on : Oct 12, 2016, 4:59:55 PM
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
        <title>Sửa sản phẩm</title>
        <%@include file="includes/headtab.jsp" %>
    </head>
    <%@include file="includes/header.jsp" %>

    <%
        SanPhamService EditSP = new SanPhamService();
        Sanpham editsp = null;
        String idsanpham = request.getParameter("idSanpham");
        editsp = EditSP.GetSanphamID(idsanpham);
    %>
    <div class="row col-md-8 col-md-offset-2 text-center" style="margin-top: 90px;">
        <h1>Sửa Sản Phẩm</h1>
    </div>
    <div class="container" style="padding-bottom: 0;">
        <div class="row col-md-8 col-md-offset-2">
            <form action="SuaSPServlet" method="post">
                <input style="display: none;" name="idsanpham" value="<%= editsp.getIdsanpham()%>" />
                <div class="form-group">
                    <label for="tensanpham">Tên Sản Phẩm: </label>
                    <input type="text" name="tensanpham" value="<%= editsp.getTensanpham()%>" class="form-control" required id="tensanpham">
                </div>
                <div class="form-group">
                    <label for="maloaisanpham">Mã Loại Sản Phẩm: </label>
                    <input type="text" name="maloaisanpham" value="<%= editsp.getIdloaisanpham()%>" class="form-control" required id="maloaisanpham">
                </div>
                <div class="form-group">
                    <label for="giasanpham">Giá Sản Phẩm: </label>
                    <input type="text" name="giasanpham" value="<%= editsp.getGiasanpham()%>" class="form-control" required id="giasanpham">
                </div>
                <div class="form-group">
                    <label for="ngaydang">Ngày Đăng: </label>
                    <input type="text" name="ngaydang" value="<%= editsp.getNgaydang()%>" class="form-control" required id="ngaydang">
                </div>
                <div class="form-group">
                    <label for="mota">Mô Tả: </label>
                    <input type="text" name="mota" value="<%= editsp.getMota()%>" class="form-control" required id="mota">
                </div>
                <button type="submit" class="btn btn-default">Edit</button>
            </form>
        </div>
    </div>
    <br><br>
    <%@include file="includes/footer.jsp" %>
</body>
</html>
