// Nạp nội dung từ header.html
fetch("common/header.html")
    .then(res => res.text())
    .then(data => document.getElementById("header-placeholder").innerHTML = data);

// Nạp nội dung từ footer.html
fetch("common/footer.html")
    .then(res => res.text())
    .then(data => document.getElementById("footer-placeholder").innerHTML = data);


const sliderWrapper = document.getElementById('sliderWrapper');
        const dots = document.querySelectorAll('.dot');
        let currentSlide = 0;
        const totalSlides = 4;
        let autoSlideInterval;

        // Hàm chuyển slide
        function goToSlide(index) {
            currentSlide = index;
            sliderWrapper.style.transform = `translateX(-${currentSlide * 100}%)`;
            
            // Update dots
            dots.forEach((dot, i) => {
                dot.classList.toggle('active', i === currentSlide);
            });
        }

        // chuyen slide
        function nextSlide() {
            currentSlide = (currentSlide + 1) % totalSlides;
            goToSlide(currentSlide);
        }

        // chuyen slide 5s
        function startAutoSlide() {
            autoSlideInterval = setInterval(nextSlide, 5000);
        }

        // dung auto slide
        function stopAutoSlide() {
            clearInterval(autoSlideInterval);
        }

        // 
        dots.forEach(dot => {
            dot.addEventListener('click', () => {
                const index = parseInt(dot.getAttribute('data-index'));
                goToSlide(index);
                stopAutoSlide();
                startAutoSlide(); // auto lap lai
            });
        });

        const sliderContainer = document.querySelector('.slider-container');
        sliderContainer.addEventListener('mouseenter', stopAutoSlide);
        sliderContainer.addEventListener('mouseleave', startAutoSlide);

        startAutoSlide();

document.addEventListener("DOMContentLoaded", function() {
    const tabs = document.querySelectorAll(".product-menu li");
    const contents = document.querySelectorAll(".tab");

    tabs.forEach(tab => {
        tab.addEventListener("click", () => {

            tabs.forEach(t => t.classList.remove("active"));

            tab.classList.add("active");

            contents.forEach(c => c.classList.remove("active-tab"));

            const target = tab.getAttribute("data-target");
            document.getElementById(target).classList.add("active-tab");
        });
    });
});

    