<?php get_header(); ?>
	
	<div class="bg-single">
		<div class="container">
			<div class="breadcrumb-category">
				<div class="breadcrumb-intro">
					<?php

						if ( function_exists('yoast_breadcrumb') ) {

						 yoast_breadcrumb( '<p id="breadcrumbs">','</p>' );

						}

					?>
				</div>

				<h1 class="title-category"><?php the_title(); ?></h1>

				<div class="des-category"><?php echo get_the_date(); ?></div>
			</div>

			<!-- -------------------------- -->

			<div class="row">
				<div class="col-lg-8 col-12">
					<?php the_post_thumbnail('full', ['class' => 'img-single']); ?>

					<div class="content-single"><?php the_content(); ?></div>
				</div>

				<div class="col-lg-4 col-12">
					<div class="form-book">
						<?php echo do_shortcode('[contact-form-7 id="2ed27e7" title="Book Tickets"]'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>

<?php get_footer(); ?>