<?php 

/**template name: Liên hệ */ 

get_header(); ?>

<div class="bg-category">
    <div class="container">
        <h1 class="title-contact"><?php the_title(); ?></h1>
    </div>

    <div class="bg-category-2">
        <div class="container">
            <ul class="category-contact">
                <li id="company" class="item-cate active-btn"><?php echo get_field('category'); ?></li>

                <li id="stone" class="item-cate"><?php echo get_field('category-2'); ?></li>

                <li id="wooden" class="item-cate"><?php echo get_field('category-3'); ?></li>

                <li id="car" class="item-cate"><?php echo get_field('category-4'); ?></li>
            </ul>
        </div>
    </div>

    <!-- -------------- -->

    <div class="container">

        <!-- Công ty cổ phần Phú Tài -->

        <div id="1" class="row">
            <div class="col-lg-5 col-12">
                <h2 class="title-company"><?php echo get_field('title-company'); ?></h2>

                <ul class="list-contact">

                    <?php if( have_rows('list-contact', 'option') ): ?>
                    <?php while( have_rows('list-contact', 'option') ): the_row(); ?>

                    <li>
                        <?php echo get_sub_field('icon'); ?>
                        <p><?php echo get_sub_field('text'); ?></p>
                    </li>

                    <?php endwhile; ?>
                    <?php endif; ?>
                </ul>
            </div>

            <div class="col-lg-7 col-12">
                <div class="map-contact"><?php echo get_field('map'); ?></div>
            </div>
        </div>

        <!-- liên hệ mua hàng -->

        <h3 class="title-contact-2"><?php echo get_field('title-contact'); ?></h3>

        <!-- Mua sản phẩm Đá -->

        <div id="2" class="row">
            <div class="col-lg-3 col-12">
                <p class="stone-products"><?php echo get_field('stone-products'); ?></p>
            </div>

            <div class="col-lg-9 col-12">
                <ul class="buy-stone">
                    <?php if( have_rows('buy-stone') ): ?>
                    <?php while( have_rows('buy-stone') ): the_row(); ?>

                    <li>
                        <p class="text-contact"><?php echo get_sub_field('title'); ?></p>

                        <p class="text-contact-2"><?php echo get_sub_field('text'); ?></p>

                        <p class="text-contact-2"><?php echo get_sub_field('text-2'); ?></p>
                    </li>

                    <?php endwhile; ?>
                    <?php endif; ?>
                </ul>
            </div>
        </div>

        <!-- Mua sản phẩm Gỗ -->

        <div id="3" class="row border-contact">
            <div class="col-lg-3 col-12">
                <p class="stone-products"><?php echo get_field('wooden-product'); ?></p>
            </div>

            <div class="col-lg-9 col-12">
                <ul class="buy-stone buy-wooden">
                    <?php if( have_rows('buy-wooden') ): ?>
                    <?php while( have_rows('buy-wooden') ): the_row(); ?>

                    <li>
                        <p class="text-contact"><?php echo get_sub_field('title'); ?></p>

                        <p class="text-contact-2"><?php echo get_sub_field('text'); ?></p>

                        <p class="text-contact-2"><?php echo get_sub_field('text-2'); ?></p>
                    </li>

                    <?php endwhile; ?>
                    <?php endif; ?>
                </ul>
            </div>
        </div>

        <!-- Mua sản phẩm Xe ô tô -->

        <div id="4" class="row border-contact-2">
            <div class="col-lg-3 col-12">
                <p class="stone-products"><?php echo get_field('car-product'); ?></p>
            </div>

            <div class="col-lg-9 col-12">
                <ul class="buy-stone">
                    <?php if( have_rows('buy-car') ): ?>
                    <?php while( have_rows('buy-car') ): the_row(); ?>

                    <li>
                        <p class="text-contact"><?php echo get_sub_field('title'); ?></p>

                        <p class="text-contact-2"><?php echo get_sub_field('text'); ?></p>

                        <p class="text-contact-2"><?php echo get_sub_field('text-2'); ?></p>
                    </li>

                    <?php endwhile; ?>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </div>

    <!-- liên hệ chúng tôi -->

    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-12">
                <h3 class="title-contact-2 title-contact-3"><?php echo get_field('title-contact-2'); ?></h3>

                <p class="text-contact-3"><?php echo get_field('text-contact'); ?></p>
            </div>

            <div class="col-lg-8 col-12">
                <div class="bg-form">
                    <?php echo do_shortcode('[contact-form-7 id="363ac97" title="Liên hệ"]'); ?>
                </div>
            </div>
        </div>
    </div>
</div>


<?php get_footer(); ?>