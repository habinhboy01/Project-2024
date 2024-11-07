<?php /**template name: Home */ get_header()?>


<div class="heading-slides-wrap swiper heading ">
    <div class="swiper-wrapper">
        <?php if(have_rows("heading-slides")): while(have_rows("heading-slides")): the_row(); ?>
        <div class="swiper-slide">
            <div class="heading-slide position-relative">
                <div class="img-bg">
                    <img src="<?php echo get_sub_field("img") ?>" alt="" class="w-100 img-fluid">
                    <div class="overlay"></div>
                    <div class="slide-content">
                        <?php echo get_sub_field("text") ?>
                    </div>
                </div>
            </div>
        </div>
        <?php endwhile;endif ?>
    </div>

</div>


<div class="search container-fluid">
    <div class="tabs">
        <span class="searchname active">
            Vé tàu
        </span>
        <span class="searchname">
            Khách sạn
        </span>
        <span class="searchname">
            Nhà hàng
        </span>
    </div>


    <form action="">
        <div class="row form-search">
            <div class="col-lg-4">
                <div class="from-to">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M14.2199 21.6299C13.0399 21.6299 11.3699 20.7999 10.0499 16.8299L9.32988 14.6699L7.16988 13.9499C3.20988 12.6299 2.37988 10.9599 2.37988 9.77995C2.37988 8.60995 3.20988 6.92995 7.16988 5.59995L15.6599 2.76995C17.7799 2.05995 19.5499 2.26995 20.6399 3.34995C21.7299 4.42995 21.9399 6.20995 21.2299 8.32995L18.3999 16.8199C17.0699 20.7999 15.3999 21.6299 14.2199 21.6299ZM7.63988 7.02995C4.85988 7.95995 3.86988 9.05995 3.86988 9.77995C3.86988 10.4999 4.85988 11.5999 7.63988 12.5199L10.1599 13.3599C10.3799 13.4299 10.5599 13.6099 10.6299 13.8299L11.4699 16.3499C12.3899 19.1299 13.4999 20.1199 14.2199 20.1199C14.9399 20.1199 16.0399 19.1299 16.9699 16.3499L19.7999 7.85995C20.3099 6.31995 20.2199 5.05995 19.5699 4.40995C18.9199 3.75995 17.6599 3.67995 16.1299 4.18995L7.63988 7.02995Z"
                            fill="#09080D" />
                        <path
                            d="M10.11 14.4C9.92005 14.4 9.73005 14.33 9.58005 14.18C9.29005 13.89 9.29005 13.41 9.58005 13.12L13.16 9.53C13.45 9.24 13.93 9.24 14.22 9.53C14.51 9.82 14.51 10.3 14.22 10.59L10.64 14.18C10.5 14.33 10.3 14.4 10.11 14.4Z"
                            fill="#09080D" />
                    </svg>
                    <label for="">Địa điểm</label>
                    <br>
                    <select name="" id="">
                        <option value="">Sài Gòn <-> Vũng Tàu</option>
                        <option value="">Sài Gòn <-> Nha Trang</option>
                    </select>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="checkin">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M8 5.75C7.59 5.75 7.25 5.41 7.25 5V2C7.25 1.59 7.59 1.25 8 1.25C8.41 1.25 8.75 1.59 8.75 2V5C8.75 5.41 8.41 5.75 8 5.75Z"
                            fill="#09080D" />
                        <path
                            d="M16 5.75C15.59 5.75 15.25 5.41 15.25 5V2C15.25 1.59 15.59 1.25 16 1.25C16.41 1.25 16.75 1.59 16.75 2V5C16.75 5.41 16.41 5.75 16 5.75Z"
                            fill="#09080D" />
                        <path
                            d="M8.5 14.5001C8.37 14.5001 8.24 14.4801 8.12 14.4201C8 14.3701 7.88999 14.3001 7.78999 14.2101C7.60999 14.0201 7.5 13.7601 7.5 13.5001C7.5 13.3701 7.53 13.2401 7.58 13.1201C7.63 13.0001 7.69999 12.8901 7.78999 12.7901C7.88999 12.7001 8 12.6301 8.12 12.5801C8.48 12.4301 8.93001 12.5101 9.21001 12.7901C9.30001 12.8901 9.37 13.0001 9.42 13.1201C9.47 13.2401 9.5 13.3701 9.5 13.5001C9.5 13.7601 9.39001 14.0201 9.21001 14.2101C9.02001 14.3901 8.76 14.5001 8.5 14.5001Z"
                            fill="#09080D" />
                        <path
                            d="M12 14.5C11.74 14.5 11.48 14.39 11.29 14.21C11.2 14.11 11.13 14 11.08 13.88C11.03 13.76 11 13.63 11 13.5C11 13.24 11.11 12.98 11.29 12.79C11.57 12.51 12.01 12.42 12.38 12.58C12.5 12.63 12.61 12.7 12.71 12.79C12.89 12.98 13 13.24 13 13.5C13 13.63 12.98 13.76 12.92 13.88C12.87 14 12.8 14.11 12.71 14.21C12.61 14.3 12.5 14.37 12.38 14.42C12.26 14.48 12.13 14.5 12 14.5Z"
                            fill="#09080D" />
                        <path
                            d="M8.5 18C8.37 18 8.24 17.97 8.12 17.92C8 17.87 7.88999 17.8 7.78999 17.71C7.60999 17.52 7.5 17.27 7.5 17C7.5 16.87 7.53 16.74 7.58 16.62C7.63 16.49 7.69999 16.39 7.78999 16.29C7.88999 16.2 8 16.13 8.12 16.08C8.48 15.92 8.93001 16.01 9.21001 16.29C9.30001 16.39 9.37 16.49 9.42 16.62C9.47 16.74 9.5 16.87 9.5 17C9.5 17.27 9.39001 17.52 9.21001 17.71C9.02001 17.89 8.76 18 8.5 18Z"
                            fill="#09080D" />
                        <path
                            d="M20.5 9.83997H3.5C3.09 9.83997 2.75 9.49997 2.75 9.08997C2.75 8.67997 3.09 8.33997 3.5 8.33997H20.5C20.91 8.33997 21.25 8.67997 21.25 9.08997C21.25 9.49997 20.91 9.83997 20.5 9.83997Z"
                            fill="#09080D" />
                        <path
                            d="M18 23.75C15.38 23.75 13.25 21.62 13.25 19C13.25 16.38 15.38 14.25 18 14.25C20.62 14.25 22.75 16.38 22.75 19C22.75 21.62 20.62 23.75 18 23.75ZM18 15.75C16.21 15.75 14.75 17.21 14.75 19C14.75 20.79 16.21 22.25 18 22.25C19.79 22.25 21.25 20.79 21.25 19C21.25 17.21 19.79 15.75 18 15.75Z"
                            fill="#09080D" />
                        <path
                            d="M19.49 19.7999H16.5C16.09 19.7999 15.75 19.4599 15.75 19.0499C15.75 18.6399 16.09 18.2999 16.5 18.2999H19.49C19.9 18.2999 20.24 18.6399 20.24 19.0499C20.24 19.4599 19.91 19.7999 19.49 19.7999Z"
                            fill="#09080D" />
                        <path
                            d="M18 21.33C17.59 21.33 17.25 20.99 17.25 20.58V17.59C17.25 17.18 17.59 16.84 18 16.84C18.41 16.84 18.75 17.18 18.75 17.59V20.58C18.75 20.99 18.41 21.33 18 21.33Z"
                            fill="#09080D" />
                        <path
                            d="M15.37 22.75H8C4.35 22.75 2.25 20.65 2.25 17V8.5C2.25 4.85 4.35 2.75 8 2.75H16C19.65 2.75 21.75 4.85 21.75 8.5V16.36C21.75 16.67 21.56 16.95 21.26 17.06C20.97 17.17 20.64 17.09 20.43 16.85C19.81 16.15 18.92 15.75 17.99 15.75C16.2 15.75 14.74 17.21 14.74 19C14.74 19.59 14.9 20.17 15.21 20.67C15.38 20.97 15.6 21.22 15.84 21.43C16.08 21.63 16.17 21.96 16.06 22.26C15.97 22.55 15.69 22.75 15.37 22.75ZM8 4.25C5.14 4.25 3.75 5.64 3.75 8.5V17C3.75 19.86 5.14 21.25 8 21.25H13.82C13.45 20.57 13.25 19.8 13.25 19C13.25 16.38 15.38 14.25 18 14.25C18.79 14.25 19.57 14.45 20.25 14.82V8.5C20.25 5.64 18.86 4.25 16 4.25H8Z"
                            fill="#09080D" />
                    </svg>
                    <label for="">Ngày đến</label>
                    <br>
                    <input type="date" name="" id="" placeholder="Thêm ngày">
                </div>
            </div>
            <div class="col-lg-2">
                <div class="checkin">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M8 5.75C7.59 5.75 7.25 5.41 7.25 5V2C7.25 1.59 7.59 1.25 8 1.25C8.41 1.25 8.75 1.59 8.75 2V5C8.75 5.41 8.41 5.75 8 5.75Z"
                            fill="#09080D" />
                        <path
                            d="M16 5.75C15.59 5.75 15.25 5.41 15.25 5V2C15.25 1.59 15.59 1.25 16 1.25C16.41 1.25 16.75 1.59 16.75 2V5C16.75 5.41 16.41 5.75 16 5.75Z"
                            fill="#09080D" />
                        <path
                            d="M8.5 14.5001C8.37 14.5001 8.24 14.4801 8.12 14.4201C8 14.3701 7.88999 14.3001 7.78999 14.2101C7.60999 14.0201 7.5 13.7601 7.5 13.5001C7.5 13.3701 7.53 13.2401 7.58 13.1201C7.63 13.0001 7.69999 12.8901 7.78999 12.7901C7.88999 12.7001 8 12.6301 8.12 12.5801C8.48 12.4301 8.93001 12.5101 9.21001 12.7901C9.30001 12.8901 9.37 13.0001 9.42 13.1201C9.47 13.2401 9.5 13.3701 9.5 13.5001C9.5 13.7601 9.39001 14.0201 9.21001 14.2101C9.02001 14.3901 8.76 14.5001 8.5 14.5001Z"
                            fill="#09080D" />
                        <path
                            d="M12 14.5C11.74 14.5 11.48 14.39 11.29 14.21C11.2 14.11 11.13 14 11.08 13.88C11.03 13.76 11 13.63 11 13.5C11 13.24 11.11 12.98 11.29 12.79C11.57 12.51 12.01 12.42 12.38 12.58C12.5 12.63 12.61 12.7 12.71 12.79C12.89 12.98 13 13.24 13 13.5C13 13.63 12.98 13.76 12.92 13.88C12.87 14 12.8 14.11 12.71 14.21C12.61 14.3 12.5 14.37 12.38 14.42C12.26 14.48 12.13 14.5 12 14.5Z"
                            fill="#09080D" />
                        <path
                            d="M8.5 18C8.37 18 8.24 17.97 8.12 17.92C8 17.87 7.88999 17.8 7.78999 17.71C7.60999 17.52 7.5 17.27 7.5 17C7.5 16.87 7.53 16.74 7.58 16.62C7.63 16.49 7.69999 16.39 7.78999 16.29C7.88999 16.2 8 16.13 8.12 16.08C8.48 15.92 8.93001 16.01 9.21001 16.29C9.30001 16.39 9.37 16.49 9.42 16.62C9.47 16.74 9.5 16.87 9.5 17C9.5 17.27 9.39001 17.52 9.21001 17.71C9.02001 17.89 8.76 18 8.5 18Z"
                            fill="#09080D" />
                        <path
                            d="M20.5 9.83997H3.5C3.09 9.83997 2.75 9.49997 2.75 9.08997C2.75 8.67997 3.09 8.33997 3.5 8.33997H20.5C20.91 8.33997 21.25 8.67997 21.25 9.08997C21.25 9.49997 20.91 9.83997 20.5 9.83997Z"
                            fill="#09080D" />
                        <path
                            d="M18 23.75C15.38 23.75 13.25 21.62 13.25 19C13.25 16.38 15.38 14.25 18 14.25C20.62 14.25 22.75 16.38 22.75 19C22.75 21.62 20.62 23.75 18 23.75ZM18 15.75C16.21 15.75 14.75 17.21 14.75 19C14.75 20.79 16.21 22.25 18 22.25C19.79 22.25 21.25 20.79 21.25 19C21.25 17.21 19.79 15.75 18 15.75Z"
                            fill="#09080D" />
                        <path
                            d="M19.49 19.7999H16.5C16.09 19.7999 15.75 19.4599 15.75 19.0499C15.75 18.6399 16.09 18.2999 16.5 18.2999H19.49C19.9 18.2999 20.24 18.6399 20.24 19.0499C20.24 19.4599 19.91 19.7999 19.49 19.7999Z"
                            fill="#09080D" />
                        <path
                            d="M18 21.33C17.59 21.33 17.25 20.99 17.25 20.58V17.59C17.25 17.18 17.59 16.84 18 16.84C18.41 16.84 18.75 17.18 18.75 17.59V20.58C18.75 20.99 18.41 21.33 18 21.33Z"
                            fill="#09080D" />
                        <path
                            d="M15.37 22.75H8C4.35 22.75 2.25 20.65 2.25 17V8.5C2.25 4.85 4.35 2.75 8 2.75H16C19.65 2.75 21.75 4.85 21.75 8.5V16.36C21.75 16.67 21.56 16.95 21.26 17.06C20.97 17.17 20.64 17.09 20.43 16.85C19.81 16.15 18.92 15.75 17.99 15.75C16.2 15.75 14.74 17.21 14.74 19C14.74 19.59 14.9 20.17 15.21 20.67C15.38 20.97 15.6 21.22 15.84 21.43C16.08 21.63 16.17 21.96 16.06 22.26C15.97 22.55 15.69 22.75 15.37 22.75ZM8 4.25C5.14 4.25 3.75 5.64 3.75 8.5V17C3.75 19.86 5.14 21.25 8 21.25H13.82C13.45 20.57 13.25 19.8 13.25 19C13.25 16.38 15.38 14.25 18 14.25C18.79 14.25 19.57 14.45 20.25 14.82V8.5C20.25 5.64 18.86 4.25 16 4.25H8Z"
                            fill="#09080D" />
                    </svg>
                    <label for="">Ngày đi</label>
                    <br>
                    <input type="date" name="" id="" placeholder="Thêm ngày">
                </div>
            </div>
            <div class="col-lg-2">
                <div class="checkin">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M9.15957 11.62C9.12957 11.62 9.10957 11.62 9.07957 11.62C9.02957 11.61 8.95957 11.61 8.89957 11.62C5.99957 11.53 3.80957 9.25 3.80957 6.44C3.80957 3.58 6.13957 1.25 8.99957 1.25C11.8596 1.25 14.1896 3.58 14.1896 6.44C14.1796 9.25 11.9796 11.53 9.18957 11.62C9.17957 11.62 9.16957 11.62 9.15957 11.62ZM8.99957 2.75C6.96957 2.75 5.30957 4.41 5.30957 6.44C5.30957 8.44 6.86957 10.05 8.85957 10.12C8.91957 10.11 9.04957 10.11 9.17957 10.12C11.1396 10.03 12.6796 8.42 12.6896 6.44C12.6896 4.41 11.0296 2.75 8.99957 2.75Z"
                            fill="#09080D" />
                        <path
                            d="M16.5394 11.75C16.5094 11.75 16.4794 11.75 16.4494 11.74C16.0394 11.78 15.6194 11.49 15.5794 11.08C15.5394 10.67 15.7894 10.3 16.1994 10.25C16.3194 10.24 16.4494 10.24 16.5594 10.24C18.0194 10.16 19.1594 8.96 19.1594 7.49C19.1594 5.97 17.9294 4.74 16.4094 4.74C15.9994 4.75 15.6594 4.41 15.6594 4C15.6594 3.59 15.9994 3.25 16.4094 3.25C18.7494 3.25 20.6594 5.16 20.6594 7.5C20.6594 9.8 18.8594 11.66 16.5694 11.75C16.5594 11.75 16.5494 11.75 16.5394 11.75Z"
                            fill="#09080D" />
                        <path
                            d="M9.16961 22.55C7.20961 22.55 5.23961 22.05 3.74961 21.05C2.35961 20.13 1.59961 18.87 1.59961 17.5C1.59961 16.13 2.35961 14.86 3.74961 13.93C6.74961 11.94 11.6096 11.94 14.5896 13.93C15.9696 14.85 16.7396 16.11 16.7396 17.48C16.7396 18.85 15.9796 20.12 14.5896 21.05C13.0896 22.05 11.1296 22.55 9.16961 22.55ZM4.57961 15.19C3.61961 15.83 3.09961 16.65 3.09961 17.51C3.09961 18.36 3.62961 19.18 4.57961 19.81C7.06961 21.48 11.2696 21.48 13.7596 19.81C14.7196 19.17 15.2396 18.35 15.2396 17.49C15.2396 16.64 14.7096 15.82 13.7596 15.19C11.2696 13.53 7.06961 13.53 4.57961 15.19Z"
                            fill="#09080D" />
                        <path
                            d="M18.3397 20.75C17.9897 20.75 17.6797 20.51 17.6097 20.15C17.5297 19.74 17.7897 19.35 18.1897 19.26C18.8197 19.13 19.3997 18.88 19.8497 18.53C20.4197 18.1 20.7297 17.56 20.7297 16.99C20.7297 16.42 20.4197 15.88 19.8597 15.46C19.4197 15.12 18.8697 14.88 18.2197 14.73C17.8197 14.64 17.5597 14.24 17.6497 13.83C17.7397 13.43 18.1397 13.17 18.5497 13.26C19.4097 13.45 20.1597 13.79 20.7697 14.26C21.6997 14.96 22.2297 15.95 22.2297 16.99C22.2297 18.03 21.6897 19.02 20.7597 19.73C20.1397 20.21 19.3597 20.56 18.4997 20.73C18.4397 20.75 18.3897 20.75 18.3397 20.75Z"
                            fill="#09080D" />
                    </svg>

                    <label for="">Hành khách</label>
                    <br>
                    <input type="number" name="" id="" placeholder="Số lượng">
                </div>
            </div>
            <div class="col-lg-2">
                <button type="submit">
                    <i class="fa-thin fa-magnifying-glass"></i>
                    Tìm kiếm
                </button>
            </div>
        </div>


    </form>

</div>


<div class="main-highways-wrap container">
    <div class="all-title highway-title"><?php echo get_field('highway-title') ?></div>
    <div class="select-box d-flex justify-content-center align-items-center">
        <svg width="45" height="40" viewBox="0 0 45 40" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M14.9974 2.5C14.9974 1.77083 15.2319 1.17188 15.7008 0.703125C16.1697 0.234375 16.7688 0 17.4983 0H27.5017C28.2312 0 28.8303 0.234375 29.2992 0.703125C29.7681 1.17188 30.0026 1.77083 30.0026 2.5V5H33.7539C34.7959 5.05208 35.6817 5.41667 36.4111 6.09375C37.0884 6.82292 37.4531 7.70833 37.5052 8.75V18.75L40.9439 19.9219C41.8817 20.2865 42.4548 20.8854 42.6632 21.7188C42.8196 22.6042 42.559 23.4115 41.8817 24.1406L33.9884 31.3281C32.6337 32.1094 31.3051 32.5 30.0026 32.5C28.4396 32.5 26.9026 31.9792 25.3916 30.9375C24.5059 30.3125 23.542 30 22.5 30C21.458 30 20.4941 30.3125 19.6084 30.9375C18.2537 31.9271 16.7167 32.4479 14.9974 32.5C13.6428 32.5 12.3142 32.1094 11.0116 31.3281L3.11827 24.1406C2.44095 23.4115 2.18044 22.6042 2.33675 21.7188C2.54515 20.8854 3.11827 20.2865 4.0561 19.9219L7.49479 18.75V8.75C7.54689 7.70833 7.9116 6.82292 8.58892 6.09375C9.31834 5.41667 10.2041 5.05208 11.2461 5H14.9974V2.5ZM12.4965 17.1094L20.937 14.2969C21.979 13.9323 23.021 13.9323 24.063 14.2969L32.5035 17.1094V10H12.4965V17.1094ZM23.9849 32.9688C25.8084 34.2708 27.8143 34.9479 30.0026 35C32.1909 34.8958 34.1968 34.2188 36.0203 32.9688C37.1144 32.2917 38.1565 32.3438 39.1464 33.125C40.2926 34.0625 41.5952 34.7135 43.054 35.0781C43.7313 35.2344 44.2523 35.599 44.6171 36.1719C44.9818 36.7448 45.086 37.3698 44.9297 38.0469C44.7734 38.724 44.4086 39.2448 43.8355 39.6094C43.2624 39.974 42.6372 40.0781 41.9599 39.9219C39.98 39.401 38.4691 38.75 37.4271 37.9688C35.0825 39.2708 32.6077 39.9479 30.0026 40C27.4496 39.8438 25.3656 39.349 23.7504 38.5156C23.2815 38.3073 22.8647 38.099 22.5 37.8906C22.1353 38.099 21.7185 38.3073 21.2496 38.5156C19.6344 39.349 17.5504 39.8438 14.9974 40C12.3923 39.9479 9.94356 39.2708 7.65109 37.9688C6.55696 38.75 5.01997 39.401 3.04012 39.9219C2.3628 40.0781 1.73758 39.974 1.16447 39.6094C0.591351 39.2448 0.226641 38.724 0.0703369 38.0469C-0.0859673 37.3698 0.0182355 36.7448 0.382945 36.1719C0.747655 35.599 1.26867 35.2344 1.94599 35.0781C3.40483 34.7135 4.70736 34.0625 5.85359 33.125C6.84352 32.3958 7.88555 32.3438 8.97968 32.9688C10.8032 34.2188 12.8091 34.8958 14.9974 35C17.2378 34.9479 19.2697 34.2708 21.0933 32.9688C22.0311 32.3438 22.995 32.3438 23.9849 32.9688Z"
                fill="#58C17D" />
        </svg>
        <select name="main-routes" id="main-routes">
            <option value="route" selected disabled>Tuyến</option>
            <?php if(have_rows("main-highways")): while(have_rows("main-highways")): the_row();
            $index = get_row_index();
         ?>
            <option value="route-<?php echo $index?>" class="route-item">
                <?php echo get_sub_field('from') ?>
                -
                <?php echo get_sub_field('to') ?>
            </option>
            <?php endwhile;endif ?>

        </select>
    </div>
    <div class="routes-wrap">
        <?php if(have_rows("main-highways")): while(have_rows("main-highways")): the_row();
            $index = get_row_index();
         ?>
        <div class="row each-route">

            <div class="col-lg-4 route-line">
                <div class="route-text">Tuyến tàu</div>
                <div class="route">
                    <?php echo get_sub_field('from') ?>
                    <i class="fa-solid fa-arrows-left-right"></i>
                    <?php echo get_sub_field('to') ?>
                </div>



            </div>
            <div class="col-lg-3 col-6 route-line">
                <div class="route-text">Giá vé ngày thường</div>

                <div class="weekday-price">
                    <?php echo get_sub_field('weekday-price') ?>

                </div>
            </div>
            <div class="col-lg-3 col-6 route-line">
                <div class="route-text">Giá vé cuối tuần</div>

                <div class="weekend-price">
                    <?php echo get_sub_field('weekend-price') ?>
                </div>
            </div>
            <div class="col-lg-2 d-flex justify-content-end" style="height: fit-content;">
                <button class="order">
                    <a href="<?php echo get_sub_field('link') ?>"> Đặt vé</a>
                </button>
            </div>
        </div>
        <?php endwhile;endif ?>
    </div>

</div>

<div class="container tickets-offices">
    <div class="all-title office-title"><?php echo get_field('office-title') ?></div>
    <div class="row">
        <?php if(have_rows("tickets-offices")): while(have_rows("tickets-offices")): the_row(); ?>
        <div class="col-lg-4">
            <div class="office">
                <div class="office-img">
                    <img src="<?php echo get_sub_field('img') ?>" alt="" class="w-100">
                </div>
                <div class="office-name">
                    <?php echo get_sub_field('name') ?>
                </div>
                <div class="office-address">
                    <?php echo get_sub_field('address') ?>
                </div>
            </div>
        </div>
        <?php endwhile;endif ?>
    </div>
</div>


<div class="home-combo-section container position-relative">
    <div class="home-combo-title all-title">
        <?php echo get_field('combo-title') ?>


    </div>
    <div class="home-combo-desc">
        <?php echo get_field('combo-desc') ?>
    </div>


    <div class="combo-slides-wrap position-relative">
        <div class="swiper combo-slides">
            <div class="swiper-wrapper">
                <?php
        
            $field = get_field('posts-1');

            $args = array(
                'post_type'      => $field, 
                'posts_per_page' => -1,
                'orderby'        => 'date',
                'order'          => 'DESC',
            );

            $query = new WP_Query($args);
            if ($query->have_posts()) :
                while ($query->have_posts()) :
                    $query->the_post(); ?>
                <div class="swiper-slide">
                    <div class="combo-item">
                        <div class="combo-thumb">
                            <a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>
                        </div>
                        <div class="combo-name">
                            <a href="<?php the_permalink() ?>"><?php the_title() ?></a>
                        </div>
                        <div class="combo-price">
                            <?php echo get_field('price') ?></a>
                        </div>
                    </div>
                </div>


                <?php 
                endwhile;
                wp_reset_postdata();
            endif;
        ?>
            </div>


        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

    <div class="more">
        <a href="<?php echo get_field('more-posts-1') ?>">Xem thêm</a>
    </div>
</div>


<div class="home-tour-section container position-relative">
    <div class="home-combo-title all-title">
        <?php echo get_field('tour-title') ?>
    </div>
    <div class="home-combo-desc">
        <?php echo get_field('tour-desc') ?>
    </div>


    <div class="combo-slides-wrap position-relative">
        <div class="swiper combo-slides">
            <div class="swiper-wrapper">
                <?php
        
            $field = get_field('posts-2');

            $args = array(
                'post_type'      => $field, 
                'posts_per_page' => -1,
                'orderby'        => 'date',
                'order'          => 'DESC',
            );

            $query = new WP_Query($args);
            if ($query->have_posts()) :
                while ($query->have_posts()) :
                    $query->the_post(); ?>
                <div class="swiper-slide">
                    <div class="tour-item">
                        <div class="tour-thumb">
                            <a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>
                        </div>
                        <div class="tour-name">
                            <a href="<?php the_permalink() ?>"><?php the_title() ?></a>
                        </div>
                    </div>
                </div>


                <?php 
                endwhile;
                wp_reset_postdata();
            endif;
        ?>
            </div>


        </div>
        <div class="swiper-button-next tour-next"></i></div>
        <div class="swiper-button-prev tour-prev"></i></div>

    </div>

    <div class="more">
        <a href="<?php echo get_field('more-posts-1') ?>">Xem thêm</a>
    </div>
</div>

<div class="home-food-section container position-relative">
    <div class="row">
        <div class="col-lg-4">
            <div class="food-content-wrap">
                <div class="food-combo-title ">
                    <?php echo get_field('food-title') ?>
                </div>
                <div class="food-combo-desc">
                    <?php echo get_field('food-desc') ?>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="food-slides-sec">
                <div class="food-slides-wrap position-relative">
                    <div class="swiper food-slides">
                        <div class="swiper-wrapper">
                            <?php
        
                            $field = get_field('posts-3');

                            $args = array(
                                'post_type'      => $field, 
                                'posts_per_page' => -1,
                                'orderby'        => 'date',
                                'order'          => 'DESC',
                            );

                            $query = new WP_Query($args);
                            if ($query->have_posts()) :
                                while ($query->have_posts()) :
                                    $query->the_post(); ?>
                            <div class="swiper-slide">
                                <div class="food-item">
                                    <div class="food-thumb">
                                        <a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>
                                    </div>
                                    <div class="food-name">
                                        <a href="<?php the_permalink() ?>"><?php the_title() ?></a>
                                    </div>
                                </div>
                            </div>
                            <?php 
                                endwhile;
                                wp_reset_postdata();
                            endif;
                        ?>
                        </div>


                    </div>
                    <div class="swiper-button-next food-next"><i class="fa-solid fa-angle-right"></i></div>
                    <div class="swiper-button-prev food-prev"><i class="fa-solid fa-angle-left"></i></div>

                </div>
            </div>
        </div>
    </div>




    <div class="more">
        <a href="<?php echo get_field('more-posts-1') ?>">Xem thêm</a>
    </div>
</div>


<div class="home-review container">
    <div class="row">
        <div class="col-lg-6">
            <div class="review-title">
                <?php echo get_field('review-title')?>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="review-desc">
                <?php echo get_field('review-desc')?>
            </div>
        </div>
    </div>

    <div class="row cus-review">
        <?php if(have_rows("reviews")): while(have_rows("reviews")): the_row(); ?>
        <div class=" col-lg-4">
            <div class="review-wrap">
                <div class="review-text">
                    <div class="tw">
                        <?php echo get_sub_field('text') ?>
                    </div>
                </div>
                <div class="reviewer">
                    <div class="reviewer-img">
                        <img src="<?php echo get_sub_field('img') ?>" alt="">
                    </div>
                    <div class="stars">
                        <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                        <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                        <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                        <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                        <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                    </div>
                    <div class="reviewer-name">
                        <?php echo get_sub_field('name') ?>
                    </div>
                    <div class="type">Du khách</div>
                </div>
            </div>
        </div>
        <?php endwhile;endif ?>
    </div>
</div>

<div class="news container">
    <div class="news-heading all-title">
        <?php echo get_field('news-title') ?>
    </div>
    <div class="news-desc">
        <?php echo get_field('news-text') ?>
    </div>

    <div class="row posts-sec">
        <?php 
        $args = array(
        'post_type' => 'post',  
        'posts_per_page' => 4, 
        'orderby' => 'date',    
        'order' => 'DESC'       
        );

        $query = new WP_Query($args);
        
        if ($query->have_posts()):
        while ($query->have_posts()):
            $query->the_post(); ?>
        <div class="col-lg-6">
            <div class="post">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="post-thumb">
                            <a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="content-group">
                            <div class="post-title"><a href="<?php the_permalink() ?>"><?php the_title() ?></a></div>
                            <div class="post-date">
                                <?php echo get_the_date() ?>
                            </div>
                            <div class="post-exceprt"><?php the_excerpt() ?></div>

                            <div class="post-more"><a href="<?php the_permalink() ?>">Xem thêm <i
                                        class="fa-solid fa-arrow-right"></i></a></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <?php endwhile;endif ?>
    </div>
</div>









<?php get_footer()?>