<?php

get_header(); ?>

	<!-- ---------------------- -->


<div class="container">
	<div class="row">
		<div class="col-lg-9">
			<div class="bg-intro-category single-stake">
		<!-- đường dẫn breadcrumb -->

		<div class="breadcrumb-intro">
			
			<h1 class="title-contact"><?php echo get_the_category()[0]->name ?></h1>
			
			
		</div>
	</div>
			
			<div class="bg-content ">
		<div class="container">
				<?php if( have_rows('list-stakeholders') ): ?>
					
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
					
				<?php else: ?>
					<div class="content-wrap">
						<h3><?php the_title();?></h3>
						<p class="text-stakeholders-2"><i class="fal fa-calendar-alt"></i> <?php echo get_the_date(); ?></p>
					<?php the_content(); ?>
						
					</div>
				<?php endif; ?>


			

			<div class="bg-stakeholders">
			    <?php			
				if (have_posts()) : ?>
		        	<?php while (have_posts()) : the_post(); ?>
        				<?php if( have_rows('list-stakeholders') ): ?>
								
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
											<?php if( have_rows('list-stakeholders') ): ?>
 					                           <?php while( have_rows('list-stakeholders') ): the_row();?>
													<a href="<?php echo the_sub_field('link'); ?>" target="_blank">
														<i class="fa-light fa-file-arrow-down"></i>
													</a>
												<?php endwhile; ?>
                        					<?php endif; ?>
										</p>
									</div>
								</div>
				
							<div class="co my-4">
								<?php the_content() ?>
							</div>
				
						
        
                          <?php endif; ?>
				
                    <?php endwhile;?>
		        	
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
	</div>
			
			
		</div>
		
		
		
		
		<div class="col-lg-3">
			<div class="related rela">
			<div class="container">
				<h2 class="title-related">Tin tức liên quan</h2>

				<div class="row">
					<?php
	                    $categories = get_the_category($post->ID);
	                    if ($categories) 
	                    {
	                        $category_ids = array();
	                        foreach($categories as $individual_category) $category_ids[] = $individual_category->term_id;
	                 
	                        $args=array(
	                        'category__in' => $category_ids,
	                        'post__not_in' => array($post->ID),
	                        'showposts'=>5, 
	                        'caller_get_posts'=>1,
								'orderby'=>'date',
								'order'=>'DESC'
	                        );
	                        $my_query = new wp_query($args);
	                        if( $my_query->have_posts() ) 
	                        {
	                            echo '';
	                            while ($my_query->have_posts())
	                            {
	                                $my_query->the_post();
	                                ?>

									<div class=" col-12">
										<div class="content-cate content-cate2">


											<a href="<?php the_permalink(); ?>">
												<h3 class="title-cate title-cate2"><?php the_title(); ?></h3>
											</a>

											<p class="date-post"><?php echo get_the_date(); ?></p>
										</div>
									</div>
									
	                                <?php
	                            }
	                            echo '';
	                        }
	                    }
	                ?>
				</div>
			</div>
		</div>
			
		</div>
		
	</div>
</div>
	
	



<?php get_footer(); ?>


		



