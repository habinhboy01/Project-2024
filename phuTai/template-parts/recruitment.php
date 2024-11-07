<?php 

/**template name: Tuyển dụng */ 

get_header()?>

	<div class="bg-category">
		<div class="container">
			<h1 class="title-contact title-recruitment"><?php echo get_field('title-recruitment', 'option'); ?></h1>

			<div class="search-recruitment">
				<div>
					<p class="text-recruitment">TÌm kiếm</p>

					<input id="search-rec" class="input-search" type="text" name="search" onkeyup="timkiem()">
				</div>

				<div>
					<p class="text-recruitment">Địa diểm</p>

					<ul class="list-location">
						<li class="text-recruitment-2">
							<p>Chọn địa điểm <i class="fa-solid fa-sort-down"></i></p>

							<ul class="list-location-2">
								<?php
								   $args = array(			   		
									    'type' => 'recruitment',
									    'taxonomy' => 'location',
									    'parent' => 0,
									    'hide_empty' => false,
								    );

								   $cates = get_categories($args);

								    foreach ($cates as $cat) :
								        if ($cat->slug != 'location') :
								            echo '<li><a href="' . get_term_link($cat->slug, 'location') . '">';
								            echo $cat->name;
								            echo '</a></li>';
								        endif;
								    endforeach; 
								?>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- ------------------------------- -->

	<div class="container">
		<table class="tb-recruitment">
			<tr class="text-tb">
				<th>Chức Danh</th>

				<th>Địa Điểm</th>

				<th>Ngày đăng</th>
			</tr>
			
			<tbody id="myUL">
				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

	            <?php
	            if (get_query_var('paged')) {
	                $paged = get_query_var('paged');
	            } elseif (get_query_var('page')) { // 'page' is used instead of 'paged' on Static Front Page
	                $paged = get_query_var('page');
	            } else {
	                $paged = 1;
	            }
	            $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
	            $loop = new WP_Query(
	                array(
	                    'post_type' => 'recruitment',
	                    'posts_per_page' => get_option('posts_per_page'),
	                    'paged' => $paged,                       
	                    'post_status' => 'publish',
	                    'orderby' => 'dsc',
	                    'orderby' => 'date' // modified | title | name | ID | rand
	                )
	            );
	            ?>  

		            <?php if ($loop->have_posts()) : while ($loop->have_posts()) : $loop->the_post(); ?>

		            	<tr>
	    	            	<td class="text-tb-2">
	    		    		    <a href="<?php the_permalink(); ?>">
	            			        <?php the_title(); ?>
	            			    </a>
	    	            	</td>

	    	            	<td class="text-tb-3"><?php location_cate();?></td>

	    	            	<td class="text-tb-3"><?php echo get_the_date(); ?></td>
	    	            </tr>

		            <?php endwhile; ?>
		    </tbody>
			
		</table>

            <?php if ($loop->max_num_pages > 1) : // custom pagination  ?>
            <div class="pagination">
                <?php
                    $orig_query = $wp_query; // fix for pagination to work
                    $wp_query = $loop;
                    $big = 999999999;
                    echo paginate_links(array(
                        'base' => str_replace($big, '%#%', get_pagenum_link($big)),
                        'format' => '?paged=%#%',
                        'prev_text'    => __('<i class="fa-solid fa-angle-left"></i>'),
                        'next_text'    => __('<i class="fa-solid fa-angle-right"></i>'),
                        'current' => max(1, get_query_var('paged')),
                        'total' => $wp_query->max_num_pages
                    ));
                $wp_query = $orig_query; // fix for pagination to work ?>
            </div>
        	<?php endif; ?>
        	<?php wp_reset_postdata();
            else : echo '<p>' . __('Sorry, no posts matched your criteria.') . '</p>';
            endif; ?>

	    <?php endwhile; ?>
	    <?php endif; ?>
	</div>    
       
   

<?php get_footer()?>