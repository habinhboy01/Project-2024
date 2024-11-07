var hamburger = document.querySelector(".hamburger");
var menu9 = document.querySelector("#menu-menu-chinh");
var menu = document.querySelector(".menu-wrap");
var searchForm = document.querySelector(".search-form");
var searchBtn = document.querySelector(".search-form");

if (hamburger) {
  document.addEventListener("click", (e) => {
    if (!menu9.contains(e.target) && e.target != hamburger) {
      menu.classList.remove("active");
      hamburger.classList.remove("active");
    }
  });
  hamburger.addEventListener("click", () => {
    hamburger.classList.toggle("active");
    menu.classList.toggle("active");
  });
}

var menuMB = document.querySelectorAll(".menu-mb #menu-menu-chinh > li");

menuMB.forEach((item) => {
  document
    .querySelectorAll(".menu-mb #menu-menu-chinh > li .sub-menu")
    .forEach((e) => {
      e.classList.remove("active");
    });
  item.addEventListener("click", () => {
    var sub = item.querySelector(".sub-menu");
    sub.classList.toggle("active");
    console.log(sub);
  });
});

var swiper = new Swiper(".heading-slider", {
  pagination: {
    el: ".swiper-pagination",
    dynamicBullets: true,
  },
  loop: true,
  autoplay: {
    delay: 3500,
    disableOnInteraction: false,
  },
});
var swiper = new Swiper(".linhvuc-slider", {
  pagination: {
    el: ".swiper-pagination",
    dynamicBullets: true,
  },
  loop: true,
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
});

var swiper = new Swiper(".news-swiper", {
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  loop: true,
  //   autoplay: {
  //     delay: 2500,
  //     disableOnInteraction: false,
  //   },
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

var swiper = new Swiper(".cty-tv-slider", {
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  autoHeight: true,
  //   autoplay: {
  //     delay: 2500,
  //     disableOnInteraction: false,
  //   },
  slidesPerView: 1,
  spaceBetween: 20,
});

var swiper = new Swiper(".car-slider", {
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
  loop: true,
  slidesPerView: 1,
});

const boxItem = document.querySelectorAll(".box-wrap li");
const box = document.querySelectorAll(".box");
let getSlide = boxItem.length - 1;
let slideCalc = 30 / getSlide + "%";

if (box && box.length > 0 && box[0]) {
  box[0].classList.add("active");
  box.forEach((e) => {
    e.addEventListener("click", () => {
      box.forEach((box) => {
        // box.style.width = slideCalc;
        box.classList.remove("active");
      });
      e.classList.add("active");
    });
  });
}

const mb = document.querySelectorAll(".box-mobile");
const mbTitle = document.querySelectorAll(".box-title-mobile");

if (mbTitle && mbTitle[0]) {
  mb[0].classList.add("active");
  mbTitle.forEach((item, index) => {
    item.addEventListener("click", () => {
      mb.forEach((e) => {
        e.classList.remove("active");
      });
      mb[index].classList.add("active");
    });
  });
}

var provincesName = document.querySelectorAll(".aMoDa-name");

if (provincesName) {
  provincesName.forEach((item) => {
    item.addEventListener("mouseover", () => {
      document.querySelector(`.${item.dataset.title}`).classList.add("active");
    });

    item.addEventListener("mouseout", () => {
      document
        .querySelector(`.${item.dataset.title}`)
        .classList.remove("active");
    });
  });
}

var swiper = new Swiper(".cateSwiper", {
  slidesPerView: 1,
  spaceBetween: 15,
  grid: {
    rows: 3,
    fill: "row",
  },
  autoHeight: true,

  pagination: {
    el: ".swiper-pagination-cate",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  breakpoints: {
    300: {
      slidesPerView: 1,
      grid: {
        rows: 2,
        fill: "row",
      },
    },
    900: {
      slidesPerView: 2,
      grid: {
        rows: 3,
        fill: "row",
      },
    },
  },
  // on: {
  //   init: function () {
  //     var rowCount = this.params.grid.rows || 1;
  //     var rowHeight = this.height / rowCount;
  //     this.$el.find(".swiper-wrapper").css("height", rowHeight + "px");
  //   },
  //   slideChangeTransitionEnd: function () {
  //     var rowCount = this.params.grid.rows || 1;
  //     var rowHeight = this.height / rowCount;
  //     this.$el.find(".swiper-wrapper").css("height", rowHeight + "px");
  //   },
  // },
});

const chart3 = document.querySelector(".chart-wrap3");

if (chart3) {
  const cha = chart3.querySelector(".chart3");
  const title = chart3.dataset.title;
  const values = JSON.parse(chart3.dataset.value);
  const charLabels = JSON.parse(chart3.dataset.labels);
  const colors = JSON.parse(chart3.dataset.color);
  const currency = chart3.dataset.cur;
  const dataChart3 = {
    labels: charLabels,
    datasets: [
      {
        barThickness: 30,
        backgroundColor: colors,
        data: values,
      },
    ],
  };

  const configchart3 = {
    type: "bar",
    data: dataChart3,
    options: {
      responsive: true,
      // maintainAspectRatio: false,
      scales: {
        y: {
          display: true,
          min: 0,
          max: 200,
          ticks: {
            stepSize: 20,
          },
          title: {
            display: true,
            text: currency,
            font: {
              weight: "bold",
              size: 16,
            },
            color: "#000",
          },
        },
        // y: {
        //   display: true,
        //   title: {
        //     display: true,
        //     text: "Trục Y",
        //     color: "black",
        //   },
        // },
      },
      plugins: {
        datalabels: {
          anchor: "end",
          align: "end",
        },
        title: {
          display: false,
          text: title,
          font: {
            size: 18,
            family: "Roboto",
            weight: "bold",
          },
          padding: {
            bottom: 50,
          },
        },
        tooltip: {
          callbacks: {
            label: function (context) {
              return (
                context.dataset.label +
                ": " +
                context.formattedValue +
                " " +
                currency
              );
            },
          },
        },
        legend: {
          prototype: {
            afterfit: function () {
              this.height = this.height + 50;
            },
          },
          display: true,
          labels: {
            usePointStyle: true,
          },
          align: "start",
          padding: 10,
        },
      },
    },
  };
  new Chart(cha, configchart3);
}

const chart4 = document.querySelector(".chart-wrap-4");
if (chart4) {
  const cha = chart4.querySelector(".chart4");
  const title = chart4.dataset.title;
  const values = JSON.parse(chart4.dataset.value);
  const charLabels = JSON.parse(chart4.dataset.labels);
  const colors = JSON.parse(chart4.dataset.color);

  const dataChart4 = {
    labels: charLabels,
    datasets: [
      {
        label: "Chiếm",
        backgroundColor: colors,
        data: values,
        hoverOffset: 4,
        pointStyle: "circle",
      },
    ],
  };

  const configchart4 = {
    type: "doughnut",
    data: dataChart4,
    options: {
      plugins: {
        legend: {
          display: true,
          position: "bottom",
          labels: {
            pointStyle: "circle",
            usePointStyle: true,
          },
        },
        title: {
          display: true,
          text: title,
          font: {
            size: 18,
            family: "Roboto",
            weight: "bold",
          },
          padding: {
            bottom: 50,
          },
        },
        tooltip: {
          callbacks: {
            label: function (context) {
              return (
                context.dataset.label +
                ": " +
                context.formattedValue +
                " triệu USD"
              );
            },
          },
        },
      },
    },
  };
  new Chart(cha, configchart4);

  // 	const countryLegend = [];
  // 	colors.forEach((item,index)=> {
  // 		var legendItem = {
  // 			circle: item,
  // 			desc: charLabels[index]
  // 		}
  // 		countryLegend.push(legendItem);
  // 	})
  // 	const chart4Legend = document.querySelector(".legend4");
  // 	if (chart4Legend) {
  // 	  countryLegend.forEach((stat) => {
  // 		const html = /*html */ `
  // 	  <div class="col-6">
  // 		<div class="legend-item d-flex align-items-center gap-3 ">
  // 			<div class="circle" style="background-color: ${stat.circle} "></div>
  // 			<div class="legend-desc">${stat.desc}</div>
  // 		</div>
  // 	  </div>
  // 	  `;
  // 		chart4Legend.innerHTML += html;
  // 	  });
  // 	}
}
$(document).ready(function ($) {
  $(".gallery-item").magnificPopup({
    delegate: "a",
    type: "image",
    gallery: {
      enabled: true,
    },
    zoom: {
      enabled: true,
      duration: 300,
      easing: "ease-in-out",
    },
  });
});

var tabs = document.querySelectorAll(".place_tab");
var content = document.querySelectorAll(".tab-content");
var line = document.querySelector(".line");

if (line) {
  line.style.width = tabs[0].offsetWidth + "px";
  line.style.left = tabs[0].offsetLeft + "px";
  tabs[0].classList.add("active");
  content[0].classList.add("active");
  tabs.forEach((tab, index) => {
    tab.addEventListener("click", (e) => {
      document.querySelector(".place_tab.active").classList.remove("active");
      tab.classList.add("active");
      line.style.width = e.target.offsetWidth + "px";
      line.style.left = e.target.offsetLeft + "px";
      document.querySelector(".tab-content.active").classList.remove("active");
      content[index].classList.add("active");
    });
  });
}

document.addEventListener("DOMContentLoaded", function () {
  var backTop = document.querySelector(".back-top");
  if (backTop) {
    backTop.addEventListener("click", (e) => {
      e.preventDefault();
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    });
  }
  window.addEventListener("scroll", function () {
    if (window.scrollY > 500) {
      backTop.classList.add("active");
    } else {
      backTop.classList.remove("active");
    }
  });
});

var missionContainer = document.querySelector(".mission-wrap");
var missionIMG = document.querySelector(".mission-bg");
var sub = document.querySelector(".sub-imgs");

if (missionContainer) {
  var squareEdge = missionContainer.clientHeight;

  var hypotenuse = Math.sqrt(2 * squareEdge ** 2);

  var translateX = hypotenuse / 2.5;

  missionIMG.style.width = squareEdge + "px";
  missionIMG.style.height = squareEdge + "px";
  missionIMG.style.transformOrigin = "center center";
  missionIMG.style.transform = "rotate(45deg)";

  missionIMG.style.right = "-" + translateX + "px";
  sub.style.right = translateX - 90 + "px";
}

// ---------------

const url = window.location.href; // Lấy URL hiện tại
var disable = document.getElementsByClassName("dis-table-vi")[0];
var disable_2 = document.getElementsByClassName("dis-table-en")[0];

if (url.includes("/en")) {
    disable_2.style.display = "block";
    disable.style.display = "none";
    console.log("URL chứa 'en'.");
} else {
    disable.style.display = "block";
    disable_2.style.display = "none";
    console.log("URL không chứa 'en'.");
}

















