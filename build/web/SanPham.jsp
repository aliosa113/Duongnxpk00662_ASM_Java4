<%-- 
    Document   : SanPham
    Created on : Oct 12, 2016, 3:44:13 PM
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
        <title>Sản phẩm</title>
        <%@include file="includes/headtab.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <%@include file="includes/banner.jsp" %>

        <%            
            SanPhamService sp = new SanPhamService();
            ArrayList<Sanpham> listSanpham = null;
            listSanpham = sp.GetAllSanpham();
        %>
        <h1 class="text-center">Sản Phẩm Page</h1><br>
        <section class="container-fluid">
            <div class="panel panel-default">
                <ul class="pagination pager" style="margin-bottom: 10px; margin-top: 10px;">
                    <a href="ThemSanPham.jsp"><input type="button" name="ThemSanPham" value="Thêm Sản Phẩm" /> </a>
                </ul>
                <!-- Default panel contents -->
                <div class="panel-heading">Danh sách sản phẩm</div>

                <!-- Table -->
                <table class="table">
                    <thead>
                        <tr>
                            <th>TT</th>                        
                            <th>Tên Sản Phẩm</th>                        
                            <th>Mã Loại</th>                        
                            <th>Giá Sản Phẩm</th>                       
                            <th>Ngày Đăng</th>                       
                            <th>Hình Ảnh</th>
                            <th>Mô Tả</th>
                            <th>Edit</th>                       
                            <th>Delete</th>
                        </tr>

                    </thead>
                    <tbody>
                        <%
                            //Bat dau vong lap do du lieu
                            for (int i = 0; i < listSanpham.size(); i++) {
                                Sanpham sanpham = listSanpham.get(i);
                        %>        

                        <tr>
                            <td><%= i + 1%></td>                        
                            <td><%= sanpham.getTensanpham()%></td>                        
                            <td><%= sanpham.getIdloaisanpham()%></td>                       
                            <td><%= sanpham.getGiasanpham()%></td>                       
                            <td><%= sanpham.getNgaydang()%></td>
                            <td><%= sanpham.getHinhanh()%></td>
                            <td><%= sanpham.getMota()%></td>
                            <td style="width: 40px;">
                                <a href="SuaSanPham.jsp?idSanpham=<%= sanpham.getIdsanpham()%>"><input type="button" name="edit" value="Edit" /> </a>
                            </td>
                            <td style="width: 47px;">
                                <a href="XoaSanPham.jsp?idSanpham=<%= sanpham.getIdsanpham()%>"><input type="button" name="Del" value="Del" /> </a>
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
