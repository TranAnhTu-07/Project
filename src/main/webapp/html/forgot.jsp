<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

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
<main class="login-page">
    <nav class="breadcrumb-nav">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/ListProduct">Trang chủ</a></li>
            <li class="breadcrumb-item active"><a href="#">Quên mật khẩu</a></li>
        </ul>
    </nav>

    <div class="login-box">
        <div class="form-login">
            <h2>Khôi phục mật khẩu</h2>

            <c:if test="${not empty error}">
                <div style="color: red; text-align: center; margin-bottom: 15px; font-weight: bold;">
                    <i class="fas fa-exclamation-triangle"></i> ${error}
                </div>
            </c:if>
            <c:if test="${not empty message}">
                <div style="color: green; text-align: center; margin-bottom: 15px; font-weight: bold;">
                    <i class="fas fa-check-circle"></i> ${message}
                </div>
            </c:if>

            <div class="tabs">
                <button type="button" class="tab-btn active" onclick="switchTab(event, 'tab-email')">
                    <i class="fas fa-envelope"></i> Qua Email
                </button>
                <button type="button" class="tab-btn" onclick="switchTab(event, 'tab-phone')">
                    <i class="fas fa-mobile-alt"></i> Qua SĐT
                </button>
            </div>

            <div id="tab-email" class="tab-content active">
                <form action="${pageContext.request.contextPath}/Forgot" method="POST">
                    <p style="text-align: center; color: #555; margin-bottom: 20px; font-size: 14px;">
                        Nhập email đã đăng ký để nhận link đặt lại mật khẩu.
                    </p>
                    <div class="input-group">
                        <input type="email" name="email" value="${email}" placeholder="Nhập Email đã đăng ký" required>
                    </div>
                    <button type="submit" class="btn-login">Gửi Link Xác Nhận</button>
                </form>
            </div>

            <div id="tab-phone" class="tab-content">
                <form action="${pageContext.request.contextPath}/ResetPassword" method="POST" id="phoneForm">
                    <input type="hidden" name="type" value="phone">

                    <div class="input-group">
                        <div class="input-row"> <input type="text" id="phoneInput" name="phone" placeholder="Nhập SĐT (VD: 0912...)" required value="${phone}">
                            <button type="button" class="btn-otp" onclick="sendOTP()" id="btnGetCode">Lấy mã</button>
                        </div>
                    </div>

                    <div id="step-2-otp" style="display: none;">
                        <div class="input-group">
                            <div class="input-row">
                                <input type="text" id="otpInput" placeholder="Nhập mã OTP (123456)">
                                <button type="button" class="btn-otp" style="background-color: #ffc107; color: black; border-color: #ffc107;" onclick="verifyOTP()">Xác nhận</button>
                            </div>
                        </div>
                    </div>

                    <div id="step-3-reset" style="display: none; border-top: 1px dashed #666; padding-top: 20px; margin-top: 10px;">
                        <p style="text-align: center; color: green; font-weight: bold; margin-bottom: 15px;">
                            <i class="fas fa-check"></i> SĐT chính chủ! Mời đặt mật khẩu mới.
                        </p>

                        <div class="input-group password-wrapper" style="position: relative;">
                            <input type="password" id="new-pass" name="password" placeholder="Mật khẩu mới" required>
                            <span class="toggle-btn" onclick="togglePassword('new-pass', this)" style="position: absolute; right: 15px; top: 15px; cursor: pointer; color: #666;">
                                <i class="fa-solid fa-eye-slash"></i>
                            </span>
                        </div>

                        <div class="input-group password-wrapper" style="position: relative;">
                            <input type="password" id="confirm-pass" name="confirm_password" placeholder="Nhập lại mật khẩu" required>
                            <span class="toggle-btn" onclick="togglePassword('confirm-pass', this)" style="position: absolute; right: 15px; top: 15px; cursor: pointer; color: #666;">
                                <i class="fa-solid fa-eye-slash"></i>
                            </span>
                        </div>
                        <button type="submit" class="btn-login">Đổi Mật Khẩu Ngay</button>
                    </div>
                </form>
            </div>

            <div class="register-link">
                <p>Đã nhớ mật khẩu? <a href="${pageContext.request.contextPath}/html/login.jsp">Đăng nhập ngay</a></p>
            </div>
        </div>
    </div>
</main>

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
                <strong>Trần Anh Tú - 23130364 </strong>
            </div>
            <div class="location-item">
                <strong>Trần Công Vinh - 23130384 </strong>
            </div>
            <div class="location-item">
                <strong>Nguyễn Thúy Vy - 23130394 </strong>
            </div>
        </div>
    </div>
</footer>

<script>
    //0 con mắt
    function togglePassword(fieldId, iconSpan) {
        var passInput = document.getElementById(fieldId);
        var eyeIcon = iconSpan.querySelector("i");

        if (passInput.type === "password") {
            passInput.type = "text";
            // Giữ nguyên fa-solid, chỉ đổi icon
            eyeIcon.classList.remove("fa-eye-slash");
            eyeIcon.classList.add("fa-eye");
        } else {
            passInput.type = "password";
            eyeIcon.classList.remove("fa-eye");
            eyeIcon.classList.add("fa-eye-slash");
        }
    }
    // 1. Chuyển Tab
    function switchTab(evt, tabName) {
        var i, tabcontent, tablinks;
        // Ẩn hết nội dung tab
        tabcontent = document.getElementsByClassName("tab-content");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
            tabcontent[i].classList.remove("active");
        }
        // Bỏ active ở các nút tab
        tablinks = document.getElementsByClassName("tab-btn");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        // Hiện tab cần hiện
        document.getElementById(tabName).style.display = "block";
        document.getElementById(tabName).classList.add("active");
        evt.currentTarget.className += " active";
    }

    // 2. Fake Gửi OTP
    function sendOTP() {
        var phone = document.getElementById("phoneInput").value;
        var btn = document.getElementById("btnGetCode");

        if(phone.length < 9) {
            alert("Vui lòng nhập số điện thoại hợp lệ!");
            return;
        }

        // Hiệu ứng Loading
        btn.innerText = "Đang gửi...";
        btn.disabled = true;
        btn.style.cursor = "not-allowed";

        setTimeout(() => {
            alert("Mã OTP (Demo): 123456");
            document.getElementById("step-2-otp").style.display = "block";
            btn.innerText = "Gửi lại";
            btn.disabled = false;
            btn.style.cursor = "pointer";
        }, 1000); // Giả vờ đợi 1 giây
    }

    // 3. Fake Xác thực OTP
    function verifyOTP() {
        var code = document.getElementById("otpInput").value;
        if(code === "123456") {
            alert("Xác thực thành công!");
            // Ẩn OTP, khóa SĐT
            document.getElementById("step-2-otp").style.display = "none";
            document.getElementById("phoneInput").readOnly = true;
            document.getElementById("btnGetCode").style.display = "none";

            // Hiện form đổi pass
            document.getElementById("step-3-reset").style.display = "block";
        } else {
            alert("Mã OTP sai! Vui lòng nhập 123456");
        }
    }
</script>
</body>
</html>