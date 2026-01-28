package vn.edu.nlu.fit.projectweb.controller.cart;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.projectweb.cart.Cart;
import vn.edu.nlu.fit.projectweb.cart.CartItem;
import vn.edu.nlu.fit.projectweb.model.Product;
import vn.edu.nlu.fit.projectweb.services.ProductService;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

@WebServlet(name = "CartController", value = "/cart")
public class CartController extends HttpServlet {
    private ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            // Hiển thị trang giỏ hàng
            showCartPage(request, response);
        } else {
            switch (action) {
                case "view":
                    showCartPage(request, response);
                    break;
                case "count":
                    getCartCount(request, response);
                    break;
                case "total":
                    getCartTotal(request, response);
                    break;
                case "clear":
                    clearCart(request, response);
                    break;
                default:
                    showCartPage(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "add":
                    addToCart(request, response);
                    break;
                case "update":
                    updateCartItem(request, response);
                    break;
                case "remove":
                    removeFromCart(request, response);
                    break;
                default:
                    response.sendRedirect(request.getContextPath() + "/cart");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/cart");
        }
    }

    private void showCartPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        // Lấy danh sách sản phẩm trong giỏ hàng
        List<CartItem> items = cart.getItems();

        // Tính tổng tiền
        double total = cart.getTotal();
        int totalQuantity = cart.getTotalQuantity();

        // Format tiền tệ
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));

        // Đặt thuộc tính vào request
        request.setAttribute("cartItems", items);
        request.setAttribute("cartTotal", total);
        request.setAttribute("cartTotalFormatted", currencyFormat.format(total));
        request.setAttribute("totalQuantity", totalQuantity);
        request.setAttribute("shippingFee", 30000); // Phí vận chuyển

        // Chuyển đến trang giỏ hàng
        RequestDispatcher dispatcher = request.getRequestDispatcher("/html/ShoppingCart.jsp");
        dispatcher.forward(request, response);
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("productId"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            if (quantity <= 0) {
                quantity = 1;
            }

            Product product = productService.getProduct(productId);

            if (product != null) {
                HttpSession session = request.getSession();
                Cart cart = (Cart) session.getAttribute("cart");

                if (cart == null) {
                    cart = new Cart();
                    session.setAttribute("cart", cart);
                }

                // Kiểm tra số lượng tồn kho
                if (cart.isValidQuantity(product, cart.getTotalQuantity() + quantity)) {
                    cart.addItem(product, quantity);

                    // Trả về JSON response cho AJAX
                    response.setContentType("application/json");
                    PrintWriter out = response.getWriter();
                    out.print("{\"success\": true, \"message\": \"Đã thêm vào giỏ hàng\", \"totalQuantity\": " + cart.getTotalQuantity() + "}");
                } else {
                    response.setContentType("application/json");
                    PrintWriter out = response.getWriter();
                    out.print("{\"success\": false, \"message\": \"Số lượng vượt quá tồn kho\"}");
                }
            } else {
                response.setContentType("application/json");
                PrintWriter out = response.getWriter();
                out.print("{\"success\": false, \"message\": \"Sản phẩm không tồn tại\"}");
            }
        } catch (NumberFormatException e) {
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print("{\"success\": false, \"message\": \"Dữ liệu không hợp lệ\"}");
        }
    }

    private void updateCartItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("productId"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            Product product = productService.getProduct(productId);

            if (product != null) {
                HttpSession session = request.getSession();
                Cart cart = (Cart) session.getAttribute("cart");

                if (cart == null) {
                    cart = new Cart();
                    session.setAttribute("cart", cart);
                }

                // Kiểm tra số lượng hợp lệ
                if (quantity > 0) {
                    if (cart.isValidQuantity(product, quantity)) {
                        cart.updateItem(product, quantity);
                    } else {
                        // Nếu vượt quá tồn kho, đặt về số lượng tối đa
                        int maxQuantity = product.getStock();
                        cart.updateItem(product, maxQuantity);
                        quantity = maxQuantity;
                    }
                } else {
                    // Nếu số lượng <= 0 thì xóa
                    cart.delItem(productId);
                }

                // Tính lại tổng
                double newTotal = cart.getTotal();
                int newTotalQuantity = cart.getTotalQuantity();

                // Trả về JSON response
                response.setContentType("application/json");
                PrintWriter out = response.getWriter();
                out.print("{\"success\": true, \"newQuantity\": " + quantity +
                        ", \"newTotal\": " + newTotal +
                        ", \"newTotalQuantity\": " + newTotalQuantity + "}");
            }
        } catch (NumberFormatException e) {
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print("{\"success\": false, \"message\": \"Dữ liệu không hợp lệ\"}");
        }
    }

    private void removeFromCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("productId"));

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart != null) {
                CartItem removedItem = cart.delItem(productId);

                if (removedItem != null) {
                    // Tính lại tổng
                    double newTotal = cart.getTotal();
                    int newTotalQuantity = cart.getTotalQuantity();

                    response.setContentType("application/json");
                    PrintWriter out = response.getWriter();
                    out.print("{\"success\": true, \"message\": \"Đã xóa sản phẩm\", " +
                            "\"newTotal\": " + newTotal + ", \"newTotalQuantity\": " + newTotalQuantity + "}");
                } else {
                    response.setContentType("application/json");
                    PrintWriter out = response.getWriter();
                    out.print("{\"success\": false, \"message\": \"Sản phẩm không tồn tại trong giỏ hàng\"}");
                }
            }
        } catch (NumberFormatException e) {
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print("{\"success\": false, \"message\": \"Dữ liệu không hợp lệ\"}");
        }
    }

    private void getCartCount(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        int count = 0;
        if (cart != null) {
            count = cart.getTotalQuantity();
        }

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        out.print(count);
    }

    private void getCartTotal(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        double total = 0;
        if (cart != null) {
            total = cart.getTotal();
        }

        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        out.print(currencyFormat.format(total));
    }

    private void clearCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart != null) {
            cart.delAll();
        }

        response.sendRedirect(request.getContextPath() + "/cart");
    }
}