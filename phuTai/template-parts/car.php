<?php /*template name: car*/ get_header() ?>

<div class="swiper heading-slider heading-car">
    <div class="swiper-wrapper">
        <?php if(have_rows("heading-slider")): while(have_rows("heading-slider")): the_row(); ?>
        <div class="swiper-slide">
            <div class="heading-slide">
                <div class="img-bg">
                    <img src="<?php echo get_sub_field("img") ?>" alt="" class="w-100 img-fluid">          
                </div>
            </div>
        </div>
        <?php endwhile;endif ?>
    </div>
    <div class="swiper-pagination"></div>
</div>

<!-- ------------- -->

<div class="menu-linhvuc">
    <?php 
        wp_nav_menu(array(
            'theme_location' => 'menu-6',
            
        ))
        ?>
</div>

<!-- -------------- -->

<div class="company-intro-wrap">
	 <div class="car-company-title" data-aos="zoom-in">
         <?php echo get_field("car-company-title") ?>         
     </div>
	<div class="company-intro">
		
			 <?php if(have_rows("car-company")): while(have_rows("car-company")): the_row(); ?>
			<div class="row each-car-com align-items-center">
				<div class="col-lg-9 overflow-hidden">
					<div class="left-com" data-aos="slide-right">
						<a target="_blank" href="<?php echo get_sub_field("link") ?>">
							<img src="<?php echo get_sub_field("img") ?>" alt="" class="w-100 img-fluid">  
						</a>        
					</div>
				</div>
				<div class="col-lg-3 overflow-hidden">
					<div class="right-com" data-aos="slide-left">
						<a target="_blank" href="<?php echo get_sub_field("link") ?>">
							<?php echo get_sub_field("desc") ?>
						</a>    
					</div>
				</div>
			</div>
        	<?php endwhile;endif ?>
		
	</div>
</div>

<div class="cars-wrap">
	<div class="cars-container container">
		<div class="car-company-title" data-aos="zoom-in">
         <?php echo get_field("cars-title") ?>         
     	</div>
		<div class="row">
			<?php if(have_rows("cars")): while(have_rows("cars")): the_row(); ?>
			<div class="col-lg-3 col-6">
				<div class="car-item" data-aos="zoom-in">
					<div class="car-imgs swiper car-slider">
						<div class="swiper-wrapper">
							<?php $images = get_sub_field('car-imgs');
							if( $images ): 
								foreach( $images as $image ): ?>
								<div class="swiper-slide">
										<div class="gallery-item car-img-single">
											<a href="<?php echo $image ?>">
												<img src="<?php echo $image ?>" alt="">
											</a>		
										</div>
								</div>
								<?php endforeach; ?>
							<?php endif; ?>
						</div>
					</div>
					
					<div class="car-content-wrap">
						<div class="car-name">
							<?php echo get_sub_field('name'); ?>
						</div>
						<div class="car-desc">
							<?php echo get_sub_field('desc'); ?>
						</div>
					</div>
				</div>
			</div>
			<?php endwhile;endif ?>	
		</div>
	</div>
	
</div>

<?php get_footer() ?>