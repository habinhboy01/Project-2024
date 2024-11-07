<div class="follow-sec">
    <span class="follow-text">Follow us</span>
    <?php if(have_rows("socials", "option")): while(have_rows("socials", "option")): the_row(); ?>
    <a class="social-icon" href="<?php echo get_sub_field('link') ?>"><?php echo get_sub_field('icon') ?></a>
    <?php endwhile;endif ?>
</div>

<div class="footer-wrap">
    <div class="container">
        <div class="web-name">
            <?php echo get_field('website-name', 'option') ?>
        </div>


        <div class="menu-footer-wrap">
            <div class="footer-item">
                <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-3',
                            'menu_class' => 'm-footer'
                        ))
                   ?>
            </div>

            <div class="footer-item">
                <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-4',
                            'menu_class' => 'm-footer'
                        ))
                   ?>
            </div>

            <div class="footer-item">
                <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-5',
                            'menu_class' => 'm-footer'
                        ))
                   ?>
            </div>

            <div class="footer-item">
                <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-6',
                            'menu_class' => 'm-footer'
                        ))
                   ?>
            </div>

            <div class="footer-item">
                <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-7',
                            'menu_class' => 'm-footer'
                        ))
                   ?>
            </div>
        </div>
    </div>
</div>

<div class="copyright">
    <?php echo get_field("copyright", "option") ?>
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
<script src="<?php bloginfo("template_directory")?>/assets/js/gsap.js"></script>

<script src="<?php bloginfo("template_directory")?>/assets/js/custom.js"></script>


</body>

</html>