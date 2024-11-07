<?php get_header(); ?>

<div class="container single-stake">
    <?php
    if (have_posts()) :
        while (have_posts()) : the_post(); ?>
			<div class="row">
				
				 <div class="col-lg-8">
					 <h1 class="post-title post-title2">
						<?php the_title() ?>
					</h1>
					 <div class="row">
						 <div class="col-lg-5">
							 <div class="post-img product-thumb gallery-item">
								 <a href="<?php echo wp_get_attachment_url( get_post_thumbnail_id() ); ?>"><?php the_post_thumbnail(); ?></a>
						 	</div>
						 </div>
						 <div class="col-lg-7">
							 <div class="short-des">
								 <?php echo get_field('product-shortdes') ?>
						 	</div>
						 </div>
					 </div>
					 <div class="row">
						<div class="product-content">
							<?php the_content(); ?>
						</div>
					 </div>
				
				</div>
				<div class="col-lg-4">
					 <div class="sing-rela">
						<div class="container">
							<h2 class="title-related">Sản phẩm khác</h2>						
								<?php
								$current_post_id = get_the_ID();
								$current_post_categories = get_the_terms($current_post_id, 'category-product');
								$current_post_category_ids = array();
								if ($current_post_categories) {
									foreach ($current_post_categories as $category) {
										$current_post_category_ids[] = $category->term_id;
									}
								}

								$args_all = array(
									'post_type' => 'product',
									'posts_per_page' => 5,
									'tax_query' => array(
										array(
											'taxonomy' => 'category-product',
											'field' => 'id',
											'terms' => $current_post_category_ids,
										),
									),
									'post__not_in' => array($current_post_id)
								);

								$the_query_all = new WP_Query( $args_all );

								if ( $the_query_all->have_posts() ) {
									while ( $the_query_all->have_posts() ) {
										$the_query_all->the_post(); ?>
								
									<div class="product-item row align-items-center">
										<div class="sin-img product-img col-md-3 col-5">
											<a href="<?php echo get_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
										</div>
										<div class="sin-name product-name col-md-9 col-7">
											<a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a>
										</div>
									</div>
								
								<?php }
									wp_reset_postdata();
								} else {
									echo 'Không có sản phẩm nào.';
								}
								?>

							
						</div>
					</div>
				</div>
			</div>
        <?php endwhile;
    else :
        echo 'Không có bài viết nào.';
    endif;
    ?>
</div>

<?php get_footer(); ?>
