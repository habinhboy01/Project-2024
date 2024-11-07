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

			<p class="des-category"><?php the_field('description'); ?></p>
		</div>


		<!-- menu category -->

		<ul class="menu-cate">
			<?php if( have_rows('menu-category') ): ?>
	            <?php while( have_rows('menu-category') ): the_row(); ?>

	                <li class="item-cate">
	                	<a href="<?php echo get_sub_field('link'); ?>">
	                		<?php echo get_sub_field('text'); ?>
	                	</a>
	                </li>

	            <?php endwhile; ?>
	    	<?php endif; ?>
	    </ul>

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
									<h3 class="title-category"><?php the_title(); ?></h3>
								</a>

								<?php
									$categories = get_the_category();
									if ($categories) {
										echo '<p class="cate-news">';
										foreach ($categories as $category) {
											echo esc_html($category->name);
										}
										echo '</p>';
									}
								?>
							</div>
						</div>

					<?php endwhile;?>
				<?php endif; ?>
	   		</div>
	   </div>
	</div>

<?php get_footer(); ?>