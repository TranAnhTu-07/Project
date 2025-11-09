//so luong san pham
function updateQuantity(button, change) {
    const quantityInput = button.parentElement.querySelector('.quantity-input');
    let currentValue = parseInt(quantityInput.value);
    currentValue += change;

    if (currentValue < 1) currentValue = 1;

    quantityInput.value = currentValue;
    updateTotal();
}

// xoa san pham
function removeItem(button) {
    const cartItem = button.closest('.cart-item');
    cartItem.style.opacity = '0';

    setTimeout(() => {
        cartItem.remove();
        updateTotal();
        updateCartCount();

        // hien thi thong bao
        showNotification('Sản phẩm đã được xóa khỏi giỏ hàng!');

        // kiem tra neu gio hang trong
        checkEmptyCart();
    }, 300);
}

// tong tien
function updateTotal() {
    let subtotal = 0;
    const cartItems = document.querySelectorAll('.cart-item');

    cartItems.forEach(item => {
        const priceText = item.querySelector('.item-price').textContent;
        const price = parseInt(priceText.replace(/\./g, '').replace(' ₫', ''));
        const quantity = parseInt(item.querySelector('.quantity-input').value);

        subtotal += price * quantity;
    });

    // dinh dang tien
    document.getElementById('subtotal').textContent = formatCurrency(subtotal);

    // phi van chuyen(hon 500.000đ thi free ship)
    const shipping = subtotal > 500000 ? 0 : 30000;
    document.getElementById('shipping').textContent = formatCurrency(shipping);

    // tinh tong
    const discountText = document.getElementById('discount').textContent;
    const discount = parseInt(discountText.replace(/\./g, '').replace(' ₫', '')) || 0;

    const total = subtotal + shipping - discount;
    document.getElementById('total').textContent = formatCurrency(total);
}

// su dung voucher
function applyPromo() {
    const promoCode = document.getElementById('promo').value;

    if (promoCode === 'GIAMGIA10') {
        const subtotalText = document.getElementById('subtotal').textContent;
        const subtotal = parseInt(subtotalText.replace(/\./g, '').replace(' ₫', ''));
        const discount = Math.round(subtotal * 0.1);

        document.getElementById('discount').textContent = formatCurrency(discount);
        showNotification('Mã giảm giá đã được áp dụng!');
    } else if (promoCode) {
        showNotification('Mã giảm giá không hợp lệ!', 'error');
    }

    updateTotal();
}

// Thanh toán
function checkout() {
    const totalText = document.getElementById('total').textContent;
    const total = parseInt(totalText.replace(/\./g, '').replace(' ₫', ''));

    if (total > 0) {
        showNotification('Đang chuyển hướng đến trang thanh toán...');
        //chuyen sang trang thanh toan(chua hoan thien)
    } else {
        showNotification('Giỏ hàng của bạn đang trống!', 'error');
    }
}

// hien thi so luong tren gio hang
function updateCartCount() {
    const cartItems = document.querySelectorAll('.cart-item');
    document.querySelector('.cart-count').textContent = cartItems.length;
}

// gio hang khong có san pham
function checkEmptyCart() {
    const cartItems = document.querySelectorAll('.cart-item');
    const cartItemsContainer = document.querySelector('.cart-items');

    if (cartItems.length === 0) {
        // hien thi khi gio hang trong
        const emptyCartHTML = `
                    <div class="empty-cart">
                        <div class="empty-cart-icon">🛒</div>
                        <div class="empty-cart-message">Giỏ hàng của bạn đang trống</div>
                        <a href="/index.html" class="shop-now-btn">Mua sắm ngay</a>
                    </div>
                `;

        cartItemsContainer.innerHTML = emptyCartHTML;
    }
}

// Hiển thị thông báo
function showNotification(message, type = 'success') {
    const notification = document.getElementById('notification');
    notification.textContent = message;

    if (type === 'error') {
        notification.style.backgroundColor = '#e74c3c';
    } else {
        notification.style.backgroundColor = '#2ecc71';
    }

    notification.style.display = 'block';

    setTimeout(() => {
        notification.style.display = 'none';
    }, 3000);
}

// dinh dang kieu tien
function formatCurrency(amount) {
    return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".") + ' ₫';
}

document.addEventListener('DOMContentLoaded', function() {
    updateTotal();
    updateCartCount();
});
