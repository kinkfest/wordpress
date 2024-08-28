<?php
/*
Plugin Name: KinkFest Workshops
Plugin URI: https://www.kinkfest.org
Description: View KinkFest workshop schedules
Version: 0.1
Requires Plugins: cmb2
Author: Hobbes McBride
Author URI: https://www.hobbesmcbride.com
License: GPL2
Text Domain: kf-workshops
*/


/* Legacy KF tables that are used in this case;
 * - kfeducationsettings
 * - kflocations
 * - kfpresenters
 * - kftracks
 * - kfworkshops
 * - kfworkshopschedule
 */


/* only display data when the following is true:
 *  - SELECT * FROM `kfeducationsettings` WHERE ID = 1 AND `educationlivedata` = Y
 */


function create_workshop_post_type() {
    register_post_type('workshop',
                       array(
                           'labels' => array(
                               'name' => __('Workshops'),
                               'singular_name' => __('Workshop')
                           ),
                           'public' => true,
                           'rewrite' => array('slug' => 'workshops'),
                       )
    );
}

add_action('init', 'create_workshop_post_type');
