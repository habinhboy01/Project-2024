function submitForm() {
  var form = document.querySelector(".search-form");

  if (form) {
    if (form.classList.contains("active")) {
      return true;
    } else {
      form.classList.add("active");
      return false;
    }
  }
  return false;
}

window.addEventListener("click", (e) => {
  var form = document.querySelector(".search-form");
  if (form) {
    if (!form.contains(e.target)) {
      form.classList.remove("active");
    }
  }
});

const open = document.querySelector(".bars-mobile");
const close = document.querySelector(".close");

var tl = gsap.timeline({ defaults: { duration: 0.5, ease: "expo.inOut" } });

open.addEventListener("click", (e) => {
  if (tl.reversed()) {
    tl.play();
  } else {
    tl.to("nav", { right: 0, opacity: 1 })
      .to("nav", { height: "100%" }, "-=.1")
      .to(
        "nav ul li",
        {
          opacity: 1,
          pointerEvents: "all",
          x: 0,
          stagger: 0.15,
        },
        "-=.2"
      )
      .to(
        ".close",
        {
          opacity: 1,
          pointerEvents: "all",
          rotation: 270,
          transformOrigin: "center center",
        },
        "-=.5"
      );
  }
});
const menu = document.querySelector(".heading2-info-mobile");

document.addEventListener("click", (e) => {
  if (!menu.contains(e.target) && !open.contains(e.target)) {
    // subb.classList.remove("active");
    tl.timeScale(2);
    tl.reverse();
  }
});

close.addEventListener("click", () => {
  // subb.classList.remove("active");
  tl.timeScale(2);
  tl.reverse();
});

var swiper = new Swiper(".mySwiper", {
  slidesPerView: 1,
  spaceBetween: 30,

  // effect: "fade",
  // pagination: {
  //   el: ".swiper-pagination",
  //   clickable: true,
  // },
  // navigation: {
  //   nextEl: ".swiper-button-next",
  //   prevEl: ".swiper-button-prev",
  // },
});

var tabs = document.querySelectorAll(".how-item");

var contents = document.querySelectorAll(".des-item-wrap");

if (tabs && contents) {
  contents[0].classList.add("active");
  tabs[0].classList.add("active");
  tabs.forEach((tab, index) => {
    tab.addEventListener("click", () => {
      tabs.forEach((t) => {
        t.classList.add("deactive");
        t.classList.remove("active");
      });
      tab.classList.remove("deactive");
      tab.classList.add("active");

      contents.forEach((con) => {
        con.classList.remove("active");
        con.classList.add("deactive");
      });

      contents[index].classList.remove("deactive");
      contents[index].classList.add("active");
    });
  });
}
