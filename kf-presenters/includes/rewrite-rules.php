<?php

/*
 * Rewrite rools
 */

// Register a Custom Rewrite Rule
function kf_presenter_rewrite_rules() {
	add_rewrite_rule(
		'^presenter/([^/]*)/?$', // The regex pattern for the URL structure
		'index.php?presenter_slug=$matches[1]', // What to query for internally
		'top'
	);
}
add_action('init', 'kf_presenter_rewrite_rules');

// Add a Query Variable
function kf_register_presenter_query_vars( $vars ) {
	$vars[] = 'presenter_slug';
	return $vars;
}
add_filter( 'query_vars', 'kf_register_presenter_query_vars' );

// Intercept the Query and Load Your Template
function kf_presenter_template_redirect() {
	$presenter_slug = get_query_var('presenter_slug');

	if ($presenter_slug) {
		global $wpdb;
		$presenter = $wpdb->get_row($wpdb->prepare(
			"SELECT * FROM kfpresenters WHERE presentername = %s",
			urldecode($presenter_slug)
		));

		if ($presenter) {
			// Load your custom template
			include( plugin_dir_path( __FILE__ ) . '../templates/single.php' );
			// Stop further processing
		} else {
			// Optionally handle 404 error here
			wp_redirect(home_url('/404'));
		}
		exit;
	}
}
add_action('template_redirect', 'kf_presenter_template_redirect');

/*
 * The rewrite rules will need to be flushed, but only once.
 * So the following will flush rewrite rules on plugin activation and upgrade.
 */

function kf_activate_presenter_plugin() {
	kf_presenter_rewrite_rules(); // Ensure your rewrite rules are added
	flush_rewrite_rules(); // Flush the rewrite rules
}
register_activation_hook(__FILE__, 'kf_activate_presenter_plugin');

function kf_presenter_check_rewrite_rules_version() {
	$current_version = '0.1'; // This is unrelated to the plugin; it's used to version just the rewrite rules
	$installed_version = get_option('kf_presenter_rewrite_rules_version');

	if ($installed_version != $current_version) {
		kf_presenter_rewrite_rules(); // Ensure your rewrite rules are added
		flush_rewrite_rules(); // Flush the rewrite rules
		update_option('kf_presenter_rewrite_rules_version', $current_version); // Update the stored version
	}
}
add_action('init', 'kf_presenter_check_rewrite_rules_version');

function kf_presenter_cleanup_rewrite_flushing() {
	delete_option('kf_presenter_rewrite_rules_version'); // Clean up the version option if no longer needed
}
register_deactivation_hook(__FILE__, 'kf_presenter_cleanup_rewrite_flushing');
