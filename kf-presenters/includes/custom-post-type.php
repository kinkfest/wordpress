<?php

/*
 * Create Presenter Custom Post Type
 */

function create_presenter_post_type() {
	register_post_type( 'presenter',
	                    array(
		                    'labels'  => array(
			                    'name'          => __( 'Presenters' ),
			                    'singular_name' => __( 'Presenter' )
		                    ),
//		                    'menu_position'       => 5,
		                    'public'  => true,
		                    'rewrite' => array( 'slug' => 'presenters' ),
//		                    'show_in_menu'        => true,
//		                    'supports'            => array( 'title', 'editor', 'thumbnail' ), // Add support for fields you need
		)
	);
}

add_action( 'init', 'create_presenter_post_type' );

/*
 * Link Custom Post Type to the Database Table
 */

function save_presenter_data( $post_id ) {
	if ( get_post_type( $post_id ) == 'presenter' ) {
		global $wpdb;
		$presenter_data = $wpdb->get_row( "SELECT * FROM kfpresenters WHERE presenterid = $post_id" );

		if ( $presenter_data ) {
			update_post_meta( $post_id, 'presenter_id', $presenter_data->presenterid );
			update_post_meta( $post_id, 'presenter_name', $presenter_data->presentername );
			update_post_meta( $post_id, 'presenter_website1', $presenter_data->website1 );
			update_post_meta( $post_id, 'presenter_website2', $presenter_data->website2 );
			update_post_meta( $post_id, 'presenter_website3', $presenter_data->website3 );
			update_post_meta( $post_id, 'presenter_website4', $presenter_data->website4 );
			update_post_meta( $post_id, 'presenter_website5', $presenter_data->website5 );
			update_post_meta( $post_id, 'presenter_email1', $presenter_data->email1 );
			update_post_meta( $post_id, 'presenter_thumbnail1', $presenter_data->thumbnail1 );
			update_post_meta( $post_id, 'presenter_photo1', $presenter_data->photo1 );
			update_post_meta( $post_id, 'presenter_biography', $presenter_data->biography );
			update_post_meta( $post_id, 'presenter_legalname', $presenter_data->presenterlegalname );
			update_post_meta( $post_id, 'presenter_home', $presenter_data->presenterhome );
			update_post_meta( $post_id, 'presenter_email', $presenter_data->presenteremail );
			update_post_meta( $post_id, 'presenter_phone1', $presenter_data->presenterphone1 );
			update_post_meta( $post_id, 'presenter_phone2', $presenter_data->presenterphone2 );
			update_post_meta( $post_id, 'presenter_contactperson', $presenter_data->contactperson );
			update_post_meta( $post_id, 'presenter_notes', $presenter_data->notes );
			update_post_meta( $post_id, 'presenter_numberofclasses', $presenter_data->numberofclasses );
			update_post_meta( $post_id, 'presenter_consideration', $presenter_data->consideration );
			update_post_meta( $post_id, 'presenter_comments', $presenter_data->comments );
			update_post_meta( $post_id, 'presenter_comps', $presenter_data->comps );
			update_post_meta( $post_id, 'presenter_rooms', $presenter_data->rooms );
			update_post_meta( $post_id, 'presenter_roomnights', $presenter_data->roomnights );
			update_post_meta( $post_id, 'presenter_roomcostpernight', $presenter_data->roomcostpernight );
			update_post_meta( $post_id, 'presenter_actualcompensation', $presenter_data->actualcompensation );
			update_post_meta( $post_id, 'presenter_airfaregashonorarium', $presenter_data->airfaregashonorarium );
			update_post_meta( $post_id, 'presenter_status', $presenter_data->status );
			update_post_meta( $post_id, 'presenter_thereferences', $presenter_data->thereferences );
			update_post_meta( $post_id, 'presenter_previouskfappearances', $presenter_data->previouskfappearances );
			update_post_meta( $post_id, 'presenter_vote01', $presenter_data->vote01 );
			update_post_meta( $post_id, 'presenter_vote02', $presenter_data->vote02 );
			update_post_meta( $post_id, 'presenter_vote03', $presenter_data->vote03 );
			update_post_meta( $post_id, 'presenter_vote04', $presenter_data->vote04 );
			update_post_meta( $post_id, 'presenter_vote05', $presenter_data->vote05 );
			update_post_meta( $post_id, 'presenter_vote06', $presenter_data->vote06 );
			update_post_meta( $post_id, 'presenter_vote07', $presenter_data->vote07 );
			update_post_meta( $post_id, 'presenter_vote08', $presenter_data->vote08 );
			update_post_meta( $post_id, 'presenter_vote09', $presenter_data->vote09 );
			update_post_meta( $post_id, 'presenter_vote10', $presenter_data->vote10 );
			update_post_meta( $post_id, 'presenter_flightinformation', $presenter_data->flightinformation );
			update_post_meta( $post_id, 'presenter_flightinformationout', $presenter_data->flightinformationout );
			update_post_meta( $post_id, 'presenter_groundtransportation', $presenter_data->groundtransportation );
			update_post_meta( $post_id, 'presenter_roomdates', $presenter_data->roomdates );
			update_post_meta( $post_id, 'presenter_specialroomrequests', $presenter_data->specialroomrequests );
			update_post_meta( $post_id, 'presenter_bookingnotes', $presenter_data->bookingnotes );
			update_post_meta( $post_id, 'presenter_onehourworkshop', $presenter_data->onehourworkshop );
			update_post_meta( $post_id, 'presenter_willingtorepeat', $presenter_data->willingtorepeat );
			update_post_meta( $post_id, 'presenter_availablefriday', $presenter_data->availablefriday );
			update_post_meta( $post_id, 'presenter_availablesunday', $presenter_data->availablesunday );
			update_post_meta( $post_id, 'presenter_unabletopresentschedulingnotes', $presenter_data->unabletopresentschedulingnotes );
			update_post_meta( $post_id, 'presenter_needtableforbooksigning', $presenter_data->needtableforbooksigning );
			update_post_meta( $post_id, 'presenter_firstname', $presenter_data->firstname );
			update_post_meta( $post_id, 'presenter_lastname', $presenter_data->lastname );
			update_post_meta( $post_id, 'presenter_scenename', $presenter_data->scenename );
			update_post_meta( $post_id, 'presenter_dob', $presenter_data->dob );
			update_post_meta( $post_id, 'presenter_address1', $presenter_data->address1 );
			update_post_meta( $post_id, 'presenter_address2', $presenter_data->address2 );
			update_post_meta( $post_id, 'presenter_city', $presenter_data->city );
			update_post_meta( $post_id, 'presenter_state', $presenter_data->state );
			update_post_meta( $post_id, 'presenter_postalcode', $presenter_data->postalcode );
			update_post_meta( $post_id, 'presenter_country', $presenter_data->country );
			update_post_meta( $post_id, 'presenter_customerid', $presenter_data->customerid );
			update_post_meta( $post_id, 'presenter_preferredcontactmethod', $presenter_data->preferredcontactmethod );
			update_post_meta( $post_id, 'presenter_fullyvaccinated', $presenter_data->fullyvaccinated );
		}
	}
}

add_action( 'save_post', 'save_presenter_data' );

/*
 * Create an Index Page
 */

function display_presenters_index( $atts ): string {
	$atts = shortcode_atts(
		  [
			  'order'   => 'ASC',
			  'orderby' => 'title',
		  ]
		, $atts );

	$args = array(
		'post_type'      => 'presenter',
		'posts_per_page' => - 1,
		'orderby'        => $atts['orderby'],
		'order'          => $atts['order'],
	);

	$presenters = new WP_Query( $args );

	if ( $presenters->have_posts() ) {
		$output = '<ul>';
		while ( $presenters->have_posts() ) : $presenters->the_post();
			$output .= '<li><a href="' . get_permalink() . '">' . get_the_title() . '</a></li>';
		endwhile;
		$output .= '</ul>';
		wp_reset_postdata();
	} else {
		$output = 'No presenters found';
	}

	return $output;
}

add_shortcode( 'presenters_index', 'display_presenters_index' );

/*
 * Presenter Taxonomy ( e.g. level I, II or III )
 */

function create_presenter_taxonomy() {
	register_taxonomy(
		'level',
		'presenter',
		array(
			'label'        => __( 'Level' ),
			'rewrite'      => array( 'slug' => 'level' ),
			'hierarchical' => true,
		)
	);
}

add_action( 'init', 'create_presenter_taxonomy' );
