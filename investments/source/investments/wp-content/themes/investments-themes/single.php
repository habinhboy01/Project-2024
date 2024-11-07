<?php get_header(); ?>


	<div class="bg-service">
		<?php the_post_thumbnail('full', ['class' => 'intro-single']); ?>

		<div class="des-service">
			<h1 class="title-category"><?php the_title(); ?></h1>

			<p><?php echo get_the_date(); ?></p>
		</div>
	</div>

	<!-- ---------------------- -->

	<div class="bg-single">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-12">
					<div class="content-single"><?php the_content(); ?></div>
				</div>

				<div class="col-lg-4 col-12">

					<!-- bài viết gần đây -->

					<h2 class="h-a-title">Bài viết liên quan</h2>

			        <?php
		                $categories = get_the_category($post->ID);
		                if ($categories) 
		                {
		                    $category_ids = array();
		                    foreach($categories as $individual_category) $category_ids[] = $individual_category->term_id;
		             
		                    $args=array(
		                    'category__in' => $category_ids,
		                    'post__not_in' => array($post->ID),
		                    'showposts'=>3, // Số bài viết bạn muốn hiển thị.
		                    'caller_get_posts'=>1
		                    );
		                    $my_query = new wp_query($args);
		                    if( $my_query->have_posts() ) 
		                    {
		                        echo '';
		                        while ($my_query->have_posts())
		                        {
		                            $my_query->the_post();
		                            ?>

		                            <div class="row related-post">
										<div class="col-lg-5 col-md-5 col-5">
		    								<a class="img-single" href="<?php the_permalink(); ?>">
		    									<?php the_post_thumbnail('full'); ?>
		    								</a>
										</div>

										<div class="col-lg-7 col-md-7 col-7">
		    								
		    								<a href="<?php the_permalink(); ?>"><p class="title-single"><?php the_title(); ?></p></a>

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


	<!-- ---------------------- -->



<?php get_footer(); ?>