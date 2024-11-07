<?php /**template name: lĩnh vực đá ốp */ get_header()?>

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

<div class="da-op-wrap">
    <div class="container da-op">
        <div class="title">
            <?php the_title() ?>
        </div>
        <div class="row loaida">
            <?php if(have_rows("loai-da")): while(have_rows("loai-da")): the_row(); ?>
            <div class="col-lg-4">
                <div class="stone">
                    <div class="stone-name">
                        <img src="<?php echo get_sub_field("icon") ?>" alt="">
                        <span><?php echo get_sub_field("name") ?></span>
                    </div>
                    <div class="stone-img">
                        <img src="<?php echo get_sub_field("img") ?>" alt="" class="w-100">
                    </div>
					<div class="stone-detail">
                        <a href="<?php echo get_sub_field('link') ?>">Danh sách sản phẩm</a>
                    </div>

                    <div class="stone-des">
                        <?php echo get_sub_field("desc") ?>
                    </div>
                </div>
            </div>
            <?php endwhile;endif ?>
        </div>
    </div>
</div>


<div class="mo-da-wrap">
    <div class="container">
        <div class="mo-da-title">
            <?php echo get_field("mo-da-title") ?>
        </div>
    </div>
    <div class="container mo-da">
        <div class="map-wrap">
            <div class="map-img position-relative">
                <img src="<?php echo get_field("map-img")?>" alt="" class="">
                <div id="yenbai" class="yen-bai"></div>
                <div id="phuyen" class="phu-yen"></div>
<!--                 <div id="daknong" class="dak-nong"></div>
                <div id="hungyen" class="hung-yen"></div> -->
                <div id="binhdinh" class="binh-dinh"></div>
                <div id="khanhhoa" class="khanh-hoa"></div>

            </div>
        </div>
        <div class="mo-wrap row">
            <div class="mo-da-left">
                <?php if(have_rows("mo-da-left")): while(have_rows("mo-da-left")): the_row(); ?>
                <div class="aMoDa">
                    <div class="aMoDa-name" data-title="<?php echo sanitize_title(get_sub_field("name")) ?>">
                        <?php echo get_sub_field("name")?>
                    </div>
                    <div class="aMoDa-desc">
                        <?php echo get_sub_field("desc")?>
                    </div>
                </div>
                <?php endwhile;endif ?>
            </div>
            <div class="mo-da-right ">
                <?php
            if (have_rows("mo-da-right")) {
                while (have_rows("mo-da-right")) {
                    the_row();
                    $name = get_sub_field("name");
                    $data_title = sanitize_title($name);
                    ?>
                <div class="aMoDa">
                    <div class="aMoDa-name" data-title="<?php echo $data_title; ?>">
                        <?php echo $name; ?>
                    </div>
                    <div class="aMoDa-desc">
                        <?php echo get_sub_field("desc"); ?>
                    </div>
                </div>
                <?php
                }
            }
            ?>

            </div>
        </div>

    </div>
</div>

<div class="cty-da-wrap">
    <div class="container">
        <div class="cty-da-title">
            <?php echo get_field("cty-da-title") ?>
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
						'terms'    => 25, 
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
						'terms'    => 29, 
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