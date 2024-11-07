var langSwitcher = document.querySelector(".language-switcher");
var menuLang = document.querySelector(".menu-lang");
var langName = document.querySelector(".lang-name");
var menuLangHeight = menuLang.scrollHeight;

if (langSwitcher) {
  var currentLang = document.querySelector(
    ".menu-lang .current-language-menu-item .trp-ls-language-name"
  );

  if (currentLang) {
    langName.textContent = currentLang.textContent;
  }
  langSwitcher.addEventListener("click", () => {
    langSwitcher.classList.add("active");

    if (menuLang) {
      menuLang.classList.add("active");
    }
  });
  document.addEventListener("click", (e) => {
    if (!menuLang.contains(e.target) && !langSwitcher.contains(e.target)) {
      menuLang.classList.remove("active");
      langSwitcher.classList.remove("active");
    }
  });
}

var swiper = new Swiper(".heading", {
  // navigation: {
  //   nextEl: ".swiper-button-next",
  //   prevEl: ".swiper-button-prev",
  // },
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
  loop: true,
  // slidesPerView: 3,
  // spaceBetween: 24,
  // breakpoints: {
  //   300: {
  //     slidesPerView: 1,
  //   },
  //   700: {
  //     slidesPerView: 2,
  //   },
  //   1000: {
  //     slidesPerView: 3,
  //   },
  // },
});

var swiper = new Swiper(".combo-slides", {
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  autoplay: {
    delay: 2200,
    disableOnInteraction: false,
  },
  loop: true,
  slidesPerView: 3,
  spaceBetween: 24,
  breakpoints: {
    300: {
      slidesPerView: 1,
    },
    700: {
      slidesPerView: 2,
    },
    1000: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".tour-slides", {
  navigation: {
    nextEl: ".swiper-button-next.tour-next",
    prevEl: ".swiper-button-prev.tour-prev",
  },
  autoplay: {
    delay: 1500,
    disableOnInteraction: false,
  },
  loop: true,
  slidesPerView: 3,
  spaceBetween: 24,
  breakpoints: {
    300: {
      slidesPerView: 1,
    },
    700: {
      slidesPerView: 2,
    },
    1000: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".food-slides", {
  navigation: {
    nextEl: ".food-next",
    prevEl: ".food-prev",
  },
  autoplay: {
    delay: 1900,
    disableOnInteraction: false,
  },
  loop: true,
  slidesPerView: 3,
  spaceBetween: 24,
  breakpoints: {
    300: {
      slidesPerView: 1,
    },
    700: {
      slidesPerView: 2,
    },
    1000: {
      slidesPerView: 3,
    },
  },
});

var routesSelectBox = document.getElementById("main-routes");
var routes = document.querySelectorAll(".routes-wrap .each-route");
var initialSelectedIndex = 0;

if (routesSelectBox && routes) {
  routes[0].classList.add("active");
  routesSelectBox.addEventListener("change", () => {
    var selectedRouteIndex = routesSelectBox.selectedIndex;

    if (selectedRouteIndex !== initialSelectedIndex) {
      routes.forEach((r) => {
        r.classList.remove("active");
      });
      routes[selectedRouteIndex - 1].classList.add("active");
    }
  });
}

var tabs = document.querySelectorAll(".searchname");
if (tabs) {
  tabs.forEach((tab) => {
    tab.addEventListener("click", () => {
      var currentActiveTab = document.querySelector(".searchname.active");
      if (currentActiveTab) {
        currentActiveTab.classList.remove("active");
      }
      tab.classList.add("active");
    });
  });
}
