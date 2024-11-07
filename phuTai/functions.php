<?php


add_filter( 'show_admin_bar', '__return_false' );
add_theme_support('category-thumbnails');




add_theme_support('post-thumbnails');

function m_register_menu()
{
	register_nav_menus(
		array(
			'menu-1' => __('Menu PC'),
			
			'menu-2' => __('Menu Language'),
			'menu-3' => __('Menu Footer1'),
			'menu-4' => __('Menu Footer2'),
			'menu-5' => __('Menu Footer3'),
			'menu-6' => __('Menu da op'),
			'menu-7' => __('Menu category'),
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
@ini_set( 'upload_max_size' , '64M' );
@ini_set( 'post_max_size', '64M');
@ini_set( 'max_execution_time', '600' );






add_action('init', 'custom_subsidiary');

function custom_subsidiary()
{

    register_post_type('subsidiary', [
        'label' => __('Subsidiary', 'txtdomain'),
        'public' => true,
        'menu_position' => 5,
        'menu_icon' => 'dashicons-store',
        'supports' => ['title', 'editor', 'thumbnail', 'author', 'revisions', 'comments', 'excerpt', 'custom-fields', 'post-formats', 'page-attributes', 'trackbacks'],
        'show_in_rest' => true,
        'rewrite' => ['slug' => 'subsidiary'],
        'taxonomies' => ['category-subsidiary'],
        'labels' => [
            'singular_name' => __('subsidiary', 'txtdomain'),
            'add_new_item' => __('Add new subsidiary', 'txtdomain'),
            'new_item' => __('New subsidiary', 'txtdomain'),
            'view_item' => __('View subsidiary', 'txtdomain'),
            'not_found' => __('No subsidiary found', 'txtdomain'),
            'not_found_in_trash' => __('No subsidiary found in trash', 'txtdomain'),
            'all_items' => __('All subsidiary', 'txtdomain'),
            'insert_into_item' => __('Insert into subsidiary', 'txtdomain')
        ],
    ]);

    // muc category

    register_taxonomy('category-subsidiary', ['subsidiary'], [
        'label' => __('Category subsidiary', 'txtdomain'),
        'hierarchical' => true,
        'rewrite' => ['slug' => 'category-subsidiary'],
        'show_admin_column' => true,
        'show_in_rest' => true,
        'labels' => [
            'singular_name' => __('category-subsidiary', 'txtdomain'),
            'all_items' => __('All category-subsidiary', 'txtdomain'),
            'edit_item' => __('Edit category-subsidiary', 'txtdomain'),
            'view_item' => __('View category-subsidiary', 'txtdomain'),
            'update_item' => __('Update category-subsidiary', 'txtdomain'),
            'add_new_item' => __('Add New category subsidiary', 'txtdomain'),
            'new_item_name' => __('New category-subsidiary Name', 'txtdomain'),
            'search_items' => __('Search category-subsidiary', 'txtdomain'),
            'parent_item' => __('Parent category subsidiary', 'txtdomain'),
            'parent_item_colon' => __('Parent category-subsidiary:', 'txtdomain'),
            'not_found' => __('No category-subsidiary found', 'txtdomain'),
        ],
    ]);
    register_taxonomy_for_object_type('category-subsidiary', 'subsidiary');
}

add_action('restrict_manage_posts', 'tsm_filter_post_type_by_taxonomy');
function tsm_filter_post_type_by_taxonomy() {
	global $typenow;
	$post_type = 'subsidiary'; 
	$taxonomy  = 'category-subsidiary'; 
	if ($typenow == $post_type) {
		$selected      = isset($_GET[$taxonomy]) ? $_GET[$taxonomy] : '';
		$info_taxonomy = get_taxonomy($taxonomy);
		wp_dropdown_categories(array(
			'show_option_all' => sprintf( __( 'Show all %s', 'textdomain' ), $info_taxonomy->label ),
			'taxonomy'        => $taxonomy,
			'name'            => $taxonomy,
			'orderby'         => 'name',
			'selected'        => $selected,
			'show_count'      => true,
			'hide_empty'      => true,
		));
	};
}
/**
 * Filter posts by taxonomy in admin
 * @author  Mike Hemberger
 * @link http://thestizmedia.com/custom-post-type-filter-admin-custom-taxonomy/
 */
add_filter('parse_query', 'tsm_convert_id_to_term_in_query');
function tsm_convert_id_to_term_in_query($query) {
	global $pagenow;
	$post_type = 'subsidiary'; // change to your post type
	$taxonomy  = 'category-subsidiary'; // change to your taxonomy
	$q_vars    = &$query->query_vars;
	if ( $pagenow == 'edit.php' && isset($q_vars['post_type']) && $q_vars['post_type'] == $post_type && isset($q_vars[$taxonomy]) && is_numeric($q_vars[$taxonomy]) && $q_vars[$taxonomy] != 0 ) {
		$term = get_term_by('id', $q_vars[$taxonomy], $taxonomy);
		$q_vars[$taxonomy] = $term->slug;
	}
}







//products


add_action('init', 'custom_products');

function custom_products()
{

    register_post_type('product', [
        'label' => __('Product', 'txtdomain'),
        'public' => true,
        'menu_position' => 6,
        'menu_icon' => 'dashicons-products',
        'supports' => ['title', 'editor', 'thumbnail', 'author', 'revisions', 'comments', 'excerpt', 'custom-fields', 'post-formats', 'page-attributes', 'trackbacks'],
        'show_in_rest' => true,
        'rewrite' => ['slug' => 'product'],
        'taxonomies' => ['category-product'],
        'labels' => [
            'singular_name' => __('product', 'txtdomain'),
            'add_new_item' => __('Add new product', 'txtdomain'),
            'new_item' => __('New product', 'txtdomain'),
            'view_item' => __('View product', 'txtdomain'),
            'not_found' => __('No product found', 'txtdomain'),
            'not_found_in_trash' => __('No product found in trash', 'txtdomain'),
            'all_items' => __('All product', 'txtdomain'),
            'insert_into_item' => __('Insert into product', 'txtdomain')
        ],
    ]);

    // muc category

    register_taxonomy('category-product', ['product'], [
        'label' => __('Category product', 'txtdomain'),
        'hierarchical' => true,
        'rewrite' => ['slug' => 'category-product'],
        'show_admin_column' => true,
        'show_in_rest' => true,
        'labels' => [
            'singular_name' => __('category-product', 'txtdomain'),
            'all_items' => __('All category-product', 'txtdomain'),
            'edit_item' => __('Edit category-product', 'txtdomain'),
            'view_item' => __('View category-product', 'txtdomain'),
            'update_item' => __('Update category-product', 'txtdomain'),
            'add_new_item' => __('Add New category product', 'txtdomain'),
            'new_item_name' => __('New category-product Name', 'txtdomain'),
            'search_items' => __('Search category-product', 'txtdomain'),
            'parent_item' => __('Parent category product', 'txtdomain'),
            'parent_item_colon' => __('Parent category-product:', 'txtdomain'),
            'not_found' => __('No category-product found', 'txtdomain'),
        ],
    ]);
    register_taxonomy_for_object_type('category-product', 'product');
}

add_action('restrict_manage_posts', 'tsm_filter_post_type_by_taxonomy_products');
function tsm_filter_post_type_by_taxonomy_products() {
	global $typenow;
	$post_type = 'product'; 
	$taxonomy  = 'category-product'; 
	if ($typenow == $post_type) {
		$selected      = isset($_GET[$taxonomy]) ? $_GET[$taxonomy] : '';
		$info_taxonomy = get_taxonomy($taxonomy);
		wp_dropdown_categories(array(
			'show_option_all' => sprintf( __( 'Show all %s', 'textdomain' ), $info_taxonomy->label ),
			'taxonomy'        => $taxonomy,
			'name'            => $taxonomy,
			'orderby'         => 'name',
			'selected'        => $selected,
			'show_count'      => true,
			'hide_empty'      => true,
		));
	};
}
/**
 * Filter posts by taxonomy in admin
 * @author  Mike Hemberger
 * @link http://thestizmedia.com/custom-post-type-filter-admin-custom-taxonomy/
 */
add_filter('parse_query', 'tsm_convert_id_to_term_in_query_product');
function tsm_convert_id_to_term_in_query_product($query) {
	global $pagenow;
	$post_type = 'product'; // change to your post type
	$taxonomy  = 'category-product'; // change to your taxonomy
	$q_vars    = &$query->query_vars;
	if ( $pagenow == 'edit.php' && isset($q_vars['post_type']) && $q_vars['post_type'] == $post_type && isset($q_vars[$taxonomy]) && is_numeric($q_vars[$taxonomy]) && $q_vars[$taxonomy] != 0 ) {
		$term = get_term_by('id', $q_vars[$taxonomy], $taxonomy);
		$q_vars[$taxonomy] = $term->slug;
	}
}



function add_default_thumbnail($html, $post_id, $post_thumbnail_id, $size, $attr) {
    if (empty($html)) {
        $default_thumbnail_url = 'https://phutai.com.vn//wp-content/uploads/2024/08/unnamed.jpg';
        $default_thumbnail = '<img src="' . esc_url($default_thumbnail_url) . '" alt="' . esc_attr(get_the_title($post_id)) . '" style="object-fit: cover!important;" />';
        return $default_thumbnail;
    }
    return $html;
}
add_filter('post_thumbnail_html', 'add_default_thumbnail', 10, 5);



