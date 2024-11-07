
var allSelect = document.querySelector.bind(document);
var all = document.querySelectorAll.bind(document);

var buttonEvent = all('.item-cate');

buttonEvent.forEach((tab, index) => {

    tab.onclick = function () {

        allSelect('.item-cate.active-btn').classList.remove('active-btn');

        this.classList.add('active-btn');

    }
});

scrollTo = (element) => {
  window.scroll({
    behavior: 'smooth',
    left: 0,
    top: element.offsetTop
  });
  console
}

document.getElementById("company").addEventListener('click', () => {
  scrollTo(document.getElementById("1"));
});

document.getElementById("stone").addEventListener('click', () => {
  scrollTo(document.getElementById("2"));
});

document.getElementById("wooden").addEventListener('click', () => {
  scrollTo(document.getElementById("3"));
});

document.getElementById("car").addEventListener('click', () => {
  scrollTo(document.getElementById("4"));
});