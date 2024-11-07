function timkiem() {

	// khai báo các biến

	var input, filter, ul, li, a, i, txValue;

	input = document.getElementById("search-rec");
	filter = input.value.toUpperCase();
	ul = document.getElementById("myUL");
	li = ul.getElementsByTagName("tr");

	// lặp lại tất cả các mục trong danh sách và ẩn những mục không khớp với truy vấn tìm kiếm

	for (i = 0; i < li.length; i++) {
		a = li[i].getElementsByTagName("a")[0];

		txValue = a.textContent || a.innerText;
		if (txValue.toUpperCase().indexOf(filter) > -1) {
			li[i].style.display = "";
		}
		else {
			li[i].style.display = "none";
		}
	}

}