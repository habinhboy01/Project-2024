<?php 

/**template name: Tin tức và sự kiện */

get_header(); ?>
	
	<div class="bg-category">
		<div class="container">
			<div class="stake-title"><?php the_field('title-news', 'option')?></div>
		</div>

		<!-- ---------- -->

		<!-- menu category -->

		<div class="bg-category-2">
			<div class="container">
			    <?php wp_nav_menu (
		        array('theme_location' => 'menu-7', 'menu_class' => 'menu-category'));?>
		    </div>
		</div>

        <!-- ---------- -->

        <div class="container">
	    	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

	            <div class="row">

	                <?php
	                if (get_query_var('paged')) {
	                    $paged = get_query_var('paged');
	                } elseif (get_query_var('page')) { // 'page' is used instead of 'paged' on Static Front Page
	                    $paged = get_query_var('page');
	                } else {
	                    $paged = 1;
	                }
	                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
	                $loop = new WP_Query(
	                    array(
	                        'post_type' => 'post',
	                        'posts_per_page' => get_option('posts_per_page'),
	                        'paged' => $paged,
	                        'post_status' => 'publish',
	                        'orderby' => 'date',
	                        'order' => 'DESC' 
	                    )
	                );
	                ?>

	                <?php if ($loop->have_posts()) : while ($loop->have_posts()) : $loop->the_post(); ?>

						 <div class="col-lg-4 col-md-6 col-12">
        <div class="content-cate">
            <a class="img-cate" href="<?php the_permalink(); ?>">
                <?php the_post_thumbnail('thumbnail'); ?>
            </a>

            <div class="category-list">
                <?php 
                    $categories = get_the_category();
                    $category_links = array();
                    foreach ($categories as $category) {
                        $category_links[] = '<a href="' . esc_url(get_category_link($category->term_id)) . '">' . $category->name . '</a>';
                    }
                    echo implode(', ', $category_links);
                ?>
            </div>

            <a href="<?php the_permalink(); ?>">
                <h3 class="title-cate"><?php the_title(); ?></h3>
            </a>

            <p class="date-post"><?php echo get_the_date(); ?></p>
        </div>
    </div>


	                    <?php endwhile; ?>

	                    <?php if ($loop->max_num_pages > 1) : // custom pagination  
	                    ?>
	                    	<div class="pagination">
		                        <?php
		                        $orig_query = $wp_query; // fix for pagination to work
		                        $wp_query = $loop;
		                        $big = 999999999;
								echo paginate_links( array(
									'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
									'format' => '?paged=%#%',
									'prev_text'    => __('<i class="fa-solid fa-angle-left"></i>'),
									'next_text'    => __('<i class="fa-solid fa-angle-right"></i>'),
									'current' => max( 1, get_query_var('paged') ),
									'total' => $wp_query->max_num_pages
									) );
		                        $wp_query = $orig_query; // fix for pagination to work
		                        ?>
		                    </div>
	                    <?php endif; ?>

	                <?php wp_reset_postdata();
	                else : echo '<p>' . __('Sorry, no posts matched your criteria.') . '</p>';
	                endif; ?>

	            </div>

	        <?php endwhile; ?>
	    <?php endif; ?>

	</div>

<?php get_footer(); ?>