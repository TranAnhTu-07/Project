package vn.edu.nlu.fit.projectweb.dao;

import vn.edu.nlu.fit.projectweb.model.OrderView;
import vn.edu.nlu.fit.projectweb.model.Orders;
import vn.edu.nlu.fit.projectweb.model.OrderDetail;
import vn.edu.nlu.fit.projectweb.utils.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {

    public List<Orders> getOrdersByUserId(int userId) {
        List<Orders> list = new ArrayList<>();
        String sql = """
            SELECT o.id, o.order_code, o.order_date, o.status, o.total_amount
            FROM Orders o
            WHERE o.user_id = ?
        """;

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Orders o = new Orders();
                o.setOrderId(rs.getInt("id"));
                o.setOrderId(rs.getInt("order_code"));
                o.setOrderDate(rs.getDate("order_date"));
                o.setStatus(rs.getString("status"));
                o.setTotalAmount(rs.getDouble("total_amount"));

                // lấy chi tiết đơn hàng
                o.setOrderDetails(getOrderDetails(o.getOrderId()));
                list.add(o);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    private List<OrderDetail> getOrderDetails(int orderId) {
        List<OrderDetail> details = new ArrayList<>();

        String sql = "SELECT * FROM order_details WHERE order_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                OrderDetail d = new OrderDetail();
                d.setId(rs.getInt("id"));
                d.setProductName(rs.getString("product_name"));
                d.setPrice(rs.getDouble("price"));
                d.setQuantity(rs.getInt("quantity"));

                details.add(d);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return details;
    }

    public Orders getOrderById(int orderId) throws Exception {
        String sql = "SELECT * FROM orders WHERE id = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, orderId);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            Orders o = new Orders();
            o.setOrderId(rs.getInt("id"));
            o.setOrderDate(rs.getDate("order_date"));
            o.setStatus(rs.getString("status"));
            o.setExpectedDelivery(rs.getDate("expected_delivery"));
            return o;
        }
        return null;
    }
    public List<OrderView> getAllOrders() {
        List<OrderView> list = new ArrayList<>();

        String sql = """
            SELECT o.order_id, o.order_date, o.total_amount,
                   u.full_name, u.email,
                   os.status_name
            FROM Orders o
            JOIN Users u ON o.user_id = u.user_id
            JOIN OrderStatus os ON o.status_id = os.order_status_id
            ORDER BY o.order_date DESC
        """;

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                OrderView o = new OrderView();
                o.setOrderId(rs.getInt("order_id"));
                o.setFullName(rs.getString("full_name"));
                o.setEmail(rs.getString("email"));
                o.setOrderDate(rs.getDate("order_date").toString());
                o.setTotalAmount(rs.getDouble("total_amount"));
                o.setStatusName(rs.getString("status_name"));

                list.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
