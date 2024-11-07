<?php get_header(); ?>

	<div class="container">
		<div class="breadcrumb-category">
			<div class="breadcrumb-intro">
				<?php

					if ( function_exists('yoast_breadcrumb') ) {

					 yoast_breadcrumb( '<p id="breadcrumbs">','</p>' );

					}

				?>
			</div>

			<h1 class="title-category"><?php single_cat_title(); ?></h1>

			<div class="des-category"><?php echo category_description(); ?></div>
		</div>


		<!-- menu category -->

	    <?php 
            wp_nav_menu(array(
                'theme_location' => 'menu-7',
                'menu_class' => 'menu-cate'
            ))
        ?>

	    <!-- -------------------- -->

	   <div class="container">
	   		<div class="row">
	   			<?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>

						<div class="col-lg-4 col-md-6 col-12">
							<div class="child-cate">
								<a class="img-category" href="<?php the_permalink(); ?>">
									<?php the_post_thumbnail('full'); ?>		
								</a>

								<a href="<?php the_permalink(); ?>">
									<h3 class="title-cate"><?php the_title(); ?></h3>
								</a>

								<p class="text-cate"><?php echo combo_cate(); ?></p>
							</div>
						</div>

					<?php endwhile;?>
				<?php endif; ?>
	   		</div>


	   		<!-- phân trang -->

			<?php if(paginate_links()!='') {?>
				<div class="pagination">
					<?php
					global $wp_query;
					$big = 999999999;
					echo paginate_links( array(
						'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
						'format' => '?paged=%#%',
						'prev_text'    => __('<i class="fas fa-chevron-left"></i>'),
						'next_text'    => __('<i class="fas fa-chevron-right"></i>'),
						'current' => max( 1, get_query_var('paged') ),
						'total' => $wp_query->max_num_pages
						) );
				    ?>
				</div>
			<?php } ?>
	   </div>
	</div>

<?php get_footer(); ?>