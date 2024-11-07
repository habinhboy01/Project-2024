<?php 

/**template name: Contact */ 

get_header()?>
	
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

			</div>

			<!-- ------------------------ -->

			<div class="row">
				<div class="col-lg-3 col-12">
					<h3 class="title-contact"><?php echo get_field('title-contact'); ?></h3>

					<p class="text-contact"><?php echo get_field('description'); ?></p>
				</div>

				<div class="col-lg-9 col-12">
					<div class="form-contact">
						<?php echo do_shortcode('[contact-form-7 id="c9b7381" title="Contact"]'); ?>
					</div>
				</div>
			</div>

			<!-- -------------------------- -->

			<div class="bg-contact">
				<div class="row">
					<div class="col-lg-3 col-12">
						<h3 class="title-contact"><?php echo get_field('title-contact'); ?></h3>

						<div class="content-single"><?php the_field('description-2'); ?></div>
					</div>

					<div class="col-lg-9 col-12">
						<div class="map-contact"><?php echo get_field('map'); ?></div>
					</div>
				</div>
			</div>
		</div>
	</div>


<?php get_footer(); ?>