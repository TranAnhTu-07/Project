<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sản phẩm</title>
    <script src="index.js"></script>
    <link rel="stylesheet" href="../css/ctsp.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/cart.css">

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
            <img id="mainImage" src="https://bizweb.dktcdn.net/100/107/650/products/may-anh-canon-eos-1500d-lens-ef-s-18-55mm-f35-56-01-500x500.jpg?v=1746594828383" alt="Ảnh chính">
        </div>
        <div class="small-boxes">
            <div class="small-box">
                <img src="https://bizweb.dktcdn.net/thumb/large/100/107/650/products/may-anh-canon-eos-1500d-lens-ef-s-18-55mm-f35-56-02-500x500.jpg?v=1746594828863" alt="Ảnh nhỏ 1" onclick="changeImage(this)">
            </div>
            <div class="small-box">
                <img src="https://bizweb.dktcdn.net/thumb/large/100/107/650/products/may-anh-canon-eos-1500d-lens-ef-s-18-55mm-f35-56-03-500x500.jpg?v=1746594829347" alt="Ảnh nhỏ 2" onclick="changeImage(this)">
            </div>
            <div class="small-box">
                <img src="https://bizweb.dktcdn.net/thumb/large/100/107/650/products/may-anh-canon-eos-1500d-lens-ef-s-18-55mm-f35-56-04-500x500.jpg?v=1746594830023" alt="Ảnh nhỏ 3" onclick="changeImage(this)">
            </div>
        </div>
    </div>

    <div class="product-right">
        <h1>MÁY ẢNH CANON EOS 1500D + LENS EF-S 18-55MM f/3.5-5.6 II</h1>
        <p class="label">Giá chính hãng:</p>
        <p class="price">10,300,000đ</p>

        <div class="info-row">
            <p>Thương hiệu: <span class="brand">CANON</span></p>
            <p>Số Lượng: <span class="in-stock">100</span></p>
        </div>

        <div class="button-group">

            <a href="/Project/ThanhToan&DatHang/ttdh.html" class="buy-now">MUA HÀNG</a>

            <a href="/Project/GioHang/cart.html"  class="add-cart">THÊM VÀO GIỎ</a>
            <!-- NÚT ĐÁNH GIÁ -->
            <a href="/Project/Product%20Review/ProductReview.html" class="review-button">
                <i class="fas fa-star"></i> Đánh giá
            </a>
        </div>
        <!-- POPUP THÊM VÀO GIỎ -->
        <div id="popupCart" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>

                <!-- Khối bạn gửi -->
                <div class="cart-container">
                    <div class="product-image">
                        <img src="https://mayanhvietnam.com/image-data/san-pham/24-08/24-08-01/240801170455500/avatar/638692503741569353_may-anh-canon-eos-r100-hang.jpg" alt="Máy ảnh Canon EOS R100">
                    </div>

                    <div class="product-info">
                        <h2>Máy ảnh Canon EOS R100 (Hàng chính hãng)</h2>
                        <p class="price">Giá: 11.500.000 đ</p>

                        <div class="quantity">
                            <label>Số lượng:</label>
                            <button class="btn-minus">-</button>
                            <input type="number" id="quantity" value="1" min="1">
                            <button class="btn-plus">+</button>
                        </div>

                        <p class="total">Tổng tiền: <span id="totalPrice">11.500.000 đ</span></p>

                        <button class="add-to-cart">Thêm vào giỏ hàng</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
    <h2>Thông số</h2>

    <div id="specs" class="tab">
        <div class="product-specs">
            <table>
                <tr><td>ISO</td><td>100 đến 12,800</td></tr>
                <tr><td>Tốc độ màn trập</td><td>1/4000 đến 30 giây</td></tr>
                <tr><td>Độ phân giải</td><td>24.1MP</td></tr>
                <tr><td>Loại cảm biến</td><td>CMOS</td></tr>
                <tr><td>Đo sáng</td><td>Center-Weighted Average, Evaluative, Partial, Spot</td></tr>
                <tr><td>Hẹn giờ chụp</td><td>Độ trễ 2/10 giây</td></tr>
                <tr><td>Định dạng cảm biến</td><td>24.1MP APS-C CMOS</td></tr>
                <tr><td>Tỉ lệ ảnh</td><td>3:2</td></tr>
                <tr><td>Định dạng ảnh</td><td>C-RAW, JPEC, RAW</td></tr>
                <tr><td>Mã hoá video</td><td>NTSC/PAL</td></tr>
                <tr><td>Micro</td><td>Stereo</td></tr>
                <tr><td>Kiểu lấy nét</td><td>Auto và Manual Focus</td></tr>
                <tr><td>Đèn flash</td><td>Không</td></tr>
            </table>
        </div>
    </div>
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
<script src="../js/modal-cart.js"></script>
<script src="../js/cart.js"></script>
</body>
</html>
