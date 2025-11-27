
const btnAdd = document.querySelector(".add-cart"); // Nút THÊM VÀO GIỎ của bạn
const modal = document.getElementById("popupCart");
const closeBtn = document.querySelector(".close");

// Ngăn thẻ <a> chuyển trang + mở popup
btnAdd.addEventListener("click", (e) => {
    e.preventDefault();
    modal.style.display = "flex";
});

// Đóng
closeBtn.addEventListener("click", () => {
    modal.style.display = "none";
});

// Bấm ra ngoài để đóng
window.addEventListener("click", (e) => {
    if (e.target === modal) {
        modal.style.display = "none";
    }
});
