<?php

/**template name: Service */

get_header(); ?>

	<div class="bg-service">
		<?php the_post_thumbnail('full', ['class' => 'img-service']); ?>

		<div class="des-service"><?php the_field('description'); ?></div>
	</div>


	<div class="bg-service-2">

		<!-- nỗi bật -->

		<div class="container">
			<p class="title-service"><?php echo get_field('title-service'); ?></p>

			<div class="row">
				<?php if( have_rows('list-serive') ): ?>
		            <?php while( have_rows('list-serive') ): the_row();
		            	$image = get_sub_field('img');
	                	$picture = $image['sizes']['thumbnail']; 
	            		$link = get_sub_field('link');
		            	?>

	            		<div class="col-lg-4 col-md-6 col-12">
	            			<div class="list-serive">
		            			<a href="<?php echo $link;?>">
		            				<img src="<?php echo $picture;?>" alt="<?php echo $image['alt'];?>">
		            			</a>

		            			<a href="<?php echo $link;?>">
		            				<h3><?php echo get_sub_field('title'); ?></h3>
		            			</a>

		            			<p><?php the_sub_field('description'); ?></p>
		            		</div>
	            		</div>

		            <?php endwhile; ?>
		    	<?php endif; ?>
			</div>
		</div>



		<!-- giới thiệu -->

		<div class="content-service">

			<div class="container-fluid">
			    <div class="row ">
			        <div class="col-lg-5 px-0">
			            <div class="home-about-content">
			                <div class="h-a-title">
			                    <?php echo get_field("title-service-2") ?>
			                </div>
			                <div class="intro-service-2">
			                    <?php echo get_field("intro") ?>
			                </div>
			            </div>
			        </div>
			        <div class="col-lg-7 px-0">
			            <div class="a-bg h-100">
			                <img class="h-a-bg w-100" src="<?php echo get_field("img-service") ?>" alt="">
			            </div>
			        </div>
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
	</div>

<?php get_footer(); ?>