<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sản phẩm</title>
    <!-- THÊM DÒNG NÀY ĐỂ LẤY CONTEXT PATH -->
    <c:set var="contextPath" value="${pageContext.request.contextPath}" />

    <!-- SỬA TẤT CẢ ĐƯỜNG DẪN CSS -->
    <link rel="stylesheet" href="${contextPath}/css/header.css">
    <link rel="stylesheet" href="${contextPath}/css/footer.css">
    <link rel="stylesheet" href="${contextPath}/css/Product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link rel="stylesheet" href="${contextPath}/css/index.css">
    <link rel="stylesheet" href="${contextPath}/css/spnoibat.css">
    <link rel="stylesheet" href="${contextPath}/css/ctsp.css">

</head>
<body>
<!--header-->
<header class="header">
    <div class="header-top">
        <div class="logo-search">
            <a href="/Project/index.html" class="logo">
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
            <a href="/Project/Login/login.html">
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
                    <li><a href="/Project/Product/canon-dslr.html" class="nav-item" >MÁY ẢNH CANON DSLR</a></li>
                    <li><a href="/Project/Product/canon-compact.html" class="nav-item" >MÁY ẢNH CANON COMPACT</a></li>
                    <li><a href="/Project/Product/canon-mirrorless.html" class="nav-item" >MÁY ẢNH CANON MIRRORLESS</a></li>
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
                    <li><a href="/Project/Product/sony-compact.html" class="nav-item" >MÁY ẢNH SONY COMPACT</a></li>
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
                    <li><a href="#" class="nav-item">ỐNG KÍNH CANON</a></li>
                    <li><a href="#" class="nav-item">ỐNG KÍNH SONY</a></li>
                    <li><a href="#" class="nav-item">ỐNG KÍNH NIKON</a></li>
                    <li><a href="#" class="nav-item">ỐNG KÍNH FUJIFILM</a></li>
                    <li><a href="#" class="nav-item">ỐNG KÍNH LUMIX</a></li>
                    <li><a href="#" class="nav-item">ỐNG KÍNH LEICA</a></li>
                    <li><a href="#" class="nav-item">ỐNG KÍNH DIGMA</a></li>

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
                    <li><a href="#" class="nav-item">BAO ĐỰNG MÁY ẢNH</a></li>
                    <li><a href="#" class="nav-item">CHÂN MÁY ẢNH</a></li>
                    <li><a href="#" class="nav-item">THẺ NHỚ MÁY ẢNH</a></li>
                    <li><a href="#" class="nav-item">SẠC MÁY ẢNH</a></li>
                    <li><a href="#" class="nav-item">TỦ CHỐNG ẨM</a></li>
                    <li><a href="#" class="nav-item">ĐÈN CHỤP FLASH</a></li>
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
<div class="product">
    <div class="product-left">
        <div class="main-box">
            <!-- Hiển thị ảnh chính của sản phẩm -->
            <img id="mainImage" src="${product.img}" alt="${product.productName}">
        </div>
        <div class="small-boxes">
            <!-- Có thể thêm các ảnh phụ -->
            <div class="small-box">
                <img src="${product.img}" alt="Ảnh 1" onclick="changeImage(this)">
            </div>
        </div>
    </div>

    <div class="product-right">
        <!-- Hiển thị tên sản phẩm -->
        <h1>${product.productName}</h1>

        <!-- Hiển thị giá -->
        <p class="label">Giá chính hãng:</p>
        <p class="price">
            <c:choose>
                <c:when test="${product.newPrice > 0 && product.newPrice < product.price}">
                    <span style="text-decoration: line-through; color: #777; margin-right: 10px;">
                        <fmt:formatNumber value="${product.price}" type="number" groupingUsed="true"/>₫
                    </span>
                    <span style="color: #ff0000;">
                        <fmt:formatNumber value="${product.newPrice}" type="number" groupingUsed="true"/>₫
                    </span>
                </c:when>
                <c:otherwise>
                    <fmt:formatNumber value="${product.price}" type="number" groupingUsed="true"/>₫
                </c:otherwise>
            </c:choose>
        </p>

        <!-- Hiển thị thông tin sản phẩm -->
        <div class="info-row">
            <p>Thương hiệu: <span class="brand">${product.brand}</span></p>
            <p>Mã sản phẩm: <span class="code">${product.productID}</span></p>
        </div>

        <div class="button-group">
            <!-- Link MUA HÀNG với ID sản phẩm -->
            <a href="/Project/ThanhToan&DatHang/ttdh.html?id=${product.productID}" class="buy-now">MUA HÀNG</a>

            <!-- Nút thêm vào giỏ hàng -->
            <button class="add-cart" onclick="addToCart(${product.productID})">THÊM VÀO GIỎ</button>

            <!-- Nút đánh giá -->
            <a href="/Project/Product%20Review/ProductReview.html?id=${product.productID}" class="review-button">
                <i class="fas fa-star"></i> Đánh giá
            </a>
        </div>

        <!-- Thông số kỹ thuật -->
        <h2 style="margin-top: 30px;">Thông số kỹ thuật</h2>
        <div class="product-specs">
            <table>
                <tr><td>Mã sản phẩm</td><td>${product.productID}</td></tr>
                <tr><td>Tên sản phẩm</td><td>${product.productName}</td></tr>
                <tr><td>Thương hiệu</td><td>${product.brand}</td></tr>
                <tr><td>Giá</td><td><fmt:formatNumber value="${product.price}" type="number" groupingUsed="true"/>₫</td></tr>
                <tr><td>Loại</td><td>Máy ảnh</td></tr>
            </table>
        </div>
    </div>
</div>
<section class="cover-all-feedback">
    <div class="container-sp">
        <div class="title-feedback">
            <p class="title">Đánh giá sản phẩm</p>
            <p>Xem tất cả ></p>
        </div>
        <div class="cover-feedback">
            <div class="left-feedback">
                <fmt:formatNumber value="${((star5 * 5) + (star4 * 4) + (star3 * 3) + (star2 * 2) + (star1)) * 1.0 / totalReview }" pattern="#.#"/>
                <p class="stars">★★★★★</p>
            </div>
            <div class="right-feedback">
                <div class="cover-line">5 <div class="line-feedback star5"></div></div>
                <div class="cover-line">4 <div class="line-feedback star4"></div></div>
                <div class="cover-line">3 <div class="line-feedback star3"></div></div>
                <div class="cover-line">2 <div class="line-feedback star2"></div></div>
                <div class="cover-line">1 <div class="line-feedback star1"></div></div>
            </div>
        </div>
        <div class="cover-comment">
            <c:forEach var="h" items="${rw}">
                <div class="cmt">
                    <div class="cover-user">
                        <img src="https://www.svgrepo.com/show/452030/avatar-default.svg" alt="">
                        <div class="feedback-user">
                            <span>${h.name}</span>
                            <div class="cover-feedback-date">
                                <p class="stars-comment">
                                    <c:forEach begin="1" end="${h.stars}">★</c:forEach><c:forEach begin="1" end="${5 - h.stars}">☆</c:forEach>
                                </p>
                                <span class="date">${h.created_at}</span>
                            </div>
                        </div>
                    </div>
                    <div class="cmt-user">${h.content}</div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<!--</div>-->
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

        <div class="footer-section">
            <h3>Thành viên Group 11</h3>
            <div class="location-item">
                <strong>Trần Anh Tú - 23130364 </strong>
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
</body>
</html>
