document.addEventListener("DOMContentLoaded", function () {
  const carousels = document.querySelectorAll(".carousel");
  if (!carousels) return;

  carousels.forEach((carousel) => {
    let prevButton = carousel.parentNode.querySelectorAll(
      ".carousel-control-prev-icon"
    );
    let nextButton = carousel.parentNode.querySelectorAll(
      ".carousel-control-next-icon"
    );

    let goToFirstButton = undefined;
    let goToLastButton = undefined;

    if (prevButton.item(1)) {
      goToFirstButton = prevButton.item(0);
      prevButton = prevButton.item(1);
    } else {
      prevButton = prevButton.item(0);
    }

    console.log(nextButton);
    console.log(nextButton.item(0));

    if (nextButton.item(1)) {
      goToLastButton = nextButton.item(1);
      nextButton = nextButton.item(0);
    } else {
      nextButton = nextButton.item(0);
    }

    const indicators = carousel.querySelectorAll(".carousel-indicators li");
    const items = carousel.querySelectorAll(".carousel-inner .item");

    let currentIndex = 0;

    // Initialize active slide
    items.forEach((item, index) => {
      if (item.classList.contains("active")) {
        currentIndex = index;
      }
    });

    function updateActiveIndicator() {
      indicators.forEach((indicator) => {
        const slideToValue = indicator.getAttribute("data-slide-to");
        let slideTo;
        if (slideToValue.includes("{")) {
          slideTo = parseInt(slideToValue.slice(1, slideToValue.length - 1));
        } else {
          slideTo = parseInt(slideToValue);
        }
        indicator.classList.toggle("active", slideTo === currentIndex + 1);
      });
    }

    function goToSlide(index) {
      // Handle wrap-around
      if (index < 0) index = items.length - 1;
      if (index >= items.length) index = 0;

      // Update slides
      items[currentIndex].classList.remove("active");
      currentIndex = index;
      items[currentIndex].classList.add("active");

      // Update indicators
      updateActiveIndicator();
    }

    // Event listeners for navigation buttons

    prevButton.addEventListener("click", function (e) {
      e.preventDefault();
      goToSlide(currentIndex - 1);
    });

    nextButton.addEventListener("click", function (e) {
      e.preventDefault();
      goToSlide(currentIndex + 1);
    });

    goToFirstButton?.addEventListener("click", function (e) {
      e.preventDefault();
      goToSlide(0);
    });

    goToLastButton.addEventListener("click", function (e) {
      e.preventDefault();
      goToSlide(items.length - 1);
    });
  });
});
