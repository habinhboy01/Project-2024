<?php get_header(); ?>

	<!-- ---------------------- -->

	
	<div class="single-stake ">
		<div class="container">
			
			    <?php				
				if (have_posts()) : ?>
		        	<?php while (have_posts()) : the_post(); ?>
						<div class="subsidiary-title">						
							<?php the_title() ?>
						</div>
						<div class="subsidiary-img">
							
								<?php the_post_thumbnail(); ?>
								
						</div>

						<div class="content-subsidiary">						
							<?php the_content() ?>
						</div>			
        				<?php if( have_rows('imgs') ): ?>
                            <?php while( have_rows('imgs') ): the_row();	?>
								<div class="subImg-wrap">
									<p>
										<?php echo get_sub_field("text") ?>
									</p>
									<div class="galery-wrap">
									<?php 
									$images = get_sub_field('img');
										
									if( $images ): ?>
									 <?php foreach( $images as $image ): ?>
										
										<div class="gallery-item itemimg2">
											<a href="<?php echo $image ?>">
												<img src="<?php echo $image ?>" alt="">
											</a>		
										</div>

									<?php endforeach; ?>
										
									<?php endif; ?>
									</div>
									
								</div>
                            	
        
                            <?php endwhile; ?>
                        <?php endif; ?>
							<div class="prod-title">
								<?php echo get_field("product-text") ?>
							</div>
						<div class="galery-wrap pro">
							
						<?php if( have_rows('products') ): ?>
                            <?php while( have_rows('products') ): the_row();	?>
									
										<div class="gallery-item">
											<a href="<?php echo get_sub_field('img') ?>">
												<img src="<?php echo get_sub_field('img') ?>" alt="">
											</a>
											<div class="prod-name">
												<?php echo get_sub_field('name') ?>
											</div>
										</div>	
						
                            <?php endwhile; ?>
                        <?php endif; ?>
						</div>
					</div>
                    <?php endwhile;?>
		        <?php endif;
				?>
			</div>
		

<?php get_footer(); ?>