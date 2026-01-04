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
        String action = request.getParameter("action");

        if ("register_email".equals(action)) {
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");

            // 1. Check Pass Regex
            String passRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).{8,}$";
            if (!pass.matches(passRegex)) {
                request.setAttribute("error", "Mật khẩu yếu! Cần 8 ký tự, có Hoa, Thường, Số, Ký tự đặc biệt.");
                request.getRequestDispatcher("html/register.jsp").forward(request, response);
                return;
            }

            // 2. Check Trùng
            UserDao dao = new UserDao();
            if (dao.checkEmailExist(email)) {
                request.setAttribute("error", "Email đã tồn tại!");
                request.getRequestDispatcher("html/register.jsp").forward(request, response);
                return;
            }

            // 3. Xử lý & Gửi Mail
            String hashPass = MD5Utils.hash(pass);
            String token = UUID.randomUUID().toString();

            User u = new User();
            u.setFullName(fullname);
            u.setEmail(email);
            u.setPassword(hashPass);
            u.setToken(token);
            u.setStatus(0);
            u.setRoleId(2);

            dao.registerUser(u);

            String link = "http://localhost:8080/project_web_war/Verify?token=" + token;
            String content = "<p>Chào " + fullname + ", click vào đây để kích hoạt: <a href='" + link + "'>LINK</a></p>";

            new Thread(() -> EmailUtils.send(email, "Kích hoạt tài khoản", content)).start();

            request.setAttribute("message", "Đăng ký thành công! Vui lòng check mail.");
            response.sendRedirect("html/login.jsp?msg=success");
        }
    }
}
