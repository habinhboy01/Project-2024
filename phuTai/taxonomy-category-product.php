<?php get_header(); ?>

<div class="container single-stake">
    <div class="single-cat-title text-center">
        <?php echo single_cat_title(); ?>
    </div>

    <?php
    $term_children = get_terms( array(
        'taxonomy' => 'category-product', 
        'parent' => get_queried_object_id(), 
    ) );

    if ( $term_children ) {
        echo '<ul class="cate-list">';
        foreach ( $term_children as $child ) {
            $class = ($child->term_id == get_queried_object_id()) ? 'active' : ''; 
            echo '<li class="' . $class . '"><a href="' . get_term_link( $child ) . '">' . $child->name . '</a></li>';
        }
        echo '</ul>';   
    ?>

        <div class="row">
            <div class="all-products-title">
                Sản phẩm nổi bật
            </div>

            <?php
            $args_all = array(
                'post_type' => 'product',
                'posts_per_page' => -1,
                'orderby' => 'post_date',
                'order' => 'ASC',
                'tax_query' => array(
                    array(
                        'taxonomy' => 'category-product',
                        'field' => 'term_id',
                        'terms' => get_queried_object_id(), 
                    ),
                ),
            );

            $the_query_all = new WP_Query( $args_all );

            if ( $the_query_all->have_posts() ) {
                while ( $the_query_all->have_posts() ) {
                    $the_query_all->the_post(); ?>
                    <div class="col-lg-3 col-6" data-aos="zoom-in">
                        <div class="product-item">
                            <div class="product-img">
                                <a href="<?php echo get_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
                            </div>
                            <div class="product-name">
                                <a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a>
                            </div>
                        </div>
                    </div>
                <?php }
                wp_reset_postdata();
            } else {
                echo 'Không có sản phẩm nào.';
            }
            ?>
        </div>
    <?php } else {
        
        $parent_term_id = 0;
        $current_term = get_queried_object();
        if ($current_term->parent) {
            $parent_term_id = $current_term->parent;
        } else {
            $parent_term_id = $current_term->term_id;
        }

        
        $term_children = get_term_children($parent_term_id, 'category-product');

        if ($term_children) {
            echo '<ul class="cate-list cate-list2">';
            foreach ($term_children as $child) {
                $child_term = get_term_by('id', $child, 'category-product');
                $class = ($child_term->term_id == $current_term->term_id) ? 'active' : '';
                echo '<li class="' . $class . '"><a href="' . get_term_link($child_term) . '">' . $child_term->name . '</a></li>';
            }
            echo '</ul>';   
        }
        ?>
    
        <div class="row mb-5">
            <?php
            if ( have_posts() ) {
                while ( have_posts() ) {
                    the_post(); ?>
                    <div class="col-lg-3 col-6">
                        <div class="product-item">
                            <div class="product-img">
                                <a href="<?php echo get_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
                            </div>
                            <div class="product-name">
                                <a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a>
                            </div>
                        </div>
                    </div>
                <?php }
                wp_reset_postdata();
            } else {
                echo 'Không có sản phẩm nào.';
            }
            ?>
        </div>

        <?php
        global $wp_query;

        if ($wp_query->max_num_pages > 1) : 
        ?>
            <div class="pagination">
                <?php
                $big = 999999999; 
                echo paginate_links(array(
                    'base' => str_replace($big, '%#%', esc_url(get_pagenum_link($big))),
                    'format' => '?paged=%#%',
                    'prev_text'    => __('<i class="fa-solid fa-angle-left"></i>'),
                    'next_text'    => __('<i class="fa-solid fa-angle-right"></i>'),
                    'current' => max(1, get_query_var('paged')),
                    'total' => $wp_query->max_num_pages
                ));
                ?>
            </div>
        <?php endif; ?>
    <?php } ?>

</div>

<?php get_footer(); ?>
