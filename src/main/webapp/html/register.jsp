<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <script src="https://www.gstatic.com/firebasejs/9.6.1/firebase-app-compat.js"></script>
    <script src="https://www.gstatic.com/firebasejs/9.6.1/firebase-auth-compat.js"></script>
</head>
<body>

<header class="header">
    <div class="header-top">
        <div class="logo-search">
            <a href="${pageContext.request.contextPath}/ListProduct" class="logo">
                <div class="logo-icon">📷</div>
                <div class="logo-text">
                    <div class="logo-main">GROUP11</div>
                    <div class="logo-sub">Shop máy ảnh uy tín nhất Việt Nam</div>
                </div>
            </a>

            <div class="search-box">
                <form action="search" method="get" id="searchForm">
                    <input type="text" name="keyword" id="searchInput"
                           placeholder="Tìm kiếm sản phẩm..."
                           value="${param.keyword}"
                           autocomplete="off">
                    <button type="submit"><i class="fas fa-search"></i></button>
                    <div id="searchSuggestions" class="search-suggestions"></div>
                </form>
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

            <div id="custom-user-account" style="position: relative; display: flex; align-items: center; margin-left: 15px; height: 100%; cursor: pointer; z-index: 9999;">

                <c:choose>
                    <c:when test="${sessionScope.account == null}">
                        <a href="${pageContext.request.contextPath}/html/login.jsp"
                           style="color: white; text-decoration: none; display: flex; align-items: center; gap: 5px; font-weight: bold;">
                            <i class="fas fa-user"></i>
                            <span>Đăng nhập</span>
                        </a>
                    </c:when>

                    <c:otherwise>
                        <div class="user-trigger" style="display: flex; align-items: center; gap: 8px; color: white; font-weight: bold; padding: 10px 0;">
                            <i class="fas fa-user-circle" style="font-size: 22px; color: #28a745;"></i>
                            <span>${sessionScope.account.fullName}</span>
                            <i class="fas fa-caret-down" style="font-size: 14px; opacity: 0.8;"></i>
                        </div>

                        <div class="custom-dropdown-box">
                            <div style="padding: 12px 15px; background: #f8f9fa; border-bottom: 1px solid #eee; font-size: 11px; color: #888; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">
                                Tài khoản của tôi
                            </div>

                            <a href="profile" class="dropdown-item">
                                <i class="fas fa-id-card"></i> Hồ sơ cá nhân
                            </a>
                            <a href="profile" class="dropdown-item">
                                <i class="fas fa-history"></i> Lịch sử đơn hàng
                            </a>
                            <a href="logout" class="dropdown-item" style="color: #dc3545 !important; border-top: 1px solid #eee;">
                                <i class="fas fa-sign-out-alt"></i> Đăng xuất
                            </a>
                        </div>
                    </c:otherwise>
                </c:choose>

                <style>
                    /* Class cho hộp menu */
                    .custom-dropdown-box {
                        display: none; /* Mặc định ẩn */
                        position: absolute; /* Tuyệt đối so với cha */
                        top: 100%; /* Nằm ngay dưới đáy */
                        right: 0; /* Căn phải */
                        width: 230px; /* Chiều rộng cố định để không bị bể */
                        background-color: #ffffff !important; /* Nền trắng tuyệt đối */
                        box-shadow: 0 8px 20px rgba(0,0,0,0.15); /* Đổ bóng */
                        border-radius: 6px;
                        border: 1px solid #e1e1e1;
                        z-index: 99999; /* Luôn nổi lên trên cùng */
                        overflow: hidden; /* Cắt góc bo tròn */
                        margin-top: 5px; /* Cách header 1 xíu cho đẹp */
                    }

                    /* Mũi tên nhọn trang trí */
                    .custom-dropdown-box::before {
                        content: "";
                        position: absolute;
                        top: -6px;
                        right: 20px;
                        width: 12px;
                        height: 12px;
                        background: white;
                        transform: rotate(45deg);
                        border-top: 1px solid #e1e1e1;
                        border-left: 1px solid #e1e1e1;
                    }

                    /* Hover vào cha thì hiện con */
                    #custom-user-account:hover .custom-dropdown-box {
                        display: block !important;
                        animation: fadeInDrop 0.2s ease-out;
                    }

                    /* Style cho từng dòng link */
                    .dropdown-item {
                        display: block !important; /* Bắt buộc xuống dòng */
                        padding: 12px 15px !important;
                        color: #333333 !important; /* Màu chữ đen xám */
                        text-decoration: none !important;
                        font-size: 14px;
                        font-weight: 500;
                        background: white;
                        transition: all 0.2s;
                        text-align: left;
                        line-height: 1.5;
                    }

                    .dropdown-item i {
                        width: 25px;
                        text-align: center;
                        color: #666;
                        margin-right: 5px;
                    }

                    .dropdown-item:hover {
                        background-color: #f0f7ff !important;
                        color: #007bff !important;
                        padding-left: 20px !important; /* Hiệu ứng đẩy chữ */
                    }

                    .dropdown-item:hover i {
                        color: #007bff !important;
                    }

                    @keyframes fadeInDrop {
                        from { opacity: 0; transform: translateY(10px); }
                        to { opacity: 1; transform: translateY(0); }
                    }
                </style>
            </div>

            <a href="cart.jsp" style="margin-left: 15px; text-decoration: none;">
                <div class="logo-icon" style="font-size: 24px;">🛒</div>
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
                    <li><a href="/Project/Product/canon-dslr.html" class="nav-item">MÁY ẢNH CANON DSLR</a></li>
                    <li><a href="/Project/Product/canon-compact.html" class="nav-item">MÁY ẢNH CANON COMPACT</a></li>
                    <li><a href="/Project/Product/canon-mirrorless.html" class="nav-item">MÁY ẢNH CANON MIRRORLESS</a>
                    </li>
                    <li><a href="/Project/Product/canon-ongkinh.html" class="nav-item">ỐNG KÍNH CANON</a></li>
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
                    <li><a href="/Project/Product/sony-compact.html" class="nav-item">MÁY ẢNH SONY COMPACT</a></li>
                    <li><a href="/Project/Product/sony-mirrorless.html" class="nav-item">MÁY ẢNH SONY MIRRORLESS</a>
                    </li>
                    <li><a href="/Project/Product/sony-ongkinh.html" class="nav-item">ỐNG KÍNH SONY</a></li>
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
                    <li><a href="/Project/Product/nikon-mirrorless.html" class="nav-item">MÁY ẢNH NIKON MIRRORLESS</a>
                    </li>
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
            <li class="breadcrumb-item active"><a href="#">Đăng Ký</a></li>
        </ul>
    </nav>

    <div class="login-box">
        <div class="form-login">
            <h2>Đăng ký</h2>

            <c:if test="${not empty error}">
                <p style="color: red; text-align: center; font-weight: bold; margin-bottom: 10px;">${error}</p>
            </c:if>
            <c:if test="${not empty message}">
                <p style="color: green; text-align: center; font-weight: bold; margin-bottom: 10px;">${message}</p>
            </c:if>

            <div class="tabs">
                <button type="button" class="tab-btn active" onclick="openTab(event, 'tab-email')">Email</button>
                <button type="button" class="tab-btn" onclick="openTab(event, 'tab-phone')">Số điện thoại</button>
            </div>

            <div id="tab-email" class="tab-content active">
                <form action="${pageContext.request.contextPath}/Register" method="POST">
                    <input type="hidden" name="action" value="register_email">

                    <div class="input-group">
                        <input type="text" name="fullname" value="${fullname}" placeholder="Họ và Tên" required>
                    </div>
                    <div class="input-group">
                        <input type="email" name="email" value="${email}" placeholder="Nhập Email" required>
                    </div>

                    <div class="input-group" style="position: relative;">
                        <input type="password" id="password-email" name="password"
                               placeholder="Mật khẩu (Có Hoa, Thường, Số, Ký tự ĐB)" required>
                        <span onclick="togglePassword('password-email', this)"
                              style="position: absolute; right: 15px; top: 15px; cursor: pointer; color: #666;">
                            <i class="fa-solid fa-eye-slash"></i>
                        </span>
                    </div>

                    <button type="submit" class="btn-login">Đăng Ký</button>
                </form>
            </div>

            <div id="tab-phone" class="tab-content">
                <form action="${pageContext.request.contextPath}/Register" method="POST" id="phoneForm">
                    <input type="hidden" name="action" value="register_phone">

                    <div class="input-group">
                        <input type="text" name="fullname" value="${fullname}" placeholder="Họ và Tên" required>
                    </div>

                    <div class="input-group input-row">
                        <input type="text" id="phoneNumber" name="phone" value="${phone}" placeholder="Số điện thoại"
                               required>
                        <button type="button" class="btn-otp" id="btn-get-otp" onclick="guiOTP()">Lấy mã</button>
                    </div>

                    <div class="input-group input-row" id="otp-group" style="display:none;">
                        <input type="text" id="otpInput" placeholder="Nhập mã 6 số">
                        <button type="button" class="btn-otp" onclick="xacThucOTP()" style="background-color: #28a745;">
                            Xác nhận
                        </button>
                    </div>

                    <p id="otp-error" style="color: red; font-size: 13px; margin-top: 5px;"></p>

                    <div id="recaptcha-container" style="margin-bottom: 15px;"></div>

                    <div class="input-group" style="position: relative;">
                        <input type="password" id="password-phone" name="password" placeholder="Mật khẩu" required>
                        <span onclick="togglePassword('password-phone', this)"
                              style="position: absolute; right: 15px; top: 15px; cursor: pointer; color: #666;">
                <i class="fa-solid fa-eye-slash"></i>
            </span>
                    </div>

                    <button type="submit" class="btn-login" id="btnPhoneRegister" disabled
                            style="opacity: 0.6; cursor: not-allowed;">
                        Đăng Ký
                    </button>
                </form>
            </div>

            <div class="register-link">
                <p>Đã có tài khoản? <a href="${pageContext.request.contextPath}/html/login.jsp">Đăng nhập ngay</a></p>
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
    // --- 1. CONFIG FIREBASE CỦA MÀY ---
    const firebaseConfig = {
        apiKey: "AIzaSyBbm_HUjlCZ9low0_3qXE0LlkFL9V3ATOs",
        authDomain: "loginweb-9f978.firebaseapp.com",
        projectId: "loginweb-9f978",
        storageBucket: "loginweb-9f978.firebasestorage.app",
        messagingSenderId: "255337857766",
        appId: "1:255337857766:web:9c81a86c8ffdc264633127"
    };

    // Khởi tạo
    firebase.initializeApp(firebaseConfig);
    const auth = firebase.auth();
    auth.languageCode = 'vi';

    // Tạo Captcha ẩn (Invisible)
    window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container', {
        'size': 'invisible'
    });

    // --- 2. HÀM GỬI OTP --//
    function guiOTP() {
        var phoneInput = document.getElementById("phoneNumber").value;
        var btnGetOtp = document.getElementById("btn-get-otp");

        // Validate sơ bộ
        if (!phoneInput || phoneInput.length < 9) {
            alert("Vui lòng nhập số điện thoại hợp lệ!");
            return;
        }

        // Xử lý đầu số (+84)
        var formatPhone = phoneInput;
        if (formatPhone.startsWith('0')) {
            formatPhone = '+84' + formatPhone.substring(1);
        } else if (!formatPhone.startsWith('+')) {
            formatPhone = '+84' + formatPhone;
        }

        // Hiệu ứng loading
        btnGetOtp.innerText = "Đang gửi...";
        btnGetOtp.disabled = true;

        const appVerifier = window.recaptchaVerifier;

        auth.signInWithPhoneNumber(formatPhone, appVerifier)
            .then((confirmationResult) => {
                // == Gửi thành công ==
                window.confirmationResult = confirmationResult;
                alert("Đã gửi mã OTP! (Check điện thoại hoặc dùng 123456 nếu test)");

                // Hiện ô nhập OTP
                document.getElementById("otp-group").style.display = "flex";
                document.getElementById("otpInput").focus();

                // Đổi nút thành "Gửi lại"
                btnGetOtp.innerText = "Gửi lại";
                btnGetOtp.disabled = false;
            }).catch((error) => {
            // == Lỗi ==
            console.error(error);
            alert("Lỗi gửi tin: " + error.message);
            btnGetOtp.innerText = "Lấy mã";
            btnGetOtp.disabled = false;
            // Reset captcha để thử lại
            grecaptcha.reset(window.recaptchaWidgetId);
        });
    }

    // --- 3. HÀM XÁC THỰC OTP ---
    function xacThucOTP() {
        const code = document.getElementById("otpInput").value;
        const errorMsg = document.getElementById("otp-error");

        window.confirmationResult.confirm(code).then((result) => {
            // == XÁC THỰC THÀNH CÔNG ==
            alert("Xác thực thành công!");
            errorMsg.innerText = "";

            // 1. Ẩn phần nhập OTP đi cho gọn
            document.getElementById("otp-group").style.display = "none";
            document.getElementById("btn-get-otp").style.display = "none"; // Ẩn luôn nút lấy mã

            // 2. KHÓA ô nhập SĐT (Không cho sửa thành số khác)
            var phoneField = document.getElementById("phoneNumber");
            phoneField.readOnly = true;
            phoneField.style.backgroundColor = "#e9ecef";
            phoneField.style.cursor = "not-allowed";

            // 3. MỞ KHÓA nút Đăng ký để submit form về Server
            var btnRegister = document.getElementById("btnPhoneRegister");
            btnRegister.disabled = false;
            btnRegister.style.opacity = "1";
            btnRegister.style.cursor = "pointer";
            btnRegister.innerText = "Hoàn tất đăng ký";

        }).catch((error) => {
            // == Sai mã ==
            errorMsg.innerText = "Mã OTP không đúng. Vui lòng thử lại.";
        });
    }

    // --- 4. CÁC HÀM CŨ (GIỮ LẠI) ---
    function openTab(evt, tabName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tab-content");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
            tabcontent[i].classList.remove("active");
        }
        tablinks = document.getElementsByClassName("tab-btn");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(tabName).style.display = "block";
        document.getElementById(tabName).classList.add("active");
        evt.currentTarget.className += " active";
    }

    function togglePassword(fieldId, iconSpan) {
        var passInput = document.getElementById(fieldId);
        var eyeIcon = iconSpan.querySelector("i");
        if (passInput.type === "password") {
            passInput.type = "text";
            eyeIcon.classList.remove("fa-eye-slash");
            eyeIcon.classList.add("fa-eye");
        } else {
            passInput.type = "password";
            eyeIcon.classList.remove("fa-eye");
            eyeIcon.classList.add("fa-eye-slash");
        }
    }
</script>
</body>
</html>