package vn.edu.nlu.fit.projectweb.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.projectweb.dao.UserDao;
import vn.edu.nlu.fit.projectweb.model.User;
import vn.edu.nlu.fit.projectweb.utils.MD5Utils;

import java.io.IOException;

@WebServlet(name = "LoginController", value = "/Login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("auth") != null) {
            response.sendRedirect("ListProduct");
        } else {
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("account");
        String pass = request.getParameter("password");

        UserDao dao = new UserDao();
        User user = dao.login(email, MD5Utils.hash(pass));

        if (user == null) {
            // SAI MẬT KHẨU HOẶC EMAIL
            request.setAttribute("error", "Sai email hoặc mật khẩu!");
            request.setAttribute("email", email); // <-- QUAN TRỌNG: Gửi lại email về JSP để điền lại
            request.getRequestDispatcher("Login/login.jsp").forward(request, response);
        } else {
            if (user.getStatus() == 0) {
                // ĐÚNG PASS NHƯNG CHƯA KÍCH HOẠT
                request.setAttribute("error", "Tài khoản chưa kích hoạt!");
                request.setAttribute("email", email); // <-- Giữ lại email luôn
                request.getRequestDispatcher("html/login.jsp").forward(request, response);
            } else {
                // THÀNH CÔNG
                HttpSession session = request.getSession();
                session.setAttribute("auth", user);
                if (user.getRoleId() == 1) {
                    response.sendRedirect("html/quanlyuser.jsp");
                } else {
                    response.sendRedirect("ListProduct");
                }
            }
        }
    }
}
