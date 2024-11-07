<?php 

/**template name: Bất động sản */ 

get_header()?>

	<div class="swiper linhvuc-slider">
		<div class="swiper-wrapper">
			<?php if(have_rows("slider-intro")): while(have_rows("slider-intro")): the_row(); ?>
			<div class="swiper-slide">
				<img src="<?php echo get_sub_field("img") ?>" alt="" class="w-100">
			</div>
			<?php endwhile;endif ?>
		</div>
		<div class="swiper-pagination"></div>
	</div>

<!-- ---------------- -->

<div class="menu-linhvuc">
    <?php 
        wp_nav_menu(array(
            'theme_location' => 'menu-6',
            
        ))
        ?>
</div>

<!-- ---------------- -->

	<div class="dogo-heading-wrap">
		<div class="container">
			<p class="dogo-heading-title">
				<?php the_title(); ?>
			</p>
			
			<p><?php the_field('description'); ?></p>
			
			<div class="breadcrumb-intro">
				<h2 class="title-contact"><?php echo get_field('title-project'); ?></h2>
			</div>
			
			<div class="row">
				<?php if( have_rows('list-project') ): ?>
					<?php while( have_rows('list-project') ): the_row(); 
						$image = get_sub_field('img');
						$picture = $image['sizes']['thumbnail']; 
						?>

						<div class="col-lg-6 col-md-6 col-12">
							<div class="cty">
								<div class="cty-img img-project">
									<a href="<?php echo get_sub_field('link') ?>">
										<img src="<?php echo $picture;?>" alt="<?php echo $image['alt'];?>">
									</a>
								</div>
								<div class="cty-name">
									<a href="<?php echo get_sub_field('link') ?>">
										<?php echo get_sub_field('title') ?>
									</a>
								</div>
								<div class="cty-desc"><?php echo get_sub_field('excerpt') ?></div>
							</div>
						</div>

					<?php endwhile; ?>
				<?php endif; ?>
			</div>
		</div>
	</div>

<?php get_footer()?>