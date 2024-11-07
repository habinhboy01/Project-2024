<?php /**template name: lĩnh vực đồ gỗ */ get_header()?>

<div class="swiper linhvuc-slider">
    <div class="swiper-wrapper">
        <?php if(have_rows("linhvuc-slider")): while(have_rows("linhvuc-slider")): the_row(); ?>
        <div class="swiper-slide">
            <img src="<?php echo get_sub_field("img") ?>" alt="" class="w-100">
        </div>
        <?php endwhile;endif ?>
    </div>
    <div class="swiper-pagination"></div>
</div>

<div class="menu-linhvuc">
    <?php 
        wp_nav_menu(array(
            'theme_location' => 'menu-6',
        ))
        ?>
</div>

<div class="dogo-heading-wrap">
    <div class="container">
        <div class="dogo-heading-title"><?php echo get_field("heading-title") ?></div>
        <div class="row text-desc">
            <?php if(have_rows("text-desc")): while(have_rows("text-desc")): the_row(); ?>
            <div class="col-lg-4">
                <div class="d-text">
                    <?php echo get_sub_field("text") ?>

                </div>
            </div>
            <?php endwhile;endif ?>
        </div>
        <div class="row chart align-items-center">
            
			<div class = "chart-wrap-4 col-lg-6" 
				 data-title = "<?php echo get_field('chart1-title') ?>"
				 data-color="
				  	<?php 
					$colors = array(); 

					if (have_rows("chart1")) {
						while (have_rows("chart1")) {
							the_row(); 
							$color = get_sub_field('color'); 
							$colors[] = $color;
						}
					}
					echo htmlspecialchars(json_encode($colors), ENT_QUOTES, 'UTF-8')
				?>"
				 data-labels= "
							   <?php 
					$labels = array(); 

					if (have_rows("chart1")) {
						while (have_rows("chart1")) {
							the_row(); 
							$label = get_sub_field('label'); 
							$labels[] = $label;
						}
					}
					echo htmlspecialchars(json_encode($labels, JSON_UNESCAPED_UNICODE), ENT_QUOTES, 'UTF-8');

				?>"
				 data-value="
				  	<?php 
					$values = array(); 
					if (have_rows("chart1")) {
						while (have_rows("chart1")) {
							the_row(); 
							$value = get_sub_field('value'); 
							$values[] = $value;
						}
					}
					echo htmlspecialchars(json_encode($values), ENT_QUOTES, 'UTF-8')
				?>">
				<canvas class="chart4">

                </canvas>
				<div class="row legend4"></div>
			
			</div>
			
            <div class="chart-wrap3 col-lg-6" data-cur="<?php echo get_field('chart2-currency') ?>" data-title = "<?php echo get_field('chart2-title') ?>"
				 data-color="
				  	<?php 
					$colors = array(); 

					if (have_rows("chart2")) {
						while (have_rows("chart2")) {
							the_row(); 
							$color = get_sub_field('color'); 
							$colors[] = $color;
						}
					}
					echo htmlspecialchars(json_encode($colors), ENT_QUOTES, 'UTF-8')
				?>"
				 data-labels= "
							   <?php 
					$labels = array(); 

					if (have_rows("chart2")) {
						while (have_rows("chart2")) {
							the_row(); 
							$label = get_sub_field('label'); 
							$labels[] = $label;
						}
					}
					echo htmlspecialchars(json_encode($labels, JSON_UNESCAPED_UNICODE), ENT_QUOTES, 'UTF-8');

				?>"
				 data-value="
				  	<?php 
					$values = array(); 
					if (have_rows("chart2")) {
						while (have_rows("chart2")) {
							the_row(); 
							$value = get_sub_field('value'); 
							$values[] = $value;
						}
					}
					echo htmlspecialchars(json_encode($values), ENT_QUOTES, 'UTF-8')
				?>">
                <canvas class="chart3">

                </canvas>

            </div>
			
        </div>
    </div>
</div>

<div class="sp-go-wrap">
    <div class="container">
        <div class="nha-may-title"><?php echo get_field("san-pham-go-title") ?></div>
    </div>
    <div class="container sp-go">

        <?php if(have_rows("san-pham-go")): while(have_rows("san-pham-go")): the_row(); ?>
        <div class="row item-go">
            <div class="col-lg-6 col-md-6">
                <div class="left-sp">
                    <?php if(have_rows("spimg")): while(have_rows("spimg")): the_row(); ?>
                    <div class="sp-img">
						<img src="<?php echo get_sub_field("img") ?>" alt="" class="">
					</div>
                    <?php endwhile;endif ?>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="right-sp">
                    <div class="sp-title"><a href="<?php echo get_sub_field("link")?>"><?php echo get_sub_field("name")?></a></div>
                    <div class="sp-desc"><?php echo get_sub_field("desc")?></div>
					<div class="stone-detail wood-btn">
                        <a href="<?php echo get_sub_field('link') ?>">Danh sách sản phẩm</a>
                    </div>
                </div>
            </div>
        </div>
        <?php endwhile;endif ?>
    </div>
</div>

<div class="cong-suat-wrap">
    <div class="container">
        <div class="nha-may-title"><?php echo get_field("nha-may-title") ?></div>
        <div class="nha-may-bg">
<!--             <img src="<?php echo get_field("nha-may-bg") ?>" alt="" class="w-100"> -->
            <div class="row nha-may-wrap">
                <?php if(have_rows("nha-mays")): while(have_rows("nha-mays")): the_row(); ?>
                <div class="col-lg-4 col-md-6">
                    <div class="nha-may">
                        <div class="nha-may-name">
							<a href="<?php echo get_sub_field("link")?>"><?php echo get_sub_field("name") ?></a>
							</div>
                        <div class="nha-may-desc">
                            <?php if(have_rows("desc")): while(have_rows("desc")): the_row(); ?>
                            <p>
                                <img src="<?php echo get_sub_field("icon") ?>" alt="">
                                <span><?php echo get_sub_field("text") ?></span>
                            </p>
                            <?php endwhile;endif ?>

                        </div>
                    </div>

                </div>
                <?php endwhile;endif ?>

            </div>

        </div>
    </div>
</div>

<div class="cty-da-wrap">
    <div class="container">
        <div class="cty-da-title">
            <?php echo get_field("cty-go-title") ?>
        </div>
        <div class="row">
            <?php 
			$args = array(
				'post_type' => 'subsidiary', 
				'posts_per_page' => -1, 
				'tax_query' => array(
					array(
						'taxonomy' => 'category-subsidiary', 
						'field'    => 'term_id',
						'terms'    => 26, 
					),
				),
			);

			$the_query = new WP_Query( $args );

			if ( $the_query->have_posts() ) {
				while ( $the_query->have_posts() ) {
					$the_query->the_post(); ?>
			
				 <div class="col-lg-3 col-md-6 col-6">
					<div class="cty">
						<div class="cty-img">
							<a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>
						</div>
						<div class="cty-name"><a
								href="<?php the_permalink() ?>"><?php the_title() ?></a></div>
						<div class="cty-desc"><?php the_excerpt() ?></div>
					</div>
				</div>

				<?php }
				wp_reset_postdata();
			} else {
				echo 'Không có thông tin nào';
			}
			?>

        </div>
    </div>
</div>

<div class="cty-da-wrap">
    <div class="container">
        <div class="cty-da-title">
            <?php echo get_field("thanh-vien-title") ?>
        </div>
        <div class="row">
            <?php 
			$args = array(
				'post_type' => 'subsidiary', 
				'posts_per_page' => -1, 
				'tax_query' => array(
					array(
						'taxonomy' => 'category-subsidiary', 
						'field'    => 'term_id',
						'terms'    => 30, 
					),
				),
			);

			$the_query = new WP_Query( $args );

			if ( $the_query->have_posts() ) {
				while ( $the_query->have_posts() ) {
					$the_query->the_post(); ?>
			
				 <div class="col-lg-3 col-md-6 col-6">
					<div class="cty">
						<div class="cty-img">
							<a href="<?php the_permalink() ?>"><?php the_post_thumbnail() ?></a>
						</div>
						<div class="cty-name"><a
								href="<?php the_permalink() ?>"><?php the_title() ?></a></div>
						<div class="cty-desc"><?php the_excerpt() ?></div>
					</div>
				</div>

				<?php }
				wp_reset_postdata();
			} else {
				echo 'Không có thông tin nào';
			}
			?>

        </div>
    </div>
</div>



<?php get_footer()?>