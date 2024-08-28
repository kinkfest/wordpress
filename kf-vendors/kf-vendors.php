<?php
/*
Plugin Name: KinkFest Vendors
Plugin URI: https://www.kinkfest.org
Description: View KinkFest vendors
Version: 0.1
Author: Hobbes McBride
Author URI: https://www.hobbesmcbride.com
License: GPL2
Text Domain: kf-vendors
*/

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

include(plugin_dir_path(__FILE__) . 'includes/admin.php');
//include(plugin_dir_path(__FILE__) . 'includes/custom-post-type.php');
include(plugin_dir_path(__FILE__) . 'includes/rewrite-rules.php');
include(plugin_dir_path(__FILE__) . 'includes/templates.php');
