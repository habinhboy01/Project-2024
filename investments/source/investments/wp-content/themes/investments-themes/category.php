<?php get_header(); ?>


	<div class="bg-contact">
		<div class="container">
			<h1 class="title-contact"><?php single_cat_title(); ?></h1>
		</div>
	</div>
	
	<!-- ------------------- -->

	<div class="bg-contact-2">
		<div class="container">
			<div class="row">
				<?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>

						<div class="col-lg-4 col-md-6 col-12">

							<div class="content-cate">
								<a class="img-cate" href="<?php the_permalink(); ?>">
									<?php the_post_thumbnail('full'); ?>		
								</a>

								<a href="<?php the_permalink(); ?>">
									<h3 class="title-cate"><?php the_title(); ?></h3>
								</a>

								<div class="excerpt-cate"><?php the_excerpt();?></div>
							</div>

						</div>

					<?php endwhile;?>
				<?php endif; ?>
			</div>


			<!-- phân trang -->

			<?php if(paginate_links()!='') {?>
				<div class="pagination">
					<?php
					$big = 999999999;
					echo paginate_links( array(
						'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
						'format' => '?paged=%#%',
						'prev_text'    => __('<i class="fa-regular fa-angle-left"></i>'),
						'next_text'    => __('<i class="fa-regular fa-angle-right"></i>'),
						'current' => max( 1, get_query_var('paged') ),
						'total' => $wp_query->max_num_pages
						) );
				    ?>
				</div>
			<?php } ?>
		</div>
	</div>



<?php get_footer(); ?>