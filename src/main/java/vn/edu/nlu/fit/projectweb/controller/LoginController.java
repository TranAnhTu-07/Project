package vn.edu.nlu.fit.projectweb.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginController", value = "/Login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        if("abc@gmail.com".equals(email) && "123".equals(pass)) {
            response.sendRedirect("index.jsp");
        }else {
            request.setAttribute("error", "Sai email hoặc password rồi cưng!");
            request.getRequestDispatcher("/html/login.jsp").forward(request, response);
        }
    }
}
