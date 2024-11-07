<?php

get_header(); ?>

	<!-- ---------------------- -->
<div class="bg-intro-category single-stake">
		<!-- đường dẫn breadcrumb -->

		<div class="breadcrumb-intro">
			<h1 class="title-contact"><?php // stakeholders_cate(); ?></h1>
		</div>
	</div>
	
	<div class="bg-content ">
		<div class="container">
				<?php if( have_rows('list-stakeholders') ): ?>
					<?php while( have_rows('list-stakeholders') ): the_row(); ?>
						<div class="row">
							<div class="col-lg-2 col-md-2">
								<p class="text-stakeholders">NGÀY ĐĂNG</p>
							</div>

							<div class="col-lg-8 col-md-8">
								<p class="text-stakeholders">VĂN BẢN</p>
							</div>

							<div class="col-lg-2 col-md-2">
								<p class="text-stakeholders">DOWNLOAD</p>
							</div>
						</div>
					<?php endwhile; ?>
				<?php else: ?>
					<div class="content-wrap">
						<h3><?php the_title();?></h3>
						<p class="text-stakeholders-2"><i class="fal fa-calendar-alt"></i> <?php echo get_the_date(); ?></p>
					<?php the_content(); ?>
						
					</div>
				<?php endif; ?>


			

			<div class="bg-stakeholders">
				
			    <?php
// 				 $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
//                 $args = array(
//                     'post_type' => 'category-stakeholders', 
//                     'posts_per_page' => 8,
//                     'paged' => $paged
//                 );

//                 $query = new WP_Query($args);
				
				
				if (have_posts()) : ?>
		        	<?php while (have_posts()) : the_post(); ?>
        				<?php if( have_rows('list-stakeholders') ): ?>
                            <?php while( have_rows('list-stakeholders') ): the_row();
				
				?>
								
                            	<div class="row item-row">
	                                <div class="col-lg-2 col-md-2">
										<p class="text-stakeholders-2"><i class="fal fa-calendar-alt"></i> <?php echo get_the_date(); ?></p>
									</div>

									<div class="col-lg-8 col-md-8">
										<p class="title-stakeholders">
											<a href="<?php echo get_sub_field('link'); ?>" target="_blank">
												<?php the_title(); ?>
											</a>
										</p>
									</div>

									<div class="col-lg-2 col-md-2">
										<p class="download">
											<a href="<?php echo the_sub_field('link'); ?>" target="_blank">
												<i class="fa-light fa-file-arrow-down"></i>
											</a>
										</p>
									</div>
								</div>
        
                            <?php endwhile; ?>
                        <?php endif; ?>
                    <?php endwhile;?>
		        <?php endif;
				
				?>
				

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
						'prev_text'    => __('<i class="fas fa-chevron-left"></i>'),
						'next_text'    => __('<i class="fas fa-chevron-right"></i>'),
						'current' => max( 1, get_query_var('paged') ),
						'total' => $wp_query->max_num_pages
						) );
				    ?>
				</div>
			<?php } ?>
		</div>
	</div>

<?php get_footer(); ?>