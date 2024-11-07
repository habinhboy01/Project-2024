<?php 

/**template name: Home */ 

get_header()?>

<div class="home-slides">
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <?php if(have_rows("home-slides")): while(have_rows("home-slides")): the_row(); ?>
            <div class="swiper-slide">
                <div class="slide-item position-relative">
                    <div class="slide-bg">
                        <img src="<?php echo get_sub_field("img") ?>" alt="" class="w-100">
                    </div>
                    <div class="slide-text">
                        <?php echo get_sub_field("text") ?>
                    </div>
                </div>
            </div>
            <?php endwhile;endif ?>


        </div>
        <!-- <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div> -->
    </div>
</div>

<div class="about-us-sec container-fluid">
    <div class="row ">
        <div class="col-lg-5 px-0">
            <div class="home-about-content">
                <div class="h-a-title">
                    <?php echo get_field("about-us-text") ?>
                </div>
                <div class="h-a-text">
                    <?php echo get_field("about-us") ?>
                </div>
            </div>
        </div>
        <div class="col-lg-7 px-0">
            <div class="a-bg h-100">
                <img class="h-a-bg w-100" src="<?php echo get_field("about-img") ?>" alt="">
            </div>
        </div>
    </div>
</div>


<div class="how-wrap">
    <div class="container">
        <div class="how-title">
            <?php echo get_field("how-title") ?>
        </div>
        <div class="how-grid">
            <?php if(have_rows("hows")): while(have_rows("hows")): the_row(); ?>
            <div class="how-item">
                <div class="how-img">
                    <img src="<?php echo get_sub_field('img') ?>" alt="">
                </div>
                <div class="how-name">
                    <?php echo get_sub_field('name') ?>
                </div>
            </div>
            <?php endwhile;endif ?>
        </div>

        <div class="how-des-wrap">
            <?php if(have_rows("hows")): while(have_rows("hows")): the_row(); ?>
            <div class="des-item-wrap">
                <div class="how-des">
                    <?php echo get_sub_field('des') ?>
                </div>
                <div class="how-link">
                    <a href="<?php echo get_sub_field('link') ?>">Load more</a>
                </div>
            </div>
            <?php endwhile;endif ?>
        </div>
    </div>
</div>


<div class="top-wrap">
    <div class="container">
        <div class="top-title">
            <?php echo get_field('top-picks-title') ?>
        </div>
        <div class="row">
            <?php
            
            $args = array(
                'post_type' => 'post',
                'posts_per_page' => 3, 
                'cat' => get_field("type")
            );

            $query = new WP_Query( $args );

            if ( $query->have_posts() ): 
                while ( $query->have_posts() ):
                    $query->the_post();
            ?>

            <div class="col-lg-4 col-md-6">
                <div class="pick-wrap">
                    <div class="pick-img">
                        <a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>

                    </div>

                    <div class="pick-title">
                        <a href="<?php the_permalink() ?>">
                            <?php echo get_field('top-picks-title') ?><?php the_title() ?></a>
                    </div>

                    <div class="pick-exc">
                        <?php the_excerpt() ?>
                    </div>
                </div>

            </div>
            <?php endwhile; wp_reset_postdata(); endif ?>
        </div>
    </div>
</div>

<div class="aca-wrap mb-5">
    <div class="container">
        <div class="aca-heading d-flex align-items-center">
            <span class="box"></span>
            <span class="box"></span>
            <span class="box"></span>
            <span class="box"></span>
            <span class="box"></span>
            <span class="box"></span>
            <span class="box"></span>
            <div class="acatext ">
                <?php echo get_field('aca-text') ?>
            </div>
            <div class="aca-more">
                <a href="<?php echo get_field("aca-link") ?>">Load more</a>
            </div>
        </div>

        <div class="row">
            <?php
            
            $args = array(
                'post_type' => 'post',
                'posts_per_page' => 2, 
                'cat' => get_field("aca-type")
            );

            $query = new WP_Query( $args );

            if ( $query->have_posts() ): 
                while ( $query->have_posts() ):
                    $query->the_post();
            ?>

            <div class="col-md-6">
                <div class="a-wrap">
                    <div class="a-img">
                        <a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>

                    </div>

                    <div class="a-title">
                        <a href="<?php the_permalink() ?>"> <?php the_title() ?></a>
                    </div>

                    <div class="a-exc">
                        <?php the_excerpt() ?>
                    </div>

                    <a href="<?php the_permalink() ?>" class="a-download">
                        Download
                    </a>
                </div>

            </div>
            <?php endwhile; wp_reset_postdata(); endif ?>
        </div>
    </div>
</div>


<div class="event-media-wrap">
    <div class="container">
        <div class="row">
            <?php if(have_rows("event-media")): while(have_rows("event-media")): the_row(); ?>
            <div class="col-md-6">
                <div class="e-m-item">
                    <div class="e-m-name"><?php echo get_sub_field("name") ?></div>
                    <div class="e-m-desc"><?php echo get_sub_field("desc") ?></div>
                    <a href="<?php echo get_sub_field("link") ?>" class="a-download">
                        Download
                    </a>

                </div>
            </div>
            <?php endwhile;endif ?>
        </div>
    </div>
</div>





<?php get_footer()?>