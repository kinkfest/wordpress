<?php

/*
 * Admin Menus
 */

function custom_admin_menu() {
	add_menu_page(
		'Presenters',                // Page title
		'Presenters',                // Menu title
		'manage_options',            // Capability
		'custom_presenters',         // Menu slug
		'custom_presenters_page',    // Function to display the page content
		'dashicons-groups',          // Icon
		20                           // Position
	);
}
add_action( 'admin_menu', 'custom_admin_menu' );

function custom_presenters_page() {
	global $wpdb;
	$presenters = $wpdb->get_results( "SELECT * FROM kfpresenters ORDER BY presentername ASC", OBJECT );

	echo '<div class="wrap"><h1>Presenters</h1>';
	echo '<table class="wp-list-table widefat fixed striped">';
	echo '<thead><tr><th>Name</th><th>Bio</th></tr></thead><tbody>';

	if ( $presenters ) {
		foreach ( $presenters as $presenter ) {
			echo '<tr>';
			echo '<td>' . esc_html( $presenter->presentername ) . '</td>';
			echo '<td>' . esc_html( $presenter->bio ) . '</td>';
			echo '</tr>';
		}
	} else {
		echo '<tr><td colspan="2">No presenters found.</td></tr>';
	}

	echo '</tbody></table></div>';
}
