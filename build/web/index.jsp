<%-- 
    Document   : index
    Created on : Oct 12, 2016, 3:43:01 PM
    Author     : DuongNguyen
--%>

<%@page import="com.javaweb.model.Tuyendung"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.service.TuyendungService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
        <%@include file="includes/headtab.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <%@include file="includes/banner.jsp" %>

        <div class="container" style="padding: 0; margin-top: 50px; margin-bottom: 100px;">
            <h2 class="spnbh2">Sản phẩm nổi bật</h2>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham1.jpg" alt="" />
                            <h2>$40</h2>
                            <p>Sản Phẩm 1</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$40</h2>
                                <p>Sản Phẩm 1</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham2.jpg" alt="" />
                            <h2>$45</h2>
                            <p>Sản Phẩm 2</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$45</h2>
                                <p>Sản Phẩm 2</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham3.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Sản Phẩm 3</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$56</h2>
                                <p>Sản Phẩm 3</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham4.jpg" alt="" />
                            <h2>$45</h2>
                            <p>Sản Phẩm 4</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$45</h2>
                                <p>Sản Phẩm 4</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="container-fluid bg-6"><br>
            <div class="container" style="padding: 0;">
                <h2 style="color: wheat;">
                    ALIOSA.COM.VN<br>
                    <span style="padding-left: 90px; font-size: 22px;">CHÀO MỪNG BẠN!</span>
                </h2>

                <p style="color: whitesmoke;">Khởi nghiệp từ 1 cửa hàng thời trang nhỏ với mong muốn mang lại cho khách hàng<br>
                    những sản phẩm mới nhất, mẫu mã phong phú với giá cả hợp lý và dịch vụ hậu mãi chu đáo.<br>
                    Đến nay, cùng với sự tin yêu của khách hàng, chúng tôi đã phát triển thành 
                    <span style="color: #afd9ee">Chuỗi hệ thống thời trang</span> gồm 12 chi<br>
                    nhánh trên toàn quốc. 
                    <span style="color: #a6e1ec">Hệ thống thời trang ALIOSA.COM.VN</span>
                    là 1 trong những thương hiệu thời trang hàng đầu tại khu vực Miền Trung....</p>
            </div>
        </div>

        <div class="container" style="padding: 0; margin-top: 50px; margin-bottom: 100px;">
            <h2 class="spnbh2">Sản phẩm bán chạy</h2>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham5.jpg" alt="" />
                            <h2>$52</h2>
                            <p>Sản Phẩm 5</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$52</h2>
                                <p>Sản Phẩm 5</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham6.jpg" alt="" />
                            <h2>$48</h2>
                            <p>Sản Phẩm 6</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$48</h2>
                                <p>Sản Phẩm 6</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham7.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Sản Phẩm 7</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$56</h2>
                                <p>Sản Phẩm 7</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham8.jpg" alt="" />
                            <h2>$53</h2>
                            <p>Sản Phẩm 8</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$53</h2>
                                <p>Sản Phẩm 8</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham9.jpg" alt="" />
                            <h2>$49</h2>
                            <p>Sản Phẩm 9</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$49</h2>
                                <p>Sản Phẩm 9</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham10.jpg" alt="" />
                            <h2>$55</h2>
                            <p>Sản Phẩm 10</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$55</h2>
                                <p>Sản Phẩm 10</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham11.jpg" alt="" />
                            <h2>$60</h2>
                            <p>Sản Phẩm 11</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$60</h2>
                                <p>Sản Phẩm 11</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spnb col-md-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="images/sanpham12.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Sản Phẩm 12</p>
                            <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2>$56</h2>
                                <p>Sản Phẩm 12</p>
                                <a href="#" class="btn add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid bg-8"><br>
            <div class="container" style="padding: 0;">
                <div class="row col-md-12">
                    <h3 style="padding:15px 0px 25px 5px; margin: 0;">DỊCH VỤ KHÁCH HÀNG</h3>
                </div>
                <div class="row col-md-6">
                    <a href="#">
                        <img src="images/sale.png">
                        <div class="bg-9">
                            <h3 class="a1">KHUYẾN MÃI</h3>
                            <p class="a2">Cập nhật các khuyến mãi 10% đến 50% cho khách hàng</p>
                        </div>
                    </a>
                </div>
                <div class="row col-md-6">
                    <a href="#">
                        <img src="images/giaohang.png">
                        <div class="bg-9">
                            <h3 class="a1">GIAO HÀNG TẬN NHÀ</h3>
                            <p class="a2">Liên doanh với các hãng vận chuyển hàng đầu, Fmstyle hỗ trợ 
                                dịch vụ giao hàng tận nơi trên tất cả các tỉnh thành. Ngoài 
                                ra khách hàng cũng có thể chọn vận chuyển tốc hành, 
                                giao hàng theo ngày giờ yêu cầu..</p>
                        </div>
                    </a>
                </div>
                <div class="row col-md-6" style="padding-top: 20px;">
                    <a href="#">
                        <img src="images/baohanh.png">
                        <div class="bg-9">
                            <h3 class="a1">BẢO HÀNH SẢN PHẨM</h3>
                            <p class="a2">Quy trình đánh giá chất lượng sản phẩm này có thể cần khoảng 5
                                ngày làm việc tính từ thời điểm nhận được sản phẩm gửi trả tại
                                kho. Sau đó quý khách sẽ nhận được email thông báo kết quả kiểm 
                                tra đánh giá sản phẩm.</p>
                        </div>
                    </a>
                </div>
                <div class="row col-md-6" style="padding-top: 20px;">
                    <a href="#">
                        <img src="images/uudai.png">
                        <div class="bg-9">
                            <h3 class="a1">ƯU ĐÃI THÀNH VIÊN</h3>
                            <p class="a2">1. Chương trình ưu đãi giá đặc biệt 5% và tích lũy điểm chỉ
                                được áp dụng khi khách hàng có xuất trình thẻ thành viên 
                                khi thanh toán.</p>
                            <p class="a2">2. Tiền tích lũy và thông tin phân hạng được cập nhật sau
                                khi khách hàng thanh toán.</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>


        <%            TuyendungService us = new TuyendungService();
            ArrayList<Tuyendung> listTuyendung = null;
            listTuyendung = us.GetAllTuyendung();
        %>
        <div class="container-fluid bg-7">
            <div class="container" style="padding-right: 0; padding-left: 0;">
                <table id="table" class="table table-hover table-mc-light-blue">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Vị trí tuyển dụng</th>
                            <th>Nơi làm việc</th>
                            <th>Hạn tuyển dụng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            //Bat dau vong lap do du lieu
                            for (int i = 0; i < listTuyendung.size(); i++) {
                                Tuyendung tuyendung = listTuyendung.get(i);
                        %>
                        <tr>
                            <td><%= i + 1%></td>
                            <td><%= tuyendung.getVitrituyendung()%></td>
                            <td><%= tuyendung.getNoilamviec()%></td>
                            <td><%= tuyendung.getHantuyendung()%></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
