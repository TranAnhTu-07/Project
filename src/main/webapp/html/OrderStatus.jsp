<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Theo dõi đơn hàng</title>
    <link rel="stylesheet" href="../css/OrderStatus.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
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
<div class="container">
    <div class="header-body">
        <h1>🚚 Theo Dõi Đơn Hàng</h1>
        <p>Cập nhật trạng thái đơn hàng của bạn</p>
    </div>

<%--    Thông tin đơn hàng--%>

    <div class="order">
        <div class="content">
            <div class="order-info">
                <div class="order-info-grid">
                    <div class="info-item">
                        <div class="info-label">Mã Đơn Hàng</div>
                        <div class="info-value">#${order.orderCode}</div>
                    </div>
                    <div class="info-item">
                        <div class="info-label">Ngày Đặt Hàng</div>
                        <div class="info-value">${order.orderDate}</div>
                    </div>
                    <div class="info-item">
                        <div class="info-label">Trạng Thái</div>
                        <div class="info-value">
                            <span class="badge badge-info">${order.status}</span>
<%--                            <span class="badge ${order.status == 'Đang Giao Hàng' ? 'badge-warning' : 'badge-success'}">--%>
<%--                                ${order.status}--%>
<%--                            </span>--%>
                        </div>
                    </div>
                    <div class="info-item">
                        <div class="info-label">Dự Kiến Giao</div>
                        <div class="info-value">${order.expectedDelivery}</div>
                    </div>
                </div>
            </div>

<%--            Danh sách sản phẩm--%>

            <div class="products">
                <h3 class="products-title">Sản Phẩm Trong Đơn Hàng</h3>

<%--                tính tổng tiền--%>
                <c:set var="total" value="0" />
                <c:forEach var="item" items="${items}">
                    <c:set var="total" value="${total + item.price * item.quantity}" />
                </c:forEach>

<%--                hiển thị danh sách--%>
                <c:forEach var="item" items="${items}">
                    <div class="product-item">
                        <div class="product-info">
                            <div class="product-name">${item.productName}</div>
<%--                            <img src="${item.image}" width="60">--%>
                            <div class="product-details">
                                Màu: ${item.color} | Số lượng: ${item.quantity}
                            </div>
                        </div>
                        <div class="product-price">
                            <fmt:formatNumber value="${item.price * item.quantity}" type="number" groupingUsed="true"/>đ
                        </div>
                    </div>
                </c:forEach>

<%--                tổng tiền--%>
                <div class="total">
                    <div class="total-label">Tổng Thanh Toán:</div>
                    <div class="total-amount">
                        <fmt:formatNumber value="${total}" type="number" groupingUsed="true"/>₫
                    </div>
                </div>

            </div>
        </div>

<%--        Timeline trạng thái--%>

        <div class="status-timeline">
            <h2 class="timeline-title">Tiến Trình Đơn Hàng</h2>

            <div class="timeline">
                <c:forEach var="st" items="${statuses}" varStatus="loop">

                    <!-- Mặc định: completed -->
                    <c:set var="itemClass" value="timeline-item completed"/>

                    <!-- Nếu là trạng thái cuối cùng -->
                    <c:if test="${loop.last}">
                        <c:set var="itemClass" value="timeline-item active"/>
                    </c:if>

                    <div class="${itemClass}">
                        <div class="timeline-dot"></div>

                        <div class="timeline-content">

                            <!-- ICON + TRẠNG THÁI -->
                            <div class="timeline-status">
                                <c:choose>
                                    <c:when test="${st.status == 'Đang Giao Hàng'}">🚚</c:when>
                                    <c:when test="${st.status == 'Giao Hàng Thành Công'}">✅</c:when>
                                    <c:otherwise>✓</c:otherwise>
                                </c:choose>
                                    ${st.status}
                            </div>

                            <!-- THỜI GIAN -->
                            <div class="timeline-date">
                                <fmt:formatDate value="${st.statusTime}" pattern="dd/MM/yyyy - HH:mm"/>
                            </div>

                            <!-- MÔ TẢ -->
                            <div class="timeline-description">
                                    ${st.description}
                            </div>

                        </div>
                    </div>

                </c:forEach>
            </div>
        </div>

    </div>
</div>
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

</div>
</body>
</html>