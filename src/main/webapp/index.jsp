<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%--<%--%>
<%--    if (request.getAttribute("list") == null) {--%>
<%--        response.sendRedirect("ListProduct");--%>
<%--        return;--%>
<%--    }--%>
<%--%>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Group 11</title>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/Product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/spnoibat.css">

</head>
<body>
<!--headaer-->
<header class="header">
    <div class="header-top">
        <div class="logo-search">
            <a href="ListProduct" class="logo">
                <div class="logo-icon">📷</div>
                <div class="logo-text">
                    <div class="logo-main">GROUP11</div>
                    <div class="logo-sub">Shop máy ảnh uy tín nhất Việt Nam</div>
                </div>
            </a>

            <div class="search-box">
                <input type="text" placeholder="Tìm kiếm sản phẩm...">
                <button><i class="fas fa-search"></i></button>
            </div>
        </div>

        <div class="header-right">
            <div class="hotline">
                <div class="hotline-label">HOTLINE: 0903.148-222</div>
                <div class="header-links">
                    <a href="#">MUA HÀNG</a> -
                    <a href="#">TRẢ GÓP</a> -
                    <a href="#">BẢO HÀNH</a>
                </div>
            </div>
            <a href="/project_web_war_exploded/html/login.jsp">
                <div class="user-icon">
                    <i class="fas fa-key"></i>
                </div>
            </a>
            <a href="/Project/View%20order%20history/ViewOrderHistory.html">
                <div class="user-icon">
                    <i class="fas fa-key"></i>
                </div>
            </a>
            <a href="/Project/View%20order%20history/ViewOrderHistory.html">
                <div class="user-icon">
                    <i class="fas fa-user"></i>
                </div>
            </a>
            <a href="/Project/GioHang/ShoppingCart.html">
                <div class="logo-icon">🛒</div>
            </a>
        </div>
    </div>


</header>
<nav class="nav-menu">
    <ul>
        <li class="sub">
            <a href="#" class="sub-item">
                <i class="fas fa-camera"></i>
                <span>MÁY ẢNH CANON</span>
            </a>
            <div class="null">
                <ul class="sub-menu">
                    <li><a href="CanonDSLR" class="nav-item" >MÁY ẢNH CANON DSLR</a></li>
                    <li><a href="CanonCompact" class="nav-item" >MÁY ẢNH CANON COMPACT</a></li>
                    <li><a href="CanonMirrorless" class="nav-item" >MÁY ẢNH CANON MIRRORLESS</a></li>
                    <li><a href="/Project/Product/canon-ongkinh.html" class="nav-item" >ỐNG KÍNH CANON</a></li>
                </ul>
            </div>
        </li>
    </ul>

    <ul>
        <li class="sub">
            <a href="#" class="sub-item">
                <i class="fas fa-camera"></i>
                <span>MÁY ẢNH SONY</span>
            </a>
            <div class="null">
                <ul class="sub-menu">
                    <li><a href="SonyCompact" class="nav-item" >MÁY ẢNH SONY COMPACT</a></li>
                    <li><a href="/Project/Product/sony-mirrorless.html" class="nav-item" >MÁY ẢNH SONY MIRRORLESS</a></li>
                    <li><a href="/Project/Product/sony-ongkinh.html" class="nav-item" >ỐNG KÍNH SONY</a></li>
                </ul>
            </div>
        </li>
    </ul>

    <ul>
        <li class="sub">
            <a href="#" class="sub-item">
                <i class="fas fa-camera"></i>
                <span>MÁY ẢNH NIKON</span>
            </a>
            <div class="null">
                <ul class="sub-menu">
                    <li><a href="/Project/Product/nikon-compact.html" class="nav-item">MÁY ẢNH NIKON COMPACT</a></li>
                    <li><a href="/Project/Product/nikon-mirrorless.html" class="nav-item">MÁY ẢNH NIKON MIRRORLESS</a></li>
                    <li><a href="/Project/Product/nikon-ongkinh.html" class="nav-item">ỐNG KÍNH NIKON</a></li>
                </ul>
            </div>
        </li>
    </ul>

    <ul>
        <li class="sub">
            <a href="#" class="sub-item">
                <i class="fas fa-camera"></i>
                <span>MÁY ẢNH FUJIFILM</span>
            </a>
            <div class="null">
                <ul class="sub-menu">
                    <li><a href="#" class="nav-item">MÁY ẢNH FUJIFILM COMPACT</a></li>
                    <li><a href="#" class="nav-item">MÁY ẢNH FUJIFILM MIRRORLESS</a></li>
                    <li><a href="#" class="nav-item">ỐNG KÍNH FUJIFILM</a></li>
                </ul>
            </div>
        </li>
    </ul>

    <ul>
        <li class="sub">
            <a href="#" class="sub-item">
                <i class="fas fa-camera"></i>
                <span>MÁY ẢNH HÃNG KHÁC</span>
            </a>
            <div class="null">
                <ul class="sub-menu">
                    <li><a href="#" class="nav-item">MÁY ẢNH LUMIX</a></li>
                    <li><a href="#" class="nav-item">MÁY ẢNH LEICA</a></li>
                    <li><a href="#" class="nav-item">MÁY ẢNH SIGMA</a></li>
                </ul>
            </div>
        </li>
    </ul>

    <ul>
        <li class="sub">
            <a href="#" class="sub-item">
                <i class="fas fa-glasses"></i>
                <span>ỐNG KÍNH</span>
            </a>
            <div class="null">
                <ul class="sub-menu">
                    <li><a href="OngKinh?cid=21" class="nav-item">ỐNG KÍNH CANON</a></li>
                    <li><a href="OnhKinh?cid=22" class="nav-item">ỐNG KÍNH SONY</a></li>
                    <li><a href="OnhKinh?cid=23" class="nav-item">ỐNG KÍNH NIKON</a></li>
                    <li><a href="OnhKinh?cid=24" class="nav-item">ỐNG KÍNH FUJIFILM</a></li>
                    <li><a href="OnhKinh?cid=25" class="nav-item">ỐNG KÍNH LUMIX</a></li>
                    <li><a href="OnhKinh?cid=26" class="nav-item">ỐNG KÍNH LEICA</a></li>
                    <li><a href="OnhKinh?cid=27" class="nav-item">ỐNG KÍNH SIGMA</a></li>

                </ul>
            </div>
        </li>
    </ul>

    <ul>
        <li class="sub">
            <a href="#" class="sub-item">
                <i class="fas fa-headphones"></i>
                <span>PHỤ KIỆN MÁY ẢNH</span>
            </a>
            <div class="null">
                <ul class="sub-menu">
                    <li><a href="PhuKien?cid=28" class="nav-item">BAO ĐỰNG MÁY ẢNH</a></li>
                    <li><a href="PhuKien?cid=29" class="nav-item">CHÂN MÁY ẢNH</a></li>
                    <li><a href="PhuKien?cid=30" class="nav-item">THẺ NHỚ MÁY ẢNH</a></li>
                    <li><a href="PhuKien?cid=31" class="nav-item">SẠC MÁY ẢNH</a></li>
                    <li><a href="PhuKien?cid=32" class="nav-item">TỦ CHỐNG ẨM</a></li>
                    <li><a href="PhuKien?cid=33" class="nav-item">ĐÈN CHỤP FLASH</a></li>
                </ul>
            </div>
        </li>
    </ul>
    <ul>
        <li class="sub">
            <a href="/Project/Quan%20Ly%20User/quanlyuser.html" class="sub-item">
                <i class="fas fa-camera"></i>
                <span>QUẢN LÝ USER</span>
            </a>
        </li>
    </ul>
</nav>
<!--body-->
<div class="slider-container">
    <div class="slider-wrapper" id="sliderWrapper">
        <!-- Slide 1 -->
        <div class="slide">
            <div class="slide-content">
                <h2>Máy ảnh Canon EOS R50</h2>
                <div class="price">Giá từ 18.990.000 VNĐ</div>
                <div class="description">
                    <h3>Máy ảnh Canon EOS R50</h3>
                    <p>Canon R50 với cảm biến APS-C CMOS 24.2MP cùng trọng lượng nhẹ 375g giúp người dùng dễ dàng
                        mang theo và sử dụng. Đồng thời, Canon EOS R50 mang đến khả năng quay video ấn tượng với độ
                        phân giải cao 4K 30p và Full HD 120p, đáp ứng mọi nhu cầu sáng tạo của bạn. Cùng với đó là
                        khả năng chụp hình liên tục lên đến 15 khung hình mỗi giây trên máy ảnh Canon này.</p>
                </div>
                <button class="order-btn">Đặt hàng ngay</button>
            </div>
            <div class="slide-image">
                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/m/a/may-anh-canon-eos-r50_4_.png"
                     alt="Camera Lens">
            </div>
        </div>

        <!-- Slide 2 -->
        <div class="slide">
            <div class="slide-content">
                <h2>Sony Alpha A7 IV</h2>
                <div class="price">Giá từ 52.990.000 VNĐ</div>
                <div class="description">
                    <h3>Sony Alpha A7 IV - Máy ảnh Full-frame</h3>
                    <p>Máy ảnh mirrorless full-frame với cảm biến 33MP, khả năng quay video 4K 60fps, hệ thống lấy
                        nét tự động thông minh với AI, và thời lượng pin vượt trội. Thiết bị hoàn hảo cho cả nhiếp
                        ảnh và quay phim chuyên nghiệp.</p>
                </div>
                <button class="order-btn">Đặt hàng ngay</button>
            </div>
            <div class="slide-image">
                <img src="https://d1ncau8tqf99kp.cloudfront.net/converted/92650_original_local_1200x1050_v3_converted.webp"
                     alt="Sony Camera">
            </div>
        </div>

        <!-- Slide 3 -->
        <div class="slide">
            <div class="slide-content">
                <h2>Nikon ZR 6K Cinema Camera</h2>
                <div class="price">Giá từ 58.790.000 VNĐ</div>
                <div class="description">
                    <h3>Nikon ZR 6K Cinema Camera</h3>
                    <p>Máy ảnh full-frame 24.2MP với khả năng chụp liên tiếp 40fps, ổn định hình ảnh 8 stops, quay
                        video 6K oversampled 4K. Thiết kế chắc chắn, thời lượng pin tuyệt vời, hoàn hảo cho nhiếp
                        ảnh thể thao và động vật hoang dã.</p>
                </div>
                <button class="order-btn">Đặt hàng ngay</button>
            </div>
            <div class="slide-image">
                <img src="https://giangduydat.vn/product/nikon-zr-6k-cinema-camera.jpg" alt="Canon Camera">
            </div>
        </div>

        <!-- slide 4 -->
        <div class="slide">
            <div class="slide-content">
                <h2>Fujifilm X-E5</h2>
                <div class="price">Giá từ 58.790.000 VNĐ</div>
                <div class="description">
                    <h3>Fujifilm X-E5</h3>
                    <p>Máy ảnh Fujifilm X-E5 Với cảm biến APS-C X-Trans CMOS 5 HR 40.2MP, khả năng quay video 6.2K,
                        hệ thống chống rung 5 trục tích hợp (IBIS), lấy nét tự động hỗ trợ AI cùng thiết kế
                        rangefinder thanh lịch, X-E5 mang đến trải nghiệm nhiếp ảnh chất lượng cao trong một thân
                        máy nhỏ gọn, tinh tế</p>
                </div>
                <button class="order-btn">Đặt hàng ngay</button>
            </div>
            <div class="slide-image">
                <img src="https://giangduydat.vn/product/fujifilm-x-e5.jpg" alt="Canon Camera">
            </div>
        </div>
    </div>

    <!-- Dots Navigation -->
    <div class="dots-container" id="dotsContainer">
        <div class="dot active" data-index="0"></div>
        <div class="dot" data-index="1"></div>
        <div class="dot" data-index="2"></div>
        <div class="dot" data-index="3"></div>
    </div>
</div>

<!-- Main Content -->
<main id="main-page-content">
    <div class="container">
        <div class="brand-container">
            <div class="brand-item">
                <img src="https://mayanhvietnam.com/asset/imgs/icon/hang-san-xuat/canon.svg" alt="Canon">
            </div>
            <div class="brand-item">
                <img src="https://mayanhvietnam.com/asset/imgs/icon/hang-san-xuat/sony.svg" alt="Sony">
            </div>
            <div class="brand-item">
                <img src="https://mayanhvietnam.com/asset/imgs/icon/hang-san-xuat/nikon.svg" alt="Nikon">
            </div>
            <div class="brand-item">
                <img src="https://mayanhvietnam.com/asset/imgs/icon/hang-san-xuat/fujifilm.svg" alt="Fujifilm">
            </div>
            <div class="brand-item">
                <img src="https://mayanhvietnam.com/asset/imgs/icon/hang-san-xuat/olympus.svg" alt="Lumix">
            </div>
            <div class="brand-item">
                <img src="https://mayanhvietnam.com/asset/imgs/icon/hang-san-xuat/leica.svg" alt="Leica">
            </div>
            <div class="brand-item">
                <img src="https://mayanhvietnam.com/asset/imgs/icon/hang-san-xuat/sigma.svg" alt="Sigma">
            </div>
        </div>
        <div class="cover-product-item">
            <c:if test="${empty list}">
                <div style="text-align: center; width: 100%;">
                    <h3 style="color: red;">Không có sản phẩm nào!</h3>
                </div>
            </c:if>

            <c:forEach var="p" items="${list}">
                <div class="product-card-item">

                    <a href="detail?id=${p.productID}" style="text-decoration: none; color: inherit;">

                        <img src="${p.img}" class="product-img" alt="${p.productName}">
                        <h3 class="product-name">${p.productName}</h3>

                        <p class="product-price">
                            <fmt:formatNumber value="${p.price}" type="number" groupingUsed="true"/>₫
                        </p>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</main>
<!-- category-->
<section class="category-slider">
    <h2>Danh mục nổi bật</h2>
    <div class="slider-container">
        <button class="slider-btn prev">&#10094;</button>

        <div class="slider-track">
            <div class="category-item">
                <img src="https://mayanhvietnam.com/asset/imgs/img/danhMuc_MayAnh.webp" alt="Máy ảnh">
                <p>Máy ảnh Canon</p>
            </div>
            <div class="category-item">
                <img src="https://mayanhvietnam.com/asset/imgs/img/danhMuc_ongkinh.webp" alt="Ống kính">
                <p>Ống kính</p>
            </div>
            <div class="category-item">
                <img src="https://mayanhvietnam.com/image-data/san-pham/23-04/23-04-18/230418180440520/avatar/nikon-z6-ii-500x500_may-anh-nikon-z6-ii-body-only-chinh-hang.jpg" alt="Máy ảnh Nikon">
                <p>Máy ảnh Nikon</p>
            </div>
            <div class="category-item">
                <img src="https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140" alt="Máy ảnh Sony">
                <p>Máy ảnh Sony</p>
            </div>
            <div class="category-item">
                <img src="https://mayanhvietnam.com/image-data/san-pham/23-02/23-02-10/230210224805083/avatar/01_may-anh-compact-ricoh-gr-iii-standard-chinh-hang.jpg" alt="Máy ảnh hãng khác">
                <p>Máy ảnh hãng khác</p>
            </div>
            <div class="category-item">
                <img src="https://mayanhvietnam.com/asset/imgs/img/danhMuc_phuKien.webp" alt="Phụ kiện máy ảnh">
                <p>Phụ kiện máy ảnh</p>
            </div>
        </div>

        <button class="slider-btn next">&#10095;</button>
    </div>
</section>
<!--footer-->
<footer class="footer">
    <div class="footer-content">
        <!-- Logo Section -->
        <div class="footer-section logo-section">
            <div class="logo">
                <div class="logo-icon">📷</div>
                <div class="logo-text">
                    <h2>GROUP11</h2>
                    <p>Vì lời tín khách hàng</p>
                </div>
            </div>
            <p class="description">
                Máy Ảnh Việt Nam là đơn vị tiên phong trong lĩnh vực phân phối và bán lẻ các sản phẩm máy ảnh tại
                thị trường Việt Nam.
            </p>
            <div class="social-icons">
                <div class="social-icon">📘</div>
                <div class="social-icon">📺</div>
                <div class="social-icon">📸</div>
                <div class="social-icon">🐦</div>
                <div class="social-icon">📍</div>
            </div>
            <div class="payment-methods">
                <h4 style="color: #fff; margin-bottom: 15px;">PHƯƠNG THỨC THANH TOÁN</h4>
                <div class="payment-icons">
                    <div class="payment-icon">💳 VISA</div>
                    <div class="payment-icon">💳 MC</div>
                    <div class="payment-icon">💳 JCB</div>
                    <div class="payment-icon">💳 Napas</div>
                    <div class="payment-icon">💳 Home</div>
                    <div class="payment-icon">💳 Momo</div>
                </div>
            </div>
        </div>

        <!-- Policies Section -->
        <div class="footer-section">
            <h3>Chính sách</h3>
            <ul class="policy-links">
                <li><a href="#">Chính Sách Bảo Hành</a></li>
                <li><a href="#">Chính Sách Thanh Toán</a></li>
                <li><a href="#">Chính Sách Đổi Trả, Hoàn Tiền</a></li>
                <li><a href="#">Chính Sách Vận Chuyển</a></li>
                <li><a href="#">Chính Sách Bảo Mật Thông Tin Khách Hàng</a></li>
                <li><a href="#">Thông Tin Liên Hệ</a></li>
            </ul>
            <h3 style="margin-top: 30px;">Thông tin liên hệ</h3>
            <ul class="contact-info">
                <li>
                    <span class="icon">📄</span>
                    <span><strong>Fanpage:</strong>GROUP11</span>
                </li>
                <li>
                    <span class="icon">✉️</span>
                    <span><strong>Email:</strong> 23130364@st.hcmuaf.edu.vn</span>
                </li>
            </ul>
        </div>

        <!-- Store Locations Section -->
        <div class="footer-section">
            <h3>Thành viên Group 11</h3>
            <div class="location-item">
                <strong>Trần Anh Tú - 23130364</strong>
            </div>
            <div class="location-item">
                <strong>Trần Công Vinh - 23130384</strong>
            </div>
            <div class="location-item">
                <strong>Nguyễn Thúy Vy - 23130394</strong>
            </div>
        </div>
    </div>
</footer>
<script src="js/javascript.js"></script>
</body>

</html>