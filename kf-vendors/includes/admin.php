<?php

/*
 * Admin Menus
 */

function custom_admin_menu() {
	add_menu_page(
		'Vendors',                // Page title
		'Vendors',                // Menu title
		'manage_options',            // Capability
		'custom_vendors',         // Menu slug
		'custom_vendors_page',    // Function to display the page content
		'dashicons-groups',          // Icon
		20                           // Position
	);
}
add_action( 'admin_menu', 'custom_admin_menu' );

function custom_vendors_page() {
	global $wpdb;
	$vendors = $wpdb->get_results( "SELECT * FROM kfformvendor ORDER BY companyname ASC", OBJECT );

	echo '<div class="wrap"><h1>Vendors</h1>';
	echo '<table class="wp-list-table widefat fixed striped">';
	echo '<thead><tr><th>Name</th><th>Website</th></tr></thead><tbody>';

	if ( $vendors ) {
		foreach ( $vendors as $vendor ) {
			echo '<tr>';
			echo '<td>' . esc_html( $vendor->companyname ) . '</td>';
			echo '<td>' . esc_html( $vendor->website ) . '</td>';
			echo '</tr>';
		}
	} else {
		echo '<tr><td colspan="2">No vendors found.</td></tr>';
	}

	echo '</tbody></table></div>';
}
