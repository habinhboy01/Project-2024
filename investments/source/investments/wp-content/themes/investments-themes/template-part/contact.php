<?php

/**template name: Contact */

get_header(); ?>

	<div class="bg-contact">
		<div class="container">
			<h1 class="title-contact"><?php the_title(); ?></h1>
		</div>
	</div>

	<div class="container">
		<p class="des-contact"><?php the_field('description'); ?></p>
	</div>

	<!-- ---------------------- -->


	<div class="bg-contact-2">
		<div class="container">
			<div class="row">
				<?php if( have_rows('list-contact') ): ?>
		            <?php while( have_rows('list-contact') ): the_row();
		            	$image = get_sub_field('icon');
	                	$picture = $image['sizes']['thumbnail']; 
		            	?>

	            		<div class="col-lg-4 col-md-6 col-12">
	            			<ul class="list-contact">
	            				<li>
	            					<img src="<?php echo $picture;?>" alt="<?php echo $image['alt'];?>">
	            				</li>

	            				<li>
	            					<h3><?php echo get_sub_field('title'); ?></h3>

	            					<p><?php echo get_sub_field('text'); ?></p>
	            				</li>
		            		</ul>
	            		</div>

		            <?php endwhile; ?>
		    	<?php endif; ?>
			</div>
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

<?php get_footer(); ?>