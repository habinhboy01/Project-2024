<?php

require_once get_template_directory() . '/postTypes/tickets.php';
require_once get_template_directory() . '/postTypes/combo.php';
require_once get_template_directory() . '/postTypes/tour.php';
require_once get_template_directory() . '/postTypes/food.php';
add_action('init', 'custom_tickets');
add_action('init', 'custom_combo');
add_action('init', 'custom_tour');
add_action('init', 'custom_food');


add_filter( 'show_admin_bar', '__return_false' );


add_theme_support('post-thumbnails');

function m_register_menu()
{
	register_nav_menus(
		array(
			
			'menu-1' => __('Menu PC'),
			'menu-2' => __('Menu Language'),
			'menu-3' => __('Menu Footer 1'),
			'menu-4' => __('Menu Footer 2'),
			'menu-5' => __('Menu Mobile'),
			'menu-6' => __('Menu tickets'),
			'menu-7' => __('Menu combo'),
			'menu-8' => __('Menu tour'),
			'menu-9' => __('Menu food'),
		)
	);
}
add_action('init', 'm_register_menu');

if (function_exists('acf_add_options_page')) {
    acf_add_options_page();
}


function shapeSpace_display_search_form() {
	$search_form = '<form method="get" id="search-form-alt" action="'. esc_url(home_url('/')) .'">
		<input type="text" name="s" id="s">
	</form>';
	return $search_form;
}
add_shortcode('display_search_form', 'shapeSpace_display_search_form');