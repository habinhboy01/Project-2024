<?php

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
			'menu-5' => __('Menu Footer 3'),
			'menu-6' => __('Menu Footer 4'),
			'menu-7' => __('Menu Footer 5'),
			
		)
	);
}
add_action('init', 'm_register_menu');

if (function_exists('acf_add_options_page')) {
    acf_add_options_page();
}