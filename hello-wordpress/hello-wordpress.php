<?php
/*
Plugin Name: Hello WordPress
Plugin URI: https://www.kinkfest.org
Description: This is my first WordPress plugin.
Version: 1.0
Author: Hobbes McBride
Author URI: https://www.hobbesmcbride.com
License: GPL2
Text Domain: hello-wordpress
*/

function hello_wordpress() {
    echo "Hello, WordPress!";
}
add_action('admin_notices', 'hello_wordpress');
