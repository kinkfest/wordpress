<?php

/*
 * Create Vendor Custom Post Type
 */

function create_vendor_post_type() {
	register_post_type( 'vendor',
	                    array(
		                    'labels'  => array(
			                    'name'          => __( 'Vendors' ),
			                    'singular_name' => __( 'Vendor' )
		                    ),
//		                    'menu_position'       => 5,
		                    'public'  => true,
		                    'rewrite' => array( 'slug' => 'vendors' ),
//		                    'show_in_menu'        => true,
//		                    'supports'            => array( 'title', 'editor', 'thumbnail' ), // Add support for fields you need
		)
	);
}

add_action( 'init', 'create_vendor_post_type' );

/*
 * Link Custom Post Type to the Database Table
 */

function save_vendor_data( $post_id ) {
	if ( get_post_type( $post_id ) == 'vendor' ) {
		global $wpdb;
		$vendor_data = $wpdb->get_row( "SELECT * FROM kfvendors WHERE vendorid = $post_id" );

		if ( $vendor_data ) {
			update_post_meta( $post_id, 'vendor_id', $vendor_data->vendorid );
			update_post_meta( $post_id, 'vendor_name', $vendor_data->vendorname );
			update_post_meta( $post_id, 'vendor_website1', $vendor_data->website1 );
			update_post_meta( $post_id, 'vendor_website2', $vendor_data->website2 );
			update_post_meta( $post_id, 'vendor_website3', $vendor_data->website3 );
			update_post_meta( $post_id, 'vendor_website4', $vendor_data->website4 );
			update_post_meta( $post_id, 'vendor_website5', $vendor_data->website5 );
			update_post_meta( $post_id, 'vendor_email1', $vendor_data->email1 );
			update_post_meta( $post_id, 'vendor_thumbnail1', $vendor_data->thumbnail1 );
			update_post_meta( $post_id, 'vendor_photo1', $vendor_data->photo1 );
			update_post_meta( $post_id, 'vendor_biography', $vendor_data->biography );
			update_post_meta( $post_id, 'vendor_legalname', $vendor_data->vendorlegalname );
			update_post_meta( $post_id, 'vendor_home', $vendor_data->vendorhome );
			update_post_meta( $post_id, 'vendor_email', $vendor_data->vendoremail );
			update_post_meta( $post_id, 'vendor_phone1', $vendor_data->vendorphone1 );
			update_post_meta( $post_id, 'vendor_phone2', $vendor_data->vendorphone2 );
			update_post_meta( $post_id, 'vendor_contactperson', $vendor_data->contactperson );
			update_post_meta( $post_id, 'vendor_notes', $vendor_data->notes );
			update_post_meta( $post_id, 'vendor_numberofclasses', $vendor_data->numberofclasses );
			update_post_meta( $post_id, 'vendor_consideration', $vendor_data->consideration );
			update_post_meta( $post_id, 'vendor_comments', $vendor_data->comments );
			update_post_meta( $post_id, 'vendor_comps', $vendor_data->comps );
			update_post_meta( $post_id, 'vendor_rooms', $vendor_data->rooms );
			update_post_meta( $post_id, 'vendor_roomnights', $vendor_data->roomnights );
			update_post_meta( $post_id, 'vendor_roomcostpernight', $vendor_data->roomcostpernight );
			update_post_meta( $post_id, 'vendor_actualcompensation', $vendor_data->actualcompensation );
			update_post_meta( $post_id, 'vendor_airfaregashonorarium', $vendor_data->airfaregashonorarium );
			update_post_meta( $post_id, 'vendor_status', $vendor_data->status );
			update_post_meta( $post_id, 'vendor_thereferences', $vendor_data->thereferences );
			update_post_meta( $post_id, 'vendor_previouskfappearances', $vendor_data->previouskfappearances );
			update_post_meta( $post_id, 'vendor_vote01', $vendor_data->vote01 );
			update_post_meta( $post_id, 'vendor_vote02', $vendor_data->vote02 );
			update_post_meta( $post_id, 'vendor_vote03', $vendor_data->vote03 );
			update_post_meta( $post_id, 'vendor_vote04', $vendor_data->vote04 );
			update_post_meta( $post_id, 'vendor_vote05', $vendor_data->vote05 );
			update_post_meta( $post_id, 'vendor_vote06', $vendor_data->vote06 );
			update_post_meta( $post_id, 'vendor_vote07', $vendor_data->vote07 );
			update_post_meta( $post_id, 'vendor_vote08', $vendor_data->vote08 );
			update_post_meta( $post_id, 'vendor_vote09', $vendor_data->vote09 );
			update_post_meta( $post_id, 'vendor_vote10', $vendor_data->vote10 );
			update_post_meta( $post_id, 'vendor_flightinformation', $vendor_data->flightinformation );
			update_post_meta( $post_id, 'vendor_flightinformationout', $vendor_data->flightinformationout );
			update_post_meta( $post_id, 'vendor_groundtransportation', $vendor_data->groundtransportation );
			update_post_meta( $post_id, 'vendor_roomdates', $vendor_data->roomdates );
			update_post_meta( $post_id, 'vendor_specialroomrequests', $vendor_data->specialroomrequests );
			update_post_meta( $post_id, 'vendor_bookingnotes', $vendor_data->bookingnotes );
			update_post_meta( $post_id, 'vendor_onehourworkshop', $vendor_data->onehourworkshop );
			update_post_meta( $post_id, 'vendor_willingtorepeat', $vendor_data->willingtorepeat );
			update_post_meta( $post_id, 'vendor_availablefriday', $vendor_data->availablefriday );
			update_post_meta( $post_id, 'vendor_availablesunday', $vendor_data->availablesunday );
			update_post_meta( $post_id, 'vendor_unabletopresentschedulingnotes', $vendor_data->unabletopresentschedulingnotes );
			update_post_meta( $post_id, 'vendor_needtableforbooksigning', $vendor_data->needtableforbooksigning );
			update_post_meta( $post_id, 'vendor_firstname', $vendor_data->firstname );
			update_post_meta( $post_id, 'vendor_lastname', $vendor_data->lastname );
			update_post_meta( $post_id, 'vendor_scenename', $vendor_data->scenename );
			update_post_meta( $post_id, 'vendor_dob', $vendor_data->dob );
			update_post_meta( $post_id, 'vendor_address1', $vendor_data->address1 );
			update_post_meta( $post_id, 'vendor_address2', $vendor_data->address2 );
			update_post_meta( $post_id, 'vendor_city', $vendor_data->city );
			update_post_meta( $post_id, 'vendor_state', $vendor_data->state );
			update_post_meta( $post_id, 'vendor_postalcode', $vendor_data->postalcode );
			update_post_meta( $post_id, 'vendor_country', $vendor_data->country );
			update_post_meta( $post_id, 'vendor_customerid', $vendor_data->customerid );
			update_post_meta( $post_id, 'vendor_preferredcontactmethod', $vendor_data->preferredcontactmethod );
			update_post_meta( $post_id, 'vendor_fullyvaccinated', $vendor_data->fullyvaccinated );
		}
	}
}

add_action( 'save_post', 'save_vendor_data' );

/*
 * Create an Index Page
 */

function display_vendors_index( $atts ): string {
	$atts = shortcode_atts(
		  [
			  'order'   => 'ASC',
			  'orderby' => 'title',
		  ]
		, $atts );

	$args = array(
		'post_type'      => 'vendor',
		'posts_per_page' => - 1,
		'orderby'        => $atts['orderby'],
		'order'          => $atts['order'],
	);

	$vendors = new WP_Query( $args );

	if ( $vendors->have_posts() ) {
		$output = '<ul>';
		while ( $vendors->have_posts() ) : $vendors->the_post();
			$output .= '<li><a href="' . get_permalink() . '">' . get_the_title() . '</a></li>';
		endwhile;
		$output .= '</ul>';
		wp_reset_postdata();
	} else {
		$output = 'No vendors found';
	}

	return $output;
}

add_shortcode( 'vendors_index', 'display_vendors_index' );

/*
 * Vendor Taxonomy ( e.g. level I, II or III )
 */

function create_vendor_taxonomy() {
	register_taxonomy(
		'level',
		'vendor',
		array(
			'label'        => __( 'Level' ),
			'rewrite'      => array( 'slug' => 'level' ),
			'hierarchical' => true,
		)
	);
}

add_action( 'init', 'create_vendor_taxonomy' );
