<?php /*template name: Sản Phẩm*/ get_header()?>

<div class="container">
	<div class="product-heading text-center single-stake">
		<?php the_title() ?>	
	</div>
	
	<div class="row">
		
	<?php 
		
		$args = array(
			'taxonomy' => 'category-product',
			'parent' => 0,
		);
		$terms = get_terms($args);
		
		if(!empty($terms)) {
			foreach( $terms as $term){?>
				<div class="col-md-3">
					<div class="cate">
						<a href="<?php echo get_term_link( $term )?>"><img src="<?php echo get_field('thumbnail', $term)?>" alt="" class="w-100"/></a>
						
						<p>
							<a href="<?php echo get_term_link( $term )?>"><?php echo $term->name?></a>
						</p>
					</div>
				</div>
			<?php }
		}
	?>
		
	</div>
		
	
</div>



<?php get_footer() ?>