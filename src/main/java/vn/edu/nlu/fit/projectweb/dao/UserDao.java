package vn.edu.nlu.fit.projectweb.dao;

import vn.edu.nlu.fit.projectweb.model.User;

public class UserDao extends BaseDao{
    // 1. Kiểm tra Email tồn tại (Trả về true nếu có)
    public boolean checkEmailExist(String email) {
        return get().withHandle(h ->
                h.createQuery("SELECT COUNT(*) FROM Users WHERE email = :email")
                        .bind("email", email)
                        .mapTo(Integer.class)
                        .one() > 0
        );
    }

    // 2. Đăng ký User mới
    public void registerUser(User u) {
        get().useHandle(h ->
                h.createUpdate("INSERT INTO Users (full_name, email, password, role_id, status, token) " +
                                "VALUES (:fullName, :email, :password, :roleId, :status, :token)")
                        .bindBean(u) // Tự động lấy các thuộc tính của User (fullName, email...) điền vào SQL
                        .execute()
        );
    }

    // 3. Login (Tìm user bằng email và pass đã mã hóa)
    public User login(String email, String password) {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM Users WHERE email = :email AND password = :password")
                        .bind("email", email)
                        .bind("password", password)
                        .mapToBean(User.class) // Tự map cột SQL vào class User
                        .findFirst()
                        .orElse(null)
        );
    }

    // 4. Lấy User bằng Token (Để xác thực email)
    public User getUserByToken(String token) {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM Users WHERE token = :token")
                        .bind("token", token)
                        .mapToBean(User.class)
                        .findFirst()
                        .orElse(null)
        );
    }

    // 5. Kích hoạt tài khoản
    public void activateUser(String token) {
        get().useHandle(h ->
                h.createUpdate("UPDATE Users SET status = 1, token = NULL WHERE token = :token")
                        .bind("token", token)
                        .execute()
        );
    }
}
