<?php get_header(); ?>
    
    <!--------------------------->

	<div class="bg-intro-category">
        
        <?php 
            $term = get_queried_object();
            $image = get_field('featured','option');
        ?>
        
        <img class="img-banner-news" src="<?php echo $image['url']; ?>" alt="">

		<!-- đường dẫn breadcrumb -->

		<div class="breadcrumb-intro">
			<h1 class="title-contact"><?php single_cat_title(); ?></h1>
		</div>
	</div>

	<!-- ---------------------- -->
	
	<div class="bg-content">
		<div class="container">
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
			
			<!--tiếng viêt-->
            
            <div class="dis-table-vi">
    			<div class="bg-stakeholders">
    				<?php if (have_posts()) : ?>
    					<?php while (have_posts()) : the_post(); ?>
    						<?php if (have_rows('list-stakeholders')) : ?>
    							<div class="row item-row">		
    									<div class="col-lg-2 col-md-2">
    										<p class="text-stakeholders-2"><i class="fal fa-calendar-alt"></i> <?php echo get_the_date(); ?></p>
    									</div>
    									<div class="col-lg-8 col-md-8">
    										<p class="title-stakeholders">
    											<a href="<?php the_permalink(); ?>" target="_blank">
    												<?php the_title(); ?>
    											</a>
    										</p>
    									</div>
    								<div class="col-lg-2 col-md-2">
    									<p class="download">
    										<?php while (have_rows('list-stakeholders')) : the_row(); ?>
    											<a href="<?php echo the_sub_field('link'); ?>" target="_blank">
    												<i class="fa-light fa-file-arrow-down"></i>
    											</a>
    										<?php endwhile; ?>
    									</p>
    								</div>
    							</div>
    						<?php else : ?>
    							<div class="row item-row">
    								<div class="col-lg-2 col-md-2">
    									<p class="text-stakeholders-2"><i class="fal fa-calendar-alt"></i> <?php echo get_the_date(); ?></p>
    								</div>
    
    								<div class="col-lg-8 col-md-8">
    									<p class="title-stakeholders">
    										<a href="<?php the_permalink(); ?>" target="_blank">
    											<?php the_title(); ?>
    										</a>
    									</p>
    								</div>
    							</div>
    						<?php endif; ?>
    					<?php endwhile; ?>
    				<?php endif; ?>
    
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
    		
    		
    		<!--tiếng anh-->
    		
    		<div class="dis-table-en">
    		    <div class="bg-stakeholders">
                    <?php
                        if (get_query_var('paged')) {
                            $paged = get_query_var('paged');
                        } elseif (get_query_var('page')) { // 'page' is used instead of 'paged' on Static Front Page
                            $paged = get_query_var('page');
                        } else {
                            $paged = 1;
                        }
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                    
        				$args = array(	
        					'post_status' => 'publish',
        					'post_type' => 'post',
        					 'posts_per_page' => get_option('posts_per_page'),
                            'paged' => $paged,    
        					'cat' => 106,
        					'order' => 'date',
        				);
        			?>
        			<?php $getposts = new WP_query($args); ?>
        			<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
    
						<?php if (have_rows('list-stakeholders')) : ?>
							<div class="row item-row">		
								<div class="col-lg-2 col-md-2">
									<p class="text-stakeholders-2"><i class="fal fa-calendar-alt"></i> <?php echo get_the_date(); ?></p>
								</div>
								
								<div class="col-lg-8 col-md-8">
									<p class="title-stakeholders">
										<a href="<?php the_permalink(); ?>" target="_blank">
											<?php the_title(); ?>
										</a>
									</p>
								</div>
									
								<div class="col-lg-2 col-md-2">
									<p class="download">
										<?php while (have_rows('list-stakeholders')) : the_row(); ?>
											<a href="<?php echo the_sub_field('link'); ?>" target="_blank">
												<i class="fa-light fa-file-arrow-down"></i>
											</a>
										<?php endwhile; ?>
									</p>
								</div>
							</div>
							
						<?php else : ?>
						
							<div class="row item-row">
								<div class="col-lg-2 col-md-2">
									<p class="text-stakeholders-2"><i class="fal fa-calendar-alt"></i> <?php echo get_the_date(); ?></p>
								</div>

								<div class="col-lg-8 col-md-8">
									<p class="title-stakeholders">
										<a href="<?php the_permalink(); ?>" target="_blank">
											<?php the_title(); ?>
										</a>
									</p>
								</div>
							</div>
							
						<?php endif; ?>
    						
        			<?php endwhile; wp_reset_postdata(); ?>
        		</div>
        		
        		<!-- phân trang -->
        		
        		<?php if ($getposts->max_num_pages > 1) : // custom pagination  ?>
                    <div class="pagination">
                        <?php
                            $orig_query = $wp_query; // fix for pagination to work
                            $wp_query = $getposts;
                            $big = 999999999;
                            echo paginate_links(array(
                                'base' => str_replace($big, '%#%', get_pagenum_link($big)),
                                'format' => '?paged=%#%',
                                'prev_text'    => __('<i class="fas fa-chevron-left"></i>'),
                                'next_text'    => __('<i class="fas fa-chevron-right"></i>'),
                                'current' => max(1, get_query_var('paged')),
                                'total' => $wp_query->max_num_pages
                            ));
                        $wp_query = $orig_query; // fix for pagination to work ?>
                    </div>
                <?php endif; ?>
    		</div>
		</div>
	</div>
    


<?php get_footer(); ?>