<?php

/**template name: About Us */

get_header(); ?>

	<div class="bg-service">
		<?php the_post_thumbnail('full', ['class' => 'img-service']); ?>

		<div class="des-service"><?php the_field('description'); ?></div>
	</div>


	<div class="bg-about">
		<div class="content-about">
			<p class="h-a-title"><?php echo get_field('title-about'); ?></p>

			<div class="intro-service-2"><?php the_field('contact-intro'); ?></div>
		</div>

		<div class="content-about-2">
			<img class="img-service" src="<?php echo get_field("img-intro") ?>" alt="">
		</div>
	</div>


	<!-- ------------------------- -->

	<div class="bg-about bg-about-2">
		<div class="content-about-3">
			<img class="img-service" src="<?php echo get_field("img-intro-2") ?>" alt="">
		</div>

		<div class="content-about">
			<div class="intro-service-2"><?php the_field('contact-intro-2'); ?></div>
		</div>
	</div>

		<!-- Đăng ký nhận điểm tin tại đây ! -->

		<div class="bg-register">
			<ul class="note-register">
				<li><i class="fa-light fa-pen-to-square"></i></li>

				<li>
					<p class="text-register"><?php echo get_field('text-register','option'); ?></p>
					<p class="text-register-2"><?php echo get_field('text-register-2', 'option'); ?></p>
				</li>
			</ul>
		</div>

		<div class="bg-register-2">
			<div class="container">
				<p class="text-register-3"><?php echo get_field('text-register-3', 'option'); ?></p>

				<p class="icon-arrow"><i class="fa-solid fa-angle-down"></i></p>
			</div>
		</div>

		<!-- form -->

		<div class="bg-form">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-md-8 col-12">
						<div class="form-contact">
							<?php echo do_shortcode('[contact-form-7 id="09ec97f" title="Contact"]'); ?>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 col-12">
						<img class="img-service" src="<?php echo get_field('img-form', 'option') ?>" alt="">
					</div>
				</div>
			</div>
		</div>


<?php get_footer(); ?>