<div class="footer-wrap">
    <div class="container">
        <div class="logo logo-footer">
            <a href="<?php echo get_home_url() ?>">
                <img src="<?php echo get_field('logo-footer', 'option') ?>" alt="" class="img-fluid">
            </a>
        </div>
        <div class="row">
            <div class="col-lg-4">

                <div class="phones">

                    <div class="phone">
                        <?php echo get_field('phones', 'option') ?>
                    </div>

                </div>
            </div>
            <div class="col-lg-4">
                <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-3',
                            'menu_class' => 'menu-footer',
                            
                        ))
                ?>
            </div>

            <div class="col-lg-4">
                <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-4',
                            'menu_class' => 'menu-footer',
                            
                        ))
                ?>
            </div>
        </div>
    </div>
</div>

<div class="copyright ">
    <div class="container d-flex align-items-center justify-content-between">
        <div class="copyright-text">
            <?php echo get_field('copyright', 'option') ?>
        </div>
        <div class="copyimg">
            <img src="<?php echo get_field('footer-img','option') ?> " alt="">
        </div>
    </div>
</div>








<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
    integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
    crossorigin="anonymous" referrerpolicy="no-referrer">
</script>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
</script>
<script src="<?php bloginfo("template_directory")?>/assets/js/animate.js"></script>
<script>
var texts = document.querySelectorAll(".mobile-menu li a");
var hamburger2 = document.querySelector(".hamburger");
var menu9 = document.querySelector(".mobile-menu");
var menu = document.querySelector(".menu-wrap");
var menuLang = document.querySelector(".menu-language-container");
var langSwitcher = document.querySelector(".language-switcher");

if (texts) {
    texts.forEach((text) => {
        text.classList.add("text");
        text.innerHTML = text.textContent.replace(/\S/g, "<span>$&</span>");

    });
    var separating = anime.timeline({
        targets: ".text span",
        easing: 'easeInOutQuad',
    }).add({
        rotate: function() {
            return anime.random(-360, 360)
        },
        translateX: function() {
            return anime.random(0, 200)
        },
        translateY: function() {
            return anime.random(0, 500)
        },
        rotate: function() {
            return anime.random(-360, 360)
        },
    });

    hamburger2.addEventListener('click', () => {
        hamburger2.classList.toggle("active");
        menu.classList.toggle("active");
        if (menu.classList.contains('active')) {
            anime.timeline({
                targets: ".text span",
                easing: 'easeInOutQuad',

                duration: 1000,
            }).add({
                rotate: 0,
                translateX: 0,
                translateY: 0,
            })
        } else {
            anime.timeline({
                targets: ".text span",
                easing: 'easeInOutQuad',
                // loop: true,
                // direction: "alternate",
                duration: 500,
            }).add({
                rotate: function() {
                    return anime.random(-360, 360)
                },
                translateX: function() {
                    return anime.random(0, 200)
                },
                translateY: function() {
                    return anime.random(0, 500)
                },
            });
        }

        document.addEventListener("click", (e) => {

            if (!menu9.contains(e.target) && !hamburger2.contains(e.target)) {

                hamburger2.classList.remove("active");
                menu.classList.remove("active");


                anime.timeline({
                    targets: ".text span",
                    easing: 'easeInOutQuad',
                    // loop: true,
                    // direction: "alternate",
                    duration: 500,
                }).add({
                    rotate: function() {
                        return anime.random(-360, 360)
                    },
                    translateX: function() {
                        return anime.random(0, 200)
                    },
                    translateY: function() {
                        return anime.random(0, 500)
                    },
                });
            }
        });
    });




}
</script>
<script src="<?php bloginfo("template_directory")?>/assets/js/custom.js"></script>


</body>

</html>