package vn.edu.nlu.fit.projectweb.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.projectweb.dao.UserDao;
import vn.edu.nlu.fit.projectweb.model.User;

import java.io.IOException;

@WebServlet(name = "VerifyServlet", value = "/Verify")
public class VerifyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = request.getParameter("token");
        UserDao dao = new UserDao();
        User u = dao.getUserByToken(token);
        if(u!= null) {
            dao.activateUser(token);
            request.setAttribute("message", "Kích hoạt thành công!");
        }else{
            request.setAttribute("error", "Link lỗi!");
        }
        request.getRequestDispatcher("html/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}