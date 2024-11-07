<?php get_header(); ?>

<section id="primary" class="container content-area" style="margin-top: 130px;padding-bottom: 50px">
    <main id="main" class="site-main">

        <header class="page-header">
            <h1 class="page-title">
                <?php
                printf( esc_html__( 'Kết quả tìm kiếm: "%s"', 'phuTai' ), '<span>' . get_search_query() . '</span>' );
                if($wp_query->found_posts > 0):
                ?>

                <p>Tìm thấy <?php echo $wp_query->found_posts ; ?> kết quả</p>
                <?php endif; ?>

            </h1>
        </header>
        <div class="row results">
            <?php
        if ( have_posts() ) :
            while ( have_posts() ) : the_post(); ?>
            <div class="col-lg-4 col-md-6">
                <div class="aPost search-result">
                    <div class="post-img">
                        <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail() ?></a>
                    </div>
                    <div class="post-group">
                        <div class="post-title"><a href="<?php the_permalink()?>"><?php the_title() ?></a></div>
                        <div class="post-date">
                            <?php echo get_the_date("d-m-Y") ?>
                        </div>
                        <div class="more">
                            <a href="<?php the_permalink() ?>">Xem thêm <i class="fa-light fa-arrow-right"
                                    style="color: #ffffff;"></i></a>
                        </div>
                    </div>

                </div>
            </div>

            <?php endwhile;

            the_posts_pagination();

        else :
            ?>
            <p class="no-result"><?php esc_html_e( 'Không tìm thấy kết quả.', 'phuTai' ); ?></p>
            <?php
        endif;
        ?>

        </div>


    </main>
</section>

<?php get_footer(); ?>