package vn.edu.nlu.fit.projectweb.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.projectweb.dao.AccountDao;
import vn.edu.nlu.fit.projectweb.dao.CategoryDao;
import vn.edu.nlu.fit.projectweb.model.Category;
import vn.edu.nlu.fit.projectweb.model.User;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@WebServlet(name = "ViewOrderHistoryController", value = "/ViewOrderHistory")
public class ViewOrderHistoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        CategoryDao cd = new CategoryDao();
        List<Category> parents = cd.getCategoryParent();
        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category p : parents) {
            childrenMap.put(p.getId(),
                    cd.getCategoryChild(p.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", childrenMap);
        request.getRequestDispatcher("/ViewOrderHistory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("auth") == null) {
            response.sendRedirect("login");
            return;
        }
        User user = (User) session.getAttribute("auth");
        int userid = user.getUserId();
        user.setFullName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        user.setPhone(request.getParameter("phone"));
        user.setSex(request.getParameter("sex"));
        AccountDao ad = new AccountDao();
        ad.updateAcc(user, userid);
        if (ad.updateAcc(user, userid) > 0){
            response.sendRedirect("tai-khoan");
        }
    }
}