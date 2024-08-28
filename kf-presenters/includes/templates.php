<?php

/*
 * Load the Templates
 */

function register_kf_presenters_templates( $templates ) {
	$templates['category.php'] = 'Presenters List';
	return $templates;
}
add_filter( 'theme_page_templates', 'register_kf_presenters_templates' );

function include_kf_presenters_template_from_admin( $template ) {
	if ( get_page_template_slug() === 'category.php' ) {
		$plugin_template = plugin_dir_path( __FILE__ ) . '../templates/category.php';
		if ( file_exists( $plugin_template ) ) {
			return $plugin_template;
		}
	}
	return $template;
}
add_filter( 'template_include', 'include_kf_presenters_template_from_admin' );

//  this looks at the page slug, and if it is /presenters/ then the template is loaded
//function single_presenter_template_include( $template ) {
//	// Check if we're on a specific page or custom post type
//	if ( is_page( 'presenters' ) ) {
//		// Point to the custom template file in your plugin
//		$plugin_template = plugin_dir_path( __FILE__ ) . '../templates/category.php';
//
//		// Return the path to the custom template if it exists
//		if ( file_exists( $plugin_template ) ) {
//			return $plugin_template;
//		}
//	}
//
//	// Return the default template if conditions aren't met
//	return $template;
//}
//add_filter( 'template_include', 'single_presenter_template_include' );