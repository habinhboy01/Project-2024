<?php get_header(); ?>
	
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
	        <div class="row">
		        <?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>
						
							<div class="col-lg-4 col-md-6 col-12">
								<div class="content-cate">
									<a class="img-cate" href="<?php the_permalink(); ?>">
										<?php the_post_thumbnail('full'); ?>
									</a>
									<?php the_category(); ?>

									<a href="<?php the_permalink(); ?>">
										<h3 class="title-cate"><?php the_title(); ?></h3>
									</a>

									<p class="date-post"><?php echo get_the_date(); ?></p>
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
						'prev_text'    => __('<i class="fa-solid fa-angle-left"></i>'),
						'next_text'    => __('<i class="fa-solid fa-angle-right"></i>'),
						'current' => max( 1, get_query_var('paged') ),
						'total' => $wp_query->max_num_pages
						) );
				    ?>
				</div>
			<?php } ?>

		</div>

	</div>

<?php get_footer(); ?>