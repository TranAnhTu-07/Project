package vn.edu.nlu.fit.projectweb.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.projectweb.dao.UserDao;
import vn.edu.nlu.fit.projectweb.model.User;
import vn.edu.nlu.fit.projectweb.utils.EmailUtils;
import vn.edu.nlu.fit.projectweb.utils.MD5Utils;
import java.io.IOException;
import java.util.UUID;

@WebServlet(name = "RegisterServlet", value = "/Register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // Lấy action để biết đang đăng ký tab nào (email hay phone)
        String action = request.getParameter("action");
        UserDao dao = new UserDao();

        // ================= TRƯỜNG HỢP 1: ĐĂNG KÝ BẰNG EMAIL =================
        if ("register_email".equals(action)) {
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");

            // 1. Validate Mật khẩu (Regex)
            // Yêu cầu: 8 ký tự, có Hoa, Thường, Số, Ký tự đặc biệt
            String passRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).{8,}$";
            if (!pass.matches(passRegex)) {
                request.setAttribute("error", "Mật khẩu yếu! Cần ít nhất 8 ký tự, bao gồm Hoa, Thường, Số và Ký tự đặc biệt.");
                // Giữ lại thông tin đã nhập để user đỡ phải gõ lại
                request.setAttribute("fullname", fullname);
                request.setAttribute("email", email);
                request.getRequestDispatcher("html/register.jsp").forward(request, response);
                return;
            }

            // 2. Kiểm tra Email đã tồn tại chưa
            if (dao.checkEmailExist(email)) {
                request.setAttribute("error", "Email này đã được sử dụng!");
                request.setAttribute("fullname", fullname);
                request.getRequestDispatcher("html/register.jsp").forward(request, response);
                return;
            }

            // 3. Tạo User và Lưu vào DB
            String hashPass = MD5Utils.hash(pass);
            String token = UUID.randomUUID().toString(); // Token kích hoạt

            User u = new User();
            u.setFullName(fullname);
            u.setEmail(email);
            u.setPassword(hashPass);
            u.setToken(token);
            u.setStatus(0); // Chưa kích hoạt
            u.setRoleId(2); // Role User thường

            // Lưu ý: Cột phone để null
            u.setPhone(null);

            try {
                dao.registerUser(u);

                // 4. Gửi Mail (DEMO: ĐÃ TẠM TẮT ĐỂ NỘP BÀI CHO NHANH)
                // String link = "http://localhost:8080/project_web_war/Verify?token=" + token;
                // String content = "<p>Chào " + fullname + ", vui lòng click vào đây để kích hoạt tài khoản: <a href='" + link + "'>KÍCH HOẠT NGAY</a></p>";
                // new Thread(() -> EmailUtils.send(email, "Xác thực tài khoản", content)).start();

                // Chuyển sang trang Login và báo thành công
                response.sendRedirect("html/login.jsp?msg=success");
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", "Lỗi hệ thống khi đăng ký!");
                request.getRequestDispatcher("html/register.jsp").forward(request, response);
            }
        }

        // ================= TRƯỜNG HỢP 2: ĐĂNG KÝ BẰNG SỐ ĐIỆN THOẠI =================
        else if ("register_phone".equals(action)) {
            String fullname = request.getParameter("fullname");
            String phone = request.getParameter("phone");
            String pass = request.getParameter("password");

            // 1. Hash mật khẩu
            String hashPass = MD5Utils.hash(pass);

            // 2. Tạo User object
            User u = new User();
            u.setFullName(fullname);
            u.setPhone(phone);
            u.setPassword(hashPass);

            // Vì đã xác thực OTP (fake) ở Front-end rồi nên cho Active luôn
            u.setStatus(1);
            u.setRoleId(2);
            u.setToken(null); // Không cần token kích hoạt

            // QUAN TRỌNG: Database thường yêu cầu cột Email không được để trống (NOT NULL).
            // Ta tạo một email giả từ số điện thoại để "lừa" Database.
            u.setEmail(phone + "@local.store");

            try {
                // Kiểm tra sơ bộ xem SĐT đã tồn tại chưa (nếu DAO chưa có hàm checkPhone thì thôi, để DB tự bắt lỗi Duplicate)
                // Lưu vào DB
                dao.registerUser(u);

                // Đăng ký xong chuyển thẳng về Login, báo "Kích hoạt thành công"
                response.sendRedirect("html/login.jsp?msg=activated");

            } catch (Exception e) {
                e.printStackTrace();
                // Lỗi này thường do trùng SĐT (vì SĐT giờ đóng vai trò như Email giả)
                request.setAttribute("error", "Đăng ký thất bại! Số điện thoại có thể đã tồn tại.");
                request.getRequestDispatcher("html/register.jsp").forward(request, response);
            }
        }
    }
}