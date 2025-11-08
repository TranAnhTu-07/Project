// Giá sản phẩm
const price = 11500000;

// Lấy các phần tử từ HTML
const quantityInput = document.getElementById('quantity');
const totalPrice = document.getElementById('totalPrice');
const btnPlus = document.querySelector('.btn-plus');
const btnMinus = document.querySelector('.btn-minus');

// Hàm cập nhật tổng tiền
function updateTotal() {
    const qty = parseInt(quantityInput.value);
    totalPrice.textContent = (price * qty).toLocaleString('vi-VN') + ' đ';
}

// Xử lý tăng/giảm số lượng
btnPlus.addEventListener('click', () => {
    quantityInput.value = parseInt(quantityInput.value) + 1;
    updateTotal();
});

btnMinus.addEventListener('click', () => {
    if (quantityInput.value > 1) {
        quantityInput.value = parseInt(quantityInput.value) - 1;
        updateTotal();
    }
});

// Cập nhật khi nhập trực tiếp
quantityInput.addEventListener('input', updateTotal);


