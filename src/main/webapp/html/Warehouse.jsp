<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý Tồn Kho - Admin</title>
    <link rel="stylesheet" href="../css/Warehouse.css">
</head>
<body>
<!-- Sidebar -->
<div class="sidebar">
    <div class="sidebar-header">
        <h1><span>Admin Panel</span></h1>
    </div>
    <div class="menu">
        <a href="/Project/Quan%20Ly%20User/quanlyuser.html" class="menu-item">
            <span>Quản Lý User</span>
        </a>
        <a href="/Project/ThongKeDoanhThu/doanhthu.html" class="menu-item">
            <span>Thống kê</span>
        </a>
        <a href="/Project/Warehouse/Warehouse.html" class="menu-item active">
            <span>Quản Lý Kho</span>
        </a>
        <a href="/Project/productmanagement/productManagement.html" class="menu-item">
            <span>Quản Lý Sản phẩm</span>
        </a>
        <a href="/Project/Order%20management/OrderManagement.html" class="menu-item">
            <span>Quản Lý Đơn Hàng</span>
        </a>
        <a href="/Project/index.html" class="menu-item">
            <span>Đăng Xuất</span>
        </a>
    </div>
</div>

<div class="container">

    <div class="stats-container">
        <div class="stat-card success">
            <h3>Tổng Sản Phẩm</h3>
            <div class="number">156</div>
        </div>
        <div class="stat-card">
            <h3>Tổng Giá Trị Kho</h3>
            <div class="number">1.2 tỷ</div>
        </div>
        <div class="stat-card warning">
            <h3>Sắp Hết Hàng</h3>
            <div class="number">23</div>
        </div>
        <div class="stat-card danger">
            <h3>Hết Hàng</h3>
            <div class="number">8</div>
        </div>
    </div>

    <div class="filters">
        <h2>🔍 Bộ Lọc</h2>
        <form class="filter-group" method="GET" action="">
            <div class="filter-item">
                <label for="category">Danh Mục</label>
                <select id="category" name="category">
                    <option value="">Tất cả danh mục</option>
                    <option value="electronics">Điện tử</option>
                    <option value="fashion">Thời trang</option>
                    <option value="food">Thực phẩm</option>
                    <option value="books">Sách</option>
                    <option value="toys">Đồ chơi</option>
                </select>
            </div>
            <div class="filter-item">
                <label for="status">Trạng Thái Kho</label>
                <select id="status" name="status">
                    <option value="">Tất cả trạng thái</option>
                    <option value="high">Còn nhiều (>100)</option>
                    <option value="medium">Trung bình (50-100)</option>
                    <option value="low">Sắp hết (<50)</option>
                    <option value="out">Hết hàng</option>
                </select>
            </div>
            <div class="filter-item">
                <label for="search">Tìm Kiếm</label>
                <input type="text" id="search" name="search" placeholder="Tên sản phẩm, mã SP...">
            </div>
            <div class="filter-item">
                <label for="sort">Sắp Xếp</label>
                <select id="sort" name="sort">
                    <option value="name">Tên A-Z</option>
                    <option value="stock_asc">Tồn kho tăng dần</option>
                    <option value="stock_desc">Tồn kho giảm dần</option>
                    <option value="price">Giá cao đến thấp</option>
                </select>
            </div>
        </form>
    </div>
<%--///////--%>
    <div class="content">

        <table>
            <thead>
            <tr>
                <th>Hình Ảnh</th>
                <th>Mã SP</th>
                <th>Tên Sản Phẩm</th>
                <th>Danh Mục</th>
                <th>Số Lượng</th>
                <th>Trạng Thái</th>
                <th>Giá Bán</th>
                <th>Giá Trị Tồn</th>
                <th>Thao Tác</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach var="p" items="${onSale}">
                <tr data-id="${p.id}">
                    <form action="${pageContext.request.contextPath}/kho" method="post">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="id" value="${p.id}">
                        <td class="product">
                            <img src="${p.img}">
                            <span class="view">${p.name}</span>
                            <input class="edit" type="text" name="name" value="${p.name}" style="display:none; width:160px;">
                        </td>
                        <td>
                            <span class="view"><fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/> đ</span>
                            <input class="edit" type="number" name="price" value="${p.price_sale}" style="display:none; width:100px;">
                        </td>
                        <td>100</td>
                        <td>0</td>
                        <td class="status selling">Đang bán</td>
                        <td class="profit">
                            <fmt:formatNumber value="${p.price_sale * 0.05}" groupingUsed="true"/> đ
                        </td>
                        <td>
                            <div class="action-btn">
                                <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <button type="button" class="btn edit-btn" onclick="edit(this)">
                                        <i class="fas fa-pen"></i>
                                    </button>
                                    <button type="submit" class="btn save" style="display:none;">
                                        <i class="fas fa-save"></i>
                                    </button>
                                </form>
                                <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                    <input type="hidden" name="action" value="unpublish">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <button type="submit" class="btn remove" onclick="return confirm('Xác nhận đưa sản phẩm xuống kệ?')">
                                        <i class="fas fa-arrow-down"></i>
                                    </button>
                                </form>
                                <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                    <input type="hidden" name="action" value="delete">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <button type="submit" class="btn delete" onclick="return confirm('Xóa sản phẩm này?')">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </form>
                            </div>
                        </td>
                    </form>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="export-section">
        <a href="#" class="btn btn-primary">📥 Xuất Excel</a>
        <a href="#" class="btn btn-primary">📄 Xuất PDF</a>
        <a href="#" class="btn btn-warning">📊 Báo Cáo Tồn Kho</a>
    </div>
</div>
</body>
</html>