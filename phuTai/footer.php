<footer>
    <div class="footer-wrap overflow-hidden">
        <div class="container footer">
            <div class="company-name-footer"><?php echo get_field("company-name",'option') ?></div>
            <div class="row footer-row">
                <div class="col-md-11">
                    <div class="address">
						<?php if(have_rows("addresses","option")): while(have_rows("addresses","option")): the_row(); ?>
                        <div class="icon"><?php echo get_sub_field('icon') ?></div>                     
                        <p><?php echo get_sub_field('text') ?></p>
                        <?php endwhile;endif ?>
                    </div>
                    <div class="phones">
						<?php if(have_rows("phone-numbers","option")): while(have_rows("phone-numbers","option")): the_row(); ?>
                        <div class="icon"><?php echo get_sub_field('icon') ?></div>
                        <p><a href="tel: <?php echo get_sub_field('text') ?>"><?php echo get_sub_field('text') ?></a>
                        </p>
                        <?php endwhile;endif ?>
                    </div>
                    <div class="fax">
                        <?php if(have_rows("fax","option")): while(have_rows("fax","option")): the_row(); ?>
						<div class="icon"><?php echo get_sub_field('icon') ?></div>
                        <p><a href="tel: <?php echo get_sub_field('text') ?>"><?php echo get_sub_field('text') ?></a>
                        </p>
                        <?php endwhile;endif ?>
                    </div>
                    <div class="mails">
						<?php if(have_rows("mails","option")): while(have_rows("mails","option")): the_row(); ?>
                        <div class="icon"><?php echo get_sub_field('icon') ?></div>   
                        <p><a href="mailto: <?php echo get_sub_field('text') ?>"><?php echo get_sub_field('text') ?></a>
                        </p>
                        <?php endwhile;endif ?>
                    </div>
                </div> 
                <div class="col-md-1">
                      <div class="socials-wrap">
                        <?php if(have_rows("socials","option")): while(have_rows("socials","option")): the_row(); ?>
                        <div class="social"><a href="<?php echo get_sub_field('link') ?>"><?php echo get_sub_field('icon') ?></a>
                        </div>
                        <?php endwhile;endif ?>
                      </div> 
                </div> 
                <div class="contact-footer">
                    <div class="contact-footer-title">
                        Đăng ký nhận tin
                    </div>
                    <?php echo do_shortcode('[contact-form-7 id="7d00ba0" title="contact footer"]') ?>
                </div>     
            </div>
        </div>
    </div>
    <div class="footer2">
        <?php echo get_field("copyright", "option") ?>
    </div>
</footer>

<div class="back-top">
	<a href="#"><i class="fa-sharp fa-regular fa-angle-up"></i></a>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
    integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
    crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="<?php bloginfo("template_directory")?>/assets/js/app.js"></script>

<?php if (is_page('lien-he')) { ?>
    <script src="<?php bloginfo("template_directory")?>/assets/js/contact.js"></script>
<?php } ?>

<script src="<?php bloginfo("template_directory")?>/assets/js/recruitment.js"></script>
<?php wp_footer(); ?>

</body>

</html>